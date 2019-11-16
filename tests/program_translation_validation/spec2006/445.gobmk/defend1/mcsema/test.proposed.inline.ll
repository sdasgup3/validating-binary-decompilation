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
%G_0xb8b850_type = type <{ [4 x i8] }>
%G__0x57a4d2_type = type <{ [8 x i8] }>
%G__0x57a731_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fc87_type = type <{ [8 x i8] }>
%G__0x57fd7d_type = type <{ [8 x i8] }>
%G__0x57fd90_type = type <{ [8 x i8] }>
%G__0x57fd9f_type = type <{ [8 x i8] }>
%G__0x57fda9_type = type <{ [8 x i8] }>
%G__0x57fdb3_type = type <{ [8 x i8] }>
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
@G_0xb8b850 = global %G_0xb8b850_type zeroinitializer
@G__0x57a4d2 = global %G__0x57a4d2_type zeroinitializer
@G__0x57a731 = global %G__0x57a731_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fc87 = global %G__0x57fc87_type zeroinitializer
@G__0x57fd7d = global %G__0x57fd7d_type zeroinitializer
@G__0x57fd90 = global %G__0x57fd90_type zeroinitializer
@G__0x57fd9f = global %G__0x57fd9f_type zeroinitializer
@G__0x57fda9 = global %G__0x57fda9_type zeroinitializer
@G__0x57fdb3 = global %G__0x57fdb3_type zeroinitializer

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

declare %struct.Memory* @sub_469420.set_up_snapback_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4137f0.countstones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @defend1(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_463c80 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_463c80, %struct.Memory** %MEMORY
  %loadMem_463c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i590 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i590
  %27 = load i64, i64* %PC.i589
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i589
  store i64 %26, i64* %RBP.i591, align 8
  store %struct.Memory* %loadMem_463c81, %struct.Memory** %MEMORY
  %loadMem_463c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i608 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i608
  %36 = load i64, i64* %PC.i607
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i607
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_463c84, %struct.Memory** %MEMORY
  %loadMem_463c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i671 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i671
  %49 = load i64, i64* %PC.i670
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i670
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_463c86, %struct.Memory** %MEMORY
  %loadMem_463c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 27
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %R13.i688 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %R13.i688
  %62 = load i64, i64* %PC.i687
  %63 = add i64 %62, 2
  store i64 %63, i64* %PC.i687
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_463c88, %struct.Memory** %MEMORY
  %loadMem_463c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %R12.i743 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %R12.i743
  %75 = load i64, i64* %PC.i742
  %76 = add i64 %75, 2
  store i64 %76, i64* %PC.i742
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*
  store i64 %74, i64* %80
  store i64 %79, i64* %77, align 8
  store %struct.Memory* %loadMem_463c8a, %struct.Memory** %MEMORY
  %loadMem_463c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RBX.i760 = bitcast %union.anon* %86 to i64*
  %87 = load i64, i64* %RBX.i760
  %88 = load i64, i64* %PC.i759
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC.i759
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8
  store %struct.Memory* %loadMem_463c8c, %struct.Memory** %MEMORY
  %loadMem_463c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 13
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RSP.i855 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RSP.i855
  %101 = load i64, i64* %PC.i854
  %102 = add i64 %101, 7
  store i64 %102, i64* %PC.i854
  %103 = sub i64 %100, 696
  store i64 %103, i64* %RSP.i855, align 8
  %104 = icmp ult i64 %100, 696
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
  %114 = xor i64 696, %100
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
  store %struct.Memory* %loadMem_463c8d, %struct.Memory** %MEMORY
  %loadMem_463c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %PC.i852
  %139 = add i64 %138, 10
  store i64 %139, i64* %PC.i852
  store i64 ptrtoint (%G__0x57a731_type* @G__0x57a731 to i64), i64* %RAX.i853, align 8
  store %struct.Memory* %loadMem_463c94, %struct.Memory** %MEMORY
  %loadMem_463c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 17
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %R8D.i851 = bitcast %union.anon* %145 to i32*
  %146 = bitcast i32* %R8D.i851 to i64*
  %147 = load i64, i64* %PC.i850
  %148 = add i64 %147, 6
  store i64 %148, i64* %PC.i850
  store i64 3, i64* %146, align 8
  store %struct.Memory* %loadMem_463c9e, %struct.Memory** %MEMORY
  %loadMem_463ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 11
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %EDI.i848 = bitcast %union.anon* %154 to i32*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i849 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RBP.i849
  %159 = sub i64 %158, 48
  %160 = load i32, i32* %EDI.i848
  %161 = zext i32 %160 to i64
  %162 = load i64, i64* %PC.i847
  %163 = add i64 %162, 3
  store i64 %163, i64* %PC.i847
  %164 = inttoptr i64 %159 to i32*
  store i32 %160, i32* %164
  store %struct.Memory* %loadMem_463ca4, %struct.Memory** %MEMORY
  %loadMem_463ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RSI.i845 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 15
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i846
  %175 = sub i64 %174, 56
  %176 = load i64, i64* %RSI.i845
  %177 = load i64, i64* %PC.i844
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i844
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  store %struct.Memory* %loadMem_463ca7, %struct.Memory** %MEMORY
  %loadMem_463cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %EDX.i842 = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i843
  %190 = sub i64 %189, 60
  %191 = load i32, i32* %EDX.i842
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %PC.i841
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC.i841
  %195 = inttoptr i64 %190 to i32*
  store i32 %191, i32* %195
  store %struct.Memory* %loadMem_463cab, %struct.Memory** %MEMORY
  %loadMem_463cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %ECX.i839 = bitcast %union.anon* %201 to i32*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i840
  %206 = sub i64 %205, 64
  %207 = load i32, i32* %ECX.i839
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC.i838
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC.i838
  %211 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %211
  store %struct.Memory* %loadMem_463cae, %struct.Memory** %MEMORY
  %loadMem_463cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 9
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RSI.i836 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i837
  %222 = sub i64 %221, 48
  %223 = load i64, i64* %PC.i835
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i835
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RSI.i836, align 8
  store %struct.Memory* %loadMem_463cb1, %struct.Memory** %MEMORY
  %loadMem_463cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %RCX.i833 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 9
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RSI.i834 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %RSI.i834
  %238 = add i64 %237, 12099168
  %239 = load i64, i64* %PC.i832
  %240 = add i64 %239, 8
  store i64 %240, i64* %PC.i832
  %241 = inttoptr i64 %238 to i8*
  %242 = load i8, i8* %241
  %243 = zext i8 %242 to i64
  store i64 %243, i64* %RCX.i833, align 8
  store %struct.Memory* %loadMem_463cb5, %struct.Memory** %MEMORY
  %loadMem_463cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %ECX.i830 = bitcast %union.anon* %249 to i32*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 15
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %RBP.i831
  %254 = sub i64 %253, 68
  %255 = load i32, i32* %ECX.i830
  %256 = zext i32 %255 to i64
  %257 = load i64, i64* %PC.i829
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC.i829
  %259 = inttoptr i64 %254 to i32*
  store i32 %255, i32* %259
  store %struct.Memory* %loadMem_463cbd, %struct.Memory** %MEMORY
  %loadMem_463cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 17
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %R8D.i827 = bitcast %union.anon* %265 to i32*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 15
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %268 to i64*
  %269 = bitcast i32* %R8D.i827 to i64*
  %270 = load i32, i32* %R8D.i827
  %271 = zext i32 %270 to i64
  %272 = load i64, i64* %RBP.i828
  %273 = sub i64 %272, 68
  %274 = load i64, i64* %PC.i826
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i826
  %276 = inttoptr i64 %273 to i32*
  %277 = load i32, i32* %276
  %278 = sub i32 %270, %277
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %269, align 8
  %280 = icmp ult i32 %270, %277
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %281, i8* %282, align 1
  %283 = and i32 %278, 255
  %284 = call i32 @llvm.ctpop.i32(i32 %283)
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %287, i8* %288, align 1
  %289 = xor i32 %277, %270
  %290 = xor i32 %289, %278
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %293, i8* %294, align 1
  %295 = icmp eq i32 %278, 0
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %296, i8* %297, align 1
  %298 = lshr i32 %278, 31
  %299 = trunc i32 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %299, i8* %300, align 1
  %301 = lshr i32 %270, 31
  %302 = lshr i32 %277, 31
  %303 = xor i32 %302, %301
  %304 = xor i32 %298, %301
  %305 = add i32 %304, %303
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %307, i8* %308, align 1
  store %struct.Memory* %loadMem_463cc0, %struct.Memory** %MEMORY
  %loadMem_463cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 17
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %R8D.i824 = bitcast %union.anon* %314 to i32*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 15
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RBP.i825
  %319 = sub i64 %318, 72
  %320 = load i32, i32* %R8D.i824
  %321 = zext i32 %320 to i64
  %322 = load i64, i64* %PC.i823
  %323 = add i64 %322, 4
  store i64 %323, i64* %PC.i823
  %324 = inttoptr i64 %319 to i32*
  store i32 %320, i32* %324
  store %struct.Memory* %loadMem_463cc4, %struct.Memory** %MEMORY
  %loadMem_463cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 15
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %RBP.i822
  %332 = sub i64 %331, 492
  %333 = load i64, i64* %PC.i821
  %334 = add i64 %333, 10
  store i64 %334, i64* %PC.i821
  %335 = inttoptr i64 %332 to i32*
  store i32 0, i32* %335
  store %struct.Memory* %loadMem_463cc8, %struct.Memory** %MEMORY
  %loadMem_463cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 15
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %RBP.i820
  %343 = sub i64 %342, 496
  %344 = load i64, i64* %PC.i819
  %345 = add i64 %344, 10
  store i64 %345, i64* %PC.i819
  %346 = inttoptr i64 %343 to i32*
  store i32 0, i32* %346
  store %struct.Memory* %loadMem_463cd2, %struct.Memory** %MEMORY
  %loadMem_463cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RAX.i817 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 15
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RBP.i818
  %357 = sub i64 %356, 512
  %358 = load i64, i64* %RAX.i817
  %359 = load i64, i64* %PC.i816
  %360 = add i64 %359, 7
  store i64 %360, i64* %PC.i816
  %361 = inttoptr i64 %357 to i64*
  store i64 %358, i64* %361
  store %struct.Memory* %loadMem_463cdc, %struct.Memory** %MEMORY
  %loadMem_463ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 33
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %RCX.i814 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 15
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %370 to i64*
  %371 = load i64, i64* %RBP.i815
  %372 = sub i64 %371, 48
  %373 = load i64, i64* %PC.i813
  %374 = add i64 %373, 3
  store i64 %374, i64* %PC.i813
  %375 = inttoptr i64 %372 to i32*
  %376 = load i32, i32* %375
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RCX.i814, align 8
  store %struct.Memory* %loadMem_463ce3, %struct.Memory** %MEMORY
  %loadMem_463ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %ECX.i811 = bitcast %union.anon* %383 to i32*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i812
  %388 = sub i64 %387, 516
  %389 = load i32, i32* %ECX.i811
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* %PC.i810
  %392 = add i64 %391, 6
  store i64 %392, i64* %PC.i810
  %393 = inttoptr i64 %388 to i32*
  store i32 %389, i32* %393
  store %struct.Memory* %loadMem_463ce6, %struct.Memory** %MEMORY
  %loadMem_463cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RCX.i809 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %PC.i808
  %401 = add i64 %400, 7
  store i64 %401, i64* %PC.i808
  %402 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RCX.i809, align 8
  store %struct.Memory* %loadMem_463cec, %struct.Memory** %MEMORY
  %loadMem_463cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %406 to i64*
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 5
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %RCX.i807 = bitcast %union.anon* %409 to i64*
  %410 = load i64, i64* %RCX.i807
  %411 = load i64, i64* %PC.i806
  %412 = add i64 %411, 3
  store i64 %412, i64* %PC.i806
  %413 = trunc i64 %410 to i32
  %414 = add i32 1, %413
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RCX.i807, align 8
  %416 = icmp ult i32 %414, %413
  %417 = icmp ult i32 %414, 1
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %419, i8* %420, align 1
  %421 = and i32 %414, 255
  %422 = call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %425, i8* %426, align 1
  %427 = xor i64 1, %410
  %428 = trunc i64 %427 to i32
  %429 = xor i32 %428, %414
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %432, i8* %433, align 1
  %434 = icmp eq i32 %414, 0
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %435, i8* %436, align 1
  %437 = lshr i32 %414, 31
  %438 = trunc i32 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %438, i8* %439, align 1
  %440 = lshr i32 %413, 31
  %441 = xor i32 %437, %440
  %442 = add i32 %441, %437
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %444, i8* %445, align 1
  store %struct.Memory* %loadMem_463cf3, %struct.Memory** %MEMORY
  %loadMem_463cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 5
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %ECX.i805 = bitcast %union.anon* %451 to i32*
  %452 = load i32, i32* %ECX.i805
  %453 = zext i32 %452 to i64
  %454 = load i64, i64* %PC.i804
  %455 = add i64 %454, 7
  store i64 %455, i64* %PC.i804
  store i32 %452, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*)
  store %struct.Memory* %loadMem_463cf6, %struct.Memory** %MEMORY
  %loadMem_463cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RAX.i802 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RBP.i803
  %466 = sub i64 %465, 48
  %467 = load i64, i64* %PC.i801
  %468 = add i64 %467, 4
  store i64 %468, i64* %PC.i801
  %469 = inttoptr i64 %466 to i32*
  %470 = load i32, i32* %469
  %471 = sext i32 %470 to i64
  store i64 %471, i64* %RAX.i802, align 8
  store %struct.Memory* %loadMem_463cfd, %struct.Memory** %MEMORY
  %loadMem_463d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 5
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RCX.i800 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %RAX.i799
  %482 = add i64 %481, 12099168
  %483 = load i64, i64* %PC.i798
  %484 = add i64 %483, 8
  store i64 %484, i64* %PC.i798
  %485 = inttoptr i64 %482 to i8*
  %486 = load i8, i8* %485
  %487 = zext i8 %486 to i64
  store i64 %487, i64* %RCX.i800, align 8
  store %struct.Memory* %loadMem_463d01, %struct.Memory** %MEMORY
  %loadMem_463d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 5
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %ECX.i797 = bitcast %union.anon* %493 to i32*
  %494 = load i32, i32* %ECX.i797
  %495 = zext i32 %494 to i64
  %496 = load i64, i64* %PC.i796
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC.i796
  %498 = sub i32 %494, 1
  %499 = icmp ult i32 %494, 1
  %500 = zext i1 %499 to i8
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %500, i8* %501, align 1
  %502 = and i32 %498, 255
  %503 = call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %506, i8* %507, align 1
  %508 = xor i64 1, %495
  %509 = trunc i64 %508 to i32
  %510 = xor i32 %509, %498
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %513, i8* %514, align 1
  %515 = icmp eq i32 %498, 0
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %516, i8* %517, align 1
  %518 = lshr i32 %498, 31
  %519 = trunc i32 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %519, i8* %520, align 1
  %521 = lshr i32 %494, 31
  %522 = xor i32 %518, %521
  %523 = add i32 %522, %521
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %525, i8* %526, align 1
  store %struct.Memory* %loadMem_463d09, %struct.Memory** %MEMORY
  %loadMem_463d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %PC.i795
  %531 = add i64 %530, 27
  %532 = load i64, i64* %PC.i795
  %533 = add i64 %532, 6
  %534 = load i64, i64* %PC.i795
  %535 = add i64 %534, 6
  store i64 %535, i64* %PC.i795
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %537 = load i8, i8* %536, align 1
  store i8 %537, i8* %BRANCH_TAKEN, align 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %539 = icmp ne i8 %537, 0
  %540 = select i1 %539, i64 %531, i64 %533
  store i64 %540, i64* %538, align 8
  store %struct.Memory* %loadMem_463d0c, %struct.Memory** %MEMORY
  %loadBr_463d0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_463d0c = icmp eq i8 %loadBr_463d0c, 1
  br i1 %cmpBr_463d0c, label %block_.L_463d27, label %block_463d12

block_463d12:                                     ; preds = %entry
  %loadMem_463d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RAX.i793 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RBP.i794
  %551 = sub i64 %550, 48
  %552 = load i64, i64* %PC.i792
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC.i792
  %554 = inttoptr i64 %551 to i32*
  %555 = load i32, i32* %554
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %RAX.i793, align 8
  store %struct.Memory* %loadMem_463d12, %struct.Memory** %MEMORY
  %loadMem_463d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 5
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %565 to i64*
  %566 = load i64, i64* %RAX.i790
  %567 = add i64 %566, 12099168
  %568 = load i64, i64* %PC.i789
  %569 = add i64 %568, 8
  store i64 %569, i64* %PC.i789
  %570 = inttoptr i64 %567 to i8*
  %571 = load i8, i8* %570
  %572 = zext i8 %571 to i64
  store i64 %572, i64* %RCX.i791, align 8
  store %struct.Memory* %loadMem_463d16, %struct.Memory** %MEMORY
  %loadMem_463d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 5
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %ECX.i788 = bitcast %union.anon* %578 to i32*
  %579 = load i32, i32* %ECX.i788
  %580 = zext i32 %579 to i64
  %581 = load i64, i64* %PC.i787
  %582 = add i64 %581, 3
  store i64 %582, i64* %PC.i787
  %583 = sub i32 %579, 2
  %584 = icmp ult i32 %579, 2
  %585 = zext i1 %584 to i8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %585, i8* %586, align 1
  %587 = and i32 %583, 255
  %588 = call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %591, i8* %592, align 1
  %593 = xor i64 2, %580
  %594 = trunc i64 %593 to i32
  %595 = xor i32 %594, %583
  %596 = lshr i32 %595, 4
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %598, i8* %599, align 1
  %600 = icmp eq i32 %583, 0
  %601 = zext i1 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %601, i8* %602, align 1
  %603 = lshr i32 %583, 31
  %604 = trunc i32 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %604, i8* %605, align 1
  %606 = lshr i32 %579, 31
  %607 = xor i32 %603, %606
  %608 = add i32 %607, %606
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %610, i8* %611, align 1
  store %struct.Memory* %loadMem_463d1e, %struct.Memory** %MEMORY
  %loadMem_463d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %614 to i64*
  %615 = load i64, i64* %PC.i786
  %616 = add i64 %615, 11
  %617 = load i64, i64* %PC.i786
  %618 = add i64 %617, 6
  %619 = load i64, i64* %PC.i786
  %620 = add i64 %619, 6
  store i64 %620, i64* %PC.i786
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %622 = load i8, i8* %621, align 1
  %623 = icmp eq i8 %622, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %BRANCH_TAKEN, align 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %626 = select i1 %623, i64 %616, i64 %618
  store i64 %626, i64* %625, align 8
  store %struct.Memory* %loadMem_463d21, %struct.Memory** %MEMORY
  %loadBr_463d21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_463d21 = icmp eq i8 %loadBr_463d21, 1
  br i1 %cmpBr_463d21, label %block_.L_463d2c, label %block_.L_463d27

block_.L_463d27:                                  ; preds = %block_463d12, %entry
  %loadMem_463d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %629 to i64*
  %630 = load i64, i64* %PC.i785
  %631 = add i64 %630, 118
  %632 = load i64, i64* %PC.i785
  %633 = add i64 %632, 5
  store i64 %633, i64* %PC.i785
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %631, i64* %634, align 8
  store %struct.Memory* %loadMem_463d27, %struct.Memory** %MEMORY
  br label %block_.L_463d9d

block_.L_463d2c:                                  ; preds = %block_463d12
  %loadMem_463d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 11
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RDI.i784 = bitcast %union.anon* %640 to i64*
  %641 = load i64, i64* %PC.i783
  %642 = add i64 %641, 10
  store i64 %642, i64* %PC.i783
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i784, align 8
  store %struct.Memory* %loadMem_463d2c, %struct.Memory** %MEMORY
  %loadMem_463d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 9
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RSI.i782 = bitcast %union.anon* %648 to i64*
  %649 = load i64, i64* %PC.i781
  %650 = add i64 %649, 5
  store i64 %650, i64* %PC.i781
  store i64 1077, i64* %RSI.i782, align 8
  store %struct.Memory* %loadMem_463d36, %struct.Memory** %MEMORY
  %loadMem_463d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 7
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RDX.i780 = bitcast %union.anon* %656 to i64*
  %657 = load i64, i64* %PC.i779
  %658 = add i64 %657, 10
  store i64 %658, i64* %PC.i779
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX.i780, align 8
  store %struct.Memory* %loadMem_463d3b, %struct.Memory** %MEMORY
  %loadMem_463d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 1
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RAX.i778 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %PC.i777
  %666 = add i64 %665, 5
  store i64 %666, i64* %PC.i777
  store i64 20, i64* %RAX.i778, align 8
  store %struct.Memory* %loadMem_463d45, %struct.Memory** %MEMORY
  %loadMem_463d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 5
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RCX.i775 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RBP.i776
  %677 = sub i64 %676, 48
  %678 = load i64, i64* %PC.i774
  %679 = add i64 %678, 3
  store i64 %679, i64* %PC.i774
  %680 = inttoptr i64 %677 to i32*
  %681 = load i32, i32* %680
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %RCX.i775, align 8
  store %struct.Memory* %loadMem_463d4a, %struct.Memory** %MEMORY
  %loadMem_463d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %EAX.i772 = bitcast %union.anon* %688 to i32*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 15
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %RBP.i773
  %693 = sub i64 %692, 572
  %694 = load i32, i32* %EAX.i772
  %695 = zext i32 %694 to i64
  %696 = load i64, i64* %PC.i771
  %697 = add i64 %696, 6
  store i64 %697, i64* %PC.i771
  %698 = inttoptr i64 %693 to i32*
  store i32 %694, i32* %698
  store %struct.Memory* %loadMem_463d4d, %struct.Memory** %MEMORY
  %loadMem_463d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 5
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %ECX.i769 = bitcast %union.anon* %704 to i32*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 1
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %707 to i64*
  %708 = load i32, i32* %ECX.i769
  %709 = zext i32 %708 to i64
  %710 = load i64, i64* %PC.i768
  %711 = add i64 %710, 2
  store i64 %711, i64* %PC.i768
  %712 = and i64 %709, 4294967295
  store i64 %712, i64* %RAX.i770, align 8
  store %struct.Memory* %loadMem_463d53, %struct.Memory** %MEMORY
  %loadMem_463d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 7
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RDX.i766 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i767
  %723 = sub i64 %722, 584
  %724 = load i64, i64* %RDX.i766
  %725 = load i64, i64* %PC.i765
  %726 = add i64 %725, 7
  store i64 %726, i64* %PC.i765
  %727 = inttoptr i64 %723 to i64*
  store i64 %724, i64* %727
  store %struct.Memory* %loadMem_463d55, %struct.Memory** %MEMORY
  %loadMem_463d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %PC.i764
  %732 = add i64 %731, 1
  store i64 %732, i64* %PC.i764
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %735 = bitcast %union.anon* %734 to i32*
  %736 = load i32, i32* %735, align 8
  %737 = sext i32 %736 to i64
  %738 = lshr i64 %737, 32
  store i64 %738, i64* %733, align 8
  store %struct.Memory* %loadMem_463d5c, %struct.Memory** %MEMORY
  %loadMem_463d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 5
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RCX.i762 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 15
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RBP.i763
  %749 = sub i64 %748, 572
  %750 = load i64, i64* %PC.i761
  %751 = add i64 %750, 6
  store i64 %751, i64* %PC.i761
  %752 = inttoptr i64 %749 to i32*
  %753 = load i32, i32* %752
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RCX.i762, align 8
  store %struct.Memory* %loadMem_463d5d, %struct.Memory** %MEMORY
  %loadMem_463d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 5
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %ECX.i757 = bitcast %union.anon* %760 to i32*
  %761 = load i32, i32* %ECX.i757
  %762 = zext i32 %761 to i64
  %763 = load i64, i64* %PC.i756
  %764 = add i64 %763, 2
  store i64 %764, i64* %PC.i756
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %766 = bitcast %union.anon* %765 to i32*
  %767 = load i32, i32* %766, align 8
  %768 = zext i32 %767 to i64
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %770 = bitcast %union.anon* %769 to i32*
  %771 = load i32, i32* %770, align 8
  %772 = zext i32 %771 to i64
  %773 = shl i64 %762, 32
  %774 = ashr exact i64 %773, 32
  %775 = shl i64 %772, 32
  %776 = or i64 %775, %768
  %777 = sdiv i64 %776, %774
  %778 = shl i64 %777, 32
  %779 = ashr exact i64 %778, 32
  %780 = icmp eq i64 %777, %779
  br i1 %780, label %785, label %781

; <label>:781:                                    ; preds = %block_.L_463d2c
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %783 = load i64, i64* %782, align 8
  %784 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %783, %struct.Memory* %loadMem_463d63)
  br label %routine_idivl__ecx.exit758

; <label>:785:                                    ; preds = %block_.L_463d2c
  %786 = srem i64 %776, %774
  %787 = getelementptr inbounds %union.anon, %union.anon* %765, i64 0, i32 0
  %788 = and i64 %777, 4294967295
  store i64 %788, i64* %787, align 8
  %789 = getelementptr inbounds %union.anon, %union.anon* %769, i64 0, i32 0
  %790 = and i64 %786, 4294967295
  store i64 %790, i64* %789, align 8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %791, align 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %792, align 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %793, align 1
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %794, align 1
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %795, align 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %796, align 1
  br label %routine_idivl__ecx.exit758

routine_idivl__ecx.exit758:                       ; preds = %781, %785
  %797 = phi %struct.Memory* [ %784, %781 ], [ %loadMem_463d63, %785 ]
  store %struct.Memory* %797, %struct.Memory** %MEMORY
  %loadMem_463d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 1
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RAX.i755
  %805 = load i64, i64* %PC.i754
  %806 = add i64 %805, 3
  store i64 %806, i64* %PC.i754
  %807 = trunc i64 %804 to i32
  %808 = sub i32 %807, 1
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RAX.i755, align 8
  %810 = icmp ult i32 %807, 1
  %811 = zext i1 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %811, i8* %812, align 1
  %813 = and i32 %808, 255
  %814 = call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %817, i8* %818, align 1
  %819 = xor i64 1, %804
  %820 = trunc i64 %819 to i32
  %821 = xor i32 %820, %808
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %824, i8* %825, align 1
  %826 = icmp eq i32 %808, 0
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %827, i8* %828, align 1
  %829 = lshr i32 %808, 31
  %830 = trunc i32 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %830, i8* %831, align 1
  %832 = lshr i32 %807, 31
  %833 = xor i32 %829, %832
  %834 = add i32 %833, %832
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %836, i8* %837, align 1
  store %struct.Memory* %loadMem_463d65, %struct.Memory** %MEMORY
  %loadMem_463d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 17
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %R8D.i752 = bitcast %union.anon* %843 to i32*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 15
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %846 to i64*
  %847 = bitcast i32* %R8D.i752 to i64*
  %848 = load i64, i64* %RBP.i753
  %849 = sub i64 %848, 48
  %850 = load i64, i64* %PC.i751
  %851 = add i64 %850, 4
  store i64 %851, i64* %PC.i751
  %852 = inttoptr i64 %849 to i32*
  %853 = load i32, i32* %852
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %847, align 8
  store %struct.Memory* %loadMem_463d68, %struct.Memory** %MEMORY
  %loadMem_463d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 1
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %EAX.i749 = bitcast %union.anon* %860 to i32*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 15
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %RBP.i750
  %865 = sub i64 %864, 588
  %866 = load i32, i32* %EAX.i749
  %867 = zext i32 %866 to i64
  %868 = load i64, i64* %PC.i748
  %869 = add i64 %868, 6
  store i64 %869, i64* %PC.i748
  %870 = inttoptr i64 %865 to i32*
  store i32 %866, i32* %870
  store %struct.Memory* %loadMem_463d6c, %struct.Memory** %MEMORY
  %loadMem_463d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 17
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %R8D.i746 = bitcast %union.anon* %876 to i32*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %879 to i64*
  %880 = load i32, i32* %R8D.i746
  %881 = zext i32 %880 to i64
  %882 = load i64, i64* %PC.i745
  %883 = add i64 %882, 3
  store i64 %883, i64* %PC.i745
  %884 = and i64 %881, 4294967295
  store i64 %884, i64* %RAX.i747, align 8
  store %struct.Memory* %loadMem_463d72, %struct.Memory** %MEMORY
  %loadMem_463d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %PC.i744
  %889 = add i64 %888, 1
  store i64 %889, i64* %PC.i744
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %892 = bitcast %union.anon* %891 to i32*
  %893 = load i32, i32* %892, align 8
  %894 = sext i32 %893 to i64
  %895 = lshr i64 %894, 32
  store i64 %895, i64* %890, align 8
  store %struct.Memory* %loadMem_463d75, %struct.Memory** %MEMORY
  %loadMem_463d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 33
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 5
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %ECX.i740 = bitcast %union.anon* %901 to i32*
  %902 = load i32, i32* %ECX.i740
  %903 = zext i32 %902 to i64
  %904 = load i64, i64* %PC.i739
  %905 = add i64 %904, 2
  store i64 %905, i64* %PC.i739
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %907 = bitcast %union.anon* %906 to i32*
  %908 = load i32, i32* %907, align 8
  %909 = zext i32 %908 to i64
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %911 = bitcast %union.anon* %910 to i32*
  %912 = load i32, i32* %911, align 8
  %913 = zext i32 %912 to i64
  %914 = shl i64 %903, 32
  %915 = ashr exact i64 %914, 32
  %916 = shl i64 %913, 32
  %917 = or i64 %916, %909
  %918 = sdiv i64 %917, %915
  %919 = shl i64 %918, 32
  %920 = ashr exact i64 %919, 32
  %921 = icmp eq i64 %918, %920
  br i1 %921, label %926, label %922

; <label>:922:                                    ; preds = %routine_idivl__ecx.exit758
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %924 = load i64, i64* %923, align 8
  %925 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %924, %struct.Memory* %loadMem_463d76)
  br label %routine_idivl__ecx.exit741

; <label>:926:                                    ; preds = %routine_idivl__ecx.exit758
  %927 = srem i64 %917, %915
  %928 = getelementptr inbounds %union.anon, %union.anon* %906, i64 0, i32 0
  %929 = and i64 %918, 4294967295
  store i64 %929, i64* %928, align 8
  %930 = getelementptr inbounds %union.anon, %union.anon* %910, i64 0, i32 0
  %931 = and i64 %927, 4294967295
  store i64 %931, i64* %930, align 8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %932, align 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %933, align 1
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %934, align 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %935, align 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %936, align 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %937, align 1
  br label %routine_idivl__ecx.exit741

routine_idivl__ecx.exit741:                       ; preds = %922, %926
  %938 = phi %struct.Memory* [ %925, %922 ], [ %loadMem_463d76, %926 ]
  store %struct.Memory* %938, %struct.Memory** %MEMORY
  %loadMem_463d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 7
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RDX.i738 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %RDX.i738
  %946 = load i64, i64* %PC.i737
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i737
  %948 = trunc i64 %945 to i32
  %949 = sub i32 %948, 1
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RDX.i738, align 8
  %951 = icmp ult i32 %948, 1
  %952 = zext i1 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %952, i8* %953, align 1
  %954 = and i32 %949, 255
  %955 = call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %958, i8* %959, align 1
  %960 = xor i64 1, %945
  %961 = trunc i64 %960 to i32
  %962 = xor i32 %961, %949
  %963 = lshr i32 %962, 4
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %965, i8* %966, align 1
  %967 = icmp eq i32 %949, 0
  %968 = zext i1 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %968, i8* %969, align 1
  %970 = lshr i32 %949, 31
  %971 = trunc i32 %970 to i8
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %971, i8* %972, align 1
  %973 = lshr i32 %948, 31
  %974 = xor i32 %970, %973
  %975 = add i32 %974, %973
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %977, i8* %978, align 1
  store %struct.Memory* %loadMem_463d78, %struct.Memory** %MEMORY
  %loadMem_463d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 15
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 19
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %R9.i736 = bitcast %union.anon* %987 to i64*
  %988 = load i64, i64* %RBP.i735
  %989 = sub i64 %988, 584
  %990 = load i64, i64* %PC.i734
  %991 = add i64 %990, 7
  store i64 %991, i64* %PC.i734
  %992 = inttoptr i64 %989 to i64*
  %993 = load i64, i64* %992
  store i64 %993, i64* %R9.i736, align 8
  store %struct.Memory* %loadMem_463d7b, %struct.Memory** %MEMORY
  %loadMem_463d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 7
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %EDX.i732 = bitcast %union.anon* %999 to i32*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 15
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RBP.i733
  %1004 = sub i64 %1003, 592
  %1005 = load i32, i32* %EDX.i732
  %1006 = zext i32 %1005 to i64
  %1007 = load i64, i64* %PC.i731
  %1008 = add i64 %1007, 6
  store i64 %1008, i64* %PC.i731
  %1009 = inttoptr i64 %1004 to i32*
  store i32 %1005, i32* %1009
  store %struct.Memory* %loadMem_463d82, %struct.Memory** %MEMORY
  %loadMem_463d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 7
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RDX.i729 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 19
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %R9.i730 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %R9.i730
  %1020 = load i64, i64* %PC.i728
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC.i728
  store i64 %1019, i64* %RDX.i729, align 8
  store %struct.Memory* %loadMem_463d88, %struct.Memory** %MEMORY
  %loadMem_463d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 33
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 5
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 15
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RBP.i727 = bitcast %union.anon* %1030 to i64*
  %1031 = load i64, i64* %RBP.i727
  %1032 = sub i64 %1031, 588
  %1033 = load i64, i64* %PC.i725
  %1034 = add i64 %1033, 6
  store i64 %1034, i64* %PC.i725
  %1035 = inttoptr i64 %1032 to i32*
  %1036 = load i32, i32* %1035
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RCX.i726, align 8
  store %struct.Memory* %loadMem_463d8b, %struct.Memory** %MEMORY
  %loadMem_463d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 17
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %R8D.i723 = bitcast %union.anon* %1043 to i32*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %1046 to i64*
  %1047 = bitcast i32* %R8D.i723 to i64*
  %1048 = load i64, i64* %RBP.i724
  %1049 = sub i64 %1048, 592
  %1050 = load i64, i64* %PC.i722
  %1051 = add i64 %1050, 7
  store i64 %1051, i64* %PC.i722
  %1052 = inttoptr i64 %1049 to i32*
  %1053 = load i32, i32* %1052
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %1047, align 8
  store %struct.Memory* %loadMem_463d91, %struct.Memory** %MEMORY
  %loadMem1_463d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 33
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1057 to i64*
  %1058 = load i64, i64* %PC.i721
  %1059 = add i64 %1058, -72968
  %1060 = load i64, i64* %PC.i721
  %1061 = add i64 %1060, 5
  %1062 = load i64, i64* %PC.i721
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %PC.i721
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1065 = load i64, i64* %1064, align 8
  %1066 = add i64 %1065, -8
  %1067 = inttoptr i64 %1066 to i64*
  store i64 %1061, i64* %1067
  store i64 %1066, i64* %1064, align 8
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1059, i64* %1068, align 8
  store %struct.Memory* %loadMem1_463d98, %struct.Memory** %MEMORY
  %loadMem2_463d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463d98 = load i64, i64* %3
  %call2_463d98 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_463d98, %struct.Memory* %loadMem2_463d98)
  store %struct.Memory* %call2_463d98, %struct.Memory** %MEMORY
  br label %block_.L_463d9d

block_.L_463d9d:                                  ; preds = %routine_idivl__ecx.exit741, %block_.L_463d27
  %loadMem_463d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 33
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1071 to i64*
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 11
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %RDI.i719 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 15
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %1077 to i64*
  %1078 = load i64, i64* %RBP.i720
  %1079 = sub i64 %1078, 48
  %1080 = load i64, i64* %PC.i718
  %1081 = add i64 %1080, 3
  store i64 %1081, i64* %PC.i718
  %1082 = inttoptr i64 %1079 to i32*
  %1083 = load i32, i32* %1082
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RDI.i719, align 8
  store %struct.Memory* %loadMem_463d9d, %struct.Memory** %MEMORY
  %loadMem1_463da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 33
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %PC.i717
  %1089 = add i64 %1088, -345632
  %1090 = load i64, i64* %PC.i717
  %1091 = add i64 %1090, 5
  %1092 = load i64, i64* %PC.i717
  %1093 = add i64 %1092, 5
  store i64 %1093, i64* %PC.i717
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1095 = load i64, i64* %1094, align 8
  %1096 = add i64 %1095, -8
  %1097 = inttoptr i64 %1096 to i64*
  store i64 %1091, i64* %1097
  store i64 %1096, i64* %1094, align 8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1089, i64* %1098, align 8
  store %struct.Memory* %loadMem1_463da0, %struct.Memory** %MEMORY
  %loadMem2_463da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463da0 = load i64, i64* %3
  %call2_463da0 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_463da0, %struct.Memory* %loadMem2_463da0)
  store %struct.Memory* %call2_463da0, %struct.Memory** %MEMORY
  %loadMem_463da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 33
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 1
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %EAX.i716 = bitcast %union.anon* %1104 to i32*
  %1105 = load i32, i32* %EAX.i716
  %1106 = zext i32 %1105 to i64
  %1107 = load i64, i64* %PC.i715
  %1108 = add i64 %1107, 3
  store i64 %1108, i64* %PC.i715
  %1109 = sub i32 %1105, 1
  %1110 = icmp ult i32 %1105, 1
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1111, i8* %1112, align 1
  %1113 = and i32 %1109, 255
  %1114 = call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1117, i8* %1118, align 1
  %1119 = xor i64 1, %1106
  %1120 = trunc i64 %1119 to i32
  %1121 = xor i32 %1120, %1109
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1124, i8* %1125, align 1
  %1126 = icmp eq i32 %1109, 0
  %1127 = zext i1 %1126 to i8
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1127, i8* %1128, align 1
  %1129 = lshr i32 %1109, 31
  %1130 = trunc i32 %1129 to i8
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1130, i8* %1131, align 1
  %1132 = lshr i32 %1105, 31
  %1133 = xor i32 %1129, %1132
  %1134 = add i32 %1133, %1132
  %1135 = icmp eq i32 %1134, 2
  %1136 = zext i1 %1135 to i8
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1136, i8* %1137, align 1
  store %struct.Memory* %loadMem_463da5, %struct.Memory** %MEMORY
  %loadMem_463da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1140 to i64*
  %1141 = load i64, i64* %PC.i714
  %1142 = add i64 %1141, 11
  %1143 = load i64, i64* %PC.i714
  %1144 = add i64 %1143, 6
  %1145 = load i64, i64* %PC.i714
  %1146 = add i64 %1145, 6
  store i64 %1146, i64* %PC.i714
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1148 = load i8, i8* %1147, align 1
  %1149 = icmp eq i8 %1148, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %BRANCH_TAKEN, align 1
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1152 = select i1 %1149, i64 %1142, i64 %1144
  store i64 %1152, i64* %1151, align 8
  store %struct.Memory* %loadMem_463da8, %struct.Memory** %MEMORY
  %loadBr_463da8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_463da8 = icmp eq i8 %loadBr_463da8, 1
  br i1 %cmpBr_463da8, label %block_.L_463db3, label %block_463dae

block_463dae:                                     ; preds = %block_.L_463d9d
  %loadMem_463dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %PC.i713
  %1157 = add i64 %1156, 118
  %1158 = load i64, i64* %PC.i713
  %1159 = add i64 %1158, 5
  store i64 %1159, i64* %PC.i713
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1157, i64* %1160, align 8
  store %struct.Memory* %loadMem_463dae, %struct.Memory** %MEMORY
  br label %block_.L_463e24

block_.L_463db3:                                  ; preds = %block_.L_463d9d
  %loadMem_463db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 11
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %RDI.i712 = bitcast %union.anon* %1166 to i64*
  %1167 = load i64, i64* %PC.i711
  %1168 = add i64 %1167, 10
  store i64 %1168, i64* %PC.i711
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i712, align 8
  store %struct.Memory* %loadMem_463db3, %struct.Memory** %MEMORY
  %loadMem_463dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 33
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1171 to i64*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 9
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RSI.i710 = bitcast %union.anon* %1174 to i64*
  %1175 = load i64, i64* %PC.i709
  %1176 = add i64 %1175, 5
  store i64 %1176, i64* %PC.i709
  store i64 1078, i64* %RSI.i710, align 8
  store %struct.Memory* %loadMem_463dbd, %struct.Memory** %MEMORY
  %loadMem_463dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 7
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RDX.i708 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %PC.i707
  %1184 = add i64 %1183, 10
  store i64 %1184, i64* %PC.i707
  store i64 ptrtoint (%G__0x57fd7d_type* @G__0x57fd7d to i64), i64* %RDX.i708, align 8
  store %struct.Memory* %loadMem_463dc2, %struct.Memory** %MEMORY
  %loadMem_463dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %PC.i705
  %1192 = add i64 %1191, 5
  store i64 %1192, i64* %PC.i705
  store i64 20, i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_463dcc, %struct.Memory** %MEMORY
  %loadMem_463dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 5
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RCX.i703 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 15
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %RBP.i704
  %1203 = sub i64 %1202, 48
  %1204 = load i64, i64* %PC.i702
  %1205 = add i64 %1204, 3
  store i64 %1205, i64* %PC.i702
  %1206 = inttoptr i64 %1203 to i32*
  %1207 = load i32, i32* %1206
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RCX.i703, align 8
  store %struct.Memory* %loadMem_463dd1, %struct.Memory** %MEMORY
  %loadMem_463dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %EAX.i700 = bitcast %union.anon* %1214 to i32*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 15
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RBP.i701
  %1219 = sub i64 %1218, 596
  %1220 = load i32, i32* %EAX.i700
  %1221 = zext i32 %1220 to i64
  %1222 = load i64, i64* %PC.i699
  %1223 = add i64 %1222, 6
  store i64 %1223, i64* %PC.i699
  %1224 = inttoptr i64 %1219 to i32*
  store i32 %1220, i32* %1224
  store %struct.Memory* %loadMem_463dd4, %struct.Memory** %MEMORY
  %loadMem_463dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 5
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %ECX.i697 = bitcast %union.anon* %1230 to i32*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 1
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %1233 to i64*
  %1234 = load i32, i32* %ECX.i697
  %1235 = zext i32 %1234 to i64
  %1236 = load i64, i64* %PC.i696
  %1237 = add i64 %1236, 2
  store i64 %1237, i64* %PC.i696
  %1238 = and i64 %1235, 4294967295
  store i64 %1238, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_463dda, %struct.Memory** %MEMORY
  %loadMem_463ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 7
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RDX.i694 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RBP.i695
  %1249 = sub i64 %1248, 608
  %1250 = load i64, i64* %RDX.i694
  %1251 = load i64, i64* %PC.i693
  %1252 = add i64 %1251, 7
  store i64 %1252, i64* %PC.i693
  %1253 = inttoptr i64 %1249 to i64*
  store i64 %1250, i64* %1253
  store %struct.Memory* %loadMem_463ddc, %struct.Memory** %MEMORY
  %loadMem_463de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %PC.i692
  %1258 = add i64 %1257, 1
  store i64 %1258, i64* %PC.i692
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1261 = bitcast %union.anon* %1260 to i32*
  %1262 = load i32, i32* %1261, align 8
  %1263 = sext i32 %1262 to i64
  %1264 = lshr i64 %1263, 32
  store i64 %1264, i64* %1259, align 8
  store %struct.Memory* %loadMem_463de3, %struct.Memory** %MEMORY
  %loadMem_463de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 5
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i691
  %1275 = sub i64 %1274, 596
  %1276 = load i64, i64* %PC.i689
  %1277 = add i64 %1276, 6
  store i64 %1277, i64* %PC.i689
  %1278 = inttoptr i64 %1275 to i32*
  %1279 = load i32, i32* %1278
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RCX.i690, align 8
  store %struct.Memory* %loadMem_463de4, %struct.Memory** %MEMORY
  %loadMem_463dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 5
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %ECX.i685 = bitcast %union.anon* %1286 to i32*
  %1287 = load i32, i32* %ECX.i685
  %1288 = zext i32 %1287 to i64
  %1289 = load i64, i64* %PC.i684
  %1290 = add i64 %1289, 2
  store i64 %1290, i64* %PC.i684
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1292 = bitcast %union.anon* %1291 to i32*
  %1293 = load i32, i32* %1292, align 8
  %1294 = zext i32 %1293 to i64
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1296 = bitcast %union.anon* %1295 to i32*
  %1297 = load i32, i32* %1296, align 8
  %1298 = zext i32 %1297 to i64
  %1299 = shl i64 %1288, 32
  %1300 = ashr exact i64 %1299, 32
  %1301 = shl i64 %1298, 32
  %1302 = or i64 %1301, %1294
  %1303 = sdiv i64 %1302, %1300
  %1304 = shl i64 %1303, 32
  %1305 = ashr exact i64 %1304, 32
  %1306 = icmp eq i64 %1303, %1305
  br i1 %1306, label %1311, label %1307

; <label>:1307:                                   ; preds = %block_.L_463db3
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1309 = load i64, i64* %1308, align 8
  %1310 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1309, %struct.Memory* %loadMem_463dea)
  br label %routine_idivl__ecx.exit686

; <label>:1311:                                   ; preds = %block_.L_463db3
  %1312 = srem i64 %1302, %1300
  %1313 = getelementptr inbounds %union.anon, %union.anon* %1291, i64 0, i32 0
  %1314 = and i64 %1303, 4294967295
  store i64 %1314, i64* %1313, align 8
  %1315 = getelementptr inbounds %union.anon, %union.anon* %1295, i64 0, i32 0
  %1316 = and i64 %1312, 4294967295
  store i64 %1316, i64* %1315, align 8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1317, align 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1318, align 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1319, align 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1320, align 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1321, align 1
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1322, align 1
  br label %routine_idivl__ecx.exit686

routine_idivl__ecx.exit686:                       ; preds = %1307, %1311
  %1323 = phi %struct.Memory* [ %1310, %1307 ], [ %loadMem_463dea, %1311 ]
  store %struct.Memory* %1323, %struct.Memory** %MEMORY
  %loadMem_463dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RAX.i683 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %RAX.i683
  %1331 = load i64, i64* %PC.i682
  %1332 = add i64 %1331, 3
  store i64 %1332, i64* %PC.i682
  %1333 = trunc i64 %1330 to i32
  %1334 = sub i32 %1333, 1
  %1335 = zext i32 %1334 to i64
  store i64 %1335, i64* %RAX.i683, align 8
  %1336 = icmp ult i32 %1333, 1
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1337, i8* %1338, align 1
  %1339 = and i32 %1334, 255
  %1340 = call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1343, i8* %1344, align 1
  %1345 = xor i64 1, %1330
  %1346 = trunc i64 %1345 to i32
  %1347 = xor i32 %1346, %1334
  %1348 = lshr i32 %1347, 4
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1350, i8* %1351, align 1
  %1352 = icmp eq i32 %1334, 0
  %1353 = zext i1 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1353, i8* %1354, align 1
  %1355 = lshr i32 %1334, 31
  %1356 = trunc i32 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1356, i8* %1357, align 1
  %1358 = lshr i32 %1333, 31
  %1359 = xor i32 %1355, %1358
  %1360 = add i32 %1359, %1358
  %1361 = icmp eq i32 %1360, 2
  %1362 = zext i1 %1361 to i8
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1362, i8* %1363, align 1
  store %struct.Memory* %loadMem_463dec, %struct.Memory** %MEMORY
  %loadMem_463def = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 17
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %R8D.i680 = bitcast %union.anon* %1369 to i32*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %1372 to i64*
  %1373 = bitcast i32* %R8D.i680 to i64*
  %1374 = load i64, i64* %RBP.i681
  %1375 = sub i64 %1374, 48
  %1376 = load i64, i64* %PC.i679
  %1377 = add i64 %1376, 4
  store i64 %1377, i64* %PC.i679
  %1378 = inttoptr i64 %1375 to i32*
  %1379 = load i32, i32* %1378
  %1380 = zext i32 %1379 to i64
  store i64 %1380, i64* %1373, align 8
  store %struct.Memory* %loadMem_463def, %struct.Memory** %MEMORY
  %loadMem_463df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 1
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %EAX.i677 = bitcast %union.anon* %1386 to i32*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 15
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %RBP.i678
  %1391 = sub i64 %1390, 612
  %1392 = load i32, i32* %EAX.i677
  %1393 = zext i32 %1392 to i64
  %1394 = load i64, i64* %PC.i676
  %1395 = add i64 %1394, 6
  store i64 %1395, i64* %PC.i676
  %1396 = inttoptr i64 %1391 to i32*
  store i32 %1392, i32* %1396
  store %struct.Memory* %loadMem_463df3, %struct.Memory** %MEMORY
  %loadMem_463df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 17
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %R8D.i674 = bitcast %union.anon* %1402 to i32*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 1
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %1405 to i64*
  %1406 = load i32, i32* %R8D.i674
  %1407 = zext i32 %1406 to i64
  %1408 = load i64, i64* %PC.i673
  %1409 = add i64 %1408, 3
  store i64 %1409, i64* %PC.i673
  %1410 = and i64 %1407, 4294967295
  store i64 %1410, i64* %RAX.i675, align 8
  store %struct.Memory* %loadMem_463df9, %struct.Memory** %MEMORY
  %loadMem_463dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %PC.i672
  %1415 = add i64 %1414, 1
  store i64 %1415, i64* %PC.i672
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1418 = bitcast %union.anon* %1417 to i32*
  %1419 = load i32, i32* %1418, align 8
  %1420 = sext i32 %1419 to i64
  %1421 = lshr i64 %1420, 32
  store i64 %1421, i64* %1416, align 8
  store %struct.Memory* %loadMem_463dfc, %struct.Memory** %MEMORY
  %loadMem_463dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 5
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %ECX.i668 = bitcast %union.anon* %1427 to i32*
  %1428 = load i32, i32* %ECX.i668
  %1429 = zext i32 %1428 to i64
  %1430 = load i64, i64* %PC.i667
  %1431 = add i64 %1430, 2
  store i64 %1431, i64* %PC.i667
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1433 = bitcast %union.anon* %1432 to i32*
  %1434 = load i32, i32* %1433, align 8
  %1435 = zext i32 %1434 to i64
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1437 = bitcast %union.anon* %1436 to i32*
  %1438 = load i32, i32* %1437, align 8
  %1439 = zext i32 %1438 to i64
  %1440 = shl i64 %1429, 32
  %1441 = ashr exact i64 %1440, 32
  %1442 = shl i64 %1439, 32
  %1443 = or i64 %1442, %1435
  %1444 = sdiv i64 %1443, %1441
  %1445 = shl i64 %1444, 32
  %1446 = ashr exact i64 %1445, 32
  %1447 = icmp eq i64 %1444, %1446
  br i1 %1447, label %1452, label %1448

; <label>:1448:                                   ; preds = %routine_idivl__ecx.exit686
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1450 = load i64, i64* %1449, align 8
  %1451 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1450, %struct.Memory* %loadMem_463dfd)
  br label %routine_idivl__ecx.exit669

; <label>:1452:                                   ; preds = %routine_idivl__ecx.exit686
  %1453 = srem i64 %1443, %1441
  %1454 = getelementptr inbounds %union.anon, %union.anon* %1432, i64 0, i32 0
  %1455 = and i64 %1444, 4294967295
  store i64 %1455, i64* %1454, align 8
  %1456 = getelementptr inbounds %union.anon, %union.anon* %1436, i64 0, i32 0
  %1457 = and i64 %1453, 4294967295
  store i64 %1457, i64* %1456, align 8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1458, align 1
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1459, align 1
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1460, align 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1461, align 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1462, align 1
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1463, align 1
  br label %routine_idivl__ecx.exit669

routine_idivl__ecx.exit669:                       ; preds = %1448, %1452
  %1464 = phi %struct.Memory* [ %1451, %1448 ], [ %loadMem_463dfd, %1452 ]
  store %struct.Memory* %1464, %struct.Memory** %MEMORY
  %loadMem_463dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 7
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RDX.i666 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %RDX.i666
  %1472 = load i64, i64* %PC.i665
  %1473 = add i64 %1472, 3
  store i64 %1473, i64* %PC.i665
  %1474 = trunc i64 %1471 to i32
  %1475 = sub i32 %1474, 1
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RDX.i666, align 8
  %1477 = icmp ult i32 %1474, 1
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1478, i8* %1479, align 1
  %1480 = and i32 %1475, 255
  %1481 = call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1484, i8* %1485, align 1
  %1486 = xor i64 1, %1471
  %1487 = trunc i64 %1486 to i32
  %1488 = xor i32 %1487, %1475
  %1489 = lshr i32 %1488, 4
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1491, i8* %1492, align 1
  %1493 = icmp eq i32 %1475, 0
  %1494 = zext i1 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1494, i8* %1495, align 1
  %1496 = lshr i32 %1475, 31
  %1497 = trunc i32 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1497, i8* %1498, align 1
  %1499 = lshr i32 %1474, 31
  %1500 = xor i32 %1496, %1499
  %1501 = add i32 %1500, %1499
  %1502 = icmp eq i32 %1501, 2
  %1503 = zext i1 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1503, i8* %1504, align 1
  store %struct.Memory* %loadMem_463dff, %struct.Memory** %MEMORY
  %loadMem_463e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 33
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 15
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 19
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %R9.i664 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %RBP.i663
  %1515 = sub i64 %1514, 608
  %1516 = load i64, i64* %PC.i662
  %1517 = add i64 %1516, 7
  store i64 %1517, i64* %PC.i662
  %1518 = inttoptr i64 %1515 to i64*
  %1519 = load i64, i64* %1518
  store i64 %1519, i64* %R9.i664, align 8
  store %struct.Memory* %loadMem_463e02, %struct.Memory** %MEMORY
  %loadMem_463e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 7
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %EDX.i660 = bitcast %union.anon* %1525 to i32*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 15
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %1528 to i64*
  %1529 = load i64, i64* %RBP.i661
  %1530 = sub i64 %1529, 616
  %1531 = load i32, i32* %EDX.i660
  %1532 = zext i32 %1531 to i64
  %1533 = load i64, i64* %PC.i659
  %1534 = add i64 %1533, 6
  store i64 %1534, i64* %PC.i659
  %1535 = inttoptr i64 %1530 to i32*
  store i32 %1531, i32* %1535
  store %struct.Memory* %loadMem_463e09, %struct.Memory** %MEMORY
  %loadMem_463e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 7
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RDX.i657 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 19
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %R9.i658 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %R9.i658
  %1546 = load i64, i64* %PC.i656
  %1547 = add i64 %1546, 3
  store i64 %1547, i64* %PC.i656
  store i64 %1545, i64* %RDX.i657, align 8
  store %struct.Memory* %loadMem_463e0f, %struct.Memory** %MEMORY
  %loadMem_463e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 5
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RCX.i654 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 15
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RBP.i655
  %1558 = sub i64 %1557, 612
  %1559 = load i64, i64* %PC.i653
  %1560 = add i64 %1559, 6
  store i64 %1560, i64* %PC.i653
  %1561 = inttoptr i64 %1558 to i32*
  %1562 = load i32, i32* %1561
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RCX.i654, align 8
  store %struct.Memory* %loadMem_463e12, %struct.Memory** %MEMORY
  %loadMem_463e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 17
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %R8D.i651 = bitcast %union.anon* %1569 to i32*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %1572 to i64*
  %1573 = bitcast i32* %R8D.i651 to i64*
  %1574 = load i64, i64* %RBP.i652
  %1575 = sub i64 %1574, 616
  %1576 = load i64, i64* %PC.i650
  %1577 = add i64 %1576, 7
  store i64 %1577, i64* %PC.i650
  %1578 = inttoptr i64 %1575 to i32*
  %1579 = load i32, i32* %1578
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %1573, align 8
  store %struct.Memory* %loadMem_463e18, %struct.Memory** %MEMORY
  %loadMem1_463e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %PC.i649
  %1585 = add i64 %1584, -73103
  %1586 = load i64, i64* %PC.i649
  %1587 = add i64 %1586, 5
  %1588 = load i64, i64* %PC.i649
  %1589 = add i64 %1588, 5
  store i64 %1589, i64* %PC.i649
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1591 = load i64, i64* %1590, align 8
  %1592 = add i64 %1591, -8
  %1593 = inttoptr i64 %1592 to i64*
  store i64 %1587, i64* %1593
  store i64 %1592, i64* %1590, align 8
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1585, i64* %1594, align 8
  store %struct.Memory* %loadMem1_463e1f, %struct.Memory** %MEMORY
  %loadMem2_463e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463e1f = load i64, i64* %3
  %call2_463e1f = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_463e1f, %struct.Memory* %loadMem2_463e1f)
  store %struct.Memory* %call2_463e1f, %struct.Memory** %MEMORY
  br label %block_.L_463e24

block_.L_463e24:                                  ; preds = %routine_idivl__ecx.exit669, %block_463dae
  %loadMem_463e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 9
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RSI.i648 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %PC.i647
  %1602 = add i64 %1601, 5
  store i64 %1602, i64* %PC.i647
  store i64 1, i64* %RSI.i648, align 8
  store %struct.Memory* %loadMem_463e24, %struct.Memory** %MEMORY
  %loadMem_463e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 7
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RDX.i645 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 15
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %RBP.i646
  %1613 = sub i64 %1612, 80
  %1614 = load i64, i64* %PC.i644
  %1615 = add i64 %1614, 4
  store i64 %1615, i64* %PC.i644
  store i64 %1613, i64* %RDX.i645, align 8
  store %struct.Memory* %loadMem_463e29, %struct.Memory** %MEMORY
  %loadMem_463e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 11
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RDI.i642 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 15
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %RBP.i643
  %1626 = sub i64 %1625, 48
  %1627 = load i64, i64* %PC.i641
  %1628 = add i64 %1627, 3
  store i64 %1628, i64* %PC.i641
  %1629 = inttoptr i64 %1626 to i32*
  %1630 = load i32, i32* %1629
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RDI.i642, align 8
  store %struct.Memory* %loadMem_463e2d, %struct.Memory** %MEMORY
  %loadMem1_463e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1634 to i64*
  %1635 = load i64, i64* %PC.i640
  %1636 = add i64 %1635, -345584
  %1637 = load i64, i64* %PC.i640
  %1638 = add i64 %1637, 5
  %1639 = load i64, i64* %PC.i640
  %1640 = add i64 %1639, 5
  store i64 %1640, i64* %PC.i640
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1642 = load i64, i64* %1641, align 8
  %1643 = add i64 %1642, -8
  %1644 = inttoptr i64 %1643 to i64*
  store i64 %1638, i64* %1644
  store i64 %1643, i64* %1641, align 8
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1636, i64* %1645, align 8
  store %struct.Memory* %loadMem1_463e30, %struct.Memory** %MEMORY
  %loadMem2_463e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463e30 = load i64, i64* %3
  %call2_463e30 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_463e30, %struct.Memory* %loadMem2_463e30)
  store %struct.Memory* %call2_463e30, %struct.Memory** %MEMORY
  %loadMem_463e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 1
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %EAX.i638 = bitcast %union.anon* %1651 to i32*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 15
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %1654 to i64*
  %1655 = load i64, i64* %RBP.i639
  %1656 = sub i64 %1655, 500
  %1657 = load i32, i32* %EAX.i638
  %1658 = zext i32 %1657 to i64
  %1659 = load i64, i64* %PC.i637
  %1660 = add i64 %1659, 6
  store i64 %1660, i64* %PC.i637
  %1661 = inttoptr i64 %1656 to i32*
  store i32 %1657, i32* %1661
  store %struct.Memory* %loadMem_463e35, %struct.Memory** %MEMORY
  %loadMem_463e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 15
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %RBP.i636
  %1669 = sub i64 %1668, 500
  %1670 = load i64, i64* %PC.i635
  %1671 = add i64 %1670, 7
  store i64 %1671, i64* %PC.i635
  %1672 = inttoptr i64 %1669 to i32*
  %1673 = load i32, i32* %1672
  %1674 = sub i32 %1673, 1
  %1675 = icmp ult i32 %1673, 1
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1676, i8* %1677, align 1
  %1678 = and i32 %1674, 255
  %1679 = call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1682, i8* %1683, align 1
  %1684 = xor i32 %1673, 1
  %1685 = xor i32 %1684, %1674
  %1686 = lshr i32 %1685, 4
  %1687 = trunc i32 %1686 to i8
  %1688 = and i8 %1687, 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1688, i8* %1689, align 1
  %1690 = icmp eq i32 %1674, 0
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1674, 31
  %1694 = trunc i32 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1694, i8* %1695, align 1
  %1696 = lshr i32 %1673, 31
  %1697 = xor i32 %1693, %1696
  %1698 = add i32 %1697, %1696
  %1699 = icmp eq i32 %1698, 2
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1700, i8* %1701, align 1
  store %struct.Memory* %loadMem_463e3b, %struct.Memory** %MEMORY
  %loadMem_463e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %PC.i634
  %1706 = add i64 %1705, 11
  %1707 = load i64, i64* %PC.i634
  %1708 = add i64 %1707, 6
  %1709 = load i64, i64* %PC.i634
  %1710 = add i64 %1709, 6
  store i64 %1710, i64* %PC.i634
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1712 = load i8, i8* %1711, align 1
  %1713 = icmp eq i8 %1712, 0
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %BRANCH_TAKEN, align 1
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1716 = select i1 %1713, i64 %1706, i64 %1708
  store i64 %1716, i64* %1715, align 8
  store %struct.Memory* %loadMem_463e42, %struct.Memory** %MEMORY
  %loadBr_463e42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_463e42 = icmp eq i8 %loadBr_463e42, 1
  br i1 %cmpBr_463e42, label %block_.L_463e4d, label %block_463e48

block_463e48:                                     ; preds = %block_.L_463e24
  %loadMem_463e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1719 to i64*
  %1720 = load i64, i64* %PC.i633
  %1721 = add i64 %1720, 118
  %1722 = load i64, i64* %PC.i633
  %1723 = add i64 %1722, 5
  store i64 %1723, i64* %PC.i633
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1721, i64* %1724, align 8
  store %struct.Memory* %loadMem_463e48, %struct.Memory** %MEMORY
  br label %block_.L_463ebe

block_.L_463e4d:                                  ; preds = %block_.L_463e24
  %loadMem_463e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 11
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %RDI.i632 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %PC.i631
  %1732 = add i64 %1731, 10
  store i64 %1732, i64* %PC.i631
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i632, align 8
  store %struct.Memory* %loadMem_463e4d, %struct.Memory** %MEMORY
  %loadMem_463e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 9
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RSI.i630 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %PC.i629
  %1740 = add i64 %1739, 5
  store i64 %1740, i64* %PC.i629
  store i64 1082, i64* %RSI.i630, align 8
  store %struct.Memory* %loadMem_463e57, %struct.Memory** %MEMORY
  %loadMem_463e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 7
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RDX.i628 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %PC.i627
  %1748 = add i64 %1747, 10
  store i64 %1748, i64* %PC.i627
  store i64 ptrtoint (%G__0x57fd90_type* @G__0x57fd90 to i64), i64* %RDX.i628, align 8
  store %struct.Memory* %loadMem_463e5c, %struct.Memory** %MEMORY
  %loadMem_463e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 1
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %PC.i625
  %1756 = add i64 %1755, 5
  store i64 %1756, i64* %PC.i625
  store i64 20, i64* %RAX.i626, align 8
  store %struct.Memory* %loadMem_463e66, %struct.Memory** %MEMORY
  %loadMem_463e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 5
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 15
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RBP.i624
  %1767 = sub i64 %1766, 48
  %1768 = load i64, i64* %PC.i622
  %1769 = add i64 %1768, 3
  store i64 %1769, i64* %PC.i622
  %1770 = inttoptr i64 %1767 to i32*
  %1771 = load i32, i32* %1770
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RCX.i623, align 8
  store %struct.Memory* %loadMem_463e6b, %struct.Memory** %MEMORY
  %loadMem_463e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 1
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %EAX.i620 = bitcast %union.anon* %1778 to i32*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 15
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %1781 to i64*
  %1782 = load i64, i64* %RBP.i621
  %1783 = sub i64 %1782, 620
  %1784 = load i32, i32* %EAX.i620
  %1785 = zext i32 %1784 to i64
  %1786 = load i64, i64* %PC.i619
  %1787 = add i64 %1786, 6
  store i64 %1787, i64* %PC.i619
  %1788 = inttoptr i64 %1783 to i32*
  store i32 %1784, i32* %1788
  store %struct.Memory* %loadMem_463e6e, %struct.Memory** %MEMORY
  %loadMem_463e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 5
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %ECX.i617 = bitcast %union.anon* %1794 to i32*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 1
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RAX.i618 = bitcast %union.anon* %1797 to i64*
  %1798 = load i32, i32* %ECX.i617
  %1799 = zext i32 %1798 to i64
  %1800 = load i64, i64* %PC.i616
  %1801 = add i64 %1800, 2
  store i64 %1801, i64* %PC.i616
  %1802 = and i64 %1799, 4294967295
  store i64 %1802, i64* %RAX.i618, align 8
  store %struct.Memory* %loadMem_463e74, %struct.Memory** %MEMORY
  %loadMem_463e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 7
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RDX.i614 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 15
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %1811 to i64*
  %1812 = load i64, i64* %RBP.i615
  %1813 = sub i64 %1812, 632
  %1814 = load i64, i64* %RDX.i614
  %1815 = load i64, i64* %PC.i613
  %1816 = add i64 %1815, 7
  store i64 %1816, i64* %PC.i613
  %1817 = inttoptr i64 %1813 to i64*
  store i64 %1814, i64* %1817
  store %struct.Memory* %loadMem_463e76, %struct.Memory** %MEMORY
  %loadMem_463e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 33
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %PC.i612
  %1822 = add i64 %1821, 1
  store i64 %1822, i64* %PC.i612
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1825 = bitcast %union.anon* %1824 to i32*
  %1826 = load i32, i32* %1825, align 8
  %1827 = sext i32 %1826 to i64
  %1828 = lshr i64 %1827, 32
  store i64 %1828, i64* %1823, align 8
  store %struct.Memory* %loadMem_463e7d, %struct.Memory** %MEMORY
  %loadMem_463e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 5
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 15
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %1837 to i64*
  %1838 = load i64, i64* %RBP.i611
  %1839 = sub i64 %1838, 620
  %1840 = load i64, i64* %PC.i609
  %1841 = add i64 %1840, 6
  store i64 %1841, i64* %PC.i609
  %1842 = inttoptr i64 %1839 to i32*
  %1843 = load i32, i32* %1842
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RCX.i610, align 8
  store %struct.Memory* %loadMem_463e7e, %struct.Memory** %MEMORY
  %loadMem_463e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 5
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %ECX.i605 = bitcast %union.anon* %1850 to i32*
  %1851 = load i32, i32* %ECX.i605
  %1852 = zext i32 %1851 to i64
  %1853 = load i64, i64* %PC.i604
  %1854 = add i64 %1853, 2
  store i64 %1854, i64* %PC.i604
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1856 = bitcast %union.anon* %1855 to i32*
  %1857 = load i32, i32* %1856, align 8
  %1858 = zext i32 %1857 to i64
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1860 = bitcast %union.anon* %1859 to i32*
  %1861 = load i32, i32* %1860, align 8
  %1862 = zext i32 %1861 to i64
  %1863 = shl i64 %1852, 32
  %1864 = ashr exact i64 %1863, 32
  %1865 = shl i64 %1862, 32
  %1866 = or i64 %1865, %1858
  %1867 = sdiv i64 %1866, %1864
  %1868 = shl i64 %1867, 32
  %1869 = ashr exact i64 %1868, 32
  %1870 = icmp eq i64 %1867, %1869
  br i1 %1870, label %1875, label %1871

; <label>:1871:                                   ; preds = %block_.L_463e4d
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1873 = load i64, i64* %1872, align 8
  %1874 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1873, %struct.Memory* %loadMem_463e84)
  br label %routine_idivl__ecx.exit606

; <label>:1875:                                   ; preds = %block_.L_463e4d
  %1876 = srem i64 %1866, %1864
  %1877 = getelementptr inbounds %union.anon, %union.anon* %1855, i64 0, i32 0
  %1878 = and i64 %1867, 4294967295
  store i64 %1878, i64* %1877, align 8
  %1879 = getelementptr inbounds %union.anon, %union.anon* %1859, i64 0, i32 0
  %1880 = and i64 %1876, 4294967295
  store i64 %1880, i64* %1879, align 8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1881, align 1
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1882, align 1
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1883, align 1
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1884, align 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1885, align 1
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1886, align 1
  br label %routine_idivl__ecx.exit606

routine_idivl__ecx.exit606:                       ; preds = %1871, %1875
  %1887 = phi %struct.Memory* [ %1874, %1871 ], [ %loadMem_463e84, %1875 ]
  store %struct.Memory* %1887, %struct.Memory** %MEMORY
  %loadMem_463e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 33
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 1
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RAX.i603 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %RAX.i603
  %1895 = load i64, i64* %PC.i602
  %1896 = add i64 %1895, 3
  store i64 %1896, i64* %PC.i602
  %1897 = trunc i64 %1894 to i32
  %1898 = sub i32 %1897, 1
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RAX.i603, align 8
  %1900 = icmp ult i32 %1897, 1
  %1901 = zext i1 %1900 to i8
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1901, i8* %1902, align 1
  %1903 = and i32 %1898, 255
  %1904 = call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1907, i8* %1908, align 1
  %1909 = xor i64 1, %1894
  %1910 = trunc i64 %1909 to i32
  %1911 = xor i32 %1910, %1898
  %1912 = lshr i32 %1911, 4
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1914, i8* %1915, align 1
  %1916 = icmp eq i32 %1898, 0
  %1917 = zext i1 %1916 to i8
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1917, i8* %1918, align 1
  %1919 = lshr i32 %1898, 31
  %1920 = trunc i32 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1920, i8* %1921, align 1
  %1922 = lshr i32 %1897, 31
  %1923 = xor i32 %1919, %1922
  %1924 = add i32 %1923, %1922
  %1925 = icmp eq i32 %1924, 2
  %1926 = zext i1 %1925 to i8
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1926, i8* %1927, align 1
  store %struct.Memory* %loadMem_463e86, %struct.Memory** %MEMORY
  %loadMem_463e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 17
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %R8D.i600 = bitcast %union.anon* %1933 to i32*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 15
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %1936 to i64*
  %1937 = bitcast i32* %R8D.i600 to i64*
  %1938 = load i64, i64* %RBP.i601
  %1939 = sub i64 %1938, 48
  %1940 = load i64, i64* %PC.i599
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i599
  %1942 = inttoptr i64 %1939 to i32*
  %1943 = load i32, i32* %1942
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %1937, align 8
  store %struct.Memory* %loadMem_463e89, %struct.Memory** %MEMORY
  %loadMem_463e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 33
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 1
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %EAX.i597 = bitcast %union.anon* %1950 to i32*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %1953 to i64*
  %1954 = load i64, i64* %RBP.i598
  %1955 = sub i64 %1954, 636
  %1956 = load i32, i32* %EAX.i597
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC.i596
  %1959 = add i64 %1958, 6
  store i64 %1959, i64* %PC.i596
  %1960 = inttoptr i64 %1955 to i32*
  store i32 %1956, i32* %1960
  store %struct.Memory* %loadMem_463e8d, %struct.Memory** %MEMORY
  %loadMem_463e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 17
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %R8D.i594 = bitcast %union.anon* %1966 to i32*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 1
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %1969 to i64*
  %1970 = load i32, i32* %R8D.i594
  %1971 = zext i32 %1970 to i64
  %1972 = load i64, i64* %PC.i593
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC.i593
  %1974 = and i64 %1971, 4294967295
  store i64 %1974, i64* %RAX.i595, align 8
  store %struct.Memory* %loadMem_463e93, %struct.Memory** %MEMORY
  %loadMem_463e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1977 to i64*
  %1978 = load i64, i64* %PC.i592
  %1979 = add i64 %1978, 1
  store i64 %1979, i64* %PC.i592
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1982 = bitcast %union.anon* %1981 to i32*
  %1983 = load i32, i32* %1982, align 8
  %1984 = sext i32 %1983 to i64
  %1985 = lshr i64 %1984, 32
  store i64 %1985, i64* %1980, align 8
  store %struct.Memory* %loadMem_463e96, %struct.Memory** %MEMORY
  %loadMem_463e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 5
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %ECX.i588 = bitcast %union.anon* %1991 to i32*
  %1992 = load i32, i32* %ECX.i588
  %1993 = zext i32 %1992 to i64
  %1994 = load i64, i64* %PC.i587
  %1995 = add i64 %1994, 2
  store i64 %1995, i64* %PC.i587
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1997 = bitcast %union.anon* %1996 to i32*
  %1998 = load i32, i32* %1997, align 8
  %1999 = zext i32 %1998 to i64
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2001 = bitcast %union.anon* %2000 to i32*
  %2002 = load i32, i32* %2001, align 8
  %2003 = zext i32 %2002 to i64
  %2004 = shl i64 %1993, 32
  %2005 = ashr exact i64 %2004, 32
  %2006 = shl i64 %2003, 32
  %2007 = or i64 %2006, %1999
  %2008 = sdiv i64 %2007, %2005
  %2009 = shl i64 %2008, 32
  %2010 = ashr exact i64 %2009, 32
  %2011 = icmp eq i64 %2008, %2010
  br i1 %2011, label %2016, label %2012

; <label>:2012:                                   ; preds = %routine_idivl__ecx.exit606
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2014 = load i64, i64* %2013, align 8
  %2015 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2014, %struct.Memory* %loadMem_463e97)
  br label %routine_idivl__ecx.exit

; <label>:2016:                                   ; preds = %routine_idivl__ecx.exit606
  %2017 = srem i64 %2007, %2005
  %2018 = getelementptr inbounds %union.anon, %union.anon* %1996, i64 0, i32 0
  %2019 = and i64 %2008, 4294967295
  store i64 %2019, i64* %2018, align 8
  %2020 = getelementptr inbounds %union.anon, %union.anon* %2000, i64 0, i32 0
  %2021 = and i64 %2017, 4294967295
  store i64 %2021, i64* %2020, align 8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2022, align 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2023, align 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2024, align 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2025, align 1
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2026, align 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2027, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2012, %2016
  %2028 = phi %struct.Memory* [ %2015, %2012 ], [ %loadMem_463e97, %2016 ]
  store %struct.Memory* %2028, %struct.Memory** %MEMORY
  %loadMem_463e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 7
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RDX.i586 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RDX.i586
  %2036 = load i64, i64* %PC.i585
  %2037 = add i64 %2036, 3
  store i64 %2037, i64* %PC.i585
  %2038 = trunc i64 %2035 to i32
  %2039 = sub i32 %2038, 1
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RDX.i586, align 8
  %2041 = icmp ult i32 %2038, 1
  %2042 = zext i1 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2042, i8* %2043, align 1
  %2044 = and i32 %2039, 255
  %2045 = call i32 @llvm.ctpop.i32(i32 %2044)
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  %2048 = xor i8 %2047, 1
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2048, i8* %2049, align 1
  %2050 = xor i64 1, %2035
  %2051 = trunc i64 %2050 to i32
  %2052 = xor i32 %2051, %2039
  %2053 = lshr i32 %2052, 4
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2055, i8* %2056, align 1
  %2057 = icmp eq i32 %2039, 0
  %2058 = zext i1 %2057 to i8
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2058, i8* %2059, align 1
  %2060 = lshr i32 %2039, 31
  %2061 = trunc i32 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2061, i8* %2062, align 1
  %2063 = lshr i32 %2038, 31
  %2064 = xor i32 %2060, %2063
  %2065 = add i32 %2064, %2063
  %2066 = icmp eq i32 %2065, 2
  %2067 = zext i1 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2067, i8* %2068, align 1
  store %struct.Memory* %loadMem_463e99, %struct.Memory** %MEMORY
  %loadMem_463e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 15
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 19
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %R9.i584 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RBP.i583
  %2079 = sub i64 %2078, 632
  %2080 = load i64, i64* %PC.i582
  %2081 = add i64 %2080, 7
  store i64 %2081, i64* %PC.i582
  %2082 = inttoptr i64 %2079 to i64*
  %2083 = load i64, i64* %2082
  store i64 %2083, i64* %R9.i584, align 8
  store %struct.Memory* %loadMem_463e9c, %struct.Memory** %MEMORY
  %loadMem_463ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 7
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2089 to i32*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 15
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %RBP.i581
  %2094 = sub i64 %2093, 640
  %2095 = load i32, i32* %EDX.i
  %2096 = zext i32 %2095 to i64
  %2097 = load i64, i64* %PC.i580
  %2098 = add i64 %2097, 6
  store i64 %2098, i64* %PC.i580
  %2099 = inttoptr i64 %2094 to i32*
  store i32 %2095, i32* %2099
  store %struct.Memory* %loadMem_463ea3, %struct.Memory** %MEMORY
  %loadMem_463ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 7
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 19
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %R9.i = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %R9.i
  %2110 = load i64, i64* %PC.i578
  %2111 = add i64 %2110, 3
  store i64 %2111, i64* %PC.i578
  store i64 %2109, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_463ea9, %struct.Memory** %MEMORY
  %loadMem_463eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 5
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RCX.i576 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 15
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RBP.i577 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %RBP.i577
  %2122 = sub i64 %2121, 636
  %2123 = load i64, i64* %PC.i575
  %2124 = add i64 %2123, 6
  store i64 %2124, i64* %PC.i575
  %2125 = inttoptr i64 %2122 to i32*
  %2126 = load i32, i32* %2125
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RCX.i576, align 8
  store %struct.Memory* %loadMem_463eac, %struct.Memory** %MEMORY
  %loadMem_463eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 17
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %R8D.i573 = bitcast %union.anon* %2133 to i32*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 15
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %2136 to i64*
  %2137 = bitcast i32* %R8D.i573 to i64*
  %2138 = load i64, i64* %RBP.i574
  %2139 = sub i64 %2138, 640
  %2140 = load i64, i64* %PC.i572
  %2141 = add i64 %2140, 7
  store i64 %2141, i64* %PC.i572
  %2142 = inttoptr i64 %2139 to i32*
  %2143 = load i32, i32* %2142
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %2137, align 8
  store %struct.Memory* %loadMem_463eb2, %struct.Memory** %MEMORY
  %loadMem1_463eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2147 to i64*
  %2148 = load i64, i64* %PC.i571
  %2149 = add i64 %2148, -73257
  %2150 = load i64, i64* %PC.i571
  %2151 = add i64 %2150, 5
  %2152 = load i64, i64* %PC.i571
  %2153 = add i64 %2152, 5
  store i64 %2153, i64* %PC.i571
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2155 = load i64, i64* %2154, align 8
  %2156 = add i64 %2155, -8
  %2157 = inttoptr i64 %2156 to i64*
  store i64 %2151, i64* %2157
  store i64 %2156, i64* %2154, align 8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2149, i64* %2158, align 8
  store %struct.Memory* %loadMem1_463eb9, %struct.Memory** %MEMORY
  %loadMem2_463eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463eb9 = load i64, i64* %3
  %call2_463eb9 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_463eb9, %struct.Memory* %loadMem2_463eb9)
  store %struct.Memory* %call2_463eb9, %struct.Memory** %MEMORY
  br label %block_.L_463ebe

block_.L_463ebe:                                  ; preds = %routine_idivl__ecx.exit, %block_463e48
  %loadMem_463ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2161 to i64*
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 9
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %RSI.i569 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 15
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %RBP.i570
  %2169 = sub i64 %2168, 488
  %2170 = load i64, i64* %PC.i568
  %2171 = add i64 %2170, 7
  store i64 %2171, i64* %PC.i568
  store i64 %2169, i64* %RSI.i569, align 8
  store %struct.Memory* %loadMem_463ebe, %struct.Memory** %MEMORY
  %loadMem_463ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 1
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 15
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %2180 to i64*
  %2181 = load i64, i64* %RBP.i567
  %2182 = sub i64 %2181, 80
  %2183 = load i64, i64* %PC.i565
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %PC.i565
  %2185 = inttoptr i64 %2182 to i32*
  %2186 = load i32, i32* %2185
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i566, align 8
  store %struct.Memory* %loadMem_463ec5, %struct.Memory** %MEMORY
  %loadMem_463ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 33
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 1
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %EAX.i563 = bitcast %union.anon* %2193 to i32*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 15
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %2196 to i64*
  %2197 = load i64, i64* %RBP.i564
  %2198 = sub i64 %2197, 488
  %2199 = load i32, i32* %EAX.i563
  %2200 = zext i32 %2199 to i64
  %2201 = load i64, i64* %PC.i562
  %2202 = add i64 %2201, 6
  store i64 %2202, i64* %PC.i562
  %2203 = inttoptr i64 %2198 to i32*
  store i32 %2199, i32* %2203
  store %struct.Memory* %loadMem_463ec8, %struct.Memory** %MEMORY
  %loadMem_463ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 15
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RBP.i561
  %2211 = sub i64 %2210, 288
  %2212 = load i64, i64* %PC.i560
  %2213 = add i64 %2212, 10
  store i64 %2213, i64* %PC.i560
  %2214 = inttoptr i64 %2211 to i32*
  store i32 0, i32* %2214
  store %struct.Memory* %loadMem_463ece, %struct.Memory** %MEMORY
  %loadMem_463ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RBP.i559
  %2222 = sub i64 %2221, 88
  %2223 = load i64, i64* %PC.i558
  %2224 = add i64 %2223, 7
  store i64 %2224, i64* %PC.i558
  %2225 = inttoptr i64 %2222 to i32*
  store i32 1, i32* %2225
  store %struct.Memory* %loadMem_463ed8, %struct.Memory** %MEMORY
  %loadMem_463edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 33
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 11
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RDI.i556 = bitcast %union.anon* %2231 to i64*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 15
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %RBP.i557
  %2236 = sub i64 %2235, 48
  %2237 = load i64, i64* %PC.i555
  %2238 = add i64 %2237, 3
  store i64 %2238, i64* %PC.i555
  %2239 = inttoptr i64 %2236 to i32*
  %2240 = load i32, i32* %2239
  %2241 = zext i32 %2240 to i64
  store i64 %2241, i64* %RDI.i556, align 8
  store %struct.Memory* %loadMem_463edf, %struct.Memory** %MEMORY
  %loadMem1_463ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %PC.i554
  %2246 = add i64 %2245, -8530
  %2247 = load i64, i64* %PC.i554
  %2248 = add i64 %2247, 5
  %2249 = load i64, i64* %PC.i554
  %2250 = add i64 %2249, 5
  store i64 %2250, i64* %PC.i554
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2252 = load i64, i64* %2251, align 8
  %2253 = add i64 %2252, -8
  %2254 = inttoptr i64 %2253 to i64*
  store i64 %2248, i64* %2254
  store i64 %2253, i64* %2251, align 8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2246, i64* %2255, align 8
  store %struct.Memory* %loadMem1_463ee2, %struct.Memory** %MEMORY
  %loadMem2_463ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463ee2 = load i64, i64* %3
  %call2_463ee2 = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64 %loadPC_463ee2, %struct.Memory* %loadMem2_463ee2)
  store %struct.Memory* %call2_463ee2, %struct.Memory** %MEMORY
  %loadMem_463ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 7
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RDX.i552 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 15
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %2264 to i64*
  %2265 = load i64, i64* %RBP.i553
  %2266 = sub i64 %2265, 488
  %2267 = load i64, i64* %PC.i551
  %2268 = add i64 %2267, 7
  store i64 %2268, i64* %PC.i551
  store i64 %2266, i64* %RDX.i552, align 8
  store %struct.Memory* %loadMem_463ee7, %struct.Memory** %MEMORY
  %loadMem_463eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 11
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %RDI.i549 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 15
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %RBP.i550
  %2279 = sub i64 %2278, 48
  %2280 = load i64, i64* %PC.i548
  %2281 = add i64 %2280, 3
  store i64 %2281, i64* %PC.i548
  %2282 = inttoptr i64 %2279 to i32*
  %2283 = load i32, i32* %2282
  %2284 = zext i32 %2283 to i64
  store i64 %2284, i64* %RDI.i549, align 8
  store %struct.Memory* %loadMem_463eee, %struct.Memory** %MEMORY
  %loadMem_463ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2286 = getelementptr inbounds %struct.GPR, %struct.GPR* %2285, i32 0, i32 33
  %2287 = getelementptr inbounds %struct.Reg, %struct.Reg* %2286, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2287 to i64*
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 9
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %RSI.i546 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 15
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %RBP.i547
  %2295 = sub i64 %2294, 80
  %2296 = load i64, i64* %PC.i545
  %2297 = add i64 %2296, 3
  store i64 %2297, i64* %PC.i545
  %2298 = inttoptr i64 %2295 to i32*
  %2299 = load i32, i32* %2298
  %2300 = zext i32 %2299 to i64
  store i64 %2300, i64* %RSI.i546, align 8
  store %struct.Memory* %loadMem_463ef1, %struct.Memory** %MEMORY
  %loadMem1_463ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %PC.i544
  %2305 = add i64 %2304, 21804
  %2306 = load i64, i64* %PC.i544
  %2307 = add i64 %2306, 5
  %2308 = load i64, i64* %PC.i544
  %2309 = add i64 %2308, 5
  store i64 %2309, i64* %PC.i544
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2311 = load i64, i64* %2310, align 8
  %2312 = add i64 %2311, -8
  %2313 = inttoptr i64 %2312 to i64*
  store i64 %2307, i64* %2313
  store i64 %2312, i64* %2310, align 8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2305, i64* %2314, align 8
  store %struct.Memory* %loadMem1_463ef4, %struct.Memory** %MEMORY
  %loadMem2_463ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463ef4 = load i64, i64* %3
  %call2_463ef4 = call %struct.Memory* @sub_469420.set_up_snapback_moves(%struct.State* %0, i64 %loadPC_463ef4, %struct.Memory* %loadMem2_463ef4)
  store %struct.Memory* %call2_463ef4, %struct.Memory** %MEMORY
  %loadMem_463ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 9
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %RSI.i542 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 15
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %2323 to i64*
  %2324 = load i64, i64* %RBP.i543
  %2325 = sub i64 %2324, 488
  %2326 = load i64, i64* %PC.i541
  %2327 = add i64 %2326, 7
  store i64 %2327, i64* %PC.i541
  store i64 %2325, i64* %RSI.i542, align 8
  store %struct.Memory* %loadMem_463ef9, %struct.Memory** %MEMORY
  %loadMem_463f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 33
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 17
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %R8D.i540 = bitcast %union.anon* %2333 to i32*
  %2334 = bitcast i32* %R8D.i540 to i64*
  %2335 = load i32, i32* %R8D.i540
  %2336 = zext i32 %2335 to i64
  %2337 = load i32, i32* %R8D.i540
  %2338 = zext i32 %2337 to i64
  %2339 = load i64, i64* %PC.i539
  %2340 = add i64 %2339, 3
  store i64 %2340, i64* %PC.i539
  %2341 = xor i64 %2338, %2336
  %2342 = trunc i64 %2341 to i32
  %2343 = and i64 %2341, 4294967295
  store i64 %2343, i64* %2334, align 8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2344, align 1
  %2345 = and i32 %2342, 255
  %2346 = call i32 @llvm.ctpop.i32(i32 %2345)
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2349, i8* %2350, align 1
  %2351 = icmp eq i32 %2342, 0
  %2352 = zext i1 %2351 to i8
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2352, i8* %2353, align 1
  %2354 = lshr i32 %2342, 31
  %2355 = trunc i32 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2355, i8* %2356, align 1
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2357, align 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2358, align 1
  store %struct.Memory* %loadMem_463f00, %struct.Memory** %MEMORY
  %loadMem_463f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2361 to i64*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 11
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RDI.i537 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2367 to i64*
  %2368 = load i64, i64* %RBP.i538
  %2369 = sub i64 %2368, 48
  %2370 = load i64, i64* %PC.i536
  %2371 = add i64 %2370, 3
  store i64 %2371, i64* %PC.i536
  %2372 = inttoptr i64 %2369 to i32*
  %2373 = load i32, i32* %2372
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RDI.i537, align 8
  store %struct.Memory* %loadMem_463f03, %struct.Memory** %MEMORY
  %loadMem_463f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 7
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RDX.i534 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 15
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RBP.i535
  %2385 = sub i64 %2384, 68
  %2386 = load i64, i64* %PC.i533
  %2387 = add i64 %2386, 3
  store i64 %2387, i64* %PC.i533
  %2388 = inttoptr i64 %2385 to i32*
  %2389 = load i32, i32* %2388
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RDX.i534, align 8
  store %struct.Memory* %loadMem_463f06, %struct.Memory** %MEMORY
  %loadMem_463f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 5
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %RBP.i532
  %2401 = sub i64 %2400, 512
  %2402 = load i64, i64* %PC.i530
  %2403 = add i64 %2402, 7
  store i64 %2403, i64* %PC.i530
  %2404 = inttoptr i64 %2401 to i64*
  %2405 = load i64, i64* %2404
  store i64 %2405, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_463f09, %struct.Memory** %MEMORY
  %loadMem1_463f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2408 to i64*
  %2409 = load i64, i64* %PC.i529
  %2410 = add i64 %2409, -4736
  %2411 = load i64, i64* %PC.i529
  %2412 = add i64 %2411, 5
  %2413 = load i64, i64* %PC.i529
  %2414 = add i64 %2413, 5
  store i64 %2414, i64* %PC.i529
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2416 = load i64, i64* %2415, align 8
  %2417 = add i64 %2416, -8
  %2418 = inttoptr i64 %2417 to i64*
  store i64 %2412, i64* %2418
  store i64 %2417, i64* %2415, align 8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2410, i64* %2419, align 8
  store %struct.Memory* %loadMem1_463f10, %struct.Memory** %MEMORY
  %loadMem2_463f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_463f10 = load i64, i64* %3
  %call2_463f10 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64 %loadPC_463f10, %struct.Memory* %loadMem2_463f10)
  store %struct.Memory* %call2_463f10, %struct.Memory** %MEMORY
  %loadMem_463f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 15
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %2425 to i64*
  %2426 = load i64, i64* %RBP.i528
  %2427 = sub i64 %2426, 504
  %2428 = load i64, i64* %PC.i527
  %2429 = add i64 %2428, 10
  store i64 %2429, i64* %PC.i527
  %2430 = inttoptr i64 %2427 to i32*
  store i32 0, i32* %2430
  store %struct.Memory* %loadMem_463f15, %struct.Memory** %MEMORY
  br label %block_.L_463f1f

block_.L_463f1f:                                  ; preds = %block_.L_464165, %block_.L_463ebe
  %loadMem_463f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 1
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RBP.i526
  %2441 = sub i64 %2440, 504
  %2442 = load i64, i64* %PC.i524
  %2443 = add i64 %2442, 6
  store i64 %2443, i64* %PC.i524
  %2444 = inttoptr i64 %2441 to i32*
  %2445 = load i32, i32* %2444
  %2446 = zext i32 %2445 to i64
  store i64 %2446, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_463f1f, %struct.Memory** %MEMORY
  %loadMem_463f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 1
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %EAX.i522 = bitcast %union.anon* %2452 to i32*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 15
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %2455 to i64*
  %2456 = load i32, i32* %EAX.i522
  %2457 = zext i32 %2456 to i64
  %2458 = load i64, i64* %RBP.i523
  %2459 = sub i64 %2458, 88
  %2460 = load i64, i64* %PC.i521
  %2461 = add i64 %2460, 3
  store i64 %2461, i64* %PC.i521
  %2462 = inttoptr i64 %2459 to i32*
  %2463 = load i32, i32* %2462
  %2464 = sub i32 %2456, %2463
  %2465 = icmp ult i32 %2456, %2463
  %2466 = zext i1 %2465 to i8
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2466, i8* %2467, align 1
  %2468 = and i32 %2464, 255
  %2469 = call i32 @llvm.ctpop.i32(i32 %2468)
  %2470 = trunc i32 %2469 to i8
  %2471 = and i8 %2470, 1
  %2472 = xor i8 %2471, 1
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2472, i8* %2473, align 1
  %2474 = xor i32 %2463, %2456
  %2475 = xor i32 %2474, %2464
  %2476 = lshr i32 %2475, 4
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2478, i8* %2479, align 1
  %2480 = icmp eq i32 %2464, 0
  %2481 = zext i1 %2480 to i8
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2481, i8* %2482, align 1
  %2483 = lshr i32 %2464, 31
  %2484 = trunc i32 %2483 to i8
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2484, i8* %2485, align 1
  %2486 = lshr i32 %2456, 31
  %2487 = lshr i32 %2463, 31
  %2488 = xor i32 %2487, %2486
  %2489 = xor i32 %2483, %2486
  %2490 = add i32 %2489, %2488
  %2491 = icmp eq i32 %2490, 2
  %2492 = zext i1 %2491 to i8
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2492, i8* %2493, align 1
  store %struct.Memory* %loadMem_463f25, %struct.Memory** %MEMORY
  %loadMem_463f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 33
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2496 to i64*
  %2497 = load i64, i64* %PC.i520
  %2498 = add i64 %2497, 593
  %2499 = load i64, i64* %PC.i520
  %2500 = add i64 %2499, 6
  %2501 = load i64, i64* %PC.i520
  %2502 = add i64 %2501, 6
  store i64 %2502, i64* %PC.i520
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2504 = load i8, i8* %2503, align 1
  %2505 = icmp ne i8 %2504, 0
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2507 = load i8, i8* %2506, align 1
  %2508 = icmp ne i8 %2507, 0
  %2509 = xor i1 %2505, %2508
  %2510 = xor i1 %2509, true
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %BRANCH_TAKEN, align 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2513 = select i1 %2509, i64 %2500, i64 %2498
  store i64 %2513, i64* %2512, align 8
  store %struct.Memory* %loadMem_463f28, %struct.Memory** %MEMORY
  %loadBr_463f28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_463f28 = icmp eq i8 %loadBr_463f28, 1
  br i1 %cmpBr_463f28, label %block_.L_464179, label %block_463f2e

block_463f2e:                                     ; preds = %block_.L_463f1f
  %loadMem_463f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 1
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %EAX.i518 = bitcast %union.anon* %2519 to i32*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 1
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %RAX.i519
  %2524 = load i32, i32* %EAX.i518
  %2525 = zext i32 %2524 to i64
  %2526 = load i64, i64* %PC.i517
  %2527 = add i64 %2526, 2
  store i64 %2527, i64* %PC.i517
  %2528 = xor i64 %2525, %2523
  %2529 = trunc i64 %2528 to i32
  %2530 = and i64 %2528, 4294967295
  store i64 %2530, i64* %RAX.i519, align 8
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2531, align 1
  %2532 = and i32 %2529, 255
  %2533 = call i32 @llvm.ctpop.i32(i32 %2532)
  %2534 = trunc i32 %2533 to i8
  %2535 = and i8 %2534, 1
  %2536 = xor i8 %2535, 1
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2536, i8* %2537, align 1
  %2538 = icmp eq i32 %2529, 0
  %2539 = zext i1 %2538 to i8
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2539, i8* %2540, align 1
  %2541 = lshr i32 %2529, 31
  %2542 = trunc i32 %2541 to i8
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2542, i8* %2543, align 1
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2544, align 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2545, align 1
  store %struct.Memory* %loadMem_463f2e, %struct.Memory** %MEMORY
  %loadMem_463f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 1
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %2552 = bitcast %union.anon* %2551 to %struct.anon.2*
  %AL.i515 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2552, i32 0, i32 0
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 5
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %2556 = bitcast %union.anon* %2555 to %struct.anon.2*
  %CL.i516 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2556, i32 0, i32 0
  %2557 = load i8, i8* %AL.i515
  %2558 = zext i8 %2557 to i64
  %2559 = load i64, i64* %PC.i514
  %2560 = add i64 %2559, 2
  store i64 %2560, i64* %PC.i514
  store i8 %2557, i8* %CL.i516, align 1
  store %struct.Memory* %loadMem_463f30, %struct.Memory** %MEMORY
  %loadMem_463f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 7
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %RDX.i512 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 15
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RBP.i513
  %2571 = sub i64 %2570, 504
  %2572 = load i64, i64* %PC.i511
  %2573 = add i64 %2572, 7
  store i64 %2573, i64* %PC.i511
  %2574 = inttoptr i64 %2571 to i32*
  %2575 = load i32, i32* %2574
  %2576 = sext i32 %2575 to i64
  store i64 %2576, i64* %RDX.i512, align 8
  store %struct.Memory* %loadMem_463f32, %struct.Memory** %MEMORY
  %loadMem_463f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 1
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 7
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RDX.i509 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 15
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %RBP.i510
  %2590 = load i64, i64* %RDX.i509
  %2591 = mul i64 %2590, 4
  %2592 = add i64 %2589, -488
  %2593 = add i64 %2592, %2591
  %2594 = load i64, i64* %PC.i507
  %2595 = add i64 %2594, 7
  store i64 %2595, i64* %PC.i507
  %2596 = inttoptr i64 %2593 to i32*
  %2597 = load i32, i32* %2596
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_463f39, %struct.Memory** %MEMORY
  %loadMem_463f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 1
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %EAX.i505 = bitcast %union.anon* %2604 to i32*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 15
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %2607 to i64*
  %2608 = load i64, i64* %RBP.i506
  %2609 = sub i64 %2608, 76
  %2610 = load i32, i32* %EAX.i505
  %2611 = zext i32 %2610 to i64
  %2612 = load i64, i64* %PC.i504
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %PC.i504
  %2614 = inttoptr i64 %2609 to i32*
  store i32 %2610, i32* %2614
  store %struct.Memory* %loadMem_463f40, %struct.Memory** %MEMORY
  %loadMem_463f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 11
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RDI.i502 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 15
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %2623 to i64*
  %2624 = load i64, i64* %RBP.i503
  %2625 = sub i64 %2624, 76
  %2626 = load i64, i64* %PC.i501
  %2627 = add i64 %2626, 3
  store i64 %2627, i64* %PC.i501
  %2628 = inttoptr i64 %2625 to i32*
  %2629 = load i32, i32* %2628
  %2630 = zext i32 %2629 to i64
  store i64 %2630, i64* %RDI.i502, align 8
  store %struct.Memory* %loadMem_463f43, %struct.Memory** %MEMORY
  %loadMem_463f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 9
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RSI.i499 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 15
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %RBP.i500
  %2641 = sub i64 %2640, 68
  %2642 = load i64, i64* %PC.i498
  %2643 = add i64 %2642, 3
  store i64 %2643, i64* %PC.i498
  %2644 = inttoptr i64 %2641 to i32*
  %2645 = load i32, i32* %2644
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %RSI.i499, align 8
  store %struct.Memory* %loadMem_463f46, %struct.Memory** %MEMORY
  %loadMem_463f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 1
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 15
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %RBP.i497
  %2657 = sub i64 %2656, 48
  %2658 = load i64, i64* %PC.i495
  %2659 = add i64 %2658, 3
  store i64 %2659, i64* %PC.i495
  %2660 = inttoptr i64 %2657 to i32*
  %2661 = load i32, i32* %2660
  %2662 = zext i32 %2661 to i64
  store i64 %2662, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_463f49, %struct.Memory** %MEMORY
  %loadMem_463f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 17
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %R8D.i493 = bitcast %union.anon* %2668 to i32*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 15
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %2671 to i64*
  %2672 = bitcast i32* %R8D.i493 to i64*
  %2673 = load i64, i64* %RBP.i494
  %2674 = sub i64 %2673, 60
  %2675 = load i64, i64* %PC.i492
  %2676 = add i64 %2675, 4
  store i64 %2676, i64* %PC.i492
  %2677 = inttoptr i64 %2674 to i32*
  %2678 = load i32, i32* %2677
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %2672, align 8
  store %struct.Memory* %loadMem_463f4c, %struct.Memory** %MEMORY
  %loadMem_463f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 19
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %R9D.i490 = bitcast %union.anon* %2685 to i32*
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 15
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %2688 to i64*
  %2689 = bitcast i32* %R9D.i490 to i64*
  %2690 = load i64, i64* %RBP.i491
  %2691 = sub i64 %2690, 64
  %2692 = load i64, i64* %PC.i489
  %2693 = add i64 %2692, 4
  store i64 %2693, i64* %PC.i489
  %2694 = inttoptr i64 %2691 to i32*
  %2695 = load i32, i32* %2694
  %2696 = zext i32 %2695 to i64
  store i64 %2696, i64* %2689, align 8
  store %struct.Memory* %loadMem_463f50, %struct.Memory** %MEMORY
  %loadMem_463f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2698 = getelementptr inbounds %struct.GPR, %struct.GPR* %2697, i32 0, i32 33
  %2699 = getelementptr inbounds %struct.Reg, %struct.Reg* %2698, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2699 to i64*
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 21
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %R10D.i488 = bitcast %union.anon* %2702 to i32*
  %2703 = bitcast i32* %R10D.i488 to i64*
  %2704 = load i64, i64* %PC.i487
  %2705 = add i64 %2704, 8
  store i64 %2705, i64* %PC.i487
  %2706 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %2703, align 8
  store %struct.Memory* %loadMem_463f54, %struct.Memory** %MEMORY
  %loadMem_463f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 21
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %R10D.i486 = bitcast %union.anon* %2713 to i32*
  %2714 = load i32, i32* %R10D.i486
  %2715 = zext i32 %2714 to i64
  %2716 = load i64, i64* %PC.i485
  %2717 = add i64 %2716, 8
  store i64 %2717, i64* %PC.i485
  %2718 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  %2719 = sub i32 %2714, %2718
  %2720 = icmp ult i32 %2714, %2718
  %2721 = zext i1 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2721, i8* %2722, align 1
  %2723 = and i32 %2719, 255
  %2724 = call i32 @llvm.ctpop.i32(i32 %2723)
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = xor i8 %2726, 1
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2727, i8* %2728, align 1
  %2729 = xor i32 %2718, %2714
  %2730 = xor i32 %2729, %2719
  %2731 = lshr i32 %2730, 4
  %2732 = trunc i32 %2731 to i8
  %2733 = and i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2733, i8* %2734, align 1
  %2735 = icmp eq i32 %2719, 0
  %2736 = zext i1 %2735 to i8
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2736, i8* %2737, align 1
  %2738 = lshr i32 %2719, 31
  %2739 = trunc i32 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2739, i8* %2740, align 1
  %2741 = lshr i32 %2714, 31
  %2742 = lshr i32 %2718, 31
  %2743 = xor i32 %2742, %2741
  %2744 = xor i32 %2738, %2741
  %2745 = add i32 %2744, %2743
  %2746 = icmp eq i32 %2745, 2
  %2747 = zext i1 %2746 to i8
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2747, i8* %2748, align 1
  store %struct.Memory* %loadMem_463f5c, %struct.Memory** %MEMORY
  %loadMem_463f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 19
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %R9D.i483 = bitcast %union.anon* %2754 to i32*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 15
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %RBP.i484
  %2759 = sub i64 %2758, 644
  %2760 = load i32, i32* %R9D.i483
  %2761 = zext i32 %2760 to i64
  %2762 = load i64, i64* %PC.i482
  %2763 = add i64 %2762, 7
  store i64 %2763, i64* %PC.i482
  %2764 = inttoptr i64 %2759 to i32*
  store i32 %2760, i32* %2764
  store %struct.Memory* %loadMem_463f64, %struct.Memory** %MEMORY
  %loadMem_463f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 11
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2770 to i32*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 15
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %2773 to i64*
  %2774 = load i64, i64* %RBP.i481
  %2775 = sub i64 %2774, 648
  %2776 = load i32, i32* %EDI.i
  %2777 = zext i32 %2776 to i64
  %2778 = load i64, i64* %PC.i480
  %2779 = add i64 %2778, 6
  store i64 %2779, i64* %PC.i480
  %2780 = inttoptr i64 %2775 to i32*
  store i32 %2776, i32* %2780
  store %struct.Memory* %loadMem_463f6b, %struct.Memory** %MEMORY
  %loadMem_463f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 9
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2786 to i32*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 15
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RBP.i479
  %2791 = sub i64 %2790, 652
  %2792 = load i32, i32* %ESI.i
  %2793 = zext i32 %2792 to i64
  %2794 = load i64, i64* %PC.i478
  %2795 = add i64 %2794, 6
  store i64 %2795, i64* %PC.i478
  %2796 = inttoptr i64 %2791 to i32*
  store i32 %2792, i32* %2796
  store %struct.Memory* %loadMem_463f71, %struct.Memory** %MEMORY
  %loadMem_463f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 1
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %EAX.i476 = bitcast %union.anon* %2802 to i32*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 15
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %2805 to i64*
  %2806 = load i64, i64* %RBP.i477
  %2807 = sub i64 %2806, 656
  %2808 = load i32, i32* %EAX.i476
  %2809 = zext i32 %2808 to i64
  %2810 = load i64, i64* %PC.i475
  %2811 = add i64 %2810, 6
  store i64 %2811, i64* %PC.i475
  %2812 = inttoptr i64 %2807 to i32*
  store i32 %2808, i32* %2812
  store %struct.Memory* %loadMem_463f77, %struct.Memory** %MEMORY
  %loadMem_463f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 17
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %R8D.i473 = bitcast %union.anon* %2818 to i32*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 15
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RBP.i474
  %2823 = sub i64 %2822, 660
  %2824 = load i32, i32* %R8D.i473
  %2825 = zext i32 %2824 to i64
  %2826 = load i64, i64* %PC.i472
  %2827 = add i64 %2826, 7
  store i64 %2827, i64* %PC.i472
  %2828 = inttoptr i64 %2823 to i32*
  store i32 %2824, i32* %2828
  store %struct.Memory* %loadMem_463f7d, %struct.Memory** %MEMORY
  %loadMem_463f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 5
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %2835 = bitcast %union.anon* %2834 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2835, i32 0, i32 0
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 15
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %2838 to i64*
  %2839 = load i64, i64* %RBP.i471
  %2840 = sub i64 %2839, 661
  %2841 = load i8, i8* %CL.i
  %2842 = zext i8 %2841 to i64
  %2843 = load i64, i64* %PC.i470
  %2844 = add i64 %2843, 6
  store i64 %2844, i64* %PC.i470
  %2845 = inttoptr i64 %2840 to i8*
  store i8 %2841, i8* %2845
  store %struct.Memory* %loadMem_463f84, %struct.Memory** %MEMORY
  %loadMem_463f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %PC.i469
  %2850 = add i64 %2849, 22
  %2851 = load i64, i64* %PC.i469
  %2852 = add i64 %2851, 6
  %2853 = load i64, i64* %PC.i469
  %2854 = add i64 %2853, 6
  store i64 %2854, i64* %PC.i469
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2856 = load i8, i8* %2855, align 1
  %2857 = icmp eq i8 %2856, 0
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2859 = load i8, i8* %2858, align 1
  %2860 = icmp ne i8 %2859, 0
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2862 = load i8, i8* %2861, align 1
  %2863 = icmp ne i8 %2862, 0
  %2864 = xor i1 %2860, %2863
  %2865 = xor i1 %2864, true
  %2866 = and i1 %2857, %2865
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %BRANCH_TAKEN, align 1
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2869 = select i1 %2866, i64 %2850, i64 %2852
  store i64 %2869, i64* %2868, align 8
  store %struct.Memory* %loadMem_463f8a, %struct.Memory** %MEMORY
  %loadBr_463f8a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_463f8a = icmp eq i8 %loadBr_463f8a, 1
  br i1 %cmpBr_463f8a, label %block_.L_463fa0, label %block_463f90

block_463f90:                                     ; preds = %block_463f2e
  %loadMem_463f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 15
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %RBP.i468
  %2877 = sub i64 %2876, 496
  %2878 = load i64, i64* %PC.i467
  %2879 = add i64 %2878, 7
  store i64 %2879, i64* %PC.i467
  %2880 = inttoptr i64 %2877 to i32*
  %2881 = load i32, i32* %2880
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2882, align 1
  %2883 = and i32 %2881, 255
  %2884 = call i32 @llvm.ctpop.i32(i32 %2883)
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = xor i8 %2886, 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2887, i8* %2888, align 1
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2889, align 1
  %2890 = icmp eq i32 %2881, 0
  %2891 = zext i1 %2890 to i8
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2891, i8* %2892, align 1
  %2893 = lshr i32 %2881, 31
  %2894 = trunc i32 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2894, i8* %2895, align 1
  %2896 = lshr i32 %2881, 31
  %2897 = xor i32 %2893, %2896
  %2898 = add i32 %2897, %2896
  %2899 = icmp eq i32 %2898, 2
  %2900 = zext i1 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2900, i8* %2901, align 1
  store %struct.Memory* %loadMem_463f90, %struct.Memory** %MEMORY
  %loadMem_463f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 1
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %2908 = bitcast %union.anon* %2907 to %struct.anon.2*
  %AL.i466 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2908, i32 0, i32 0
  %2909 = load i64, i64* %PC.i465
  %2910 = add i64 %2909, 3
  store i64 %2910, i64* %PC.i465
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2912 = load i8, i8* %2911, align 1
  store i8 %2912, i8* %AL.i466, align 1
  store %struct.Memory* %loadMem_463f97, %struct.Memory** %MEMORY
  %loadMem_463f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 1
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %2919 = bitcast %union.anon* %2918 to %struct.anon.2*
  %AL.i463 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2919, i32 0, i32 0
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 15
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %RBP.i464
  %2924 = sub i64 %2923, 661
  %2925 = load i8, i8* %AL.i463
  %2926 = zext i8 %2925 to i64
  %2927 = load i64, i64* %PC.i462
  %2928 = add i64 %2927, 6
  store i64 %2928, i64* %PC.i462
  %2929 = inttoptr i64 %2924 to i8*
  store i8 %2925, i8* %2929
  store %struct.Memory* %loadMem_463f9a, %struct.Memory** %MEMORY
  br label %block_.L_463fa0

block_.L_463fa0:                                  ; preds = %block_463f90, %block_463f2e
  %loadMem_463fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 1
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %2936 = bitcast %union.anon* %2935 to %struct.anon.2*
  %AL.i460 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2936, i32 0, i32 0
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 15
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %RBP.i461
  %2941 = sub i64 %2940, 661
  %2942 = load i64, i64* %PC.i459
  %2943 = add i64 %2942, 6
  store i64 %2943, i64* %PC.i459
  %2944 = inttoptr i64 %2941 to i8*
  %2945 = load i8, i8* %2944
  store i8 %2945, i8* %AL.i460, align 1
  store %struct.Memory* %loadMem_463fa0, %struct.Memory** %MEMORY
  %loadMem_463fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 7
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RDX.i458 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %PC.i457
  %2953 = add i64 %2952, 10
  store i64 %2953, i64* %PC.i457
  store i64 ptrtoint (%G__0x57fd9f_type* @G__0x57fd9f to i64), i64* %RDX.i458, align 8
  store %struct.Memory* %loadMem_463fa6, %struct.Memory** %MEMORY
  %loadMem_463fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 5
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %2959 to i64*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 15
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %RBP.i456
  %2964 = sub i64 %2963, 520
  %2965 = load i64, i64* %PC.i454
  %2966 = add i64 %2965, 7
  store i64 %2966, i64* %PC.i454
  store i64 %2964, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_463fb0, %struct.Memory** %MEMORY
  %loadMem_463fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 9
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RSI.i452 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 15
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %RBP.i453
  %2977 = sub i64 %2976, 524
  %2978 = load i64, i64* %PC.i451
  %2979 = add i64 %2978, 7
  store i64 %2979, i64* %PC.i451
  store i64 %2977, i64* %RSI.i452, align 8
  store %struct.Memory* %loadMem_463fb7, %struct.Memory** %MEMORY
  %loadMem_463fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 11
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RDI.i449 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 15
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RBP.i450
  %2990 = sub i64 %2989, 528
  %2991 = load i64, i64* %PC.i448
  %2992 = add i64 %2991, 7
  store i64 %2992, i64* %PC.i448
  store i64 %2990, i64* %RDI.i449, align 8
  store %struct.Memory* %loadMem_463fbe, %struct.Memory** %MEMORY
  %loadMem_463fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 1
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %2999 = bitcast %union.anon* %2998 to %struct.anon.2*
  %AL.i447 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2999, i32 0, i32 0
  %3000 = load i8, i8* %AL.i447
  %3001 = zext i8 %3000 to i64
  %3002 = load i64, i64* %PC.i446
  %3003 = add i64 %3002, 2
  store i64 %3003, i64* %PC.i446
  %3004 = and i64 1, %3001
  %3005 = trunc i64 %3004 to i8
  store i8 %3005, i8* %AL.i447, align 1
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3006, align 1
  %3007 = trunc i64 %3004 to i32
  %3008 = and i32 %3007, 255
  %3009 = call i32 @llvm.ctpop.i32(i32 %3008)
  %3010 = trunc i32 %3009 to i8
  %3011 = and i8 %3010, 1
  %3012 = xor i8 %3011, 1
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3012, i8* %3013, align 1
  %3014 = icmp eq i8 %3005, 0
  %3015 = zext i1 %3014 to i8
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3015, i8* %3016, align 1
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3017, align 1
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3018, align 1
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3019, align 1
  store %struct.Memory* %loadMem_463fc5, %struct.Memory** %MEMORY
  %loadMem_463fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 33
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3022 to i64*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 1
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %3026 = bitcast %union.anon* %3025 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3026, i32 0, i32 0
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 17
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %R8D.i445 = bitcast %union.anon* %3029 to i32*
  %3030 = bitcast i32* %R8D.i445 to i64*
  %3031 = load i8, i8* %AL.i
  %3032 = zext i8 %3031 to i64
  %3033 = load i64, i64* %PC.i444
  %3034 = add i64 %3033, 4
  store i64 %3034, i64* %PC.i444
  %3035 = and i64 %3032, 255
  store i64 %3035, i64* %3030, align 8
  store %struct.Memory* %loadMem_463fc7, %struct.Memory** %MEMORY
  %loadMem_463fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 33
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 19
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %R9D.i442 = bitcast %union.anon* %3041 to i32*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 15
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %3044 to i64*
  %3045 = bitcast i32* %R9D.i442 to i64*
  %3046 = load i64, i64* %RBP.i443
  %3047 = sub i64 %3046, 648
  %3048 = load i64, i64* %PC.i441
  %3049 = add i64 %3048, 7
  store i64 %3049, i64* %PC.i441
  %3050 = inttoptr i64 %3047 to i32*
  %3051 = load i32, i32* %3050
  %3052 = zext i32 %3051 to i64
  store i64 %3052, i64* %3045, align 8
  store %struct.Memory* %loadMem_463fcb, %struct.Memory** %MEMORY
  %loadMem_463fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 33
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 11
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RDI.i439 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 15
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %3061 to i64*
  %3062 = load i64, i64* %RBP.i440
  %3063 = sub i64 %3062, 672
  %3064 = load i64, i64* %RDI.i439
  %3065 = load i64, i64* %PC.i438
  %3066 = add i64 %3065, 7
  store i64 %3066, i64* %PC.i438
  %3067 = inttoptr i64 %3063 to i64*
  store i64 %3064, i64* %3067
  store %struct.Memory* %loadMem_463fd2, %struct.Memory** %MEMORY
  %loadMem_463fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 19
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %R9D.i436 = bitcast %union.anon* %3073 to i32*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 11
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RDI.i437 = bitcast %union.anon* %3076 to i64*
  %3077 = load i32, i32* %R9D.i436
  %3078 = zext i32 %3077 to i64
  %3079 = load i64, i64* %PC.i435
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i435
  %3081 = and i64 %3078, 4294967295
  store i64 %3081, i64* %RDI.i437, align 8
  store %struct.Memory* %loadMem_463fd9, %struct.Memory** %MEMORY
  %loadMem_463fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 21
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %R10D.i433 = bitcast %union.anon* %3087 to i32*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 15
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %3090 to i64*
  %3091 = bitcast i32* %R10D.i433 to i64*
  %3092 = load i64, i64* %RBP.i434
  %3093 = sub i64 %3092, 652
  %3094 = load i64, i64* %PC.i432
  %3095 = add i64 %3094, 7
  store i64 %3095, i64* %PC.i432
  %3096 = inttoptr i64 %3093 to i32*
  %3097 = load i32, i32* %3096
  %3098 = zext i32 %3097 to i64
  store i64 %3098, i64* %3091, align 8
  store %struct.Memory* %loadMem_463fdc, %struct.Memory** %MEMORY
  %loadMem_463fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 9
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RSI.i430 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 15
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %3107 to i64*
  %3108 = load i64, i64* %RBP.i431
  %3109 = sub i64 %3108, 680
  %3110 = load i64, i64* %RSI.i430
  %3111 = load i64, i64* %PC.i429
  %3112 = add i64 %3111, 7
  store i64 %3112, i64* %PC.i429
  %3113 = inttoptr i64 %3109 to i64*
  store i64 %3110, i64* %3113
  store %struct.Memory* %loadMem_463fe3, %struct.Memory** %MEMORY
  %loadMem_463fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 21
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %3119 to i32*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 9
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RSI.i428 = bitcast %union.anon* %3122 to i64*
  %3123 = load i32, i32* %R10D.i
  %3124 = zext i32 %3123 to i64
  %3125 = load i64, i64* %PC.i427
  %3126 = add i64 %3125, 3
  store i64 %3126, i64* %PC.i427
  %3127 = and i64 %3124, 4294967295
  store i64 %3127, i64* %RSI.i428, align 8
  store %struct.Memory* %loadMem_463fea, %struct.Memory** %MEMORY
  %loadMem_463fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 23
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %R11D.i425 = bitcast %union.anon* %3133 to i32*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 15
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %3136 to i64*
  %3137 = bitcast i32* %R11D.i425 to i64*
  %3138 = load i64, i64* %RBP.i426
  %3139 = sub i64 %3138, 656
  %3140 = load i64, i64* %PC.i424
  %3141 = add i64 %3140, 7
  store i64 %3141, i64* %PC.i424
  %3142 = inttoptr i64 %3139 to i32*
  %3143 = load i32, i32* %3142
  %3144 = zext i32 %3143 to i64
  store i64 %3144, i64* %3137, align 8
  store %struct.Memory* %loadMem_463fed, %struct.Memory** %MEMORY
  %loadMem_463ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 5
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 15
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %RBP.i423
  %3155 = sub i64 %3154, 688
  %3156 = load i64, i64* %RCX.i422
  %3157 = load i64, i64* %PC.i421
  %3158 = add i64 %3157, 7
  store i64 %3158, i64* %PC.i421
  %3159 = inttoptr i64 %3155 to i64*
  store i64 %3156, i64* %3159
  store %struct.Memory* %loadMem_463ff4, %struct.Memory** %MEMORY
  %loadMem_463ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 23
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %3165 to i32*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 5
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %3168 to i64*
  %3169 = load i32, i32* %R11D.i
  %3170 = zext i32 %3169 to i64
  %3171 = load i64, i64* %PC.i419
  %3172 = add i64 %3171, 3
  store i64 %3172, i64* %PC.i419
  %3173 = and i64 %3170, 4294967295
  store i64 %3173, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_463ffb, %struct.Memory** %MEMORY
  %loadMem_463ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 3
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RBX.i417 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 15
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RBP.i418 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %RBP.i418
  %3184 = sub i64 %3183, 660
  %3185 = load i64, i64* %PC.i416
  %3186 = add i64 %3185, 6
  store i64 %3186, i64* %PC.i416
  %3187 = inttoptr i64 %3184 to i32*
  %3188 = load i32, i32* %3187
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %RBX.i417, align 8
  store %struct.Memory* %loadMem_463ffe, %struct.Memory** %MEMORY
  %loadMem_464004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 17
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %R8D.i414 = bitcast %union.anon* %3195 to i32*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 15
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RBP.i415
  %3200 = sub i64 %3199, 692
  %3201 = load i32, i32* %R8D.i414
  %3202 = zext i32 %3201 to i64
  %3203 = load i64, i64* %PC.i413
  %3204 = add i64 %3203, 7
  store i64 %3204, i64* %PC.i413
  %3205 = inttoptr i64 %3200 to i32*
  store i32 %3201, i32* %3205
  store %struct.Memory* %loadMem_464004, %struct.Memory** %MEMORY
  %loadMem_46400b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 33
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %3208 to i64*
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 3
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %3211 to i32*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 17
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %R8D.i412 = bitcast %union.anon* %3214 to i32*
  %3215 = bitcast i32* %R8D.i412 to i64*
  %3216 = load i32, i32* %EBX.i
  %3217 = zext i32 %3216 to i64
  %3218 = load i64, i64* %PC.i411
  %3219 = add i64 %3218, 3
  store i64 %3219, i64* %PC.i411
  %3220 = and i64 %3217, 4294967295
  store i64 %3220, i64* %3215, align 8
  store %struct.Memory* %loadMem_46400b, %struct.Memory** %MEMORY
  %loadMem_46400e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 19
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %R9D.i409 = bitcast %union.anon* %3226 to i32*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 15
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %3229 to i64*
  %3230 = bitcast i32* %R9D.i409 to i64*
  %3231 = load i64, i64* %RBP.i410
  %3232 = sub i64 %3231, 644
  %3233 = load i64, i64* %PC.i408
  %3234 = add i64 %3233, 7
  store i64 %3234, i64* %PC.i408
  %3235 = inttoptr i64 %3232 to i32*
  %3236 = load i32, i32* %3235
  %3237 = zext i32 %3236 to i64
  store i64 %3237, i64* %3230, align 8
  store %struct.Memory* %loadMem_46400e, %struct.Memory** %MEMORY
  %loadMem_464015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 33
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 15
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 29
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %R14.i407 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %RBP.i406
  %3248 = sub i64 %3247, 688
  %3249 = load i64, i64* %PC.i405
  %3250 = add i64 %3249, 7
  store i64 %3250, i64* %PC.i405
  %3251 = inttoptr i64 %3248 to i64*
  %3252 = load i64, i64* %3251
  store i64 %3252, i64* %R14.i407, align 8
  store %struct.Memory* %loadMem_464015, %struct.Memory** %MEMORY
  %loadMem_46401c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 33
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 13
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RSP.i403 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 29
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %R14.i404 = bitcast %union.anon* %3261 to i64*
  %3262 = load i64, i64* %RSP.i403
  %3263 = load i64, i64* %R14.i404
  %3264 = load i64, i64* %PC.i402
  %3265 = add i64 %3264, 4
  store i64 %3265, i64* %PC.i402
  %3266 = inttoptr i64 %3262 to i64*
  store i64 %3263, i64* %3266
  store %struct.Memory* %loadMem_46401c, %struct.Memory** %MEMORY
  %loadMem_464020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 15
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %3272 to i64*
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 31
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %R15.i401 = bitcast %union.anon* %3275 to i64*
  %3276 = load i64, i64* %RBP.i400
  %3277 = sub i64 %3276, 680
  %3278 = load i64, i64* %PC.i399
  %3279 = add i64 %3278, 7
  store i64 %3279, i64* %PC.i399
  %3280 = inttoptr i64 %3277 to i64*
  %3281 = load i64, i64* %3280
  store i64 %3281, i64* %R15.i401, align 8
  store %struct.Memory* %loadMem_464020, %struct.Memory** %MEMORY
  %loadMem_464027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 33
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 13
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RSP.i397 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 31
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %R15.i398 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %RSP.i397
  %3292 = add i64 %3291, 8
  %3293 = load i64, i64* %R15.i398
  %3294 = load i64, i64* %PC.i396
  %3295 = add i64 %3294, 5
  store i64 %3295, i64* %PC.i396
  %3296 = inttoptr i64 %3292 to i64*
  store i64 %3293, i64* %3296
  store %struct.Memory* %loadMem_464027, %struct.Memory** %MEMORY
  %loadMem_46402c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 33
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3299 to i64*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 15
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 25
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %R12.i395 = bitcast %union.anon* %3305 to i64*
  %3306 = load i64, i64* %RBP.i394
  %3307 = sub i64 %3306, 672
  %3308 = load i64, i64* %PC.i393
  %3309 = add i64 %3308, 7
  store i64 %3309, i64* %PC.i393
  %3310 = inttoptr i64 %3307 to i64*
  %3311 = load i64, i64* %3310
  store i64 %3311, i64* %R12.i395, align 8
  store %struct.Memory* %loadMem_46402c, %struct.Memory** %MEMORY
  %loadMem_464033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 33
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 13
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RSP.i391 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 25
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %R12.i392 = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %RSP.i391
  %3322 = add i64 %3321, 16
  %3323 = load i64, i64* %R12.i392
  %3324 = load i64, i64* %PC.i390
  %3325 = add i64 %3324, 5
  store i64 %3325, i64* %PC.i390
  %3326 = inttoptr i64 %3322 to i64*
  store i64 %3323, i64* %3326
  store %struct.Memory* %loadMem_464033, %struct.Memory** %MEMORY
  %loadMem_464038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 33
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 27
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %R13D.i388 = bitcast %union.anon* %3332 to i32*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 15
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %3335 to i64*
  %3336 = bitcast i32* %R13D.i388 to i64*
  %3337 = load i64, i64* %RBP.i389
  %3338 = sub i64 %3337, 692
  %3339 = load i64, i64* %PC.i387
  %3340 = add i64 %3339, 7
  store i64 %3340, i64* %PC.i387
  %3341 = inttoptr i64 %3338 to i32*
  %3342 = load i32, i32* %3341
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %3336, align 8
  store %struct.Memory* %loadMem_464038, %struct.Memory** %MEMORY
  %loadMem_46403f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 27
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %3349 to i32*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 13
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RSP.i386 = bitcast %union.anon* %3352 to i64*
  %3353 = load i64, i64* %RSP.i386
  %3354 = add i64 %3353, 24
  %3355 = load i32, i32* %R13D.i
  %3356 = zext i32 %3355 to i64
  %3357 = load i64, i64* %PC.i385
  %3358 = add i64 %3357, 5
  store i64 %3358, i64* %PC.i385
  %3359 = inttoptr i64 %3354 to i32*
  store i32 %3355, i32* %3359
  store %struct.Memory* %loadMem_46403f, %struct.Memory** %MEMORY
  %loadMem1_464044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 33
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3362 to i64*
  %3363 = load i64, i64* %PC.i384
  %3364 = add i64 %3363, -348756
  %3365 = load i64, i64* %PC.i384
  %3366 = add i64 %3365, 5
  %3367 = load i64, i64* %PC.i384
  %3368 = add i64 %3367, 5
  store i64 %3368, i64* %PC.i384
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3370 = load i64, i64* %3369, align 8
  %3371 = add i64 %3370, -8
  %3372 = inttoptr i64 %3371 to i64*
  store i64 %3366, i64* %3372
  store i64 %3371, i64* %3369, align 8
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3364, i64* %3373, align 8
  store %struct.Memory* %loadMem1_464044, %struct.Memory** %MEMORY
  %loadMem2_464044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464044 = load i64, i64* %3
  %call2_464044 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64 %loadPC_464044, %struct.Memory* %loadMem2_464044)
  store %struct.Memory* %call2_464044, %struct.Memory** %MEMORY
  %loadMem_464049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 33
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 1
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %EAX.i383 = bitcast %union.anon* %3379 to i32*
  %3380 = load i32, i32* %EAX.i383
  %3381 = zext i32 %3380 to i64
  %3382 = load i64, i64* %PC.i382
  %3383 = add i64 %3382, 3
  store i64 %3383, i64* %PC.i382
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3384, align 1
  %3385 = and i32 %3380, 255
  %3386 = call i32 @llvm.ctpop.i32(i32 %3385)
  %3387 = trunc i32 %3386 to i8
  %3388 = and i8 %3387, 1
  %3389 = xor i8 %3388, 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3389, i8* %3390, align 1
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3391, align 1
  %3392 = icmp eq i32 %3380, 0
  %3393 = zext i1 %3392 to i8
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3393, i8* %3394, align 1
  %3395 = lshr i32 %3380, 31
  %3396 = trunc i32 %3395 to i8
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3396, i8* %3397, align 1
  %3398 = lshr i32 %3380, 31
  %3399 = xor i32 %3395, %3398
  %3400 = add i32 %3399, %3398
  %3401 = icmp eq i32 %3400, 2
  %3402 = zext i1 %3401 to i8
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3402, i8* %3403, align 1
  store %struct.Memory* %loadMem_464049, %struct.Memory** %MEMORY
  %loadMem_46404c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %3406 to i64*
  %3407 = load i64, i64* %PC.i381
  %3408 = add i64 %3407, 276
  %3409 = load i64, i64* %PC.i381
  %3410 = add i64 %3409, 6
  %3411 = load i64, i64* %PC.i381
  %3412 = add i64 %3411, 6
  store i64 %3412, i64* %PC.i381
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3414 = load i8, i8* %3413, align 1
  store i8 %3414, i8* %BRANCH_TAKEN, align 1
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3416 = icmp ne i8 %3414, 0
  %3417 = select i1 %3416, i64 %3408, i64 %3410
  store i64 %3417, i64* %3415, align 8
  store %struct.Memory* %loadMem_46404c, %struct.Memory** %MEMORY
  %loadBr_46404c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46404c = icmp eq i8 %loadBr_46404c, 1
  br i1 %cmpBr_46404c, label %block_.L_464160, label %block_464052

block_464052:                                     ; preds = %block_.L_463fa0
  %loadMem_464052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 15
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %RBP.i380
  %3425 = sub i64 %3424, 528
  %3426 = load i64, i64* %PC.i379
  %3427 = add i64 %3426, 7
  store i64 %3427, i64* %PC.i379
  %3428 = inttoptr i64 %3425 to i32*
  %3429 = load i32, i32* %3428
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3430, align 1
  %3431 = and i32 %3429, 255
  %3432 = call i32 @llvm.ctpop.i32(i32 %3431)
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  %3435 = xor i8 %3434, 1
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3435, i8* %3436, align 1
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3437, align 1
  %3438 = icmp eq i32 %3429, 0
  %3439 = zext i1 %3438 to i8
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3439, i8* %3440, align 1
  %3441 = lshr i32 %3429, 31
  %3442 = trunc i32 %3441 to i8
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3442, i8* %3443, align 1
  %3444 = lshr i32 %3429, 31
  %3445 = xor i32 %3441, %3444
  %3446 = add i32 %3445, %3444
  %3447 = icmp eq i32 %3446, 2
  %3448 = zext i1 %3447 to i8
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3448, i8* %3449, align 1
  store %struct.Memory* %loadMem_464052, %struct.Memory** %MEMORY
  %loadMem_464059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %PC.i378
  %3454 = add i64 %3453, 201
  %3455 = load i64, i64* %PC.i378
  %3456 = add i64 %3455, 6
  %3457 = load i64, i64* %PC.i378
  %3458 = add i64 %3457, 6
  store i64 %3458, i64* %PC.i378
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3460 = load i8, i8* %3459, align 1
  %3461 = icmp eq i8 %3460, 0
  %3462 = zext i1 %3461 to i8
  store i8 %3462, i8* %BRANCH_TAKEN, align 1
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3464 = select i1 %3461, i64 %3454, i64 %3456
  store i64 %3464, i64* %3463, align 8
  store %struct.Memory* %loadMem_464059, %struct.Memory** %MEMORY
  %loadBr_464059 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464059 = icmp eq i8 %loadBr_464059, 1
  br i1 %cmpBr_464059, label %block_.L_464122, label %block_46405f

block_46405f:                                     ; preds = %block_464052
  %loadMem_46405f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 1
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %3470 to i32*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %RAX.i377
  %3475 = load i32, i32* %EAX.i376
  %3476 = zext i32 %3475 to i64
  %3477 = load i64, i64* %PC.i375
  %3478 = add i64 %3477, 2
  store i64 %3478, i64* %PC.i375
  %3479 = xor i64 %3476, %3474
  %3480 = trunc i64 %3479 to i32
  %3481 = and i64 %3479, 4294967295
  store i64 %3481, i64* %RAX.i377, align 8
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3482, align 1
  %3483 = and i32 %3480, 255
  %3484 = call i32 @llvm.ctpop.i32(i32 %3483)
  %3485 = trunc i32 %3484 to i8
  %3486 = and i8 %3485, 1
  %3487 = xor i8 %3486, 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3487, i8* %3488, align 1
  %3489 = icmp eq i32 %3480, 0
  %3490 = zext i1 %3489 to i8
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3490, i8* %3491, align 1
  %3492 = lshr i32 %3480, 31
  %3493 = trunc i32 %3492 to i8
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3493, i8* %3494, align 1
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3495, align 1
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3496, align 1
  store %struct.Memory* %loadMem_46405f, %struct.Memory** %MEMORY
  %loadMem_464061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 33
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %3499 to i64*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 1
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %EAX.i373 = bitcast %union.anon* %3502 to i32*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 9
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RSI.i374 = bitcast %union.anon* %3505 to i64*
  %3506 = load i32, i32* %EAX.i373
  %3507 = zext i32 %3506 to i64
  %3508 = load i64, i64* %PC.i372
  %3509 = add i64 %3508, 2
  store i64 %3509, i64* %PC.i372
  %3510 = and i64 %3507, 4294967295
  store i64 %3510, i64* %RSI.i374, align 8
  store %struct.Memory* %loadMem_464061, %struct.Memory** %MEMORY
  %loadMem_464063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 11
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RDI.i370 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 15
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %RBP.i371
  %3521 = sub i64 %3520, 48
  %3522 = load i64, i64* %PC.i369
  %3523 = add i64 %3522, 3
  store i64 %3523, i64* %PC.i369
  %3524 = inttoptr i64 %3521 to i32*
  %3525 = load i32, i32* %3524
  %3526 = zext i32 %3525 to i64
  store i64 %3526, i64* %RDI.i370, align 8
  store %struct.Memory* %loadMem_464063, %struct.Memory** %MEMORY
  %loadMem_464066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 7
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RDX.i367 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 15
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %3535 to i64*
  %3536 = load i64, i64* %RBP.i368
  %3537 = sub i64 %3536, 520
  %3538 = load i64, i64* %PC.i366
  %3539 = add i64 %3538, 6
  store i64 %3539, i64* %PC.i366
  %3540 = inttoptr i64 %3537 to i32*
  %3541 = load i32, i32* %3540
  %3542 = zext i32 %3541 to i64
  store i64 %3542, i64* %RDX.i367, align 8
  store %struct.Memory* %loadMem_464066, %struct.Memory** %MEMORY
  %loadMem_46406c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 33
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 5
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 15
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %3551 to i64*
  %3552 = load i64, i64* %RBP.i365
  %3553 = sub i64 %3552, 524
  %3554 = load i64, i64* %PC.i363
  %3555 = add i64 %3554, 6
  store i64 %3555, i64* %PC.i363
  %3556 = inttoptr i64 %3553 to i32*
  %3557 = load i32, i32* %3556
  %3558 = zext i32 %3557 to i64
  store i64 %3558, i64* %RCX.i364, align 8
  store %struct.Memory* %loadMem_46406c, %struct.Memory** %MEMORY
  %loadMem1_464072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %PC.i362
  %3563 = add i64 %3562, -25490
  %3564 = load i64, i64* %PC.i362
  %3565 = add i64 %3564, 5
  %3566 = load i64, i64* %PC.i362
  %3567 = add i64 %3566, 5
  store i64 %3567, i64* %PC.i362
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3569 = load i64, i64* %3568, align 8
  %3570 = add i64 %3569, -8
  %3571 = inttoptr i64 %3570 to i64*
  store i64 %3565, i64* %3571
  store i64 %3570, i64* %3568, align 8
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3563, i64* %3572, align 8
  store %struct.Memory* %loadMem1_464072, %struct.Memory** %MEMORY
  %loadMem2_464072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464072 = load i64, i64* %3
  %call2_464072 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64 %loadPC_464072, %struct.Memory* %loadMem2_464072)
  store %struct.Memory* %call2_464072, %struct.Memory** %MEMORY
  %loadMem_464077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 33
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3575 to i64*
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 1
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %EAX.i360 = bitcast %union.anon* %3578 to i32*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 15
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %RBP.i361
  %3583 = sub i64 %3582, 532
  %3584 = load i32, i32* %EAX.i360
  %3585 = zext i32 %3584 to i64
  %3586 = load i64, i64* %PC.i359
  %3587 = add i64 %3586, 6
  store i64 %3587, i64* %PC.i359
  %3588 = inttoptr i64 %3583 to i32*
  store i32 %3584, i32* %3588
  store %struct.Memory* %loadMem_464077, %struct.Memory** %MEMORY
  %loadMem1_46407d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 33
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3591 to i64*
  %3592 = load i64, i64* %PC.i358
  %3593 = add i64 %3592, -353053
  %3594 = load i64, i64* %PC.i358
  %3595 = add i64 %3594, 5
  %3596 = load i64, i64* %PC.i358
  %3597 = add i64 %3596, 5
  store i64 %3597, i64* %PC.i358
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3599 = load i64, i64* %3598, align 8
  %3600 = add i64 %3599, -8
  %3601 = inttoptr i64 %3600 to i64*
  store i64 %3595, i64* %3601
  store i64 %3600, i64* %3598, align 8
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3593, i64* %3602, align 8
  store %struct.Memory* %loadMem1_46407d, %struct.Memory** %MEMORY
  %loadMem2_46407d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46407d = load i64, i64* %3
  %call2_46407d = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_46407d, %struct.Memory* %loadMem2_46407d)
  store %struct.Memory* %call2_46407d, %struct.Memory** %MEMORY
  %loadMem_464082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 33
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 15
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %3608 to i64*
  %3609 = load i64, i64* %RBP.i357
  %3610 = sub i64 %3609, 532
  %3611 = load i64, i64* %PC.i356
  %3612 = add i64 %3611, 7
  store i64 %3612, i64* %PC.i356
  %3613 = inttoptr i64 %3610 to i32*
  %3614 = load i32, i32* %3613
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3615, align 1
  %3616 = and i32 %3614, 255
  %3617 = call i32 @llvm.ctpop.i32(i32 %3616)
  %3618 = trunc i32 %3617 to i8
  %3619 = and i8 %3618, 1
  %3620 = xor i8 %3619, 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3620, i8* %3621, align 1
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3622, align 1
  %3623 = icmp eq i32 %3614, 0
  %3624 = zext i1 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3624, i8* %3625, align 1
  %3626 = lshr i32 %3614, 31
  %3627 = trunc i32 %3626 to i8
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3627, i8* %3628, align 1
  %3629 = lshr i32 %3614, 31
  %3630 = xor i32 %3626, %3629
  %3631 = add i32 %3630, %3629
  %3632 = icmp eq i32 %3631, 2
  %3633 = zext i1 %3632 to i8
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3633, i8* %3634, align 1
  store %struct.Memory* %loadMem_464082, %struct.Memory** %MEMORY
  %loadMem_464089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3637 to i64*
  %3638 = load i64, i64* %PC.i355
  %3639 = add i64 %3638, 89
  %3640 = load i64, i64* %PC.i355
  %3641 = add i64 %3640, 6
  %3642 = load i64, i64* %PC.i355
  %3643 = add i64 %3642, 6
  store i64 %3643, i64* %PC.i355
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3645 = load i8, i8* %3644, align 1
  %3646 = icmp eq i8 %3645, 0
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %BRANCH_TAKEN, align 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3649 = select i1 %3646, i64 %3639, i64 %3641
  store i64 %3649, i64* %3648, align 8
  store %struct.Memory* %loadMem_464089, %struct.Memory** %MEMORY
  %loadBr_464089 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464089 = icmp eq i8 %loadBr_464089, 1
  br i1 %cmpBr_464089, label %block_.L_4640e2, label %block_46408f

block_46408f:                                     ; preds = %block_46405f
  %loadMem_46408f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 15
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %3655 to i64*
  %3656 = load i64, i64* %RBP.i354
  %3657 = sub i64 %3656, 56
  %3658 = load i64, i64* %PC.i353
  %3659 = add i64 %3658, 5
  store i64 %3659, i64* %PC.i353
  %3660 = inttoptr i64 %3657 to i64*
  %3661 = load i64, i64* %3660
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3662, align 1
  %3663 = trunc i64 %3661 to i32
  %3664 = and i32 %3663, 255
  %3665 = call i32 @llvm.ctpop.i32(i32 %3664)
  %3666 = trunc i32 %3665 to i8
  %3667 = and i8 %3666, 1
  %3668 = xor i8 %3667, 1
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3668, i8* %3669, align 1
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3670, align 1
  %3671 = icmp eq i64 %3661, 0
  %3672 = zext i1 %3671 to i8
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3672, i8* %3673, align 1
  %3674 = lshr i64 %3661, 63
  %3675 = trunc i64 %3674 to i8
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3675, i8* %3676, align 1
  %3677 = lshr i64 %3661, 63
  %3678 = xor i64 %3674, %3677
  %3679 = add i64 %3678, %3677
  %3680 = icmp eq i64 %3679, 2
  %3681 = zext i1 %3680 to i8
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3681, i8* %3682, align 1
  store %struct.Memory* %loadMem_46408f, %struct.Memory** %MEMORY
  %loadMem_464094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %PC.i352
  %3687 = add i64 %3686, 15
  %3688 = load i64, i64* %PC.i352
  %3689 = add i64 %3688, 6
  %3690 = load i64, i64* %PC.i352
  %3691 = add i64 %3690, 6
  store i64 %3691, i64* %PC.i352
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3693 = load i8, i8* %3692, align 1
  store i8 %3693, i8* %BRANCH_TAKEN, align 1
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3695 = icmp ne i8 %3693, 0
  %3696 = select i1 %3695, i64 %3687, i64 %3689
  store i64 %3696, i64* %3694, align 8
  store %struct.Memory* %loadMem_464094, %struct.Memory** %MEMORY
  %loadBr_464094 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464094 = icmp eq i8 %loadBr_464094, 1
  br i1 %cmpBr_464094, label %block_.L_4640a3, label %block_46409a

block_46409a:                                     ; preds = %block_46408f
  %loadMem_46409a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 1
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 15
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %3705 to i64*
  %3706 = load i64, i64* %RBP.i351
  %3707 = sub i64 %3706, 76
  %3708 = load i64, i64* %PC.i349
  %3709 = add i64 %3708, 3
  store i64 %3709, i64* %PC.i349
  %3710 = inttoptr i64 %3707 to i32*
  %3711 = load i32, i32* %3710
  %3712 = zext i32 %3711 to i64
  store i64 %3712, i64* %RAX.i350, align 8
  store %struct.Memory* %loadMem_46409a, %struct.Memory** %MEMORY
  %loadMem_46409d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 5
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %3718 to i64*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i348
  %3723 = sub i64 %3722, 56
  %3724 = load i64, i64* %PC.i346
  %3725 = add i64 %3724, 4
  store i64 %3725, i64* %PC.i346
  %3726 = inttoptr i64 %3723 to i64*
  %3727 = load i64, i64* %3726
  store i64 %3727, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_46409d, %struct.Memory** %MEMORY
  %loadMem_4640a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 33
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 1
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %3733 to i32*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 5
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %3736 to i64*
  %3737 = load i64, i64* %RCX.i345
  %3738 = load i32, i32* %EAX.i344
  %3739 = zext i32 %3738 to i64
  %3740 = load i64, i64* %PC.i343
  %3741 = add i64 %3740, 2
  store i64 %3741, i64* %PC.i343
  %3742 = inttoptr i64 %3737 to i32*
  store i32 %3738, i32* %3742
  store %struct.Memory* %loadMem_4640a1, %struct.Memory** %MEMORY
  br label %block_.L_4640a3

block_.L_4640a3:                                  ; preds = %block_46409a, %block_46408f
  %loadMem_4640a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 33
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3745 to i64*
  %3746 = load i64, i64* %PC.i342
  %3747 = add i64 %3746, 9
  store i64 %3747, i64* %PC.i342
  %3748 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3749, align 1
  %3750 = trunc i64 %3748 to i32
  %3751 = and i32 %3750, 255
  %3752 = call i32 @llvm.ctpop.i32(i32 %3751)
  %3753 = trunc i32 %3752 to i8
  %3754 = and i8 %3753, 1
  %3755 = xor i8 %3754, 1
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3755, i8* %3756, align 1
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3757, align 1
  %3758 = icmp eq i64 %3748, 0
  %3759 = zext i1 %3758 to i8
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3759, i8* %3760, align 1
  %3761 = lshr i64 %3748, 63
  %3762 = trunc i64 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3762, i8* %3763, align 1
  %3764 = lshr i64 %3748, 63
  %3765 = xor i64 %3761, %3764
  %3766 = add i64 %3765, %3764
  %3767 = icmp eq i64 %3766, 2
  %3768 = zext i1 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3768, i8* %3769, align 1
  store %struct.Memory* %loadMem_4640a3, %struct.Memory** %MEMORY
  %loadMem_4640ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 33
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %PC.i341
  %3774 = add i64 %3773, 42
  %3775 = load i64, i64* %PC.i341
  %3776 = add i64 %3775, 6
  %3777 = load i64, i64* %PC.i341
  %3778 = add i64 %3777, 6
  store i64 %3778, i64* %PC.i341
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3780 = load i8, i8* %3779, align 1
  store i8 %3780, i8* %BRANCH_TAKEN, align 1
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3782 = icmp ne i8 %3780, 0
  %3783 = select i1 %3782, i64 %3774, i64 %3776
  store i64 %3783, i64* %3781, align 8
  store %struct.Memory* %loadMem_4640ac, %struct.Memory** %MEMORY
  %loadBr_4640ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4640ac = icmp eq i8 %loadBr_4640ac, 1
  br i1 %cmpBr_4640ac, label %block_.L_4640d6, label %block_4640b2

block_4640b2:                                     ; preds = %block_.L_4640a3
  %loadMem_4640b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 5
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %3789 to i64*
  %3790 = load i64, i64* %PC.i339
  %3791 = add i64 %3790, 5
  store i64 %3791, i64* %PC.i339
  store i64 5, i64* %RCX.i340, align 8
  store %struct.Memory* %loadMem_4640b2, %struct.Memory** %MEMORY
  %loadMem_4640b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 17
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %R8.i338 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %PC.i337
  %3799 = add i64 %3798, 10
  store i64 %3799, i64* %PC.i337
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8.i338, align 8
  store %struct.Memory* %loadMem_4640b7, %struct.Memory** %MEMORY
  %loadMem_4640c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 11
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RDI.i335 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 15
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %RBP.i336
  %3810 = sub i64 %3809, 512
  %3811 = load i64, i64* %PC.i334
  %3812 = add i64 %3811, 7
  store i64 %3812, i64* %PC.i334
  %3813 = inttoptr i64 %3810 to i64*
  %3814 = load i64, i64* %3813
  store i64 %3814, i64* %RDI.i335, align 8
  store %struct.Memory* %loadMem_4640c1, %struct.Memory** %MEMORY
  %loadMem_4640c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 33
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3817 to i64*
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 9
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %RSI.i332 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 15
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3823 to i64*
  %3824 = load i64, i64* %RBP.i333
  %3825 = sub i64 %3824, 516
  %3826 = load i64, i64* %PC.i331
  %3827 = add i64 %3826, 6
  store i64 %3827, i64* %PC.i331
  %3828 = inttoptr i64 %3825 to i32*
  %3829 = load i32, i32* %3828
  %3830 = zext i32 %3829 to i64
  store i64 %3830, i64* %RSI.i332, align 8
  store %struct.Memory* %loadMem_4640c8, %struct.Memory** %MEMORY
  %loadMem_4640ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 33
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 7
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 15
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %3839 to i64*
  %3840 = load i64, i64* %RBP.i330
  %3841 = sub i64 %3840, 76
  %3842 = load i64, i64* %PC.i328
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %PC.i328
  %3844 = inttoptr i64 %3841 to i32*
  %3845 = load i32, i32* %3844
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_4640ce, %struct.Memory** %MEMORY
  %loadMem1_4640d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %PC.i327
  %3851 = add i64 %3850, -311569
  %3852 = load i64, i64* %PC.i327
  %3853 = add i64 %3852, 5
  %3854 = load i64, i64* %PC.i327
  %3855 = add i64 %3854, 5
  store i64 %3855, i64* %PC.i327
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3857 = load i64, i64* %3856, align 8
  %3858 = add i64 %3857, -8
  %3859 = inttoptr i64 %3858 to i64*
  store i64 %3853, i64* %3859
  store i64 %3858, i64* %3856, align 8
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3851, i64* %3860, align 8
  store %struct.Memory* %loadMem1_4640d1, %struct.Memory** %MEMORY
  %loadMem2_4640d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4640d1 = load i64, i64* %3
  %call2_4640d1 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_4640d1, %struct.Memory* %loadMem2_4640d1)
  store %struct.Memory* %call2_4640d1, %struct.Memory** %MEMORY
  br label %block_.L_4640d6

block_.L_4640d6:                                  ; preds = %block_4640b2, %block_.L_4640a3
  %loadMem_4640d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 15
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %3866 to i64*
  %3867 = load i64, i64* %RBP.i326
  %3868 = sub i64 %3867, 44
  %3869 = load i64, i64* %PC.i325
  %3870 = add i64 %3869, 7
  store i64 %3870, i64* %PC.i325
  %3871 = inttoptr i64 %3868 to i32*
  store i32 5, i32* %3871
  store %struct.Memory* %loadMem_4640d6, %struct.Memory** %MEMORY
  %loadMem_4640dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %PC.i324
  %3876 = add i64 %3875, 779
  %3877 = load i64, i64* %PC.i324
  %3878 = add i64 %3877, 5
  store i64 %3878, i64* %PC.i324
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3876, i64* %3879, align 8
  store %struct.Memory* %loadMem_4640dd, %struct.Memory** %MEMORY
  br label %block_.L_4643e8

block_.L_4640e2:                                  ; preds = %block_46405f
  %loadMem_4640e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 1
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %PC.i322
  %3887 = add i64 %3886, 5
  store i64 %3887, i64* %PC.i322
  store i64 5, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_4640e2, %struct.Memory** %MEMORY
  %loadMem_4640e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3889 = getelementptr inbounds %struct.GPR, %struct.GPR* %3888, i32 0, i32 33
  %3890 = getelementptr inbounds %struct.Reg, %struct.Reg* %3889, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3890 to i64*
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 1
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %3893 to i64*
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 15
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %3896 to i64*
  %3897 = load i64, i64* %RAX.i320
  %3898 = load i64, i64* %RBP.i321
  %3899 = sub i64 %3898, 532
  %3900 = load i64, i64* %PC.i319
  %3901 = add i64 %3900, 6
  store i64 %3901, i64* %PC.i319
  %3902 = trunc i64 %3897 to i32
  %3903 = inttoptr i64 %3899 to i32*
  %3904 = load i32, i32* %3903
  %3905 = sub i32 %3902, %3904
  %3906 = zext i32 %3905 to i64
  store i64 %3906, i64* %RAX.i320, align 8
  %3907 = icmp ult i32 %3902, %3904
  %3908 = zext i1 %3907 to i8
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3908, i8* %3909, align 1
  %3910 = and i32 %3905, 255
  %3911 = call i32 @llvm.ctpop.i32(i32 %3910)
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  %3914 = xor i8 %3913, 1
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3914, i8* %3915, align 1
  %3916 = xor i32 %3904, %3902
  %3917 = xor i32 %3916, %3905
  %3918 = lshr i32 %3917, 4
  %3919 = trunc i32 %3918 to i8
  %3920 = and i8 %3919, 1
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3920, i8* %3921, align 1
  %3922 = icmp eq i32 %3905, 0
  %3923 = zext i1 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3923, i8* %3924, align 1
  %3925 = lshr i32 %3905, 31
  %3926 = trunc i32 %3925 to i8
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3926, i8* %3927, align 1
  %3928 = lshr i32 %3902, 31
  %3929 = lshr i32 %3904, 31
  %3930 = xor i32 %3929, %3928
  %3931 = xor i32 %3925, %3928
  %3932 = add i32 %3931, %3930
  %3933 = icmp eq i32 %3932, 2
  %3934 = zext i1 %3933 to i8
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3934, i8* %3935, align 1
  store %struct.Memory* %loadMem_4640e7, %struct.Memory** %MEMORY
  %loadMem_4640ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3937 = getelementptr inbounds %struct.GPR, %struct.GPR* %3936, i32 0, i32 33
  %3938 = getelementptr inbounds %struct.Reg, %struct.Reg* %3937, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3938 to i64*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 1
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %EAX.i317 = bitcast %union.anon* %3941 to i32*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 15
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %3944 to i64*
  %3945 = load i32, i32* %EAX.i317
  %3946 = zext i32 %3945 to i64
  %3947 = load i64, i64* %RBP.i318
  %3948 = sub i64 %3947, 496
  %3949 = load i64, i64* %PC.i316
  %3950 = add i64 %3949, 6
  store i64 %3950, i64* %PC.i316
  %3951 = inttoptr i64 %3948 to i32*
  %3952 = load i32, i32* %3951
  %3953 = sub i32 %3945, %3952
  %3954 = icmp ult i32 %3945, %3952
  %3955 = zext i1 %3954 to i8
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3955, i8* %3956, align 1
  %3957 = and i32 %3953, 255
  %3958 = call i32 @llvm.ctpop.i32(i32 %3957)
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  %3961 = xor i8 %3960, 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3961, i8* %3962, align 1
  %3963 = xor i32 %3952, %3945
  %3964 = xor i32 %3963, %3953
  %3965 = lshr i32 %3964, 4
  %3966 = trunc i32 %3965 to i8
  %3967 = and i8 %3966, 1
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3967, i8* %3968, align 1
  %3969 = icmp eq i32 %3953, 0
  %3970 = zext i1 %3969 to i8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3970, i8* %3971, align 1
  %3972 = lshr i32 %3953, 31
  %3973 = trunc i32 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3973, i8* %3974, align 1
  %3975 = lshr i32 %3945, 31
  %3976 = lshr i32 %3952, 31
  %3977 = xor i32 %3976, %3975
  %3978 = xor i32 %3972, %3975
  %3979 = add i32 %3978, %3977
  %3980 = icmp eq i32 %3979, 2
  %3981 = zext i1 %3980 to i8
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3981, i8* %3982, align 1
  store %struct.Memory* %loadMem_4640ed, %struct.Memory** %MEMORY
  %loadMem_4640f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %PC.i315
  %3987 = add i64 %3986, 32
  %3988 = load i64, i64* %PC.i315
  %3989 = add i64 %3988, 6
  %3990 = load i64, i64* %PC.i315
  %3991 = add i64 %3990, 6
  store i64 %3991, i64* %PC.i315
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3993 = load i8, i8* %3992, align 1
  %3994 = icmp ne i8 %3993, 0
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3996 = load i8, i8* %3995, align 1
  %3997 = icmp ne i8 %3996, 0
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3999 = load i8, i8* %3998, align 1
  %4000 = icmp ne i8 %3999, 0
  %4001 = xor i1 %3997, %4000
  %4002 = or i1 %3994, %4001
  %4003 = zext i1 %4002 to i8
  store i8 %4003, i8* %BRANCH_TAKEN, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4005 = select i1 %4002, i64 %3987, i64 %3989
  store i64 %4005, i64* %4004, align 8
  store %struct.Memory* %loadMem_4640f3, %struct.Memory** %MEMORY
  %loadBr_4640f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4640f3 = icmp eq i8 %loadBr_4640f3, 1
  br i1 %cmpBr_4640f3, label %block_.L_464113, label %block_4640f9

block_4640f9:                                     ; preds = %block_.L_4640e2
  %loadMem_4640f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 1
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %4011 to i64*
  %4012 = load i64, i64* %PC.i313
  %4013 = add i64 %4012, 5
  store i64 %4013, i64* %PC.i313
  store i64 5, i64* %RAX.i314, align 8
  store %struct.Memory* %loadMem_4640f9, %struct.Memory** %MEMORY
  %loadMem_4640fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 33
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 5
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 15
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %RBP.i312
  %4024 = sub i64 %4023, 76
  %4025 = load i64, i64* %PC.i310
  %4026 = add i64 %4025, 3
  store i64 %4026, i64* %PC.i310
  %4027 = inttoptr i64 %4024 to i32*
  %4028 = load i32, i32* %4027
  %4029 = zext i32 %4028 to i64
  store i64 %4029, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_4640fe, %struct.Memory** %MEMORY
  %loadMem_464101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 5
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %ECX.i308 = bitcast %union.anon* %4035 to i32*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 15
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %RBP.i309
  %4040 = sub i64 %4039, 492
  %4041 = load i32, i32* %ECX.i308
  %4042 = zext i32 %4041 to i64
  %4043 = load i64, i64* %PC.i307
  %4044 = add i64 %4043, 6
  store i64 %4044, i64* %PC.i307
  %4045 = inttoptr i64 %4040 to i32*
  store i32 %4041, i32* %4045
  store %struct.Memory* %loadMem_464101, %struct.Memory** %MEMORY
  %loadMem_464107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 33
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4048 to i64*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 1
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %4051 to i64*
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 15
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %4054 to i64*
  %4055 = load i64, i64* %RAX.i305
  %4056 = load i64, i64* %RBP.i306
  %4057 = sub i64 %4056, 532
  %4058 = load i64, i64* %PC.i304
  %4059 = add i64 %4058, 6
  store i64 %4059, i64* %PC.i304
  %4060 = trunc i64 %4055 to i32
  %4061 = inttoptr i64 %4057 to i32*
  %4062 = load i32, i32* %4061
  %4063 = sub i32 %4060, %4062
  %4064 = zext i32 %4063 to i64
  store i64 %4064, i64* %RAX.i305, align 8
  %4065 = icmp ult i32 %4060, %4062
  %4066 = zext i1 %4065 to i8
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4066, i8* %4067, align 1
  %4068 = and i32 %4063, 255
  %4069 = call i32 @llvm.ctpop.i32(i32 %4068)
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  %4072 = xor i8 %4071, 1
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4072, i8* %4073, align 1
  %4074 = xor i32 %4062, %4060
  %4075 = xor i32 %4074, %4063
  %4076 = lshr i32 %4075, 4
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4078, i8* %4079, align 1
  %4080 = icmp eq i32 %4063, 0
  %4081 = zext i1 %4080 to i8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4081, i8* %4082, align 1
  %4083 = lshr i32 %4063, 31
  %4084 = trunc i32 %4083 to i8
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4084, i8* %4085, align 1
  %4086 = lshr i32 %4060, 31
  %4087 = lshr i32 %4062, 31
  %4088 = xor i32 %4087, %4086
  %4089 = xor i32 %4083, %4086
  %4090 = add i32 %4089, %4088
  %4091 = icmp eq i32 %4090, 2
  %4092 = zext i1 %4091 to i8
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4092, i8* %4093, align 1
  store %struct.Memory* %loadMem_464107, %struct.Memory** %MEMORY
  %loadMem_46410d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 1
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %4099 to i32*
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4101 = getelementptr inbounds %struct.GPR, %struct.GPR* %4100, i32 0, i32 15
  %4102 = getelementptr inbounds %struct.Reg, %struct.Reg* %4101, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %4102 to i64*
  %4103 = load i64, i64* %RBP.i303
  %4104 = sub i64 %4103, 496
  %4105 = load i32, i32* %EAX.i302
  %4106 = zext i32 %4105 to i64
  %4107 = load i64, i64* %PC.i301
  %4108 = add i64 %4107, 6
  store i64 %4108, i64* %PC.i301
  %4109 = inttoptr i64 %4104 to i32*
  store i32 %4105, i32* %4109
  store %struct.Memory* %loadMem_46410d, %struct.Memory** %MEMORY
  br label %block_.L_464113

block_.L_464113:                                  ; preds = %block_4640f9, %block_.L_4640e2
  %loadMem_464113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %PC.i300
  %4114 = add i64 %4113, 5
  %4115 = load i64, i64* %PC.i300
  %4116 = add i64 %4115, 5
  store i64 %4116, i64* %PC.i300
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4114, i64* %4117, align 8
  store %struct.Memory* %loadMem_464113, %struct.Memory** %MEMORY
  br label %block_.L_464118

block_.L_464118:                                  ; preds = %block_.L_464113
  %loadMem_464118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 33
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %PC.i299
  %4122 = add i64 %4121, 5
  %4123 = load i64, i64* %PC.i299
  %4124 = add i64 %4123, 5
  store i64 %4124, i64* %PC.i299
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4122, i64* %4125, align 8
  store %struct.Memory* %loadMem_464118, %struct.Memory** %MEMORY
  br label %block_.L_46411d

block_.L_46411d:                                  ; preds = %block_.L_464118
  %loadMem_46411d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 33
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %PC.i298
  %4130 = add i64 %4129, 62
  %4131 = load i64, i64* %PC.i298
  %4132 = add i64 %4131, 5
  store i64 %4132, i64* %PC.i298
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4130, i64* %4133, align 8
  store %struct.Memory* %loadMem_46411d, %struct.Memory** %MEMORY
  br label %block_.L_46415b

block_.L_464122:                                  ; preds = %block_464052
  %loadMem_464122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 33
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 1
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %EAX.i296 = bitcast %union.anon* %4139 to i32*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 1
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %4142 to i64*
  %4143 = load i64, i64* %RAX.i297
  %4144 = load i32, i32* %EAX.i296
  %4145 = zext i32 %4144 to i64
  %4146 = load i64, i64* %PC.i295
  %4147 = add i64 %4146, 2
  store i64 %4147, i64* %PC.i295
  %4148 = xor i64 %4145, %4143
  %4149 = trunc i64 %4148 to i32
  %4150 = and i64 %4148, 4294967295
  store i64 %4150, i64* %RAX.i297, align 8
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4151, align 1
  %4152 = and i32 %4149, 255
  %4153 = call i32 @llvm.ctpop.i32(i32 %4152)
  %4154 = trunc i32 %4153 to i8
  %4155 = and i8 %4154, 1
  %4156 = xor i8 %4155, 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4156, i8* %4157, align 1
  %4158 = icmp eq i32 %4149, 0
  %4159 = zext i1 %4158 to i8
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4159, i8* %4160, align 1
  %4161 = lshr i32 %4149, 31
  %4162 = trunc i32 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4162, i8* %4163, align 1
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4164, align 1
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4165, align 1
  store %struct.Memory* %loadMem_464122, %struct.Memory** %MEMORY
  %loadMem_464124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 33
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 1
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %4171 to i32*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 9
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %RSI.i294 = bitcast %union.anon* %4174 to i64*
  %4175 = load i32, i32* %EAX.i293
  %4176 = zext i32 %4175 to i64
  %4177 = load i64, i64* %PC.i292
  %4178 = add i64 %4177, 2
  store i64 %4178, i64* %PC.i292
  %4179 = and i64 %4176, 4294967295
  store i64 %4179, i64* %RSI.i294, align 8
  store %struct.Memory* %loadMem_464124, %struct.Memory** %MEMORY
  %loadMem_464126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 33
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 11
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RDI.i290 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 15
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %RBP.i291
  %4190 = sub i64 %4189, 48
  %4191 = load i64, i64* %PC.i289
  %4192 = add i64 %4191, 3
  store i64 %4192, i64* %PC.i289
  %4193 = inttoptr i64 %4190 to i32*
  %4194 = load i32, i32* %4193
  %4195 = zext i32 %4194 to i64
  store i64 %4195, i64* %RDI.i290, align 8
  store %struct.Memory* %loadMem_464126, %struct.Memory** %MEMORY
  %loadMem_464129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 7
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %RDX.i287 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 15
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RBP.i288
  %4206 = sub i64 %4205, 520
  %4207 = load i64, i64* %PC.i286
  %4208 = add i64 %4207, 6
  store i64 %4208, i64* %PC.i286
  %4209 = inttoptr i64 %4206 to i32*
  %4210 = load i32, i32* %4209
  %4211 = zext i32 %4210 to i64
  store i64 %4211, i64* %RDX.i287, align 8
  store %struct.Memory* %loadMem_464129, %struct.Memory** %MEMORY
  %loadMem_46412f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 33
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 5
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %4217 to i64*
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 15
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %4220 to i64*
  %4221 = load i64, i64* %RBP.i285
  %4222 = sub i64 %4221, 524
  %4223 = load i64, i64* %PC.i283
  %4224 = add i64 %4223, 6
  store i64 %4224, i64* %PC.i283
  %4225 = inttoptr i64 %4222 to i32*
  %4226 = load i32, i32* %4225
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_46412f, %struct.Memory** %MEMORY
  %loadMem1_464135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 33
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4230 to i64*
  %4231 = load i64, i64* %PC.i282
  %4232 = add i64 %4231, -25685
  %4233 = load i64, i64* %PC.i282
  %4234 = add i64 %4233, 5
  %4235 = load i64, i64* %PC.i282
  %4236 = add i64 %4235, 5
  store i64 %4236, i64* %PC.i282
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4238 = load i64, i64* %4237, align 8
  %4239 = add i64 %4238, -8
  %4240 = inttoptr i64 %4239 to i64*
  store i64 %4234, i64* %4240
  store i64 %4239, i64* %4237, align 8
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4232, i64* %4241, align 8
  store %struct.Memory* %loadMem1_464135, %struct.Memory** %MEMORY
  %loadMem2_464135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464135 = load i64, i64* %3
  %call2_464135 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64 %loadPC_464135, %struct.Memory* %loadMem2_464135)
  store %struct.Memory* %call2_464135, %struct.Memory** %MEMORY
  %loadMem_46413a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 33
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 1
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %4247 to i32*
  %4248 = load i32, i32* %EAX.i281
  %4249 = zext i32 %4248 to i64
  %4250 = load i64, i64* %PC.i280
  %4251 = add i64 %4250, 3
  store i64 %4251, i64* %PC.i280
  %4252 = sub i32 %4248, 5
  %4253 = icmp ult i32 %4248, 5
  %4254 = zext i1 %4253 to i8
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4254, i8* %4255, align 1
  %4256 = and i32 %4252, 255
  %4257 = call i32 @llvm.ctpop.i32(i32 %4256)
  %4258 = trunc i32 %4257 to i8
  %4259 = and i8 %4258, 1
  %4260 = xor i8 %4259, 1
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4260, i8* %4261, align 1
  %4262 = xor i64 5, %4249
  %4263 = trunc i64 %4262 to i32
  %4264 = xor i32 %4263, %4252
  %4265 = lshr i32 %4264, 4
  %4266 = trunc i32 %4265 to i8
  %4267 = and i8 %4266, 1
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4267, i8* %4268, align 1
  %4269 = icmp eq i32 %4252, 0
  %4270 = zext i1 %4269 to i8
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4270, i8* %4271, align 1
  %4272 = lshr i32 %4252, 31
  %4273 = trunc i32 %4272 to i8
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4273, i8* %4274, align 1
  %4275 = lshr i32 %4248, 31
  %4276 = xor i32 %4272, %4275
  %4277 = add i32 %4276, %4275
  %4278 = icmp eq i32 %4277, 2
  %4279 = zext i1 %4278 to i8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4279, i8* %4280, align 1
  store %struct.Memory* %loadMem_46413a, %struct.Memory** %MEMORY
  %loadMem_46413d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4283 to i64*
  %4284 = load i64, i64* %PC.i279
  %4285 = add i64 %4284, 25
  %4286 = load i64, i64* %PC.i279
  %4287 = add i64 %4286, 6
  %4288 = load i64, i64* %PC.i279
  %4289 = add i64 %4288, 6
  store i64 %4289, i64* %PC.i279
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4291 = load i8, i8* %4290, align 1
  store i8 %4291, i8* %BRANCH_TAKEN, align 1
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4293 = icmp ne i8 %4291, 0
  %4294 = select i1 %4293, i64 %4285, i64 %4287
  store i64 %4294, i64* %4292, align 8
  store %struct.Memory* %loadMem_46413d, %struct.Memory** %MEMORY
  %loadBr_46413d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46413d = icmp eq i8 %loadBr_46413d, 1
  br i1 %cmpBr_46413d, label %block_.L_464156, label %block_464143

block_464143:                                     ; preds = %block_.L_464122
  %loadMem_464143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 1
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %4300 to i64*
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 15
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %4303 to i64*
  %4304 = load i64, i64* %RBP.i278
  %4305 = sub i64 %4304, 76
  %4306 = load i64, i64* %PC.i276
  %4307 = add i64 %4306, 3
  store i64 %4307, i64* %PC.i276
  %4308 = inttoptr i64 %4305 to i32*
  %4309 = load i32, i32* %4308
  %4310 = zext i32 %4309 to i64
  store i64 %4310, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_464143, %struct.Memory** %MEMORY
  %loadMem_464146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 1
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %4316 to i32*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 15
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %4319 to i64*
  %4320 = load i64, i64* %RBP.i275
  %4321 = sub i64 %4320, 492
  %4322 = load i32, i32* %EAX.i274
  %4323 = zext i32 %4322 to i64
  %4324 = load i64, i64* %PC.i273
  %4325 = add i64 %4324, 6
  store i64 %4325, i64* %PC.i273
  %4326 = inttoptr i64 %4321 to i32*
  store i32 %4322, i32* %4326
  store %struct.Memory* %loadMem_464146, %struct.Memory** %MEMORY
  %loadMem_46414c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 15
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %4332 to i64*
  %4333 = load i64, i64* %RBP.i272
  %4334 = sub i64 %4333, 496
  %4335 = load i64, i64* %PC.i271
  %4336 = add i64 %4335, 10
  store i64 %4336, i64* %PC.i271
  %4337 = inttoptr i64 %4334 to i32*
  store i32 1, i32* %4337
  store %struct.Memory* %loadMem_46414c, %struct.Memory** %MEMORY
  br label %block_.L_464156

block_.L_464156:                                  ; preds = %block_464143, %block_.L_464122
  %loadMem1_464156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 33
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4340 to i64*
  %4341 = load i64, i64* %PC.i270
  %4342 = add i64 %4341, -353270
  %4343 = load i64, i64* %PC.i270
  %4344 = add i64 %4343, 5
  %4345 = load i64, i64* %PC.i270
  %4346 = add i64 %4345, 5
  store i64 %4346, i64* %PC.i270
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4348 = load i64, i64* %4347, align 8
  %4349 = add i64 %4348, -8
  %4350 = inttoptr i64 %4349 to i64*
  store i64 %4344, i64* %4350
  store i64 %4349, i64* %4347, align 8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4342, i64* %4351, align 8
  store %struct.Memory* %loadMem1_464156, %struct.Memory** %MEMORY
  %loadMem2_464156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464156 = load i64, i64* %3
  %call2_464156 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_464156, %struct.Memory* %loadMem2_464156)
  store %struct.Memory* %call2_464156, %struct.Memory** %MEMORY
  br label %block_.L_46415b

block_.L_46415b:                                  ; preds = %block_.L_464156, %block_.L_46411d
  %loadMem_46415b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4354 to i64*
  %4355 = load i64, i64* %PC.i269
  %4356 = add i64 %4355, 5
  %4357 = load i64, i64* %PC.i269
  %4358 = add i64 %4357, 5
  store i64 %4358, i64* %PC.i269
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4356, i64* %4359, align 8
  store %struct.Memory* %loadMem_46415b, %struct.Memory** %MEMORY
  br label %block_.L_464160

block_.L_464160:                                  ; preds = %block_.L_46415b, %block_.L_463fa0
  %loadMem_464160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 33
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %PC.i268
  %4364 = add i64 %4363, 5
  %4365 = load i64, i64* %PC.i268
  %4366 = add i64 %4365, 5
  store i64 %4366, i64* %PC.i268
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4364, i64* %4367, align 8
  store %struct.Memory* %loadMem_464160, %struct.Memory** %MEMORY
  br label %block_.L_464165

block_.L_464165:                                  ; preds = %block_.L_464160
  %loadMem_464165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 1
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %4373 to i64*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 15
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %4376 to i64*
  %4377 = load i64, i64* %RBP.i267
  %4378 = sub i64 %4377, 504
  %4379 = load i64, i64* %PC.i265
  %4380 = add i64 %4379, 6
  store i64 %4380, i64* %PC.i265
  %4381 = inttoptr i64 %4378 to i32*
  %4382 = load i32, i32* %4381
  %4383 = zext i32 %4382 to i64
  store i64 %4383, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_464165, %struct.Memory** %MEMORY
  %loadMem_46416b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 1
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %4389 to i64*
  %4390 = load i64, i64* %RAX.i264
  %4391 = load i64, i64* %PC.i263
  %4392 = add i64 %4391, 3
  store i64 %4392, i64* %PC.i263
  %4393 = trunc i64 %4390 to i32
  %4394 = add i32 1, %4393
  %4395 = zext i32 %4394 to i64
  store i64 %4395, i64* %RAX.i264, align 8
  %4396 = icmp ult i32 %4394, %4393
  %4397 = icmp ult i32 %4394, 1
  %4398 = or i1 %4396, %4397
  %4399 = zext i1 %4398 to i8
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4399, i8* %4400, align 1
  %4401 = and i32 %4394, 255
  %4402 = call i32 @llvm.ctpop.i32(i32 %4401)
  %4403 = trunc i32 %4402 to i8
  %4404 = and i8 %4403, 1
  %4405 = xor i8 %4404, 1
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4405, i8* %4406, align 1
  %4407 = xor i64 1, %4390
  %4408 = trunc i64 %4407 to i32
  %4409 = xor i32 %4408, %4394
  %4410 = lshr i32 %4409, 4
  %4411 = trunc i32 %4410 to i8
  %4412 = and i8 %4411, 1
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4412, i8* %4413, align 1
  %4414 = icmp eq i32 %4394, 0
  %4415 = zext i1 %4414 to i8
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4415, i8* %4416, align 1
  %4417 = lshr i32 %4394, 31
  %4418 = trunc i32 %4417 to i8
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4418, i8* %4419, align 1
  %4420 = lshr i32 %4393, 31
  %4421 = xor i32 %4417, %4420
  %4422 = add i32 %4421, %4417
  %4423 = icmp eq i32 %4422, 2
  %4424 = zext i1 %4423 to i8
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4424, i8* %4425, align 1
  store %struct.Memory* %loadMem_46416b, %struct.Memory** %MEMORY
  %loadMem_46416e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 33
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 1
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %EAX.i261 = bitcast %union.anon* %4431 to i32*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 15
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %4434 to i64*
  %4435 = load i64, i64* %RBP.i262
  %4436 = sub i64 %4435, 504
  %4437 = load i32, i32* %EAX.i261
  %4438 = zext i32 %4437 to i64
  %4439 = load i64, i64* %PC.i260
  %4440 = add i64 %4439, 6
  store i64 %4440, i64* %PC.i260
  %4441 = inttoptr i64 %4436 to i32*
  store i32 %4437, i32* %4441
  store %struct.Memory* %loadMem_46416e, %struct.Memory** %MEMORY
  %loadMem_464174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %PC.i259
  %4446 = add i64 %4445, -597
  %4447 = load i64, i64* %PC.i259
  %4448 = add i64 %4447, 5
  store i64 %4448, i64* %PC.i259
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4446, i64* %4449, align 8
  store %struct.Memory* %loadMem_464174, %struct.Memory** %MEMORY
  br label %block_.L_463f1f

block_.L_464179:                                  ; preds = %block_.L_463f1f
  %loadMem_464179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %4455 to i64*
  %4456 = load i64, i64* %PC.i257
  %4457 = add i64 %4456, 7
  store i64 %4457, i64* %PC.i257
  %4458 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %4459 = zext i32 %4458 to i64
  store i64 %4459, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_464179, %struct.Memory** %MEMORY
  %loadMem_464180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 33
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4462 to i64*
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 1
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %EAX.i256 = bitcast %union.anon* %4465 to i32*
  %4466 = load i32, i32* %EAX.i256
  %4467 = zext i32 %4466 to i64
  %4468 = load i64, i64* %PC.i255
  %4469 = add i64 %4468, 7
  store i64 %4469, i64* %PC.i255
  %4470 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*)
  %4471 = sub i32 %4466, %4470
  %4472 = icmp ult i32 %4466, %4470
  %4473 = zext i1 %4472 to i8
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4473, i8* %4474, align 1
  %4475 = and i32 %4471, 255
  %4476 = call i32 @llvm.ctpop.i32(i32 %4475)
  %4477 = trunc i32 %4476 to i8
  %4478 = and i8 %4477, 1
  %4479 = xor i8 %4478, 1
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4479, i8* %4480, align 1
  %4481 = xor i32 %4470, %4466
  %4482 = xor i32 %4481, %4471
  %4483 = lshr i32 %4482, 4
  %4484 = trunc i32 %4483 to i8
  %4485 = and i8 %4484, 1
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4485, i8* %4486, align 1
  %4487 = icmp eq i32 %4471, 0
  %4488 = zext i1 %4487 to i8
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4488, i8* %4489, align 1
  %4490 = lshr i32 %4471, 31
  %4491 = trunc i32 %4490 to i8
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4491, i8* %4492, align 1
  %4493 = lshr i32 %4466, 31
  %4494 = lshr i32 %4470, 31
  %4495 = xor i32 %4494, %4493
  %4496 = xor i32 %4490, %4493
  %4497 = add i32 %4496, %4495
  %4498 = icmp eq i32 %4497, 2
  %4499 = zext i1 %4498 to i8
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4499, i8* %4500, align 1
  store %struct.Memory* %loadMem_464180, %struct.Memory** %MEMORY
  %loadMem_464187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 33
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %PC.i254
  %4505 = add i64 %4504, 450
  %4506 = load i64, i64* %PC.i254
  %4507 = add i64 %4506, 6
  %4508 = load i64, i64* %PC.i254
  %4509 = add i64 %4508, 6
  store i64 %4509, i64* %PC.i254
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4511 = load i8, i8* %4510, align 1
  %4512 = icmp eq i8 %4511, 0
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4514 = load i8, i8* %4513, align 1
  %4515 = icmp ne i8 %4514, 0
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4517 = load i8, i8* %4516, align 1
  %4518 = icmp ne i8 %4517, 0
  %4519 = xor i1 %4515, %4518
  %4520 = xor i1 %4519, true
  %4521 = and i1 %4512, %4520
  %4522 = zext i1 %4521 to i8
  store i8 %4522, i8* %BRANCH_TAKEN, align 1
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4524 = select i1 %4521, i64 %4505, i64 %4507
  store i64 %4524, i64* %4523, align 8
  store %struct.Memory* %loadMem_464187, %struct.Memory** %MEMORY
  %loadBr_464187 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464187 = icmp eq i8 %loadBr_464187, 1
  br i1 %cmpBr_464187, label %block_.L_464349, label %block_46418d

block_46418d:                                     ; preds = %block_.L_464179
  %loadMem_46418d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 33
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 11
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %RDI.i252 = bitcast %union.anon* %4530 to i64*
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 15
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %4533 to i64*
  %4534 = load i64, i64* %RBP.i253
  %4535 = sub i64 %4534, 48
  %4536 = load i64, i64* %PC.i251
  %4537 = add i64 %4536, 3
  store i64 %4537, i64* %PC.i251
  %4538 = inttoptr i64 %4535 to i32*
  %4539 = load i32, i32* %4538
  %4540 = zext i32 %4539 to i64
  store i64 %4540, i64* %RDI.i252, align 8
  store %struct.Memory* %loadMem_46418d, %struct.Memory** %MEMORY
  %loadMem1_464190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4543 to i64*
  %4544 = load i64, i64* %PC.i250
  %4545 = add i64 %4544, -330144
  %4546 = load i64, i64* %PC.i250
  %4547 = add i64 %4546, 5
  %4548 = load i64, i64* %PC.i250
  %4549 = add i64 %4548, 5
  store i64 %4549, i64* %PC.i250
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4551 = load i64, i64* %4550, align 8
  %4552 = add i64 %4551, -8
  %4553 = inttoptr i64 %4552 to i64*
  store i64 %4547, i64* %4553
  store i64 %4552, i64* %4550, align 8
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4545, i64* %4554, align 8
  store %struct.Memory* %loadMem1_464190, %struct.Memory** %MEMORY
  %loadMem2_464190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464190 = load i64, i64* %3
  %call2_464190 = call %struct.Memory* @sub_4137f0.countstones(%struct.State* %0, i64 %loadPC_464190, %struct.Memory* %loadMem2_464190)
  store %struct.Memory* %call2_464190, %struct.Memory** %MEMORY
  %loadMem_464195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 1
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %EAX.i249 = bitcast %union.anon* %4560 to i32*
  %4561 = load i32, i32* %EAX.i249
  %4562 = zext i32 %4561 to i64
  %4563 = load i64, i64* %PC.i248
  %4564 = add i64 %4563, 3
  store i64 %4564, i64* %PC.i248
  %4565 = sub i32 %4561, 1
  %4566 = icmp ult i32 %4561, 1
  %4567 = zext i1 %4566 to i8
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4567, i8* %4568, align 1
  %4569 = and i32 %4565, 255
  %4570 = call i32 @llvm.ctpop.i32(i32 %4569)
  %4571 = trunc i32 %4570 to i8
  %4572 = and i8 %4571, 1
  %4573 = xor i8 %4572, 1
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4573, i8* %4574, align 1
  %4575 = xor i64 1, %4562
  %4576 = trunc i64 %4575 to i32
  %4577 = xor i32 %4576, %4565
  %4578 = lshr i32 %4577, 4
  %4579 = trunc i32 %4578 to i8
  %4580 = and i8 %4579, 1
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4580, i8* %4581, align 1
  %4582 = icmp eq i32 %4565, 0
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4583, i8* %4584, align 1
  %4585 = lshr i32 %4565, 31
  %4586 = trunc i32 %4585 to i8
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4586, i8* %4587, align 1
  %4588 = lshr i32 %4561, 31
  %4589 = xor i32 %4585, %4588
  %4590 = add i32 %4589, %4588
  %4591 = icmp eq i32 %4590, 2
  %4592 = zext i1 %4591 to i8
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4592, i8* %4593, align 1
  store %struct.Memory* %loadMem_464195, %struct.Memory** %MEMORY
  %loadMem_464198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 33
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4596 to i64*
  %4597 = load i64, i64* %PC.i247
  %4598 = add i64 %4597, 433
  %4599 = load i64, i64* %PC.i247
  %4600 = add i64 %4599, 6
  %4601 = load i64, i64* %PC.i247
  %4602 = add i64 %4601, 6
  store i64 %4602, i64* %PC.i247
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4604 = load i8, i8* %4603, align 1
  %4605 = icmp eq i8 %4604, 0
  %4606 = zext i1 %4605 to i8
  store i8 %4606, i8* %BRANCH_TAKEN, align 1
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4608 = select i1 %4605, i64 %4598, i64 %4600
  store i64 %4608, i64* %4607, align 8
  store %struct.Memory* %loadMem_464198, %struct.Memory** %MEMORY
  %loadBr_464198 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464198 = icmp eq i8 %loadBr_464198, 1
  br i1 %cmpBr_464198, label %block_.L_464349, label %block_46419e

block_46419e:                                     ; preds = %block_46418d
  %loadMem_46419e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 33
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4611 to i64*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 1
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %EAX.i245 = bitcast %union.anon* %4614 to i32*
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 1
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %4617 to i64*
  %4618 = load i64, i64* %RAX.i246
  %4619 = load i32, i32* %EAX.i245
  %4620 = zext i32 %4619 to i64
  %4621 = load i64, i64* %PC.i244
  %4622 = add i64 %4621, 2
  store i64 %4622, i64* %PC.i244
  %4623 = xor i64 %4620, %4618
  %4624 = trunc i64 %4623 to i32
  %4625 = and i64 %4623, 4294967295
  store i64 %4625, i64* %RAX.i246, align 8
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4626, align 1
  %4627 = and i32 %4624, 255
  %4628 = call i32 @llvm.ctpop.i32(i32 %4627)
  %4629 = trunc i32 %4628 to i8
  %4630 = and i8 %4629, 1
  %4631 = xor i8 %4630, 1
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4631, i8* %4632, align 1
  %4633 = icmp eq i32 %4624, 0
  %4634 = zext i1 %4633 to i8
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4634, i8* %4635, align 1
  %4636 = lshr i32 %4624, 31
  %4637 = trunc i32 %4636 to i8
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4637, i8* %4638, align 1
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4639, align 1
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4640, align 1
  store %struct.Memory* %loadMem_46419e, %struct.Memory** %MEMORY
  %loadMem_4641a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %EAX.i242 = bitcast %union.anon* %4646 to i32*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 7
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %4649 to i64*
  %4650 = load i32, i32* %EAX.i242
  %4651 = zext i32 %4650 to i64
  %4652 = load i64, i64* %PC.i241
  %4653 = add i64 %4652, 2
  store i64 %4653, i64* %PC.i241
  %4654 = and i64 %4651, 4294967295
  store i64 %4654, i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_4641a0, %struct.Memory** %MEMORY
  %loadMem_4641a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 33
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4657 to i64*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 11
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RDI.i239 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 15
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %4663 to i64*
  %4664 = load i64, i64* %RBP.i240
  %4665 = sub i64 %4664, 80
  %4666 = load i64, i64* %PC.i238
  %4667 = add i64 %4666, 3
  store i64 %4667, i64* %PC.i238
  %4668 = inttoptr i64 %4665 to i32*
  %4669 = load i32, i32* %4668
  %4670 = zext i32 %4669 to i64
  store i64 %4670, i64* %RDI.i239, align 8
  store %struct.Memory* %loadMem_4641a2, %struct.Memory** %MEMORY
  %loadMem_4641a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4672 = getelementptr inbounds %struct.GPR, %struct.GPR* %4671, i32 0, i32 33
  %4673 = getelementptr inbounds %struct.Reg, %struct.Reg* %4672, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4673 to i64*
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 9
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 15
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %4679 to i64*
  %4680 = load i64, i64* %RBP.i237
  %4681 = sub i64 %4680, 72
  %4682 = load i64, i64* %PC.i235
  %4683 = add i64 %4682, 3
  store i64 %4683, i64* %PC.i235
  %4684 = inttoptr i64 %4681 to i32*
  %4685 = load i32, i32* %4684
  %4686 = zext i32 %4685 to i64
  store i64 %4686, i64* %RSI.i236, align 8
  store %struct.Memory* %loadMem_4641a5, %struct.Memory** %MEMORY
  %loadMem1_4641a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4689 to i64*
  %4690 = load i64, i64* %PC.i234
  %4691 = add i64 %4690, -348072
  %4692 = load i64, i64* %PC.i234
  %4693 = add i64 %4692, 5
  %4694 = load i64, i64* %PC.i234
  %4695 = add i64 %4694, 5
  store i64 %4695, i64* %PC.i234
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4697 = load i64, i64* %4696, align 8
  %4698 = add i64 %4697, -8
  %4699 = inttoptr i64 %4698 to i64*
  store i64 %4693, i64* %4699
  store i64 %4698, i64* %4696, align 8
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4691, i64* %4700, align 8
  store %struct.Memory* %loadMem1_4641a8, %struct.Memory** %MEMORY
  %loadMem2_4641a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4641a8 = load i64, i64* %3
  %call2_4641a8 = call %struct.Memory* @sub_40f200.is_ko(%struct.State* %0, i64 %loadPC_4641a8, %struct.Memory* %loadMem2_4641a8)
  store %struct.Memory* %call2_4641a8, %struct.Memory** %MEMORY
  %loadMem_4641ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 1
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %4706 to i32*
  %4707 = load i32, i32* %EAX.i233
  %4708 = zext i32 %4707 to i64
  %4709 = load i64, i64* %PC.i232
  %4710 = add i64 %4709, 3
  store i64 %4710, i64* %PC.i232
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4711, align 1
  %4712 = and i32 %4707, 255
  %4713 = call i32 @llvm.ctpop.i32(i32 %4712)
  %4714 = trunc i32 %4713 to i8
  %4715 = and i8 %4714, 1
  %4716 = xor i8 %4715, 1
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4716, i8* %4717, align 1
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4718, align 1
  %4719 = icmp eq i32 %4707, 0
  %4720 = zext i1 %4719 to i8
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4720, i8* %4721, align 1
  %4722 = lshr i32 %4707, 31
  %4723 = trunc i32 %4722 to i8
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4723, i8* %4724, align 1
  %4725 = lshr i32 %4707, 31
  %4726 = xor i32 %4722, %4725
  %4727 = add i32 %4726, %4725
  %4728 = icmp eq i32 %4727, 2
  %4729 = zext i1 %4728 to i8
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4729, i8* %4730, align 1
  store %struct.Memory* %loadMem_4641ad, %struct.Memory** %MEMORY
  %loadMem_4641b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4732 = getelementptr inbounds %struct.GPR, %struct.GPR* %4731, i32 0, i32 33
  %4733 = getelementptr inbounds %struct.Reg, %struct.Reg* %4732, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4733 to i64*
  %4734 = load i64, i64* %PC.i231
  %4735 = add i64 %4734, 409
  %4736 = load i64, i64* %PC.i231
  %4737 = add i64 %4736, 6
  %4738 = load i64, i64* %PC.i231
  %4739 = add i64 %4738, 6
  store i64 %4739, i64* %PC.i231
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4741 = load i8, i8* %4740, align 1
  store i8 %4741, i8* %BRANCH_TAKEN, align 1
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4743 = icmp ne i8 %4741, 0
  %4744 = select i1 %4743, i64 %4735, i64 %4737
  store i64 %4744, i64* %4742, align 8
  store %struct.Memory* %loadMem_4641b0, %struct.Memory** %MEMORY
  %loadBr_4641b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4641b0 = icmp eq i8 %loadBr_4641b0, 1
  br i1 %cmpBr_4641b0, label %block_.L_464349, label %block_4641b6

block_4641b6:                                     ; preds = %block_46419e
  %loadMem_4641b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 33
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 7
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %4750 to i64*
  %4751 = load i64, i64* %PC.i229
  %4752 = add i64 %4751, 5
  store i64 %4752, i64* %PC.i229
  store i64 6, i64* %RDX.i230, align 8
  store %struct.Memory* %loadMem_4641b6, %struct.Memory** %MEMORY
  %loadMem_4641bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 33
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4755 to i64*
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 5
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %4758 to i64*
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 15
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %4761 to i64*
  %4762 = load i64, i64* %RBP.i228
  %4763 = sub i64 %4762, 560
  %4764 = load i64, i64* %PC.i226
  %4765 = add i64 %4764, 7
  store i64 %4765, i64* %PC.i226
  store i64 %4763, i64* %RCX.i227, align 8
  store %struct.Memory* %loadMem_4641bb, %struct.Memory** %MEMORY
  %loadMem_4641c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 33
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 11
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %4771 to i64*
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 15
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %4774 to i64*
  %4775 = load i64, i64* %RBP.i225
  %4776 = sub i64 %4775, 80
  %4777 = load i64, i64* %PC.i223
  %4778 = add i64 %4777, 3
  store i64 %4778, i64* %PC.i223
  %4779 = inttoptr i64 %4776 to i32*
  %4780 = load i32, i32* %4779
  %4781 = zext i32 %4780 to i64
  store i64 %4781, i64* %RDI.i224, align 8
  store %struct.Memory* %loadMem_4641c2, %struct.Memory** %MEMORY
  %loadMem_4641c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 33
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 9
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RSI.i221 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 15
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %RBP.i222
  %4792 = sub i64 %4791, 68
  %4793 = load i64, i64* %PC.i220
  %4794 = add i64 %4793, 3
  store i64 %4794, i64* %PC.i220
  %4795 = inttoptr i64 %4792 to i32*
  %4796 = load i32, i32* %4795
  %4797 = zext i32 %4796 to i64
  store i64 %4797, i64* %RSI.i221, align 8
  store %struct.Memory* %loadMem_4641c5, %struct.Memory** %MEMORY
  %loadMem1_4641c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 33
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %4800 to i64*
  %4801 = load i64, i64* %PC.i219
  %4802 = add i64 %4801, -338968
  %4803 = load i64, i64* %PC.i219
  %4804 = add i64 %4803, 5
  %4805 = load i64, i64* %PC.i219
  %4806 = add i64 %4805, 5
  store i64 %4806, i64* %PC.i219
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4808 = load i64, i64* %4807, align 8
  %4809 = add i64 %4808, -8
  %4810 = inttoptr i64 %4809 to i64*
  store i64 %4804, i64* %4810
  store i64 %4809, i64* %4807, align 8
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4802, i64* %4811, align 8
  store %struct.Memory* %loadMem1_4641c8, %struct.Memory** %MEMORY
  %loadMem2_4641c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4641c8 = load i64, i64* %3
  %call2_4641c8 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_4641c8, %struct.Memory* %loadMem2_4641c8)
  store %struct.Memory* %call2_4641c8, %struct.Memory** %MEMORY
  %loadMem_4641cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 33
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 1
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %EAX.i217 = bitcast %union.anon* %4817 to i32*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 15
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %4820 to i64*
  %4821 = load i64, i64* %RBP.i218
  %4822 = sub i64 %4821, 500
  %4823 = load i32, i32* %EAX.i217
  %4824 = zext i32 %4823 to i64
  %4825 = load i64, i64* %PC.i216
  %4826 = add i64 %4825, 6
  store i64 %4826, i64* %PC.i216
  %4827 = inttoptr i64 %4822 to i32*
  store i32 %4823, i32* %4827
  store %struct.Memory* %loadMem_4641cd, %struct.Memory** %MEMORY
  %loadMem_4641d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4829 = getelementptr inbounds %struct.GPR, %struct.GPR* %4828, i32 0, i32 33
  %4830 = getelementptr inbounds %struct.Reg, %struct.Reg* %4829, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4830 to i64*
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 15
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %4833 to i64*
  %4834 = load i64, i64* %RBP.i215
  %4835 = sub i64 %4834, 500
  %4836 = load i64, i64* %PC.i214
  %4837 = add i64 %4836, 7
  store i64 %4837, i64* %PC.i214
  %4838 = inttoptr i64 %4835 to i32*
  %4839 = load i32, i32* %4838
  %4840 = sub i32 %4839, 5
  %4841 = icmp ult i32 %4839, 5
  %4842 = zext i1 %4841 to i8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4842, i8* %4843, align 1
  %4844 = and i32 %4840, 255
  %4845 = call i32 @llvm.ctpop.i32(i32 %4844)
  %4846 = trunc i32 %4845 to i8
  %4847 = and i8 %4846, 1
  %4848 = xor i8 %4847, 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4848, i8* %4849, align 1
  %4850 = xor i32 %4839, 5
  %4851 = xor i32 %4850, %4840
  %4852 = lshr i32 %4851, 4
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4854, i8* %4855, align 1
  %4856 = icmp eq i32 %4840, 0
  %4857 = zext i1 %4856 to i8
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4857, i8* %4858, align 1
  %4859 = lshr i32 %4840, 31
  %4860 = trunc i32 %4859 to i8
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4860, i8* %4861, align 1
  %4862 = lshr i32 %4839, 31
  %4863 = xor i32 %4859, %4862
  %4864 = add i32 %4863, %4862
  %4865 = icmp eq i32 %4864, 2
  %4866 = zext i1 %4865 to i8
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4866, i8* %4867, align 1
  store %struct.Memory* %loadMem_4641d3, %struct.Memory** %MEMORY
  %loadMem_4641da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 33
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4870 to i64*
  %4871 = load i64, i64* %PC.i213
  %4872 = add i64 %4871, 362
  %4873 = load i64, i64* %PC.i213
  %4874 = add i64 %4873, 6
  %4875 = load i64, i64* %PC.i213
  %4876 = add i64 %4875, 6
  store i64 %4876, i64* %PC.i213
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4878 = load i8, i8* %4877, align 1
  %4879 = icmp eq i8 %4878, 0
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4881 = load i8, i8* %4880, align 1
  %4882 = icmp ne i8 %4881, 0
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4884 = load i8, i8* %4883, align 1
  %4885 = icmp ne i8 %4884, 0
  %4886 = xor i1 %4882, %4885
  %4887 = xor i1 %4886, true
  %4888 = and i1 %4879, %4887
  %4889 = zext i1 %4888 to i8
  store i8 %4889, i8* %BRANCH_TAKEN, align 1
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4891 = select i1 %4888, i64 %4872, i64 %4874
  store i64 %4891, i64* %4890, align 8
  store %struct.Memory* %loadMem_4641da, %struct.Memory** %MEMORY
  %loadBr_4641da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4641da = icmp eq i8 %loadBr_4641da, 1
  br i1 %cmpBr_4641da, label %block_.L_464344, label %block_4641e0

block_4641e0:                                     ; preds = %block_4641b6
  %loadMem_4641e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 33
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4894 to i64*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 15
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %4897 to i64*
  %4898 = load i64, i64* %RBP.i212
  %4899 = sub i64 %4898, 504
  %4900 = load i64, i64* %PC.i211
  %4901 = add i64 %4900, 10
  store i64 %4901, i64* %PC.i211
  %4902 = inttoptr i64 %4899 to i32*
  store i32 0, i32* %4902
  store %struct.Memory* %loadMem_4641e0, %struct.Memory** %MEMORY
  br label %block_.L_4641ea

block_.L_4641ea:                                  ; preds = %block_.L_46432b, %block_4641e0
  %loadMem_4641ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 33
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4905 to i64*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 1
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 15
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %4911 to i64*
  %4912 = load i64, i64* %RBP.i210
  %4913 = sub i64 %4912, 504
  %4914 = load i64, i64* %PC.i208
  %4915 = add i64 %4914, 6
  store i64 %4915, i64* %PC.i208
  %4916 = inttoptr i64 %4913 to i32*
  %4917 = load i32, i32* %4916
  %4918 = zext i32 %4917 to i64
  store i64 %4918, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_4641ea, %struct.Memory** %MEMORY
  %loadMem_4641f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 33
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 1
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %4924 to i32*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 15
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %4927 to i64*
  %4928 = load i32, i32* %EAX.i206
  %4929 = zext i32 %4928 to i64
  %4930 = load i64, i64* %RBP.i207
  %4931 = sub i64 %4930, 500
  %4932 = load i64, i64* %PC.i205
  %4933 = add i64 %4932, 6
  store i64 %4933, i64* %PC.i205
  %4934 = inttoptr i64 %4931 to i32*
  %4935 = load i32, i32* %4934
  %4936 = sub i32 %4928, %4935
  %4937 = icmp ult i32 %4928, %4935
  %4938 = zext i1 %4937 to i8
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4938, i8* %4939, align 1
  %4940 = and i32 %4936, 255
  %4941 = call i32 @llvm.ctpop.i32(i32 %4940)
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  %4944 = xor i8 %4943, 1
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4944, i8* %4945, align 1
  %4946 = xor i32 %4935, %4928
  %4947 = xor i32 %4946, %4936
  %4948 = lshr i32 %4947, 4
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4950, i8* %4951, align 1
  %4952 = icmp eq i32 %4936, 0
  %4953 = zext i1 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4953, i8* %4954, align 1
  %4955 = lshr i32 %4936, 31
  %4956 = trunc i32 %4955 to i8
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4956, i8* %4957, align 1
  %4958 = lshr i32 %4928, 31
  %4959 = lshr i32 %4935, 31
  %4960 = xor i32 %4959, %4958
  %4961 = xor i32 %4955, %4958
  %4962 = add i32 %4961, %4960
  %4963 = icmp eq i32 %4962, 2
  %4964 = zext i1 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4964, i8* %4965, align 1
  store %struct.Memory* %loadMem_4641f0, %struct.Memory** %MEMORY
  %loadMem_4641f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4968 to i64*
  %4969 = load i64, i64* %PC.i204
  %4970 = add i64 %4969, 329
  %4971 = load i64, i64* %PC.i204
  %4972 = add i64 %4971, 6
  %4973 = load i64, i64* %PC.i204
  %4974 = add i64 %4973, 6
  store i64 %4974, i64* %PC.i204
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4976 = load i8, i8* %4975, align 1
  %4977 = icmp ne i8 %4976, 0
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4979 = load i8, i8* %4978, align 1
  %4980 = icmp ne i8 %4979, 0
  %4981 = xor i1 %4977, %4980
  %4982 = xor i1 %4981, true
  %4983 = zext i1 %4982 to i8
  store i8 %4983, i8* %BRANCH_TAKEN, align 1
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4985 = select i1 %4981, i64 %4972, i64 %4970
  store i64 %4985, i64* %4984, align 8
  store %struct.Memory* %loadMem_4641f6, %struct.Memory** %MEMORY
  %loadBr_4641f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4641f6 = icmp eq i8 %loadBr_4641f6, 1
  br i1 %cmpBr_4641f6, label %block_.L_46433f, label %block_4641fc

block_4641fc:                                     ; preds = %block_.L_4641ea
  %loadMem_4641fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 33
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4988 to i64*
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 1
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 15
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %4994 to i64*
  %4995 = load i64, i64* %RBP.i203
  %4996 = sub i64 %4995, 504
  %4997 = load i64, i64* %PC.i201
  %4998 = add i64 %4997, 7
  store i64 %4998, i64* %PC.i201
  %4999 = inttoptr i64 %4996 to i32*
  %5000 = load i32, i32* %4999
  %5001 = sext i32 %5000 to i64
  store i64 %5001, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_4641fc, %struct.Memory** %MEMORY
  %loadMem_464203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 33
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5004 to i64*
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 1
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 5
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 15
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %5013 to i64*
  %5014 = load i64, i64* %RBP.i200
  %5015 = load i64, i64* %RAX.i198
  %5016 = mul i64 %5015, 4
  %5017 = add i64 %5014, -560
  %5018 = add i64 %5017, %5016
  %5019 = load i64, i64* %PC.i197
  %5020 = add i64 %5019, 7
  store i64 %5020, i64* %PC.i197
  %5021 = inttoptr i64 %5018 to i32*
  %5022 = load i32, i32* %5021
  %5023 = zext i32 %5022 to i64
  store i64 %5023, i64* %RCX.i199, align 8
  store %struct.Memory* %loadMem_464203, %struct.Memory** %MEMORY
  %loadMem_46420a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 5
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %ECX.i195 = bitcast %union.anon* %5029 to i32*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 15
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %RBP.i196
  %5034 = sub i64 %5033, 564
  %5035 = load i32, i32* %ECX.i195
  %5036 = zext i32 %5035 to i64
  %5037 = load i64, i64* %PC.i194
  %5038 = add i64 %5037, 6
  store i64 %5038, i64* %PC.i194
  %5039 = inttoptr i64 %5034 to i32*
  store i32 %5035, i32* %5039
  store %struct.Memory* %loadMem_46420a, %struct.Memory** %MEMORY
  %loadMem_464210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 33
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5042 to i64*
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 15
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5045 to i64*
  %5046 = load i64, i64* %RBP.i193
  %5047 = sub i64 %5046, 500
  %5048 = load i64, i64* %PC.i192
  %5049 = add i64 %5048, 7
  store i64 %5049, i64* %PC.i192
  %5050 = inttoptr i64 %5047 to i32*
  %5051 = load i32, i32* %5050
  %5052 = sub i32 %5051, 1
  %5053 = icmp ult i32 %5051, 1
  %5054 = zext i1 %5053 to i8
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5054, i8* %5055, align 1
  %5056 = and i32 %5052, 255
  %5057 = call i32 @llvm.ctpop.i32(i32 %5056)
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = xor i8 %5059, 1
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5060, i8* %5061, align 1
  %5062 = xor i32 %5051, 1
  %5063 = xor i32 %5062, %5052
  %5064 = lshr i32 %5063, 4
  %5065 = trunc i32 %5064 to i8
  %5066 = and i8 %5065, 1
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5066, i8* %5067, align 1
  %5068 = icmp eq i32 %5052, 0
  %5069 = zext i1 %5068 to i8
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5069, i8* %5070, align 1
  %5071 = lshr i32 %5052, 31
  %5072 = trunc i32 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5072, i8* %5073, align 1
  %5074 = lshr i32 %5051, 31
  %5075 = xor i32 %5071, %5074
  %5076 = add i32 %5075, %5074
  %5077 = icmp eq i32 %5076, 2
  %5078 = zext i1 %5077 to i8
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5078, i8* %5079, align 1
  store %struct.Memory* %loadMem_464210, %struct.Memory** %MEMORY
  %loadMem_464217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %PC.i191
  %5084 = add i64 %5083, 29
  %5085 = load i64, i64* %PC.i191
  %5086 = add i64 %5085, 6
  %5087 = load i64, i64* %PC.i191
  %5088 = add i64 %5087, 6
  store i64 %5088, i64* %PC.i191
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5090 = load i8, i8* %5089, align 1
  store i8 %5090, i8* %BRANCH_TAKEN, align 1
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5092 = icmp ne i8 %5090, 0
  %5093 = select i1 %5092, i64 %5084, i64 %5086
  store i64 %5093, i64* %5091, align 8
  store %struct.Memory* %loadMem_464217, %struct.Memory** %MEMORY
  %loadBr_464217 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464217 = icmp eq i8 %loadBr_464217, 1
  br i1 %cmpBr_464217, label %block_.L_464234, label %block_46421d

block_46421d:                                     ; preds = %block_4641fc
  %loadMem_46421d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 33
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5096 to i64*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 11
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %RDI.i189 = bitcast %union.anon* %5099 to i64*
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 15
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %5102 to i64*
  %5103 = load i64, i64* %RBP.i190
  %5104 = sub i64 %5103, 564
  %5105 = load i64, i64* %PC.i188
  %5106 = add i64 %5105, 6
  store i64 %5106, i64* %PC.i188
  %5107 = inttoptr i64 %5104 to i32*
  %5108 = load i32, i32* %5107
  %5109 = zext i32 %5108 to i64
  store i64 %5109, i64* %RDI.i189, align 8
  store %struct.Memory* %loadMem_46421d, %struct.Memory** %MEMORY
  %loadMem_464223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 33
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5112 to i64*
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 9
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %RSI.i186 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 15
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %5118 to i64*
  %5119 = load i64, i64* %RBP.i187
  %5120 = sub i64 %5119, 72
  %5121 = load i64, i64* %PC.i185
  %5122 = add i64 %5121, 3
  store i64 %5122, i64* %PC.i185
  %5123 = inttoptr i64 %5120 to i32*
  %5124 = load i32, i32* %5123
  %5125 = zext i32 %5124 to i64
  store i64 %5125, i64* %RSI.i186, align 8
  store %struct.Memory* %loadMem_464223, %struct.Memory** %MEMORY
  %loadMem1_464226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 33
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5128 to i64*
  %5129 = load i64, i64* %PC.i184
  %5130 = add i64 %5129, -327558
  %5131 = load i64, i64* %PC.i184
  %5132 = add i64 %5131, 5
  %5133 = load i64, i64* %PC.i184
  %5134 = add i64 %5133, 5
  store i64 %5134, i64* %PC.i184
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5136 = load i64, i64* %5135, align 8
  %5137 = add i64 %5136, -8
  %5138 = inttoptr i64 %5137 to i64*
  store i64 %5132, i64* %5138
  store i64 %5137, i64* %5135, align 8
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5130, i64* %5139, align 8
  store %struct.Memory* %loadMem1_464226, %struct.Memory** %MEMORY
  %loadMem2_464226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464226 = load i64, i64* %3
  %call2_464226 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64 %loadPC_464226, %struct.Memory* %loadMem2_464226)
  store %struct.Memory* %call2_464226, %struct.Memory** %MEMORY
  %loadMem_46422b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 33
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 1
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %5145 to i32*
  %5146 = load i32, i32* %EAX.i183
  %5147 = zext i32 %5146 to i64
  %5148 = load i64, i64* %PC.i182
  %5149 = add i64 %5148, 3
  store i64 %5149, i64* %PC.i182
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5150, align 1
  %5151 = and i32 %5146, 255
  %5152 = call i32 @llvm.ctpop.i32(i32 %5151)
  %5153 = trunc i32 %5152 to i8
  %5154 = and i8 %5153, 1
  %5155 = xor i8 %5154, 1
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5155, i8* %5156, align 1
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5157, align 1
  %5158 = icmp eq i32 %5146, 0
  %5159 = zext i1 %5158 to i8
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5159, i8* %5160, align 1
  %5161 = lshr i32 %5146, 31
  %5162 = trunc i32 %5161 to i8
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5162, i8* %5163, align 1
  %5164 = lshr i32 %5146, 31
  %5165 = xor i32 %5161, %5164
  %5166 = add i32 %5165, %5164
  %5167 = icmp eq i32 %5166, 2
  %5168 = zext i1 %5167 to i8
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5168, i8* %5169, align 1
  store %struct.Memory* %loadMem_46422b, %struct.Memory** %MEMORY
  %loadMem_46422e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %5172 to i64*
  %5173 = load i64, i64* %PC.i181
  %5174 = add i64 %5173, 248
  %5175 = load i64, i64* %PC.i181
  %5176 = add i64 %5175, 6
  %5177 = load i64, i64* %PC.i181
  %5178 = add i64 %5177, 6
  store i64 %5178, i64* %PC.i181
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5180 = load i8, i8* %5179, align 1
  %5181 = icmp eq i8 %5180, 0
  %5182 = zext i1 %5181 to i8
  store i8 %5182, i8* %BRANCH_TAKEN, align 1
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5184 = select i1 %5181, i64 %5174, i64 %5176
  store i64 %5184, i64* %5183, align 8
  store %struct.Memory* %loadMem_46422e, %struct.Memory** %MEMORY
  %loadBr_46422e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46422e = icmp eq i8 %loadBr_46422e, 1
  br i1 %cmpBr_46422e, label %block_.L_464326, label %block_.L_464234

block_.L_464234:                                  ; preds = %block_46421d, %block_4641fc
  %loadMem_464234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 7
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %PC.i179
  %5192 = add i64 %5191, 10
  store i64 %5192, i64* %PC.i179
  store i64 ptrtoint (%G__0x57fda9_type* @G__0x57fda9 to i64), i64* %RDX.i180, align 8
  store %struct.Memory* %loadMem_464234, %struct.Memory** %MEMORY
  %loadMem_46423e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 11
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RDI.i177 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 15
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RBP.i178
  %5203 = sub i64 %5202, 564
  %5204 = load i64, i64* %PC.i176
  %5205 = add i64 %5204, 6
  store i64 %5205, i64* %PC.i176
  %5206 = inttoptr i64 %5203 to i32*
  %5207 = load i32, i32* %5206
  %5208 = zext i32 %5207 to i64
  store i64 %5208, i64* %RDI.i177, align 8
  store %struct.Memory* %loadMem_46423e, %struct.Memory** %MEMORY
  %loadMem_464244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 9
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %RSI.i174 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 15
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %5217 to i64*
  %5218 = load i64, i64* %RBP.i175
  %5219 = sub i64 %5218, 68
  %5220 = load i64, i64* %PC.i173
  %5221 = add i64 %5220, 3
  store i64 %5221, i64* %PC.i173
  %5222 = inttoptr i64 %5219 to i32*
  %5223 = load i32, i32* %5222
  %5224 = zext i32 %5223 to i64
  store i64 %5224, i64* %RSI.i174, align 8
  store %struct.Memory* %loadMem_464244, %struct.Memory** %MEMORY
  %loadMem_464247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 33
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 5
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RCX.i171 = bitcast %union.anon* %5230 to i64*
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 15
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %5233 to i64*
  %5234 = load i64, i64* %RBP.i172
  %5235 = sub i64 %5234, 48
  %5236 = load i64, i64* %PC.i170
  %5237 = add i64 %5236, 3
  store i64 %5237, i64* %PC.i170
  %5238 = inttoptr i64 %5235 to i32*
  %5239 = load i32, i32* %5238
  %5240 = zext i32 %5239 to i64
  store i64 %5240, i64* %RCX.i171, align 8
  store %struct.Memory* %loadMem_464247, %struct.Memory** %MEMORY
  %loadMem_46424a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 33
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %5243 to i64*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 17
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %R8D.i168 = bitcast %union.anon* %5246 to i32*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 15
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %5249 to i64*
  %5250 = bitcast i32* %R8D.i168 to i64*
  %5251 = load i64, i64* %RBP.i169
  %5252 = sub i64 %5251, 60
  %5253 = load i64, i64* %PC.i167
  %5254 = add i64 %5253, 4
  store i64 %5254, i64* %PC.i167
  %5255 = inttoptr i64 %5252 to i32*
  %5256 = load i32, i32* %5255
  %5257 = zext i32 %5256 to i64
  store i64 %5257, i64* %5250, align 8
  store %struct.Memory* %loadMem_46424a, %struct.Memory** %MEMORY
  %loadMem_46424e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 33
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 19
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %5263 to i32*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 15
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %5266 to i64*
  %5267 = bitcast i32* %R9D.i to i64*
  %5268 = load i64, i64* %RBP.i166
  %5269 = sub i64 %5268, 64
  %5270 = load i64, i64* %PC.i165
  %5271 = add i64 %5270, 4
  store i64 %5271, i64* %PC.i165
  %5272 = inttoptr i64 %5269 to i32*
  %5273 = load i32, i32* %5272
  %5274 = zext i32 %5273 to i64
  store i64 %5274, i64* %5267, align 8
  store %struct.Memory* %loadMem_46424e, %struct.Memory** %MEMORY
  %loadMem1_464252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 33
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %PC.i164
  %5279 = add i64 %5278, -373794
  %5280 = load i64, i64* %PC.i164
  %5281 = add i64 %5280, 5
  %5282 = load i64, i64* %PC.i164
  %5283 = add i64 %5282, 5
  store i64 %5283, i64* %PC.i164
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5285 = load i64, i64* %5284, align 8
  %5286 = add i64 %5285, -8
  %5287 = inttoptr i64 %5286 to i64*
  store i64 %5281, i64* %5287
  store i64 %5286, i64* %5284, align 8
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5279, i64* %5288, align 8
  store %struct.Memory* %loadMem1_464252, %struct.Memory** %MEMORY
  %loadMem2_464252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464252 = load i64, i64* %3
  %call2_464252 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_464252, %struct.Memory* %loadMem2_464252)
  store %struct.Memory* %call2_464252, %struct.Memory** %MEMORY
  %loadMem_464257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 33
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5291 to i64*
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5293 = getelementptr inbounds %struct.GPR, %struct.GPR* %5292, i32 0, i32 1
  %5294 = getelementptr inbounds %struct.Reg, %struct.Reg* %5293, i32 0, i32 0
  %EAX.i163 = bitcast %union.anon* %5294 to i32*
  %5295 = load i32, i32* %EAX.i163
  %5296 = zext i32 %5295 to i64
  %5297 = load i64, i64* %PC.i162
  %5298 = add i64 %5297, 3
  store i64 %5298, i64* %PC.i162
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5299, align 1
  %5300 = and i32 %5295, 255
  %5301 = call i32 @llvm.ctpop.i32(i32 %5300)
  %5302 = trunc i32 %5301 to i8
  %5303 = and i8 %5302, 1
  %5304 = xor i8 %5303, 1
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5304, i8* %5305, align 1
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5306, align 1
  %5307 = icmp eq i32 %5295, 0
  %5308 = zext i1 %5307 to i8
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5308, i8* %5309, align 1
  %5310 = lshr i32 %5295, 31
  %5311 = trunc i32 %5310 to i8
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5311, i8* %5312, align 1
  %5313 = lshr i32 %5295, 31
  %5314 = xor i32 %5310, %5313
  %5315 = add i32 %5314, %5313
  %5316 = icmp eq i32 %5315, 2
  %5317 = zext i1 %5316 to i8
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5317, i8* %5318, align 1
  store %struct.Memory* %loadMem_464257, %struct.Memory** %MEMORY
  %loadMem_46425a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 33
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %5321 to i64*
  %5322 = load i64, i64* %PC.i161
  %5323 = add i64 %5322, 204
  %5324 = load i64, i64* %PC.i161
  %5325 = add i64 %5324, 6
  %5326 = load i64, i64* %PC.i161
  %5327 = add i64 %5326, 6
  store i64 %5327, i64* %PC.i161
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5329 = load i8, i8* %5328, align 1
  store i8 %5329, i8* %BRANCH_TAKEN, align 1
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5331 = icmp ne i8 %5329, 0
  %5332 = select i1 %5331, i64 %5323, i64 %5325
  store i64 %5332, i64* %5330, align 8
  store %struct.Memory* %loadMem_46425a, %struct.Memory** %MEMORY
  %loadBr_46425a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46425a = icmp eq i8 %loadBr_46425a, 1
  br i1 %cmpBr_46425a, label %block_.L_464326, label %block_464260

block_464260:                                     ; preds = %block_.L_464234
  %loadMem_464260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 33
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5335 to i64*
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 1
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %5338 to i32*
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 1
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %5341 to i64*
  %5342 = load i64, i64* %RAX.i160
  %5343 = load i32, i32* %EAX.i159
  %5344 = zext i32 %5343 to i64
  %5345 = load i64, i64* %PC.i158
  %5346 = add i64 %5345, 2
  store i64 %5346, i64* %PC.i158
  %5347 = xor i64 %5344, %5342
  %5348 = trunc i64 %5347 to i32
  %5349 = and i64 %5347, 4294967295
  store i64 %5349, i64* %RAX.i160, align 8
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5350, align 1
  %5351 = and i32 %5348, 255
  %5352 = call i32 @llvm.ctpop.i32(i32 %5351)
  %5353 = trunc i32 %5352 to i8
  %5354 = and i8 %5353, 1
  %5355 = xor i8 %5354, 1
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5355, i8* %5356, align 1
  %5357 = icmp eq i32 %5348, 0
  %5358 = zext i1 %5357 to i8
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5358, i8* %5359, align 1
  %5360 = lshr i32 %5348, 31
  %5361 = trunc i32 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5361, i8* %5362, align 1
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5363, align 1
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5364, align 1
  store %struct.Memory* %loadMem_464260, %struct.Memory** %MEMORY
  %loadMem_464262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 1
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %EAX.i156 = bitcast %union.anon* %5370 to i32*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 9
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RSI.i157 = bitcast %union.anon* %5373 to i64*
  %5374 = load i32, i32* %EAX.i156
  %5375 = zext i32 %5374 to i64
  %5376 = load i64, i64* %PC.i155
  %5377 = add i64 %5376, 2
  store i64 %5377, i64* %PC.i155
  %5378 = and i64 %5375, 4294967295
  store i64 %5378, i64* %RSI.i157, align 8
  store %struct.Memory* %loadMem_464262, %struct.Memory** %MEMORY
  %loadMem_464264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 33
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5381 to i64*
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 11
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %RDI.i153 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 15
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %5387 to i64*
  %5388 = load i64, i64* %RBP.i154
  %5389 = sub i64 %5388, 48
  %5390 = load i64, i64* %PC.i152
  %5391 = add i64 %5390, 3
  store i64 %5391, i64* %PC.i152
  %5392 = inttoptr i64 %5389 to i32*
  %5393 = load i32, i32* %5392
  %5394 = zext i32 %5393 to i64
  store i64 %5394, i64* %RDI.i153, align 8
  store %struct.Memory* %loadMem_464264, %struct.Memory** %MEMORY
  %loadMem_464267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 33
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %5397 to i64*
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 7
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %5400 to i64*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 15
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %5403 to i64*
  %5404 = load i64, i64* %RBP.i151
  %5405 = sub i64 %5404, 60
  %5406 = load i64, i64* %PC.i149
  %5407 = add i64 %5406, 3
  store i64 %5407, i64* %PC.i149
  %5408 = inttoptr i64 %5405 to i32*
  %5409 = load i32, i32* %5408
  %5410 = zext i32 %5409 to i64
  store i64 %5410, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_464267, %struct.Memory** %MEMORY
  %loadMem_46426a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 5
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %5416 to i64*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 15
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %5419 to i64*
  %5420 = load i64, i64* %RBP.i148
  %5421 = sub i64 %5420, 64
  %5422 = load i64, i64* %PC.i146
  %5423 = add i64 %5422, 3
  store i64 %5423, i64* %PC.i146
  %5424 = inttoptr i64 %5421 to i32*
  %5425 = load i32, i32* %5424
  %5426 = zext i32 %5425 to i64
  store i64 %5426, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_46426a, %struct.Memory** %MEMORY
  %loadMem1_46426d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 33
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5429 to i64*
  %5430 = load i64, i64* %PC.i145
  %5431 = add i64 %5430, -25997
  %5432 = load i64, i64* %PC.i145
  %5433 = add i64 %5432, 5
  %5434 = load i64, i64* %PC.i145
  %5435 = add i64 %5434, 5
  store i64 %5435, i64* %PC.i145
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5437 = load i64, i64* %5436, align 8
  %5438 = add i64 %5437, -8
  %5439 = inttoptr i64 %5438 to i64*
  store i64 %5433, i64* %5439
  store i64 %5438, i64* %5436, align 8
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5431, i64* %5440, align 8
  store %struct.Memory* %loadMem1_46426d, %struct.Memory** %MEMORY
  %loadMem2_46426d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46426d = load i64, i64* %3
  %call2_46426d = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64 %loadPC_46426d, %struct.Memory* %loadMem2_46426d)
  store %struct.Memory* %call2_46426d, %struct.Memory** %MEMORY
  %loadMem_464272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 33
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5443 to i64*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 1
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %EAX.i143 = bitcast %union.anon* %5446 to i32*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 15
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5449 to i64*
  %5450 = load i64, i64* %RBP.i144
  %5451 = sub i64 %5450, 568
  %5452 = load i32, i32* %EAX.i143
  %5453 = zext i32 %5452 to i64
  %5454 = load i64, i64* %PC.i142
  %5455 = add i64 %5454, 6
  store i64 %5455, i64* %PC.i142
  %5456 = inttoptr i64 %5451 to i32*
  store i32 %5452, i32* %5456
  store %struct.Memory* %loadMem_464272, %struct.Memory** %MEMORY
  %loadMem1_464278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %5459 to i64*
  %5460 = load i64, i64* %PC.i141
  %5461 = add i64 %5460, -353560
  %5462 = load i64, i64* %PC.i141
  %5463 = add i64 %5462, 5
  %5464 = load i64, i64* %PC.i141
  %5465 = add i64 %5464, 5
  store i64 %5465, i64* %PC.i141
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5467 = load i64, i64* %5466, align 8
  %5468 = add i64 %5467, -8
  %5469 = inttoptr i64 %5468 to i64*
  store i64 %5463, i64* %5469
  store i64 %5468, i64* %5466, align 8
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5461, i64* %5470, align 8
  store %struct.Memory* %loadMem1_464278, %struct.Memory** %MEMORY
  %loadMem2_464278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464278 = load i64, i64* %3
  %call2_464278 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64 %loadPC_464278, %struct.Memory* %loadMem2_464278)
  store %struct.Memory* %call2_464278, %struct.Memory** %MEMORY
  %loadMem_46427d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 33
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5473 to i64*
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5475 = getelementptr inbounds %struct.GPR, %struct.GPR* %5474, i32 0, i32 15
  %5476 = getelementptr inbounds %struct.Reg, %struct.Reg* %5475, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %5476 to i64*
  %5477 = load i64, i64* %RBP.i140
  %5478 = sub i64 %5477, 568
  %5479 = load i64, i64* %PC.i139
  %5480 = add i64 %5479, 7
  store i64 %5480, i64* %PC.i139
  %5481 = inttoptr i64 %5478 to i32*
  %5482 = load i32, i32* %5481
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5483, align 1
  %5484 = and i32 %5482, 255
  %5485 = call i32 @llvm.ctpop.i32(i32 %5484)
  %5486 = trunc i32 %5485 to i8
  %5487 = and i8 %5486, 1
  %5488 = xor i8 %5487, 1
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5488, i8* %5489, align 1
  %5490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5490, align 1
  %5491 = icmp eq i32 %5482, 0
  %5492 = zext i1 %5491 to i8
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5492, i8* %5493, align 1
  %5494 = lshr i32 %5482, 31
  %5495 = trunc i32 %5494 to i8
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5495, i8* %5496, align 1
  %5497 = lshr i32 %5482, 31
  %5498 = xor i32 %5494, %5497
  %5499 = add i32 %5498, %5497
  %5500 = icmp eq i32 %5499, 2
  %5501 = zext i1 %5500 to i8
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5501, i8* %5502, align 1
  store %struct.Memory* %loadMem_46427d, %struct.Memory** %MEMORY
  %loadMem_464284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 33
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %5505 to i64*
  %5506 = load i64, i64* %PC.i138
  %5507 = add i64 %5506, 95
  %5508 = load i64, i64* %PC.i138
  %5509 = add i64 %5508, 6
  %5510 = load i64, i64* %PC.i138
  %5511 = add i64 %5510, 6
  store i64 %5511, i64* %PC.i138
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5513 = load i8, i8* %5512, align 1
  %5514 = icmp eq i8 %5513, 0
  %5515 = zext i1 %5514 to i8
  store i8 %5515, i8* %BRANCH_TAKEN, align 1
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5517 = select i1 %5514, i64 %5507, i64 %5509
  store i64 %5517, i64* %5516, align 8
  store %struct.Memory* %loadMem_464284, %struct.Memory** %MEMORY
  %loadBr_464284 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464284 = icmp eq i8 %loadBr_464284, 1
  br i1 %cmpBr_464284, label %block_.L_4642e3, label %block_46428a

block_46428a:                                     ; preds = %block_464260
  %loadMem_46428a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 33
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5520 to i64*
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5522 = getelementptr inbounds %struct.GPR, %struct.GPR* %5521, i32 0, i32 15
  %5523 = getelementptr inbounds %struct.Reg, %struct.Reg* %5522, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %5523 to i64*
  %5524 = load i64, i64* %RBP.i137
  %5525 = sub i64 %5524, 56
  %5526 = load i64, i64* %PC.i136
  %5527 = add i64 %5526, 5
  store i64 %5527, i64* %PC.i136
  %5528 = inttoptr i64 %5525 to i64*
  %5529 = load i64, i64* %5528
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5530, align 1
  %5531 = trunc i64 %5529 to i32
  %5532 = and i32 %5531, 255
  %5533 = call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5536, i8* %5537, align 1
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5538, align 1
  %5539 = icmp eq i64 %5529, 0
  %5540 = zext i1 %5539 to i8
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5540, i8* %5541, align 1
  %5542 = lshr i64 %5529, 63
  %5543 = trunc i64 %5542 to i8
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5543, i8* %5544, align 1
  %5545 = lshr i64 %5529, 63
  %5546 = xor i64 %5542, %5545
  %5547 = add i64 %5546, %5545
  %5548 = icmp eq i64 %5547, 2
  %5549 = zext i1 %5548 to i8
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5549, i8* %5550, align 1
  store %struct.Memory* %loadMem_46428a, %struct.Memory** %MEMORY
  %loadMem_46428f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 33
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %5553 to i64*
  %5554 = load i64, i64* %PC.i135
  %5555 = add i64 %5554, 18
  %5556 = load i64, i64* %PC.i135
  %5557 = add i64 %5556, 6
  %5558 = load i64, i64* %PC.i135
  %5559 = add i64 %5558, 6
  store i64 %5559, i64* %PC.i135
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5561 = load i8, i8* %5560, align 1
  store i8 %5561, i8* %BRANCH_TAKEN, align 1
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5563 = icmp ne i8 %5561, 0
  %5564 = select i1 %5563, i64 %5555, i64 %5557
  store i64 %5564, i64* %5562, align 8
  store %struct.Memory* %loadMem_46428f, %struct.Memory** %MEMORY
  %loadBr_46428f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46428f = icmp eq i8 %loadBr_46428f, 1
  br i1 %cmpBr_46428f, label %block_.L_4642a1, label %block_464295

block_464295:                                     ; preds = %block_46428a
  %loadMem_464295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 33
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 1
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 15
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %RBP.i134
  %5575 = sub i64 %5574, 564
  %5576 = load i64, i64* %PC.i132
  %5577 = add i64 %5576, 6
  store i64 %5577, i64* %PC.i132
  %5578 = inttoptr i64 %5575 to i32*
  %5579 = load i32, i32* %5578
  %5580 = zext i32 %5579 to i64
  store i64 %5580, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_464295, %struct.Memory** %MEMORY
  %loadMem_46429b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 33
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 5
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %5586 to i64*
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 15
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %5589 to i64*
  %5590 = load i64, i64* %RBP.i131
  %5591 = sub i64 %5590, 56
  %5592 = load i64, i64* %PC.i129
  %5593 = add i64 %5592, 4
  store i64 %5593, i64* %PC.i129
  %5594 = inttoptr i64 %5591 to i64*
  %5595 = load i64, i64* %5594
  store i64 %5595, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_46429b, %struct.Memory** %MEMORY
  %loadMem_46429f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5597 = getelementptr inbounds %struct.GPR, %struct.GPR* %5596, i32 0, i32 33
  %5598 = getelementptr inbounds %struct.Reg, %struct.Reg* %5597, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5598 to i64*
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 1
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %5601 to i32*
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 5
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %5604 to i64*
  %5605 = load i64, i64* %RCX.i128
  %5606 = load i32, i32* %EAX.i127
  %5607 = zext i32 %5606 to i64
  %5608 = load i64, i64* %PC.i126
  %5609 = add i64 %5608, 2
  store i64 %5609, i64* %PC.i126
  %5610 = inttoptr i64 %5605 to i32*
  store i32 %5606, i32* %5610
  store %struct.Memory* %loadMem_46429f, %struct.Memory** %MEMORY
  br label %block_.L_4642a1

block_.L_4642a1:                                  ; preds = %block_464295, %block_46428a
  %loadMem_4642a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 33
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5613 to i64*
  %5614 = load i64, i64* %PC.i125
  %5615 = add i64 %5614, 9
  store i64 %5615, i64* %PC.i125
  %5616 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5617, align 1
  %5618 = trunc i64 %5616 to i32
  %5619 = and i32 %5618, 255
  %5620 = call i32 @llvm.ctpop.i32(i32 %5619)
  %5621 = trunc i32 %5620 to i8
  %5622 = and i8 %5621, 1
  %5623 = xor i8 %5622, 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5623, i8* %5624, align 1
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5625, align 1
  %5626 = icmp eq i64 %5616, 0
  %5627 = zext i1 %5626 to i8
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5627, i8* %5628, align 1
  %5629 = lshr i64 %5616, 63
  %5630 = trunc i64 %5629 to i8
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5630, i8* %5631, align 1
  %5632 = lshr i64 %5616, 63
  %5633 = xor i64 %5629, %5632
  %5634 = add i64 %5633, %5632
  %5635 = icmp eq i64 %5634, 2
  %5636 = zext i1 %5635 to i8
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5636, i8* %5637, align 1
  store %struct.Memory* %loadMem_4642a1, %struct.Memory** %MEMORY
  %loadMem_4642aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 33
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5640 to i64*
  %5641 = load i64, i64* %PC.i124
  %5642 = add i64 %5641, 45
  %5643 = load i64, i64* %PC.i124
  %5644 = add i64 %5643, 6
  %5645 = load i64, i64* %PC.i124
  %5646 = add i64 %5645, 6
  store i64 %5646, i64* %PC.i124
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5648 = load i8, i8* %5647, align 1
  store i8 %5648, i8* %BRANCH_TAKEN, align 1
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5650 = icmp ne i8 %5648, 0
  %5651 = select i1 %5650, i64 %5642, i64 %5644
  store i64 %5651, i64* %5649, align 8
  store %struct.Memory* %loadMem_4642aa, %struct.Memory** %MEMORY
  %loadBr_4642aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4642aa = icmp eq i8 %loadBr_4642aa, 1
  br i1 %cmpBr_4642aa, label %block_.L_4642d7, label %block_4642b0

block_4642b0:                                     ; preds = %block_.L_4642a1
  %loadMem_4642b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 33
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %5654 to i64*
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 5
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %5657 to i64*
  %5658 = load i64, i64* %PC.i122
  %5659 = add i64 %5658, 5
  store i64 %5659, i64* %PC.i122
  store i64 5, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_4642b0, %struct.Memory** %MEMORY
  %loadMem_4642b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5661 = getelementptr inbounds %struct.GPR, %struct.GPR* %5660, i32 0, i32 33
  %5662 = getelementptr inbounds %struct.Reg, %struct.Reg* %5661, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5662 to i64*
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 17
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %R8.i121 = bitcast %union.anon* %5665 to i64*
  %5666 = load i64, i64* %PC.i120
  %5667 = add i64 %5666, 10
  store i64 %5667, i64* %PC.i120
  store i64 ptrtoint (%G__0x57fdb3_type* @G__0x57fdb3 to i64), i64* %R8.i121, align 8
  store %struct.Memory* %loadMem_4642b5, %struct.Memory** %MEMORY
  %loadMem_4642bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 11
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %RDI.i118 = bitcast %union.anon* %5673 to i64*
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 15
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %RBP.i119
  %5678 = sub i64 %5677, 512
  %5679 = load i64, i64* %PC.i117
  %5680 = add i64 %5679, 7
  store i64 %5680, i64* %PC.i117
  %5681 = inttoptr i64 %5678 to i64*
  %5682 = load i64, i64* %5681
  store i64 %5682, i64* %RDI.i118, align 8
  store %struct.Memory* %loadMem_4642bf, %struct.Memory** %MEMORY
  %loadMem_4642c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 33
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5685 to i64*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 9
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RSI.i115 = bitcast %union.anon* %5688 to i64*
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5690 = getelementptr inbounds %struct.GPR, %struct.GPR* %5689, i32 0, i32 15
  %5691 = getelementptr inbounds %struct.Reg, %struct.Reg* %5690, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %5691 to i64*
  %5692 = load i64, i64* %RBP.i116
  %5693 = sub i64 %5692, 516
  %5694 = load i64, i64* %PC.i114
  %5695 = add i64 %5694, 6
  store i64 %5695, i64* %PC.i114
  %5696 = inttoptr i64 %5693 to i32*
  %5697 = load i32, i32* %5696
  %5698 = zext i32 %5697 to i64
  store i64 %5698, i64* %RSI.i115, align 8
  store %struct.Memory* %loadMem_4642c6, %struct.Memory** %MEMORY
  %loadMem_4642cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 33
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5701 to i64*
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 7
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 15
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %5707 to i64*
  %5708 = load i64, i64* %RBP.i113
  %5709 = sub i64 %5708, 564
  %5710 = load i64, i64* %PC.i111
  %5711 = add i64 %5710, 6
  store i64 %5711, i64* %PC.i111
  %5712 = inttoptr i64 %5709 to i32*
  %5713 = load i32, i32* %5712
  %5714 = zext i32 %5713 to i64
  store i64 %5714, i64* %RDX.i112, align 8
  store %struct.Memory* %loadMem_4642cc, %struct.Memory** %MEMORY
  %loadMem1_4642d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 33
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5717 to i64*
  %5718 = load i64, i64* %PC.i110
  %5719 = add i64 %5718, -312082
  %5720 = load i64, i64* %PC.i110
  %5721 = add i64 %5720, 5
  %5722 = load i64, i64* %PC.i110
  %5723 = add i64 %5722, 5
  store i64 %5723, i64* %PC.i110
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5725 = load i64, i64* %5724, align 8
  %5726 = add i64 %5725, -8
  %5727 = inttoptr i64 %5726 to i64*
  store i64 %5721, i64* %5727
  store i64 %5726, i64* %5724, align 8
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5719, i64* %5728, align 8
  store %struct.Memory* %loadMem1_4642d2, %struct.Memory** %MEMORY
  %loadMem2_4642d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4642d2 = load i64, i64* %3
  %call2_4642d2 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_4642d2, %struct.Memory* %loadMem2_4642d2)
  store %struct.Memory* %call2_4642d2, %struct.Memory** %MEMORY
  br label %block_.L_4642d7

block_.L_4642d7:                                  ; preds = %block_4642b0, %block_.L_4642a1
  %loadMem_4642d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 33
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5731 to i64*
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 15
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %5734 to i64*
  %5735 = load i64, i64* %RBP.i109
  %5736 = sub i64 %5735, 44
  %5737 = load i64, i64* %PC.i108
  %5738 = add i64 %5737, 7
  store i64 %5738, i64* %PC.i108
  %5739 = inttoptr i64 %5736 to i32*
  store i32 5, i32* %5739
  store %struct.Memory* %loadMem_4642d7, %struct.Memory** %MEMORY
  %loadMem_4642de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 33
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5742 to i64*
  %5743 = load i64, i64* %PC.i107
  %5744 = add i64 %5743, 266
  %5745 = load i64, i64* %PC.i107
  %5746 = add i64 %5745, 5
  store i64 %5746, i64* %PC.i107
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5744, i64* %5747, align 8
  store %struct.Memory* %loadMem_4642de, %struct.Memory** %MEMORY
  br label %block_.L_4643e8

block_.L_4642e3:                                  ; preds = %block_464260
  %loadMem_4642e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5750 to i64*
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5752 = getelementptr inbounds %struct.GPR, %struct.GPR* %5751, i32 0, i32 1
  %5753 = getelementptr inbounds %struct.Reg, %struct.Reg* %5752, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %5753 to i64*
  %5754 = load i64, i64* %PC.i105
  %5755 = add i64 %5754, 5
  store i64 %5755, i64* %PC.i105
  store i64 5, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_4642e3, %struct.Memory** %MEMORY
  %loadMem_4642e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 1
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %5761 to i64*
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 15
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %5764 to i64*
  %5765 = load i64, i64* %RAX.i103
  %5766 = load i64, i64* %RBP.i104
  %5767 = sub i64 %5766, 568
  %5768 = load i64, i64* %PC.i102
  %5769 = add i64 %5768, 6
  store i64 %5769, i64* %PC.i102
  %5770 = trunc i64 %5765 to i32
  %5771 = inttoptr i64 %5767 to i32*
  %5772 = load i32, i32* %5771
  %5773 = sub i32 %5770, %5772
  %5774 = zext i32 %5773 to i64
  store i64 %5774, i64* %RAX.i103, align 8
  %5775 = icmp ult i32 %5770, %5772
  %5776 = zext i1 %5775 to i8
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5776, i8* %5777, align 1
  %5778 = and i32 %5773, 255
  %5779 = call i32 @llvm.ctpop.i32(i32 %5778)
  %5780 = trunc i32 %5779 to i8
  %5781 = and i8 %5780, 1
  %5782 = xor i8 %5781, 1
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5782, i8* %5783, align 1
  %5784 = xor i32 %5772, %5770
  %5785 = xor i32 %5784, %5773
  %5786 = lshr i32 %5785, 4
  %5787 = trunc i32 %5786 to i8
  %5788 = and i8 %5787, 1
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5788, i8* %5789, align 1
  %5790 = icmp eq i32 %5773, 0
  %5791 = zext i1 %5790 to i8
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5791, i8* %5792, align 1
  %5793 = lshr i32 %5773, 31
  %5794 = trunc i32 %5793 to i8
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5794, i8* %5795, align 1
  %5796 = lshr i32 %5770, 31
  %5797 = lshr i32 %5772, 31
  %5798 = xor i32 %5797, %5796
  %5799 = xor i32 %5793, %5796
  %5800 = add i32 %5799, %5798
  %5801 = icmp eq i32 %5800, 2
  %5802 = zext i1 %5801 to i8
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5802, i8* %5803, align 1
  store %struct.Memory* %loadMem_4642e8, %struct.Memory** %MEMORY
  %loadMem_4642ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 1
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %EAX.i100 = bitcast %union.anon* %5809 to i32*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 15
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %5812 to i64*
  %5813 = load i32, i32* %EAX.i100
  %5814 = zext i32 %5813 to i64
  %5815 = load i64, i64* %RBP.i101
  %5816 = sub i64 %5815, 496
  %5817 = load i64, i64* %PC.i99
  %5818 = add i64 %5817, 6
  store i64 %5818, i64* %PC.i99
  %5819 = inttoptr i64 %5816 to i32*
  %5820 = load i32, i32* %5819
  %5821 = sub i32 %5813, %5820
  %5822 = icmp ult i32 %5813, %5820
  %5823 = zext i1 %5822 to i8
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5823, i8* %5824, align 1
  %5825 = and i32 %5821, 255
  %5826 = call i32 @llvm.ctpop.i32(i32 %5825)
  %5827 = trunc i32 %5826 to i8
  %5828 = and i8 %5827, 1
  %5829 = xor i8 %5828, 1
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5829, i8* %5830, align 1
  %5831 = xor i32 %5820, %5813
  %5832 = xor i32 %5831, %5821
  %5833 = lshr i32 %5832, 4
  %5834 = trunc i32 %5833 to i8
  %5835 = and i8 %5834, 1
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5835, i8* %5836, align 1
  %5837 = icmp eq i32 %5821, 0
  %5838 = zext i1 %5837 to i8
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5838, i8* %5839, align 1
  %5840 = lshr i32 %5821, 31
  %5841 = trunc i32 %5840 to i8
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5841, i8* %5842, align 1
  %5843 = lshr i32 %5813, 31
  %5844 = lshr i32 %5820, 31
  %5845 = xor i32 %5844, %5843
  %5846 = xor i32 %5840, %5843
  %5847 = add i32 %5846, %5845
  %5848 = icmp eq i32 %5847, 2
  %5849 = zext i1 %5848 to i8
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5849, i8* %5850, align 1
  store %struct.Memory* %loadMem_4642ee, %struct.Memory** %MEMORY
  %loadMem_4642f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5852 = getelementptr inbounds %struct.GPR, %struct.GPR* %5851, i32 0, i32 33
  %5853 = getelementptr inbounds %struct.Reg, %struct.Reg* %5852, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5853 to i64*
  %5854 = load i64, i64* %PC.i98
  %5855 = add i64 %5854, 35
  %5856 = load i64, i64* %PC.i98
  %5857 = add i64 %5856, 6
  %5858 = load i64, i64* %PC.i98
  %5859 = add i64 %5858, 6
  store i64 %5859, i64* %PC.i98
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5861 = load i8, i8* %5860, align 1
  %5862 = icmp ne i8 %5861, 0
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5864 = load i8, i8* %5863, align 1
  %5865 = icmp ne i8 %5864, 0
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5867 = load i8, i8* %5866, align 1
  %5868 = icmp ne i8 %5867, 0
  %5869 = xor i1 %5865, %5868
  %5870 = or i1 %5862, %5869
  %5871 = zext i1 %5870 to i8
  store i8 %5871, i8* %BRANCH_TAKEN, align 1
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5873 = select i1 %5870, i64 %5855, i64 %5857
  store i64 %5873, i64* %5872, align 8
  store %struct.Memory* %loadMem_4642f4, %struct.Memory** %MEMORY
  %loadBr_4642f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4642f4 = icmp eq i8 %loadBr_4642f4, 1
  br i1 %cmpBr_4642f4, label %block_.L_464317, label %block_4642fa

block_4642fa:                                     ; preds = %block_.L_4642e3
  %loadMem_4642fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 33
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 1
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %PC.i96
  %5881 = add i64 %5880, 5
  store i64 %5881, i64* %PC.i96
  store i64 5, i64* %RAX.i97, align 8
  store %struct.Memory* %loadMem_4642fa, %struct.Memory** %MEMORY
  %loadMem_4642ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5883 = getelementptr inbounds %struct.GPR, %struct.GPR* %5882, i32 0, i32 33
  %5884 = getelementptr inbounds %struct.Reg, %struct.Reg* %5883, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %5884 to i64*
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 5
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 15
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %5890 to i64*
  %5891 = load i64, i64* %RBP.i95
  %5892 = sub i64 %5891, 564
  %5893 = load i64, i64* %PC.i93
  %5894 = add i64 %5893, 6
  store i64 %5894, i64* %PC.i93
  %5895 = inttoptr i64 %5892 to i32*
  %5896 = load i32, i32* %5895
  %5897 = zext i32 %5896 to i64
  store i64 %5897, i64* %RCX.i94, align 8
  store %struct.Memory* %loadMem_4642ff, %struct.Memory** %MEMORY
  %loadMem_464305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5899 = getelementptr inbounds %struct.GPR, %struct.GPR* %5898, i32 0, i32 33
  %5900 = getelementptr inbounds %struct.Reg, %struct.Reg* %5899, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5900 to i64*
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 5
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %ECX.i91 = bitcast %union.anon* %5903 to i32*
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 15
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %5906 to i64*
  %5907 = load i64, i64* %RBP.i92
  %5908 = sub i64 %5907, 492
  %5909 = load i32, i32* %ECX.i91
  %5910 = zext i32 %5909 to i64
  %5911 = load i64, i64* %PC.i90
  %5912 = add i64 %5911, 6
  store i64 %5912, i64* %PC.i90
  %5913 = inttoptr i64 %5908 to i32*
  store i32 %5909, i32* %5913
  store %struct.Memory* %loadMem_464305, %struct.Memory** %MEMORY
  %loadMem_46430b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 33
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %5916 to i64*
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 1
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %5919 to i64*
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 15
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %5922 to i64*
  %5923 = load i64, i64* %RAX.i88
  %5924 = load i64, i64* %RBP.i89
  %5925 = sub i64 %5924, 568
  %5926 = load i64, i64* %PC.i87
  %5927 = add i64 %5926, 6
  store i64 %5927, i64* %PC.i87
  %5928 = trunc i64 %5923 to i32
  %5929 = inttoptr i64 %5925 to i32*
  %5930 = load i32, i32* %5929
  %5931 = sub i32 %5928, %5930
  %5932 = zext i32 %5931 to i64
  store i64 %5932, i64* %RAX.i88, align 8
  %5933 = icmp ult i32 %5928, %5930
  %5934 = zext i1 %5933 to i8
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5934, i8* %5935, align 1
  %5936 = and i32 %5931, 255
  %5937 = call i32 @llvm.ctpop.i32(i32 %5936)
  %5938 = trunc i32 %5937 to i8
  %5939 = and i8 %5938, 1
  %5940 = xor i8 %5939, 1
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5940, i8* %5941, align 1
  %5942 = xor i32 %5930, %5928
  %5943 = xor i32 %5942, %5931
  %5944 = lshr i32 %5943, 4
  %5945 = trunc i32 %5944 to i8
  %5946 = and i8 %5945, 1
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5946, i8* %5947, align 1
  %5948 = icmp eq i32 %5931, 0
  %5949 = zext i1 %5948 to i8
  %5950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5949, i8* %5950, align 1
  %5951 = lshr i32 %5931, 31
  %5952 = trunc i32 %5951 to i8
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5952, i8* %5953, align 1
  %5954 = lshr i32 %5928, 31
  %5955 = lshr i32 %5930, 31
  %5956 = xor i32 %5955, %5954
  %5957 = xor i32 %5951, %5954
  %5958 = add i32 %5957, %5956
  %5959 = icmp eq i32 %5958, 2
  %5960 = zext i1 %5959 to i8
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5960, i8* %5961, align 1
  store %struct.Memory* %loadMem_46430b, %struct.Memory** %MEMORY
  %loadMem_464311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 33
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5964 to i64*
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5966 = getelementptr inbounds %struct.GPR, %struct.GPR* %5965, i32 0, i32 1
  %5967 = getelementptr inbounds %struct.Reg, %struct.Reg* %5966, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %5967 to i32*
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 15
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %5970 to i64*
  %5971 = load i64, i64* %RBP.i86
  %5972 = sub i64 %5971, 496
  %5973 = load i32, i32* %EAX.i85
  %5974 = zext i32 %5973 to i64
  %5975 = load i64, i64* %PC.i84
  %5976 = add i64 %5975, 6
  store i64 %5976, i64* %PC.i84
  %5977 = inttoptr i64 %5972 to i32*
  store i32 %5973, i32* %5977
  store %struct.Memory* %loadMem_464311, %struct.Memory** %MEMORY
  br label %block_.L_464317

block_.L_464317:                                  ; preds = %block_4642fa, %block_.L_4642e3
  %loadMem_464317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5979 = getelementptr inbounds %struct.GPR, %struct.GPR* %5978, i32 0, i32 33
  %5980 = getelementptr inbounds %struct.Reg, %struct.Reg* %5979, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5980 to i64*
  %5981 = load i64, i64* %PC.i83
  %5982 = add i64 %5981, 5
  %5983 = load i64, i64* %PC.i83
  %5984 = add i64 %5983, 5
  store i64 %5984, i64* %PC.i83
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5982, i64* %5985, align 8
  store %struct.Memory* %loadMem_464317, %struct.Memory** %MEMORY
  br label %block_.L_46431c

block_.L_46431c:                                  ; preds = %block_.L_464317
  %loadMem_46431c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5987 = getelementptr inbounds %struct.GPR, %struct.GPR* %5986, i32 0, i32 33
  %5988 = getelementptr inbounds %struct.Reg, %struct.Reg* %5987, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5988 to i64*
  %5989 = load i64, i64* %PC.i82
  %5990 = add i64 %5989, 5
  %5991 = load i64, i64* %PC.i82
  %5992 = add i64 %5991, 5
  store i64 %5992, i64* %PC.i82
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5990, i64* %5993, align 8
  store %struct.Memory* %loadMem_46431c, %struct.Memory** %MEMORY
  br label %block_.L_464321

block_.L_464321:                                  ; preds = %block_.L_46431c
  %loadMem_464321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5995 = getelementptr inbounds %struct.GPR, %struct.GPR* %5994, i32 0, i32 33
  %5996 = getelementptr inbounds %struct.Reg, %struct.Reg* %5995, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5996 to i64*
  %5997 = load i64, i64* %PC.i81
  %5998 = add i64 %5997, 5
  %5999 = load i64, i64* %PC.i81
  %6000 = add i64 %5999, 5
  store i64 %6000, i64* %PC.i81
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5998, i64* %6001, align 8
  store %struct.Memory* %loadMem_464321, %struct.Memory** %MEMORY
  br label %block_.L_464326

block_.L_464326:                                  ; preds = %block_.L_464321, %block_.L_464234, %block_46421d
  %loadMem_464326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 33
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6004 to i64*
  %6005 = load i64, i64* %PC.i80
  %6006 = add i64 %6005, 5
  %6007 = load i64, i64* %PC.i80
  %6008 = add i64 %6007, 5
  store i64 %6008, i64* %PC.i80
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6006, i64* %6009, align 8
  store %struct.Memory* %loadMem_464326, %struct.Memory** %MEMORY
  br label %block_.L_46432b

block_.L_46432b:                                  ; preds = %block_.L_464326
  %loadMem_46432b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 33
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %6012 to i64*
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 1
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %6015 to i64*
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6017 = getelementptr inbounds %struct.GPR, %struct.GPR* %6016, i32 0, i32 15
  %6018 = getelementptr inbounds %struct.Reg, %struct.Reg* %6017, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %6018 to i64*
  %6019 = load i64, i64* %RBP.i79
  %6020 = sub i64 %6019, 504
  %6021 = load i64, i64* %PC.i77
  %6022 = add i64 %6021, 6
  store i64 %6022, i64* %PC.i77
  %6023 = inttoptr i64 %6020 to i32*
  %6024 = load i32, i32* %6023
  %6025 = zext i32 %6024 to i64
  store i64 %6025, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_46432b, %struct.Memory** %MEMORY
  %loadMem_464331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 33
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6028 to i64*
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 1
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %6031 to i64*
  %6032 = load i64, i64* %RAX.i76
  %6033 = load i64, i64* %PC.i75
  %6034 = add i64 %6033, 3
  store i64 %6034, i64* %PC.i75
  %6035 = trunc i64 %6032 to i32
  %6036 = add i32 1, %6035
  %6037 = zext i32 %6036 to i64
  store i64 %6037, i64* %RAX.i76, align 8
  %6038 = icmp ult i32 %6036, %6035
  %6039 = icmp ult i32 %6036, 1
  %6040 = or i1 %6038, %6039
  %6041 = zext i1 %6040 to i8
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6041, i8* %6042, align 1
  %6043 = and i32 %6036, 255
  %6044 = call i32 @llvm.ctpop.i32(i32 %6043)
  %6045 = trunc i32 %6044 to i8
  %6046 = and i8 %6045, 1
  %6047 = xor i8 %6046, 1
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6047, i8* %6048, align 1
  %6049 = xor i64 1, %6032
  %6050 = trunc i64 %6049 to i32
  %6051 = xor i32 %6050, %6036
  %6052 = lshr i32 %6051, 4
  %6053 = trunc i32 %6052 to i8
  %6054 = and i8 %6053, 1
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6054, i8* %6055, align 1
  %6056 = icmp eq i32 %6036, 0
  %6057 = zext i1 %6056 to i8
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6057, i8* %6058, align 1
  %6059 = lshr i32 %6036, 31
  %6060 = trunc i32 %6059 to i8
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6060, i8* %6061, align 1
  %6062 = lshr i32 %6035, 31
  %6063 = xor i32 %6059, %6062
  %6064 = add i32 %6063, %6059
  %6065 = icmp eq i32 %6064, 2
  %6066 = zext i1 %6065 to i8
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6066, i8* %6067, align 1
  store %struct.Memory* %loadMem_464331, %struct.Memory** %MEMORY
  %loadMem_464334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 33
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6070 to i64*
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 1
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %EAX.i73 = bitcast %union.anon* %6073 to i32*
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 15
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %6076 to i64*
  %6077 = load i64, i64* %RBP.i74
  %6078 = sub i64 %6077, 504
  %6079 = load i32, i32* %EAX.i73
  %6080 = zext i32 %6079 to i64
  %6081 = load i64, i64* %PC.i72
  %6082 = add i64 %6081, 6
  store i64 %6082, i64* %PC.i72
  %6083 = inttoptr i64 %6078 to i32*
  store i32 %6079, i32* %6083
  store %struct.Memory* %loadMem_464334, %struct.Memory** %MEMORY
  %loadMem_46433a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6085 = getelementptr inbounds %struct.GPR, %struct.GPR* %6084, i32 0, i32 33
  %6086 = getelementptr inbounds %struct.Reg, %struct.Reg* %6085, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6086 to i64*
  %6087 = load i64, i64* %PC.i71
  %6088 = add i64 %6087, -336
  %6089 = load i64, i64* %PC.i71
  %6090 = add i64 %6089, 5
  store i64 %6090, i64* %PC.i71
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6088, i64* %6091, align 8
  store %struct.Memory* %loadMem_46433a, %struct.Memory** %MEMORY
  br label %block_.L_4641ea

block_.L_46433f:                                  ; preds = %block_.L_4641ea
  %loadMem_46433f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 33
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6094 to i64*
  %6095 = load i64, i64* %PC.i70
  %6096 = add i64 %6095, 5
  %6097 = load i64, i64* %PC.i70
  %6098 = add i64 %6097, 5
  store i64 %6098, i64* %PC.i70
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6096, i64* %6099, align 8
  store %struct.Memory* %loadMem_46433f, %struct.Memory** %MEMORY
  br label %block_.L_464344

block_.L_464344:                                  ; preds = %block_.L_46433f, %block_4641b6
  %loadMem_464344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 33
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %6102 to i64*
  %6103 = load i64, i64* %PC.i69
  %6104 = add i64 %6103, 5
  %6105 = load i64, i64* %PC.i69
  %6106 = add i64 %6105, 5
  store i64 %6106, i64* %PC.i69
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6104, i64* %6107, align 8
  store %struct.Memory* %loadMem_464344, %struct.Memory** %MEMORY
  br label %block_.L_464349

block_.L_464349:                                  ; preds = %block_.L_464344, %block_46419e, %block_46418d, %block_.L_464179
  %loadMem_464349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6109 = getelementptr inbounds %struct.GPR, %struct.GPR* %6108, i32 0, i32 33
  %6110 = getelementptr inbounds %struct.Reg, %struct.Reg* %6109, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %6110 to i64*
  %6111 = load i64, i64* %PC.i68
  %6112 = add i64 %6111, 5
  %6113 = load i64, i64* %PC.i68
  %6114 = add i64 %6113, 5
  store i64 %6114, i64* %PC.i68
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6112, i64* %6115, align 8
  store %struct.Memory* %loadMem_464349, %struct.Memory** %MEMORY
  br label %block_.L_46434e

block_.L_46434e:                                  ; preds = %block_.L_464349
  %loadMem_46434e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 33
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %6118 to i64*
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6120 = getelementptr inbounds %struct.GPR, %struct.GPR* %6119, i32 0, i32 15
  %6121 = getelementptr inbounds %struct.Reg, %struct.Reg* %6120, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %6121 to i64*
  %6122 = load i64, i64* %RBP.i67
  %6123 = sub i64 %6122, 496
  %6124 = load i64, i64* %PC.i66
  %6125 = add i64 %6124, 7
  store i64 %6125, i64* %PC.i66
  %6126 = inttoptr i64 %6123 to i32*
  %6127 = load i32, i32* %6126
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6128, align 1
  %6129 = and i32 %6127, 255
  %6130 = call i32 @llvm.ctpop.i32(i32 %6129)
  %6131 = trunc i32 %6130 to i8
  %6132 = and i8 %6131, 1
  %6133 = xor i8 %6132, 1
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6133, i8* %6134, align 1
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6135, align 1
  %6136 = icmp eq i32 %6127, 0
  %6137 = zext i1 %6136 to i8
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6137, i8* %6138, align 1
  %6139 = lshr i32 %6127, 31
  %6140 = trunc i32 %6139 to i8
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6140, i8* %6141, align 1
  %6142 = lshr i32 %6127, 31
  %6143 = xor i32 %6139, %6142
  %6144 = add i32 %6143, %6142
  %6145 = icmp eq i32 %6144, 2
  %6146 = zext i1 %6145 to i8
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6146, i8* %6147, align 1
  store %struct.Memory* %loadMem_46434e, %struct.Memory** %MEMORY
  %loadMem_464355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 33
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6150 to i64*
  %6151 = load i64, i64* %PC.i65
  %6152 = add i64 %6151, 89
  %6153 = load i64, i64* %PC.i65
  %6154 = add i64 %6153, 6
  %6155 = load i64, i64* %PC.i65
  %6156 = add i64 %6155, 6
  store i64 %6156, i64* %PC.i65
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6158 = load i8, i8* %6157, align 1
  store i8 %6158, i8* %BRANCH_TAKEN, align 1
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6160 = icmp ne i8 %6158, 0
  %6161 = select i1 %6160, i64 %6152, i64 %6154
  store i64 %6161, i64* %6159, align 8
  store %struct.Memory* %loadMem_464355, %struct.Memory** %MEMORY
  %loadBr_464355 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464355 = icmp eq i8 %loadBr_464355, 1
  br i1 %cmpBr_464355, label %block_.L_4643ae, label %block_46435b

block_46435b:                                     ; preds = %block_.L_46434e
  %loadMem_46435b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6163 = getelementptr inbounds %struct.GPR, %struct.GPR* %6162, i32 0, i32 33
  %6164 = getelementptr inbounds %struct.Reg, %struct.Reg* %6163, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %6164 to i64*
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 15
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %6167 to i64*
  %6168 = load i64, i64* %RBP.i64
  %6169 = sub i64 %6168, 56
  %6170 = load i64, i64* %PC.i63
  %6171 = add i64 %6170, 5
  store i64 %6171, i64* %PC.i63
  %6172 = inttoptr i64 %6169 to i64*
  %6173 = load i64, i64* %6172
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6174, align 1
  %6175 = trunc i64 %6173 to i32
  %6176 = and i32 %6175, 255
  %6177 = call i32 @llvm.ctpop.i32(i32 %6176)
  %6178 = trunc i32 %6177 to i8
  %6179 = and i8 %6178, 1
  %6180 = xor i8 %6179, 1
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6180, i8* %6181, align 1
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6182, align 1
  %6183 = icmp eq i64 %6173, 0
  %6184 = zext i1 %6183 to i8
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6184, i8* %6185, align 1
  %6186 = lshr i64 %6173, 63
  %6187 = trunc i64 %6186 to i8
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6187, i8* %6188, align 1
  %6189 = lshr i64 %6173, 63
  %6190 = xor i64 %6186, %6189
  %6191 = add i64 %6190, %6189
  %6192 = icmp eq i64 %6191, 2
  %6193 = zext i1 %6192 to i8
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6193, i8* %6194, align 1
  store %struct.Memory* %loadMem_46435b, %struct.Memory** %MEMORY
  %loadMem_464360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 33
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6197 to i64*
  %6198 = load i64, i64* %PC.i62
  %6199 = add i64 %6198, 18
  %6200 = load i64, i64* %PC.i62
  %6201 = add i64 %6200, 6
  %6202 = load i64, i64* %PC.i62
  %6203 = add i64 %6202, 6
  store i64 %6203, i64* %PC.i62
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6205 = load i8, i8* %6204, align 1
  store i8 %6205, i8* %BRANCH_TAKEN, align 1
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6207 = icmp ne i8 %6205, 0
  %6208 = select i1 %6207, i64 %6199, i64 %6201
  store i64 %6208, i64* %6206, align 8
  store %struct.Memory* %loadMem_464360, %struct.Memory** %MEMORY
  %loadBr_464360 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464360 = icmp eq i8 %loadBr_464360, 1
  br i1 %cmpBr_464360, label %block_.L_464372, label %block_464366

block_464366:                                     ; preds = %block_46435b
  %loadMem_464366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 33
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %6211 to i64*
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 1
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %6214 to i64*
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 15
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %6217 to i64*
  %6218 = load i64, i64* %RBP.i61
  %6219 = sub i64 %6218, 492
  %6220 = load i64, i64* %PC.i59
  %6221 = add i64 %6220, 6
  store i64 %6221, i64* %PC.i59
  %6222 = inttoptr i64 %6219 to i32*
  %6223 = load i32, i32* %6222
  %6224 = zext i32 %6223 to i64
  store i64 %6224, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_464366, %struct.Memory** %MEMORY
  %loadMem_46436c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6226 = getelementptr inbounds %struct.GPR, %struct.GPR* %6225, i32 0, i32 33
  %6227 = getelementptr inbounds %struct.Reg, %struct.Reg* %6226, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %6227 to i64*
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 5
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %6230 to i64*
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6232 = getelementptr inbounds %struct.GPR, %struct.GPR* %6231, i32 0, i32 15
  %6233 = getelementptr inbounds %struct.Reg, %struct.Reg* %6232, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %6233 to i64*
  %6234 = load i64, i64* %RBP.i58
  %6235 = sub i64 %6234, 56
  %6236 = load i64, i64* %PC.i56
  %6237 = add i64 %6236, 4
  store i64 %6237, i64* %PC.i56
  %6238 = inttoptr i64 %6235 to i64*
  %6239 = load i64, i64* %6238
  store i64 %6239, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_46436c, %struct.Memory** %MEMORY
  %loadMem_464370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 33
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6242 to i64*
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6244 = getelementptr inbounds %struct.GPR, %struct.GPR* %6243, i32 0, i32 1
  %6245 = getelementptr inbounds %struct.Reg, %struct.Reg* %6244, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %6245 to i32*
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6247 = getelementptr inbounds %struct.GPR, %struct.GPR* %6246, i32 0, i32 5
  %6248 = getelementptr inbounds %struct.Reg, %struct.Reg* %6247, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %6248 to i64*
  %6249 = load i64, i64* %RCX.i55
  %6250 = load i32, i32* %EAX.i54
  %6251 = zext i32 %6250 to i64
  %6252 = load i64, i64* %PC.i53
  %6253 = add i64 %6252, 2
  store i64 %6253, i64* %PC.i53
  %6254 = inttoptr i64 %6249 to i32*
  store i32 %6250, i32* %6254
  store %struct.Memory* %loadMem_464370, %struct.Memory** %MEMORY
  br label %block_.L_464372

block_.L_464372:                                  ; preds = %block_464366, %block_46435b
  %loadMem_464372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6256 = getelementptr inbounds %struct.GPR, %struct.GPR* %6255, i32 0, i32 33
  %6257 = getelementptr inbounds %struct.Reg, %struct.Reg* %6256, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6257 to i64*
  %6258 = load i64, i64* %PC.i52
  %6259 = add i64 %6258, 9
  store i64 %6259, i64* %PC.i52
  %6260 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6261, align 1
  %6262 = trunc i64 %6260 to i32
  %6263 = and i32 %6262, 255
  %6264 = call i32 @llvm.ctpop.i32(i32 %6263)
  %6265 = trunc i32 %6264 to i8
  %6266 = and i8 %6265, 1
  %6267 = xor i8 %6266, 1
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6267, i8* %6268, align 1
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6269, align 1
  %6270 = icmp eq i64 %6260, 0
  %6271 = zext i1 %6270 to i8
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6271, i8* %6272, align 1
  %6273 = lshr i64 %6260, 63
  %6274 = trunc i64 %6273 to i8
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6274, i8* %6275, align 1
  %6276 = lshr i64 %6260, 63
  %6277 = xor i64 %6273, %6276
  %6278 = add i64 %6277, %6276
  %6279 = icmp eq i64 %6278, 2
  %6280 = zext i1 %6279 to i8
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6280, i8* %6281, align 1
  store %struct.Memory* %loadMem_464372, %struct.Memory** %MEMORY
  %loadMem_46437b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 33
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %6284 to i64*
  %6285 = load i64, i64* %PC.i51
  %6286 = add i64 %6285, 46
  %6287 = load i64, i64* %PC.i51
  %6288 = add i64 %6287, 6
  %6289 = load i64, i64* %PC.i51
  %6290 = add i64 %6289, 6
  store i64 %6290, i64* %PC.i51
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6292 = load i8, i8* %6291, align 1
  store i8 %6292, i8* %BRANCH_TAKEN, align 1
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6294 = icmp ne i8 %6292, 0
  %6295 = select i1 %6294, i64 %6286, i64 %6288
  store i64 %6295, i64* %6293, align 8
  store %struct.Memory* %loadMem_46437b, %struct.Memory** %MEMORY
  %loadBr_46437b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46437b = icmp eq i8 %loadBr_46437b, 1
  br i1 %cmpBr_46437b, label %block_.L_4643a9, label %block_464381

block_464381:                                     ; preds = %block_.L_464372
  %loadMem_464381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 33
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6298 to i64*
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 17
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %R8.i = bitcast %union.anon* %6301 to i64*
  %6302 = load i64, i64* %PC.i50
  %6303 = add i64 %6302, 10
  store i64 %6303, i64* %PC.i50
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8.i, align 8
  store %struct.Memory* %loadMem_464381, %struct.Memory** %MEMORY
  %loadMem_46438b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 33
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6306 to i64*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 11
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %RDI.i48 = bitcast %union.anon* %6309 to i64*
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 15
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %6312 to i64*
  %6313 = load i64, i64* %RBP.i49
  %6314 = sub i64 %6313, 512
  %6315 = load i64, i64* %PC.i47
  %6316 = add i64 %6315, 7
  store i64 %6316, i64* %PC.i47
  %6317 = inttoptr i64 %6314 to i64*
  %6318 = load i64, i64* %6317
  store i64 %6318, i64* %RDI.i48, align 8
  store %struct.Memory* %loadMem_46438b, %struct.Memory** %MEMORY
  %loadMem_464392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6320 = getelementptr inbounds %struct.GPR, %struct.GPR* %6319, i32 0, i32 33
  %6321 = getelementptr inbounds %struct.Reg, %struct.Reg* %6320, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6321 to i64*
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 9
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %6324 to i64*
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 15
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %6327 to i64*
  %6328 = load i64, i64* %RBP.i46
  %6329 = sub i64 %6328, 516
  %6330 = load i64, i64* %PC.i44
  %6331 = add i64 %6330, 6
  store i64 %6331, i64* %PC.i44
  %6332 = inttoptr i64 %6329 to i32*
  %6333 = load i32, i32* %6332
  %6334 = zext i32 %6333 to i64
  store i64 %6334, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_464392, %struct.Memory** %MEMORY
  %loadMem_464398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 33
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6337 to i64*
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 7
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %6340 to i64*
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6342 = getelementptr inbounds %struct.GPR, %struct.GPR* %6341, i32 0, i32 15
  %6343 = getelementptr inbounds %struct.Reg, %struct.Reg* %6342, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %6343 to i64*
  %6344 = load i64, i64* %RBP.i43
  %6345 = sub i64 %6344, 492
  %6346 = load i64, i64* %PC.i41
  %6347 = add i64 %6346, 6
  store i64 %6347, i64* %PC.i41
  %6348 = inttoptr i64 %6345 to i32*
  %6349 = load i32, i32* %6348
  %6350 = zext i32 %6349 to i64
  store i64 %6350, i64* %RDX.i42, align 8
  store %struct.Memory* %loadMem_464398, %struct.Memory** %MEMORY
  %loadMem_46439e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 33
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6353 to i64*
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 5
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %6356 to i64*
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 15
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %6359 to i64*
  %6360 = load i64, i64* %RBP.i40
  %6361 = sub i64 %6360, 496
  %6362 = load i64, i64* %PC.i38
  %6363 = add i64 %6362, 6
  store i64 %6363, i64* %PC.i38
  %6364 = inttoptr i64 %6361 to i32*
  %6365 = load i32, i32* %6364
  %6366 = zext i32 %6365 to i64
  store i64 %6366, i64* %RCX.i39, align 8
  store %struct.Memory* %loadMem_46439e, %struct.Memory** %MEMORY
  %loadMem1_4643a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6368 = getelementptr inbounds %struct.GPR, %struct.GPR* %6367, i32 0, i32 33
  %6369 = getelementptr inbounds %struct.Reg, %struct.Reg* %6368, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6369 to i64*
  %6370 = load i64, i64* %PC.i37
  %6371 = add i64 %6370, -312292
  %6372 = load i64, i64* %PC.i37
  %6373 = add i64 %6372, 5
  %6374 = load i64, i64* %PC.i37
  %6375 = add i64 %6374, 5
  store i64 %6375, i64* %PC.i37
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6377 = load i64, i64* %6376, align 8
  %6378 = add i64 %6377, -8
  %6379 = inttoptr i64 %6378 to i64*
  store i64 %6373, i64* %6379
  store i64 %6378, i64* %6376, align 8
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6371, i64* %6380, align 8
  store %struct.Memory* %loadMem1_4643a4, %struct.Memory** %MEMORY
  %loadMem2_4643a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4643a4 = load i64, i64* %3
  %call2_4643a4 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_4643a4, %struct.Memory* %loadMem2_4643a4)
  store %struct.Memory* %call2_4643a4, %struct.Memory** %MEMORY
  br label %block_.L_4643a9

block_.L_4643a9:                                  ; preds = %block_464381, %block_.L_464372
  %loadMem_4643a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 33
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6383 to i64*
  %6384 = load i64, i64* %PC.i36
  %6385 = add i64 %6384, 54
  %6386 = load i64, i64* %PC.i36
  %6387 = add i64 %6386, 5
  store i64 %6387, i64* %PC.i36
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6385, i64* %6388, align 8
  store %struct.Memory* %loadMem_4643a9, %struct.Memory** %MEMORY
  br label %block_.L_4643df

block_.L_4643ae:                                  ; preds = %block_.L_46434e
  %loadMem_4643ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 33
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6391 to i64*
  %6392 = load i64, i64* %PC.i35
  %6393 = add i64 %6392, 9
  store i64 %6393, i64* %PC.i35
  %6394 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6395, align 1
  %6396 = trunc i64 %6394 to i32
  %6397 = and i32 %6396, 255
  %6398 = call i32 @llvm.ctpop.i32(i32 %6397)
  %6399 = trunc i32 %6398 to i8
  %6400 = and i8 %6399, 1
  %6401 = xor i8 %6400, 1
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6401, i8* %6402, align 1
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6403, align 1
  %6404 = icmp eq i64 %6394, 0
  %6405 = zext i1 %6404 to i8
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6405, i8* %6406, align 1
  %6407 = lshr i64 %6394, 63
  %6408 = trunc i64 %6407 to i8
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6408, i8* %6409, align 1
  %6410 = lshr i64 %6394, 63
  %6411 = xor i64 %6407, %6410
  %6412 = add i64 %6411, %6410
  %6413 = icmp eq i64 %6412, 2
  %6414 = zext i1 %6413 to i8
  %6415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6414, i8* %6415, align 1
  store %struct.Memory* %loadMem_4643ae, %struct.Memory** %MEMORY
  %loadMem_4643b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 33
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6418 to i64*
  %6419 = load i64, i64* %PC.i34
  %6420 = add i64 %6419, 35
  %6421 = load i64, i64* %PC.i34
  %6422 = add i64 %6421, 6
  %6423 = load i64, i64* %PC.i34
  %6424 = add i64 %6423, 6
  store i64 %6424, i64* %PC.i34
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6426 = load i8, i8* %6425, align 1
  store i8 %6426, i8* %BRANCH_TAKEN, align 1
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6428 = icmp ne i8 %6426, 0
  %6429 = select i1 %6428, i64 %6420, i64 %6422
  store i64 %6429, i64* %6427, align 8
  store %struct.Memory* %loadMem_4643b7, %struct.Memory** %MEMORY
  %loadBr_4643b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4643b7 = icmp eq i8 %loadBr_4643b7, 1
  br i1 %cmpBr_4643b7, label %block_.L_4643da, label %block_4643bd

block_4643bd:                                     ; preds = %block_.L_4643ae
  %loadMem_4643bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6431 = getelementptr inbounds %struct.GPR, %struct.GPR* %6430, i32 0, i32 33
  %6432 = getelementptr inbounds %struct.Reg, %struct.Reg* %6431, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6432 to i64*
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6434 = getelementptr inbounds %struct.GPR, %struct.GPR* %6433, i32 0, i32 1
  %6435 = getelementptr inbounds %struct.Reg, %struct.Reg* %6434, i32 0, i32 0
  %EAX.i32 = bitcast %union.anon* %6435 to i32*
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 1
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %6438 to i64*
  %6439 = load i64, i64* %RAX.i33
  %6440 = load i32, i32* %EAX.i32
  %6441 = zext i32 %6440 to i64
  %6442 = load i64, i64* %PC.i31
  %6443 = add i64 %6442, 2
  store i64 %6443, i64* %PC.i31
  %6444 = xor i64 %6441, %6439
  %6445 = trunc i64 %6444 to i32
  %6446 = and i64 %6444, 4294967295
  store i64 %6446, i64* %RAX.i33, align 8
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6447, align 1
  %6448 = and i32 %6445, 255
  %6449 = call i32 @llvm.ctpop.i32(i32 %6448)
  %6450 = trunc i32 %6449 to i8
  %6451 = and i8 %6450, 1
  %6452 = xor i8 %6451, 1
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6452, i8* %6453, align 1
  %6454 = icmp eq i32 %6445, 0
  %6455 = zext i1 %6454 to i8
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6455, i8* %6456, align 1
  %6457 = lshr i32 %6445, 31
  %6458 = trunc i32 %6457 to i8
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6458, i8* %6459, align 1
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6460, align 1
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6461, align 1
  store %struct.Memory* %loadMem_4643bd, %struct.Memory** %MEMORY
  %loadMem_4643bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 33
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6464 to i64*
  %6465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6466 = getelementptr inbounds %struct.GPR, %struct.GPR* %6465, i32 0, i32 5
  %6467 = getelementptr inbounds %struct.Reg, %struct.Reg* %6466, i32 0, i32 0
  %ECX.i29 = bitcast %union.anon* %6467 to i32*
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 5
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %6470 to i64*
  %6471 = load i64, i64* %RCX.i30
  %6472 = load i32, i32* %ECX.i29
  %6473 = zext i32 %6472 to i64
  %6474 = load i64, i64* %PC.i28
  %6475 = add i64 %6474, 2
  store i64 %6475, i64* %PC.i28
  %6476 = xor i64 %6473, %6471
  %6477 = trunc i64 %6476 to i32
  %6478 = and i64 %6476, 4294967295
  store i64 %6478, i64* %RCX.i30, align 8
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6479, align 1
  %6480 = and i32 %6477, 255
  %6481 = call i32 @llvm.ctpop.i32(i32 %6480)
  %6482 = trunc i32 %6481 to i8
  %6483 = and i8 %6482, 1
  %6484 = xor i8 %6483, 1
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6484, i8* %6485, align 1
  %6486 = icmp eq i32 %6477, 0
  %6487 = zext i1 %6486 to i8
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6487, i8* %6488, align 1
  %6489 = lshr i32 %6477, 31
  %6490 = trunc i32 %6489 to i8
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6490, i8* %6491, align 1
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6492, align 1
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6493, align 1
  store %struct.Memory* %loadMem_4643bf, %struct.Memory** %MEMORY
  %loadMem_4643c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 33
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6496 to i64*
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6498 = getelementptr inbounds %struct.GPR, %struct.GPR* %6497, i32 0, i32 5
  %6499 = getelementptr inbounds %struct.Reg, %struct.Reg* %6498, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6499 to i32*
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 17
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %6502 to i32*
  %6503 = bitcast i32* %R8D.i to i64*
  %6504 = load i32, i32* %ECX.i
  %6505 = zext i32 %6504 to i64
  %6506 = load i64, i64* %PC.i27
  %6507 = add i64 %6506, 3
  store i64 %6507, i64* %PC.i27
  %6508 = and i64 %6505, 4294967295
  store i64 %6508, i64* %6503, align 8
  store %struct.Memory* %loadMem_4643c1, %struct.Memory** %MEMORY
  %loadMem_4643c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 33
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 11
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6514 to i64*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 15
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %RBP.i26
  %6519 = sub i64 %6518, 512
  %6520 = load i64, i64* %PC.i25
  %6521 = add i64 %6520, 7
  store i64 %6521, i64* %PC.i25
  %6522 = inttoptr i64 %6519 to i64*
  %6523 = load i64, i64* %6522
  store i64 %6523, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4643c4, %struct.Memory** %MEMORY
  %loadMem_4643cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 9
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6529 to i64*
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6531 = getelementptr inbounds %struct.GPR, %struct.GPR* %6530, i32 0, i32 15
  %6532 = getelementptr inbounds %struct.Reg, %struct.Reg* %6531, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %6532 to i64*
  %6533 = load i64, i64* %RBP.i24
  %6534 = sub i64 %6533, 516
  %6535 = load i64, i64* %PC.i23
  %6536 = add i64 %6535, 6
  store i64 %6536, i64* %PC.i23
  %6537 = inttoptr i64 %6534 to i32*
  %6538 = load i32, i32* %6537
  %6539 = zext i32 %6538 to i64
  store i64 %6539, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4643cb, %struct.Memory** %MEMORY
  %loadMem_4643d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 33
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6542 to i64*
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 1
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %6545 to i32*
  %6546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6547 = getelementptr inbounds %struct.GPR, %struct.GPR* %6546, i32 0, i32 7
  %6548 = getelementptr inbounds %struct.Reg, %struct.Reg* %6547, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6548 to i64*
  %6549 = load i32, i32* %EAX.i22
  %6550 = zext i32 %6549 to i64
  %6551 = load i64, i64* %PC.i21
  %6552 = add i64 %6551, 2
  store i64 %6552, i64* %PC.i21
  %6553 = and i64 %6550, 4294967295
  store i64 %6553, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4643d1, %struct.Memory** %MEMORY
  %loadMem_4643d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 33
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6556 to i64*
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 1
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %6559 to i32*
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 5
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6562 to i64*
  %6563 = load i32, i32* %EAX.i20
  %6564 = zext i32 %6563 to i64
  %6565 = load i64, i64* %PC.i19
  %6566 = add i64 %6565, 2
  store i64 %6566, i64* %PC.i19
  %6567 = and i64 %6564, 4294967295
  store i64 %6567, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4643d3, %struct.Memory** %MEMORY
  %loadMem1_4643d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6569 = getelementptr inbounds %struct.GPR, %struct.GPR* %6568, i32 0, i32 33
  %6570 = getelementptr inbounds %struct.Reg, %struct.Reg* %6569, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6570 to i64*
  %6571 = load i64, i64* %PC.i18
  %6572 = add i64 %6571, -312341
  %6573 = load i64, i64* %PC.i18
  %6574 = add i64 %6573, 5
  %6575 = load i64, i64* %PC.i18
  %6576 = add i64 %6575, 5
  store i64 %6576, i64* %PC.i18
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6578 = load i64, i64* %6577, align 8
  %6579 = add i64 %6578, -8
  %6580 = inttoptr i64 %6579 to i64*
  store i64 %6574, i64* %6580
  store i64 %6579, i64* %6577, align 8
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6572, i64* %6581, align 8
  store %struct.Memory* %loadMem1_4643d5, %struct.Memory** %MEMORY
  %loadMem2_4643d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4643d5 = load i64, i64* %3
  %call2_4643d5 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64 %loadPC_4643d5, %struct.Memory* %loadMem2_4643d5)
  store %struct.Memory* %call2_4643d5, %struct.Memory** %MEMORY
  br label %block_.L_4643da

block_.L_4643da:                                  ; preds = %block_4643bd, %block_.L_4643ae
  %loadMem_4643da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 33
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6584 to i64*
  %6585 = load i64, i64* %PC.i17
  %6586 = add i64 %6585, 5
  %6587 = load i64, i64* %PC.i17
  %6588 = add i64 %6587, 5
  store i64 %6588, i64* %PC.i17
  %6589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6586, i64* %6589, align 8
  store %struct.Memory* %loadMem_4643da, %struct.Memory** %MEMORY
  br label %block_.L_4643df

block_.L_4643df:                                  ; preds = %block_.L_4643da, %block_.L_4643a9
  %loadMem_4643df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 33
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6592 to i64*
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 1
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %6595 to i64*
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6597 = getelementptr inbounds %struct.GPR, %struct.GPR* %6596, i32 0, i32 15
  %6598 = getelementptr inbounds %struct.Reg, %struct.Reg* %6597, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %6598 to i64*
  %6599 = load i64, i64* %RBP.i16
  %6600 = sub i64 %6599, 496
  %6601 = load i64, i64* %PC.i14
  %6602 = add i64 %6601, 6
  store i64 %6602, i64* %PC.i14
  %6603 = inttoptr i64 %6600 to i32*
  %6604 = load i32, i32* %6603
  %6605 = zext i32 %6604 to i64
  store i64 %6605, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_4643df, %struct.Memory** %MEMORY
  %loadMem_4643e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 33
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 1
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6611 to i32*
  %6612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6613 = getelementptr inbounds %struct.GPR, %struct.GPR* %6612, i32 0, i32 15
  %6614 = getelementptr inbounds %struct.Reg, %struct.Reg* %6613, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %6614 to i64*
  %6615 = load i64, i64* %RBP.i13
  %6616 = sub i64 %6615, 44
  %6617 = load i32, i32* %EAX.i
  %6618 = zext i32 %6617 to i64
  %6619 = load i64, i64* %PC.i12
  %6620 = add i64 %6619, 3
  store i64 %6620, i64* %PC.i12
  %6621 = inttoptr i64 %6616 to i32*
  store i32 %6617, i32* %6621
  store %struct.Memory* %loadMem_4643e5, %struct.Memory** %MEMORY
  br label %block_.L_4643e8

block_.L_4643e8:                                  ; preds = %block_.L_4643df, %block_.L_4642d7, %block_.L_4640d6
  %loadMem_4643e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 33
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %6624 to i64*
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6626 = getelementptr inbounds %struct.GPR, %struct.GPR* %6625, i32 0, i32 1
  %6627 = getelementptr inbounds %struct.Reg, %struct.Reg* %6626, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6627 to i64*
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6629 = getelementptr inbounds %struct.GPR, %struct.GPR* %6628, i32 0, i32 15
  %6630 = getelementptr inbounds %struct.Reg, %struct.Reg* %6629, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6630 to i64*
  %6631 = load i64, i64* %RBP.i11
  %6632 = sub i64 %6631, 44
  %6633 = load i64, i64* %PC.i10
  %6634 = add i64 %6633, 3
  store i64 %6634, i64* %PC.i10
  %6635 = inttoptr i64 %6632 to i32*
  %6636 = load i32, i32* %6635
  %6637 = zext i32 %6636 to i64
  store i64 %6637, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4643e8, %struct.Memory** %MEMORY
  %loadMem_4643eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6639 = getelementptr inbounds %struct.GPR, %struct.GPR* %6638, i32 0, i32 33
  %6640 = getelementptr inbounds %struct.Reg, %struct.Reg* %6639, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6640 to i64*
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 13
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6643 to i64*
  %6644 = load i64, i64* %RSP.i
  %6645 = load i64, i64* %PC.i9
  %6646 = add i64 %6645, 7
  store i64 %6646, i64* %PC.i9
  %6647 = add i64 696, %6644
  store i64 %6647, i64* %RSP.i, align 8
  %6648 = icmp ult i64 %6647, %6644
  %6649 = icmp ult i64 %6647, 696
  %6650 = or i1 %6648, %6649
  %6651 = zext i1 %6650 to i8
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6651, i8* %6652, align 1
  %6653 = trunc i64 %6647 to i32
  %6654 = and i32 %6653, 255
  %6655 = call i32 @llvm.ctpop.i32(i32 %6654)
  %6656 = trunc i32 %6655 to i8
  %6657 = and i8 %6656, 1
  %6658 = xor i8 %6657, 1
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6658, i8* %6659, align 1
  %6660 = xor i64 696, %6644
  %6661 = xor i64 %6660, %6647
  %6662 = lshr i64 %6661, 4
  %6663 = trunc i64 %6662 to i8
  %6664 = and i8 %6663, 1
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6664, i8* %6665, align 1
  %6666 = icmp eq i64 %6647, 0
  %6667 = zext i1 %6666 to i8
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6667, i8* %6668, align 1
  %6669 = lshr i64 %6647, 63
  %6670 = trunc i64 %6669 to i8
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6670, i8* %6671, align 1
  %6672 = lshr i64 %6644, 63
  %6673 = xor i64 %6669, %6672
  %6674 = add i64 %6673, %6669
  %6675 = icmp eq i64 %6674, 2
  %6676 = zext i1 %6675 to i8
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6676, i8* %6677, align 1
  store %struct.Memory* %loadMem_4643eb, %struct.Memory** %MEMORY
  %loadMem_4643f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6679 = getelementptr inbounds %struct.GPR, %struct.GPR* %6678, i32 0, i32 33
  %6680 = getelementptr inbounds %struct.Reg, %struct.Reg* %6679, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6680 to i64*
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 3
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %6683 to i64*
  %6684 = load i64, i64* %PC.i8
  %6685 = add i64 %6684, 1
  store i64 %6685, i64* %PC.i8
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6687 = load i64, i64* %6686, align 8
  %6688 = add i64 %6687, 8
  %6689 = inttoptr i64 %6687 to i64*
  %6690 = load i64, i64* %6689
  store i64 %6690, i64* %RBX.i, align 8
  store i64 %6688, i64* %6686, align 8
  store %struct.Memory* %loadMem_4643f2, %struct.Memory** %MEMORY
  %loadMem_4643f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 33
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6693 to i64*
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 25
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %R12.i = bitcast %union.anon* %6696 to i64*
  %6697 = load i64, i64* %PC.i7
  %6698 = add i64 %6697, 2
  store i64 %6698, i64* %PC.i7
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6700 = load i64, i64* %6699, align 8
  %6701 = add i64 %6700, 8
  %6702 = inttoptr i64 %6700 to i64*
  %6703 = load i64, i64* %6702
  store i64 %6703, i64* %R12.i, align 8
  store i64 %6701, i64* %6699, align 8
  store %struct.Memory* %loadMem_4643f3, %struct.Memory** %MEMORY
  %loadMem_4643f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 33
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6706 to i64*
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6708 = getelementptr inbounds %struct.GPR, %struct.GPR* %6707, i32 0, i32 27
  %6709 = getelementptr inbounds %struct.Reg, %struct.Reg* %6708, i32 0, i32 0
  %R13.i = bitcast %union.anon* %6709 to i64*
  %6710 = load i64, i64* %PC.i6
  %6711 = add i64 %6710, 2
  store i64 %6711, i64* %PC.i6
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6713 = load i64, i64* %6712, align 8
  %6714 = add i64 %6713, 8
  %6715 = inttoptr i64 %6713 to i64*
  %6716 = load i64, i64* %6715
  store i64 %6716, i64* %R13.i, align 8
  store i64 %6714, i64* %6712, align 8
  store %struct.Memory* %loadMem_4643f5, %struct.Memory** %MEMORY
  %loadMem_4643f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6718 = getelementptr inbounds %struct.GPR, %struct.GPR* %6717, i32 0, i32 33
  %6719 = getelementptr inbounds %struct.Reg, %struct.Reg* %6718, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6719 to i64*
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6721 = getelementptr inbounds %struct.GPR, %struct.GPR* %6720, i32 0, i32 29
  %6722 = getelementptr inbounds %struct.Reg, %struct.Reg* %6721, i32 0, i32 0
  %R14.i = bitcast %union.anon* %6722 to i64*
  %6723 = load i64, i64* %PC.i5
  %6724 = add i64 %6723, 2
  store i64 %6724, i64* %PC.i5
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6726 = load i64, i64* %6725, align 8
  %6727 = add i64 %6726, 8
  %6728 = inttoptr i64 %6726 to i64*
  %6729 = load i64, i64* %6728
  store i64 %6729, i64* %R14.i, align 8
  store i64 %6727, i64* %6725, align 8
  store %struct.Memory* %loadMem_4643f7, %struct.Memory** %MEMORY
  %loadMem_4643f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 33
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6732 to i64*
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6734 = getelementptr inbounds %struct.GPR, %struct.GPR* %6733, i32 0, i32 31
  %6735 = getelementptr inbounds %struct.Reg, %struct.Reg* %6734, i32 0, i32 0
  %R15.i = bitcast %union.anon* %6735 to i64*
  %6736 = load i64, i64* %PC.i4
  %6737 = add i64 %6736, 2
  store i64 %6737, i64* %PC.i4
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6739 = load i64, i64* %6738, align 8
  %6740 = add i64 %6739, 8
  %6741 = inttoptr i64 %6739 to i64*
  %6742 = load i64, i64* %6741
  store i64 %6742, i64* %R15.i, align 8
  store i64 %6740, i64* %6738, align 8
  store %struct.Memory* %loadMem_4643f9, %struct.Memory** %MEMORY
  %loadMem_4643fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6744 = getelementptr inbounds %struct.GPR, %struct.GPR* %6743, i32 0, i32 33
  %6745 = getelementptr inbounds %struct.Reg, %struct.Reg* %6744, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6745 to i64*
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6747 = getelementptr inbounds %struct.GPR, %struct.GPR* %6746, i32 0, i32 15
  %6748 = getelementptr inbounds %struct.Reg, %struct.Reg* %6747, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6748 to i64*
  %6749 = load i64, i64* %PC.i2
  %6750 = add i64 %6749, 1
  store i64 %6750, i64* %PC.i2
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6752 = load i64, i64* %6751, align 8
  %6753 = add i64 %6752, 8
  %6754 = inttoptr i64 %6752 to i64*
  %6755 = load i64, i64* %6754
  store i64 %6755, i64* %RBP.i3, align 8
  store i64 %6753, i64* %6751, align 8
  store %struct.Memory* %loadMem_4643fb, %struct.Memory** %MEMORY
  %loadMem_4643fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6757 = getelementptr inbounds %struct.GPR, %struct.GPR* %6756, i32 0, i32 33
  %6758 = getelementptr inbounds %struct.Reg, %struct.Reg* %6757, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6758 to i64*
  %6759 = load i64, i64* %PC.i1
  %6760 = add i64 %6759, 1
  store i64 %6760, i64* %PC.i1
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6763 = load i64, i64* %6762, align 8
  %6764 = inttoptr i64 %6763 to i64*
  %6765 = load i64, i64* %6764
  store i64 %6765, i64* %6761, align 8
  %6766 = add i64 %6763, 8
  store i64 %6766, i64* %6762, align 8
  store %struct.Memory* %loadMem_4643fc, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4643fc
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

define %struct.Memory* @routine_subq__0x2b8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 696
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 696
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
  %23 = xor i64 696, %9
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

define %struct.Memory* @routine_movq__0x57a731___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a731_type* @G__0x57a731 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 3, i64* %9, align 8
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 68
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %13, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = icmp ult i32 %13, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %13
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %13, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 492
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x200__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
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

define %struct.Memory* @routine_movl__ecx__MINUS0x204__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 516
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

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_463d27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_463d2c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_463d9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x435___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1077, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a4d2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x23c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 572
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

define %struct.Memory* @routine_movq__rdx__MINUS0x248__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 584
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

define %struct.Memory* @routine_movl_MINUS0x23c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 572
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

define %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 588
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

define %struct.Memory* @routine_movq_MINUS0x248__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x250__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 592
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

define %struct.Memory* @routine_movl_MINUS0x24c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 588
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x250__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 592
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

define %struct.Memory* @routine_jne_.L_463db3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_463e24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x436___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1078, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fd7d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fd7d_type* @G__0x57fd7d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x254__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x260__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 608
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x254__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x264__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x260__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x268__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 616
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x264__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 612
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x268__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 616
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 500
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x1f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 500
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

define %struct.Memory* @routine_jne_.L_463e4d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_463ebe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x43a___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1082, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fd90___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fd90_type* @G__0x57fd90 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x26c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 620
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x278__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 632
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x26c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x27c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 636
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x278__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x280__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 640
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x27c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x280__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 640
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1e8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 488
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

define %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 488
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 288
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_leaq_MINUS0x1e8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.set_up_snapback_moves(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x200__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1f8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 88
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

define %struct.Memory* @routine_jge_.L_464179(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x1f8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1e8__rbp__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -488
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

define %struct.Memory* @routine_movl__r9d__MINUS0x284__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 644
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x288__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 648
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x28c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 652
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x290__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 656
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x294__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 660
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x295__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 661
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_463fa0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 496
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

define %struct.Memory* @routine_movb__al__MINUS0x295__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 661
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x295__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 661
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fd9f___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fd9f_type* @G__0x57fd9f to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x208__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x20c__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 524
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x210__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x288__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 648
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x2a0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 672
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

define %struct.Memory* @routine_movl_MINUS0x28c__rbp____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 652
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x2a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
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

define %struct.Memory* @routine_movl_MINUS0x290__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 656
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x2b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 688
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

define %struct.Memory* @routine_movl_MINUS0x294__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x2b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 692
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

define %struct.Memory* @routine_movl_MINUS0x284__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 644
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x2b0__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 688
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

define %struct.Memory* @routine_movq_MINUS0x2a8__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 680
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

define %struct.Memory* @routine_movq_MINUS0x2a0__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 672
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

define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____r13d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 692
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

define %struct.Memory* @routine_je_.L_464160(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x210__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 528
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

define %struct.Memory* @routine_jne_.L_464122(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x208__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 520
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 524
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

define %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 532
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x214__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 532
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

define %struct.Memory* @routine_jne_.L_4640e2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4640a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4640d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_MINUS0x200__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x204__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 516
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

define %struct.Memory* @routine_jmpq_.L_4643e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_MINUS0x214__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 532
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

define %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 496
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

define %struct.Memory* @routine_jle_.L_464113(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__ecx__MINUS0x1ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_464118(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46411d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46415b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_464156(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x1f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_464160(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_464165(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x1f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_463f1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_464349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.countstones(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_464349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_ko(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_464349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x6___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.approxlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x1f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 500
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jg_.L_464344(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x1f4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 500
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

define %struct.Memory* @routine_jge_.L_46433f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x1f8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x230__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -560
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x234__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 564
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_464234(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x234__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_464326(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57fda9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fda9_type* @G__0x57fda9 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_464326(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x238__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 568
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x238__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 568
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

define %struct.Memory* @routine_jne_.L_4642e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4642a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x234__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4642d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x57fdb3___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57fdb3_type* @G__0x57fdb3 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x234__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x238__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 568
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

define %struct.Memory* @routine_jle_.L_464317(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46431c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_464321(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_464326(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46432b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4641ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_464344(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_464349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46434e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4643ae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_464372(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4643a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1f0__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4643df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_4643da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x1f0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 496
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

define %struct.Memory* @routine_addq__0x2b8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 696, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 696
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
  %25 = xor i64 696, %9
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
