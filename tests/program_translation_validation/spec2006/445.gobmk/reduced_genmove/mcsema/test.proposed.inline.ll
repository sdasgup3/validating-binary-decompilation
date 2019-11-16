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
%G_0x7ae448_type = type <{ [1 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xab0f10_type = type <{ [1 x i8] }>
%G_0xab0f14_type = type <{ [16 x i8] }>
%G_0xab0f18_type = type <{ [4 x i8] }>
%G_0xab0f1c_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G_0xdb8d4__rip__type = type <{ [4 x i8] }>
%G__0x579da7_type = type <{ [8 x i8] }>
%G__0x579daa_type = type <{ [8 x i8] }>
%G__0x579f16_type = type <{ [8 x i8] }>
%G__0x57a0c7_type = type <{ [8 x i8] }>
%G__0x57a0df_type = type <{ [8 x i8] }>
%G__0x57a100_type = type <{ [8 x i8] }>
%G__0x57a10c_type = type <{ [8 x i8] }>
%G__0x57a135_type = type <{ [8 x i8] }>
%G__0x57a13e_type = type <{ [8 x i8] }>
%G__0xab0f18_type = type <{ [8 x i8] }>
%G__0xab0f1c_type = type <{ [8 x i8] }>
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
@G_0x7ae448 = global %G_0x7ae448_type zeroinitializer
@G_0x99c0a0 = global %G_0x99c0a0_type zeroinitializer
@G_0xab0f10 = global %G_0xab0f10_type zeroinitializer
@G_0xab0f14 = global %G_0xab0f14_type zeroinitializer
@G_0xab0f18 = global %G_0xab0f18_type zeroinitializer
@G_0xab0f1c = global %G_0xab0f1c_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G_0xdb8d4__rip_ = global %G_0xdb8d4__rip__type zeroinitializer
@G__0x579da7 = global %G__0x579da7_type zeroinitializer
@G__0x579daa = global %G__0x579daa_type zeroinitializer
@G__0x579f16 = global %G__0x579f16_type zeroinitializer
@G__0x57a0c7 = global %G__0x57a0c7_type zeroinitializer
@G__0x57a0df = global %G__0x57a0df_type zeroinitializer
@G__0x57a100 = global %G__0x57a100_type zeroinitializer
@G__0x57a10c = global %G__0x57a10c_type zeroinitializer
@G__0x57a135 = global %G__0x57a135_type zeroinitializer
@G__0x57a13e = global %G__0x57a13e_type zeroinitializer
@G__0xab0f18 = global %G__0xab0f18_type zeroinitializer
@G__0xab0f1c = global %G__0xab0f1c_type zeroinitializer

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

declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_48a790.worm_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_418700.combinations(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @reduced_genmove(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_407820 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_407820, %struct.Memory** %MEMORY
  %loadMem_407821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i43 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i43
  %27 = load i64, i64* %PC.i42
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i42
  store i64 %26, i64* %RBP.i44, align 8
  store %struct.Memory* %loadMem_407821, %struct.Memory** %MEMORY
  %loadMem_407824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i197 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i197
  %36 = load i64, i64* %PC.i196
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i196
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i197, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_407824, %struct.Memory** %MEMORY
  %loadMem_407828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i253 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM0.i253 to i8*
  %73 = load i64, i64* %PC.i252
  %74 = add i64 %73, ptrtoint (%G_0xdb8d4__rip__type* @G_0xdb8d4__rip_ to i64)
  %75 = load i64, i64* %PC.i252
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i252
  %77 = inttoptr i64 %74 to float*
  %78 = load float, float* %77
  %79 = bitcast i8* %72 to float*
  store float %78, float* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 4
  %81 = bitcast i8* %80 to float*
  store float 0.000000e+00, float* %81, align 1
  %82 = getelementptr inbounds i8, i8* %72, i64 8
  %83 = bitcast i8* %82 to float*
  store float 0.000000e+00, float* %83, align 1
  %84 = getelementptr inbounds i8, i8* %72, i64 12
  %85 = bitcast i8* %84 to float*
  store float 0.000000e+00, float* %85, align 1
  store %struct.Memory* %loadMem_407828, %struct.Memory** %MEMORY
  %loadMem_407830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RDI.i260 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %RBP.i261
  %96 = sub i64 %95, 8
  %97 = load i64, i64* %RDI.i260
  %98 = load i64, i64* %PC.i259
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC.i259
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100
  store %struct.Memory* %loadMem_407830, %struct.Memory** %MEMORY
  %loadMem_407834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %106 to i32*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i302
  %111 = sub i64 %110, 12
  %112 = load i32, i32* %ESI.i
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %PC.i301
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC.i301
  %116 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %116
  store %struct.Memory* %loadMem_407834, %struct.Memory** %MEMORY
  %loadMem_407837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 11
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RDI.i310 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %RBP.i311
  %127 = sub i64 %126, 8
  %128 = load i64, i64* %PC.i309
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC.i309
  %130 = inttoptr i64 %127 to i64*
  %131 = load i64, i64* %130
  store i64 %131, i64* %RDI.i310, align 8
  store %struct.Memory* %loadMem_407837, %struct.Memory** %MEMORY
  %loadMem_40783b = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 11
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RDI.i366 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RDI.i366
  %139 = load i64, i64* %PC.i365
  %140 = add i64 %139, 6
  store i64 %140, i64* %PC.i365
  %141 = inttoptr i64 %138 to i32*
  store i32 0, i32* %141
  store %struct.Memory* %loadMem_40783b, %struct.Memory** %MEMORY
  %loadMem_407841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %148, i64 0, i64 0
  %XMM0.i376 = bitcast %union.VectorReg* %149 to %union.vec128_t*
  %150 = load i64, i64* %RBP.i375
  %151 = sub i64 %150, 16
  %152 = bitcast %union.vec128_t* %XMM0.i376 to i8*
  %153 = load i64, i64* %PC.i374
  %154 = add i64 %153, 5
  store i64 %154, i64* %PC.i374
  %155 = bitcast i8* %152 to <2 x float>*
  %156 = load <2 x float>, <2 x float>* %155, align 1
  %157 = extractelement <2 x float> %156, i32 0
  %158 = inttoptr i64 %151 to float*
  store float %157, float* %158
  store %struct.Memory* %loadMem_407841, %struct.Memory** %MEMORY
  %loadMem1_407846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %PC.i390
  %163 = add i64 %162, 123786
  %164 = load i64, i64* %PC.i390
  %165 = add i64 %164, 5
  %166 = load i64, i64* %PC.i390
  %167 = add i64 %166, 5
  store i64 %167, i64* %PC.i390
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %165, i64* %171
  store i64 %170, i64* %168, align 8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %163, i64* %172, align 8
  store %struct.Memory* %loadMem1_407846, %struct.Memory** %MEMORY
  %loadMem2_407846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407846 = load i64, i64* %3
  %call2_407846 = call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* %0, i64 %loadPC_407846, %struct.Memory* %loadMem2_407846)
  store %struct.Memory* %call2_407846, %struct.Memory** %MEMORY
  %loadMem_40784b = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RSI.i412 = bitcast %union.anon* %178 to i64*
  %179 = load i64, i64* %PC.i411
  %180 = add i64 %179, 5
  store i64 %180, i64* %PC.i411
  store i64 99, i64* %RSI.i412, align 8
  store %struct.Memory* %loadMem_40784b, %struct.Memory** %MEMORY
  %loadMem_407850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 11
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %RDI.i409 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 15
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %189 to i64*
  %190 = load i64, i64* %RBP.i410
  %191 = sub i64 %190, 12
  %192 = load i64, i64* %PC.i408
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i408
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RDI.i409, align 8
  store %struct.Memory* %loadMem_407850, %struct.Memory** %MEMORY
  %loadMem1_407853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %PC.i407
  %201 = add i64 %200, 123917
  %202 = load i64, i64* %PC.i407
  %203 = add i64 %202, 5
  %204 = load i64, i64* %PC.i407
  %205 = add i64 %204, 5
  store i64 %205, i64* %PC.i407
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, -8
  %209 = inttoptr i64 %208 to i64*
  store i64 %203, i64* %209
  store i64 %208, i64* %206, align 8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %201, i64* %210, align 8
  store %struct.Memory* %loadMem1_407853, %struct.Memory** %MEMORY
  %loadMem2_407853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407853 = load i64, i64* %3
  %call2_407853 = call %struct.Memory* @sub_425c60.examine_position(%struct.State* %0, i64 %loadPC_407853, %struct.Memory* %loadMem2_407853)
  store %struct.Memory* %call2_407853, %struct.Memory** %MEMORY
  %loadMem_407858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %PC.i406
  %215 = add i64 %214, 8
  store i64 %215, i64* %PC.i406
  %216 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*)
  %217 = sub i32 %216, 8
  %218 = icmp ult i32 %216, 8
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %219, i8* %220, align 1
  %221 = and i32 %217, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1
  %227 = xor i32 %216, 8
  %228 = xor i32 %227, %217
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %231, i8* %232, align 1
  %233 = icmp eq i32 %217, 0
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %234, i8* %235, align 1
  %236 = lshr i32 %217, 31
  %237 = trunc i32 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %237, i8* %238, align 1
  %239 = lshr i32 %216, 31
  %240 = xor i32 %236, %239
  %241 = add i32 %240, %239
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %243, i8* %244, align 1
  store %struct.Memory* %loadMem_407858, %struct.Memory** %MEMORY
  %loadMem_407860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %PC.i405
  %249 = add i64 %248, 568
  %250 = load i64, i64* %PC.i405
  %251 = add i64 %250, 6
  %252 = load i64, i64* %PC.i405
  %253 = add i64 %252, 6
  store i64 %253, i64* %PC.i405
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %255 = load i8, i8* %254, align 1
  %256 = icmp ne i8 %255, 0
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %258 = load i8, i8* %257, align 1
  %259 = icmp ne i8 %258, 0
  %260 = xor i1 %256, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %BRANCH_TAKEN, align 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %263 = select i1 %260, i64 %249, i64 %251
  store i64 %263, i64* %262, align 8
  store %struct.Memory* %loadMem_407860, %struct.Memory** %MEMORY
  %loadBr_407860 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407860 = icmp eq i8 %loadBr_407860, 1
  br i1 %cmpBr_407860, label %block_.L_407a98, label %block_407866

block_407866:                                     ; preds = %entry
  %loadMem_407866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 11
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %RDI.i404 = bitcast %union.anon* %269 to i64*
  %270 = load i64, i64* %PC.i403
  %271 = add i64 %270, 10
  store i64 %271, i64* %PC.i403
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI.i404, align 8
  store %struct.Memory* %loadMem_407866, %struct.Memory** %MEMORY
  %loadMem_407870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 9
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RSI.i402 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %PC.i401
  %279 = add i64 %278, 10
  store i64 %279, i64* %PC.i401
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI.i402, align 8
  store %struct.Memory* %loadMem_407870, %struct.Memory** %MEMORY
  %loadMem1_40787a = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %PC.i400
  %284 = add i64 %283, 419910
  %285 = load i64, i64* %PC.i400
  %286 = add i64 %285, 5
  %287 = load i64, i64* %PC.i400
  %288 = add i64 %287, 5
  store i64 %288, i64* %PC.i400
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add i64 %290, -8
  %292 = inttoptr i64 %291 to i64*
  store i64 %286, i64* %292
  store i64 %291, i64* %289, align 8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %284, i64* %293, align 8
  store %struct.Memory* %loadMem1_40787a, %struct.Memory** %MEMORY
  %loadMem2_40787a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40787a = load i64, i64* %3
  %call2_40787a = call %struct.Memory* @sub_46e0c0.estimate_score(%struct.State* %0, i64 %loadPC_40787a, %struct.Memory* %loadMem2_40787a)
  store %struct.Memory* %call2_40787a, %struct.Memory** %MEMORY
  %loadMem_40787f = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %296 to i64*
  %297 = load i64, i64* %PC.i399
  %298 = add i64 %297, 8
  store i64 %298, i64* %PC.i399
  %299 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %300, align 1
  %301 = and i32 %299, 255
  %302 = call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %305, i8* %306, align 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %307, align 1
  %308 = icmp eq i32 %299, 0
  %309 = zext i1 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %309, i8* %310, align 1
  %311 = lshr i32 %299, 31
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %312, i8* %313, align 1
  %314 = lshr i32 %299, 31
  %315 = xor i32 %311, %314
  %316 = add i32 %315, %314
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %319, align 1
  store %struct.Memory* %loadMem_40787f, %struct.Memory** %MEMORY
  %loadMem_407887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 15
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %326, i64 0, i64 0
  %XMM0.i398 = bitcast %union.VectorReg* %327 to %union.vec128_t*
  %328 = load i64, i64* %RBP.i397
  %329 = sub i64 %328, 24
  %330 = bitcast %union.vec128_t* %XMM0.i398 to i8*
  %331 = load i64, i64* %PC.i396
  %332 = add i64 %331, 5
  store i64 %332, i64* %PC.i396
  %333 = bitcast i8* %330 to <2 x float>*
  %334 = load <2 x float>, <2 x float>* %333, align 1
  %335 = extractelement <2 x float> %334, i32 0
  %336 = inttoptr i64 %329 to float*
  store float %335, float* %336
  store %struct.Memory* %loadMem_407887, %struct.Memory** %MEMORY
  %loadMem_40788c = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %PC.i395
  %341 = add i64 %340, 20
  %342 = load i64, i64* %PC.i395
  %343 = add i64 %342, 6
  %344 = load i64, i64* %PC.i395
  %345 = add i64 %344, 6
  store i64 %345, i64* %PC.i395
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %347 = load i8, i8* %346, align 1
  %348 = icmp eq i8 %347, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %BRANCH_TAKEN, align 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %351 = select i1 %348, i64 %341, i64 %343
  store i64 %351, i64* %350, align 8
  store %struct.Memory* %loadMem_40788c, %struct.Memory** %MEMORY
  %loadBr_40788c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40788c = icmp eq i8 %loadBr_40788c, 1
  br i1 %cmpBr_40788c, label %block_.L_4078a0, label %block_407892

block_407892:                                     ; preds = %block_407866
  %loadMem_407892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %PC.i394
  %356 = add i64 %355, 8
  store i64 %356, i64* %PC.i394
  %357 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*)
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %358, align 1
  %359 = and i32 %357, 255
  %360 = call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %363, i8* %364, align 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %365, align 1
  %366 = icmp eq i32 %357, 0
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %367, i8* %368, align 1
  %369 = lshr i32 %357, 31
  %370 = trunc i32 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %370, i8* %371, align 1
  %372 = lshr i32 %357, 31
  %373 = xor i32 %369, %372
  %374 = add i32 %373, %372
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %376, i8* %377, align 1
  store %struct.Memory* %loadMem_407892, %struct.Memory** %MEMORY
  %loadMem_40789a = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %PC.i393
  %382 = add i64 %381, 454
  %383 = load i64, i64* %PC.i393
  %384 = add i64 %383, 6
  %385 = load i64, i64* %PC.i393
  %386 = add i64 %385, 6
  store i64 %386, i64* %PC.i393
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %388 = load i8, i8* %387, align 1
  store i8 %388, i8* %BRANCH_TAKEN, align 1
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %390 = icmp ne i8 %388, 0
  %391 = select i1 %390, i64 %382, i64 %384
  store i64 %391, i64* %389, align 8
  store %struct.Memory* %loadMem_40789a, %struct.Memory** %MEMORY
  %loadBr_40789a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40789a = icmp eq i8 %loadBr_40789a, 1
  br i1 %cmpBr_40789a, label %block_.L_407a60, label %block_.L_4078a0

block_.L_4078a0:                                  ; preds = %block_407892, %block_407866
  %loadMem_4078a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %396 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %395, i64 0, i64 0
  %YMM0.i392 = bitcast %union.VectorReg* %396 to %"class.std::bitset"*
  %397 = bitcast %"class.std::bitset"* %YMM0.i392 to i8*
  %398 = load i64, i64* %PC.i391
  %399 = add i64 %398, 9
  store i64 %399, i64* %PC.i391
  %400 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %401 = bitcast i8* %397 to float*
  store float %400, float* %401, align 1
  %402 = getelementptr inbounds i8, i8* %397, i64 4
  %403 = bitcast i8* %402 to float*
  store float 0.000000e+00, float* %403, align 1
  %404 = getelementptr inbounds i8, i8* %397, i64 8
  %405 = bitcast i8* %404 to float*
  store float 0.000000e+00, float* %405, align 1
  %406 = getelementptr inbounds i8, i8* %397, i64 12
  %407 = bitcast i8* %406 to float*
  store float 0.000000e+00, float* %407, align 1
  store %struct.Memory* %loadMem_4078a0, %struct.Memory** %MEMORY
  %loadMem_4078a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %411, i64 0, i64 0
  %XMM0.i389 = bitcast %union.VectorReg* %412 to %union.vec128_t*
  %413 = bitcast %union.vec128_t* %XMM0.i389 to i8*
  %414 = load i64, i64* %PC.i388
  %415 = add i64 %414, 8
  store i64 %415, i64* %PC.i388
  %416 = bitcast i8* %413 to <2 x float>*
  %417 = load <2 x float>, <2 x float>* %416, align 1
  %418 = extractelement <2 x float> %417, i32 0
  %419 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %420 = fcmp uno float %418, %419
  br i1 %420, label %421, label %433

; <label>:421:                                    ; preds = %block_.L_4078a0
  %422 = fadd float %418, %419
  %423 = bitcast float %422 to i32
  %424 = and i32 %423, 2143289344
  %425 = icmp eq i32 %424, 2139095040
  %426 = and i32 %423, 4194303
  %427 = icmp ne i32 %426, 0
  %428 = and i1 %425, %427
  br i1 %428, label %429, label %439

; <label>:429:                                    ; preds = %421
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %431, %struct.Memory* %loadMem_4078a9)
  br label %routine_ucomiss_0xab0f1c___xmm0.exit

; <label>:433:                                    ; preds = %block_.L_4078a0
  %434 = fcmp ogt float %418, %419
  br i1 %434, label %439, label %435

; <label>:435:                                    ; preds = %433
  %436 = fcmp olt float %418, %419
  br i1 %436, label %439, label %437

; <label>:437:                                    ; preds = %435
  %438 = fcmp oeq float %418, %419
  br i1 %438, label %439, label %446

; <label>:439:                                    ; preds = %437, %435, %433, %421
  %440 = phi i8 [ 0, %433 ], [ 0, %435 ], [ 1, %437 ], [ 1, %421 ]
  %441 = phi i8 [ 0, %433 ], [ 0, %435 ], [ 0, %437 ], [ 1, %421 ]
  %442 = phi i8 [ 0, %433 ], [ 1, %435 ], [ 0, %437 ], [ 1, %421 ]
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %440, i8* %443, align 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %441, i8* %444, align 1
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %442, i8* %445, align 1
  br label %446

; <label>:446:                                    ; preds = %439, %437
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %447, align 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %448, align 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %449, align 1
  br label %routine_ucomiss_0xab0f1c___xmm0.exit

routine_ucomiss_0xab0f1c___xmm0.exit:             ; preds = %429, %446
  %450 = phi %struct.Memory* [ %432, %429 ], [ %loadMem_4078a9, %446 ]
  store %struct.Memory* %450, %struct.Memory** %MEMORY
  %loadMem_4078b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %PC.i387
  %455 = add i64 %454, 153
  %456 = load i64, i64* %PC.i387
  %457 = add i64 %456, 6
  %458 = load i64, i64* %PC.i387
  %459 = add i64 %458, 6
  store i64 %459, i64* %PC.i387
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %461 = load i8, i8* %460, align 1
  %462 = icmp eq i8 %461, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %BRANCH_TAKEN, align 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %465 = select i1 %462, i64 %455, i64 %457
  store i64 %465, i64* %464, align 8
  store %struct.Memory* %loadMem_4078b1, %struct.Memory** %MEMORY
  %loadBr_4078b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4078b1 = icmp eq i8 %loadBr_4078b1, 1
  br i1 %cmpBr_4078b1, label %block_.L_40794a, label %block_4078b7

block_4078b7:                                     ; preds = %routine_ucomiss_0xab0f1c___xmm0.exit
  %loadMem_4078b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %468 to i64*
  %469 = load i64, i64* %PC.i386
  %470 = add i64 %469, 147
  %471 = load i64, i64* %PC.i386
  %472 = add i64 %471, 6
  %473 = load i64, i64* %PC.i386
  %474 = add i64 %473, 6
  store i64 %474, i64* %PC.i386
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %476 = load i8, i8* %475, align 1
  store i8 %476, i8* %BRANCH_TAKEN, align 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %478 = icmp ne i8 %476, 0
  %479 = select i1 %478, i64 %470, i64 %472
  store i64 %479, i64* %477, align 8
  store %struct.Memory* %loadMem_4078b7, %struct.Memory** %MEMORY
  %loadBr_4078b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4078b7 = icmp eq i8 %loadBr_4078b7, 1
  br i1 %cmpBr_4078b7, label %block_.L_40794a, label %block_4078bd

block_4078bd:                                     ; preds = %block_4078b7
  %loadMem_4078bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %483, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %484 to %"class.std::bitset"*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %486 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %485, i64 0, i64 0
  %XMM0.i385 = bitcast %union.VectorReg* %486 to %union.vec128_t*
  %487 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %488 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %489 = bitcast %union.vec128_t* %XMM0.i385 to i8*
  %490 = load i64, i64* %PC.i383
  %491 = add i64 %490, 3
  store i64 %491, i64* %PC.i383
  %492 = bitcast i8* %488 to i64*
  %493 = load i64, i64* %492, align 1
  %494 = getelementptr inbounds i8, i8* %488, i64 8
  %495 = bitcast i8* %494 to i64*
  %496 = load i64, i64* %495, align 1
  %497 = bitcast i8* %489 to i64*
  %498 = load i64, i64* %497, align 1
  %499 = getelementptr inbounds i8, i8* %489, i64 8
  %500 = bitcast i8* %499 to i64*
  %501 = load i64, i64* %500, align 1
  %502 = xor i64 %498, %493
  %503 = xor i64 %501, %496
  %504 = trunc i64 %502 to i32
  %505 = lshr i64 %502, 32
  %506 = trunc i64 %505 to i32
  %507 = bitcast i8* %487 to i32*
  store i32 %504, i32* %507, align 1
  %508 = getelementptr inbounds i8, i8* %487, i64 4
  %509 = bitcast i8* %508 to i32*
  store i32 %506, i32* %509, align 1
  %510 = trunc i64 %503 to i32
  %511 = getelementptr inbounds i8, i8* %487, i64 8
  %512 = bitcast i8* %511 to i32*
  store i32 %510, i32* %512, align 1
  %513 = lshr i64 %503, 32
  %514 = trunc i64 %513 to i32
  %515 = getelementptr inbounds i8, i8* %487, i64 12
  %516 = bitcast i8* %515 to i32*
  store i32 %514, i32* %516, align 1
  store %struct.Memory* %loadMem_4078bd, %struct.Memory** %MEMORY
  %loadMem_4078c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 33
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %PC.i381
  %524 = add i64 %523, 10
  store i64 %524, i64* %PC.i381
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i382, align 8
  store %struct.Memory* %loadMem_4078c0, %struct.Memory** %MEMORY
  %loadMem_4078ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 5
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %530 to i64*
  %531 = load i64, i64* %PC.i379
  %532 = add i64 %531, 10
  store i64 %532, i64* %PC.i379
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_4078ca, %struct.Memory** %MEMORY
  %loadMem_4078d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %536, i64 0, i64 1
  %YMM1.i378 = bitcast %union.VectorReg* %537 to %"class.std::bitset"*
  %538 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %539 = load i64, i64* %PC.i377
  %540 = add i64 %539, 9
  store i64 %540, i64* %PC.i377
  %541 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %542 = bitcast i8* %538 to float*
  store float %541, float* %542, align 1
  %543 = getelementptr inbounds i8, i8* %538, i64 4
  %544 = bitcast i8* %543 to float*
  store float 0.000000e+00, float* %544, align 1
  %545 = getelementptr inbounds i8, i8* %538, i64 8
  %546 = bitcast i8* %545 to float*
  store float 0.000000e+00, float* %546, align 1
  %547 = getelementptr inbounds i8, i8* %538, i64 12
  %548 = bitcast i8* %547 to float*
  store float 0.000000e+00, float* %548, align 1
  store %struct.Memory* %loadMem_4078d4, %struct.Memory** %MEMORY
  %loadMem_4078dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %553 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %552, i64 0, i64 0
  %XMM0.i371 = bitcast %union.VectorReg* %553 to %union.vec128_t*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %554, i64 0, i64 1
  %XMM1.i372 = bitcast %union.VectorReg* %555 to %union.vec128_t*
  %556 = bitcast %union.vec128_t* %XMM1.i372 to i8*
  %557 = bitcast %union.vec128_t* %XMM0.i371 to i8*
  %558 = load i64, i64* %PC.i370
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC.i370
  %560 = bitcast i8* %556 to <2 x float>*
  %561 = load <2 x float>, <2 x float>* %560, align 1
  %562 = extractelement <2 x float> %561, i32 0
  %563 = bitcast i8* %557 to <2 x float>*
  %564 = load <2 x float>, <2 x float>* %563, align 1
  %565 = extractelement <2 x float> %564, i32 0
  %566 = fcmp uno float %562, %565
  br i1 %566, label %567, label %579

; <label>:567:                                    ; preds = %block_4078bd
  %568 = fadd float %562, %565
  %569 = bitcast float %568 to i32
  %570 = and i32 %569, 2143289344
  %571 = icmp eq i32 %570, 2139095040
  %572 = and i32 %569, 4194303
  %573 = icmp ne i32 %572, 0
  %574 = and i1 %571, %573
  br i1 %574, label %575, label %585

; <label>:575:                                    ; preds = %567
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %577 = load i64, i64* %576, align 8
  %578 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %577, %struct.Memory* %loadMem_4078dd)
  br label %routine_ucomiss__xmm0___xmm1.exit373

; <label>:579:                                    ; preds = %block_4078bd
  %580 = fcmp ogt float %562, %565
  br i1 %580, label %585, label %581

; <label>:581:                                    ; preds = %579
  %582 = fcmp olt float %562, %565
  br i1 %582, label %585, label %583

; <label>:583:                                    ; preds = %581
  %584 = fcmp oeq float %562, %565
  br i1 %584, label %585, label %592

; <label>:585:                                    ; preds = %583, %581, %579, %567
  %586 = phi i8 [ 0, %579 ], [ 0, %581 ], [ 1, %583 ], [ 1, %567 ]
  %587 = phi i8 [ 0, %579 ], [ 0, %581 ], [ 0, %583 ], [ 1, %567 ]
  %588 = phi i8 [ 0, %579 ], [ 1, %581 ], [ 0, %583 ], [ 1, %567 ]
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %586, i8* %589, align 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %587, i8* %590, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %588, i8* %591, align 1
  br label %592

; <label>:592:                                    ; preds = %585, %583
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %593, align 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %594, align 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %595, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit373

routine_ucomiss__xmm0___xmm1.exit373:             ; preds = %575, %592
  %596 = phi %struct.Memory* [ %578, %575 ], [ %loadMem_4078dd, %592 ]
  store %struct.Memory* %596, %struct.Memory** %MEMORY
  %loadMem_4078e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 1
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 5
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RCX.i369
  %607 = load i64, i64* %PC.i367
  %608 = add i64 %607, 4
  store i64 %608, i64* %PC.i367
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %610 = load i8, i8* %609, align 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %612 = load i8, i8* %611, align 1
  %613 = or i8 %612, %610
  %614 = icmp eq i8 %613, 0
  %615 = load i64, i64* %RAX.i368, align 8
  %616 = select i1 %614, i64 %606, i64 %615
  store i64 %616, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_4078e0, %struct.Memory** %MEMORY
  %loadMem_4078e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %621 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %620, i64 0, i64 0
  %XMM0.i363 = bitcast %union.VectorReg* %621 to %union.vec128_t*
  %622 = bitcast %union.vec128_t* %XMM0.i363 to i8*
  %623 = load i64, i64* %PC.i362
  %624 = add i64 %623, 8
  store i64 %624, i64* %PC.i362
  %625 = bitcast i8* %622 to <2 x float>*
  %626 = load <2 x float>, <2 x float>* %625, align 1
  %627 = extractelement <2 x float> %626, i32 0
  %628 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %629 = fcmp uno float %627, %628
  br i1 %629, label %630, label %642

; <label>:630:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit373
  %631 = fadd float %627, %628
  %632 = bitcast float %631 to i32
  %633 = and i32 %632, 2143289344
  %634 = icmp eq i32 %633, 2139095040
  %635 = and i32 %632, 4194303
  %636 = icmp ne i32 %635, 0
  %637 = and i1 %634, %636
  br i1 %637, label %638, label %648

; <label>:638:                                    ; preds = %630
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %640, %struct.Memory* %loadMem_4078e4)
  br label %routine_ucomiss_0xab0f18___xmm0.exit364

; <label>:642:                                    ; preds = %routine_ucomiss__xmm0___xmm1.exit373
  %643 = fcmp ogt float %627, %628
  br i1 %643, label %648, label %644

; <label>:644:                                    ; preds = %642
  %645 = fcmp olt float %627, %628
  br i1 %645, label %648, label %646

; <label>:646:                                    ; preds = %644
  %647 = fcmp oeq float %627, %628
  br i1 %647, label %648, label %655

; <label>:648:                                    ; preds = %646, %644, %642, %630
  %649 = phi i8 [ 0, %642 ], [ 0, %644 ], [ 1, %646 ], [ 1, %630 ]
  %650 = phi i8 [ 0, %642 ], [ 0, %644 ], [ 0, %646 ], [ 1, %630 ]
  %651 = phi i8 [ 0, %642 ], [ 1, %644 ], [ 0, %646 ], [ 1, %630 ]
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %649, i8* %652, align 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %650, i8* %653, align 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %651, i8* %654, align 1
  br label %655

; <label>:655:                                    ; preds = %648, %646
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %656, align 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %657, align 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %658, align 1
  br label %routine_ucomiss_0xab0f18___xmm0.exit364

routine_ucomiss_0xab0f18___xmm0.exit364:          ; preds = %638, %655
  %659 = phi %struct.Memory* [ %641, %638 ], [ %loadMem_4078e4, %655 ]
  store %struct.Memory* %659, %struct.Memory** %MEMORY
  %loadMem_4078ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 15
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %668 to i64*
  %669 = load i64, i64* %RBP.i361
  %670 = sub i64 %669, 32
  %671 = load i64, i64* %RAX.i360
  %672 = load i64, i64* %PC.i359
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC.i359
  %674 = inttoptr i64 %670 to i64*
  store i64 %671, i64* %674
  store %struct.Memory* %loadMem_4078ec, %struct.Memory** %MEMORY
  %loadMem_4078f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %677 to i64*
  %678 = load i64, i64* %PC.i358
  %679 = add i64 %678, 38
  %680 = load i64, i64* %PC.i358
  %681 = add i64 %680, 6
  %682 = load i64, i64* %PC.i358
  %683 = add i64 %682, 6
  store i64 %683, i64* %PC.i358
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %685 = load i8, i8* %684, align 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %687 = load i8, i8* %686, align 1
  %688 = or i8 %687, %685
  %689 = icmp ne i8 %688, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %BRANCH_TAKEN, align 1
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %692 = select i1 %689, i64 %679, i64 %681
  store i64 %692, i64* %691, align 8
  store %struct.Memory* %loadMem_4078f0, %struct.Memory** %MEMORY
  %loadBr_4078f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4078f0 = icmp eq i8 %loadBr_4078f0, 1
  br i1 %cmpBr_4078f0, label %block_.L_407916, label %block_4078f6

block_4078f6:                                     ; preds = %routine_ucomiss_0xab0f18___xmm0.exit364
  %loadMem_4078f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %696, i64 0, i64 0
  %YMM0.i357 = bitcast %union.VectorReg* %697 to %"class.std::bitset"*
  %698 = bitcast %"class.std::bitset"* %YMM0.i357 to i8*
  %699 = load i64, i64* %PC.i356
  %700 = add i64 %699, 9
  store i64 %700, i64* %PC.i356
  %701 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %702 = bitcast i8* %698 to float*
  store float %701, float* %702, align 1
  %703 = getelementptr inbounds i8, i8* %698, i64 4
  %704 = bitcast i8* %703 to float*
  store float 0.000000e+00, float* %704, align 1
  %705 = getelementptr inbounds i8, i8* %698, i64 8
  %706 = bitcast i8* %705 to float*
  store float 0.000000e+00, float* %706, align 1
  %707 = getelementptr inbounds i8, i8* %698, i64 12
  %708 = bitcast i8* %707 to float*
  store float 0.000000e+00, float* %708, align 1
  store %struct.Memory* %loadMem_4078f6, %struct.Memory** %MEMORY
  %loadMem_4078ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 1
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %715, i64 0, i64 0
  %XMM0.i355 = bitcast %union.VectorReg* %716 to %union.vec128_t*
  %717 = bitcast %union.vec128_t* %XMM0.i355 to i8*
  %718 = load i64, i64* %PC.i353
  %719 = add i64 %718, 4
  store i64 %719, i64* %PC.i353
  %720 = bitcast i8* %717 to i64*
  %721 = load i64, i64* %720, align 1
  %722 = trunc i64 %721 to i32
  %723 = bitcast i64* %RAX.i354 to [2 x i32]*
  %724 = bitcast i64* %RAX.i354 to i32*
  store i32 %722, i32* %724, align 1
  %725 = getelementptr inbounds [2 x i32], [2 x i32]* %723, i64 0, i64 1
  store i32 0, i32* %725, align 1
  store %struct.Memory* %loadMem_4078ff, %struct.Memory** %MEMORY
  %loadMem_407903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %RAX.i352
  %733 = load i64, i64* %PC.i351
  %734 = add i64 %733, 5
  store i64 %734, i64* %PC.i351
  %735 = xor i64 -2147483648, %732
  %736 = trunc i64 %735 to i32
  %737 = and i64 %735, 4294967295
  store i64 %737, i64* %RAX.i352, align 8
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %738, align 1
  %739 = and i32 %736, 255
  %740 = call i32 @llvm.ctpop.i32(i32 %739)
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %743, i8* %744, align 1
  %745 = icmp eq i32 %736, 0
  %746 = zext i1 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %746, i8* %747, align 1
  %748 = lshr i32 %736, 31
  %749 = trunc i32 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %749, i8* %750, align 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %751, align 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %752, align 1
  store %struct.Memory* %loadMem_407903, %struct.Memory** %MEMORY
  %loadMem_407908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 33
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 1
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %EAX.i349 = bitcast %union.anon* %758 to i32*
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %759, i64 0, i64 0
  %YMM0.i350 = bitcast %union.VectorReg* %760 to %"class.std::bitset"*
  %761 = bitcast %"class.std::bitset"* %YMM0.i350 to i8*
  %762 = load i32, i32* %EAX.i349
  %763 = zext i32 %762 to i64
  %764 = load i64, i64* %PC.i348
  %765 = add i64 %764, 4
  store i64 %765, i64* %PC.i348
  %766 = bitcast i8* %761 to i32*
  store i32 %762, i32* %766, align 1
  %767 = getelementptr inbounds i8, i8* %761, i64 4
  %768 = bitcast i8* %767 to i32*
  store i32 0, i32* %768, align 1
  %769 = getelementptr inbounds i8, i8* %761, i64 8
  %770 = bitcast i8* %769 to i32*
  store i32 0, i32* %770, align 1
  %771 = getelementptr inbounds i8, i8* %761, i64 12
  %772 = bitcast i8* %771 to i32*
  store i32 0, i32* %772, align 1
  store %struct.Memory* %loadMem_407908, %struct.Memory** %MEMORY
  %loadMem_40790c = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 15
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %778 to i64*
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %780 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %779, i64 0, i64 0
  %XMM0.i347 = bitcast %union.VectorReg* %780 to %union.vec128_t*
  %781 = load i64, i64* %RBP.i346
  %782 = sub i64 %781, 36
  %783 = bitcast %union.vec128_t* %XMM0.i347 to i8*
  %784 = load i64, i64* %PC.i345
  %785 = add i64 %784, 5
  store i64 %785, i64* %PC.i345
  %786 = bitcast i8* %783 to <2 x float>*
  %787 = load <2 x float>, <2 x float>* %786, align 1
  %788 = extractelement <2 x float> %787, i32 0
  %789 = inttoptr i64 %782 to float*
  store float %788, float* %789
  store %struct.Memory* %loadMem_40790c, %struct.Memory** %MEMORY
  %loadMem_407911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %PC.i344
  %794 = add i64 %793, 19
  %795 = load i64, i64* %PC.i344
  %796 = add i64 %795, 5
  store i64 %796, i64* %PC.i344
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %794, i64* %797, align 8
  store %struct.Memory* %loadMem_407911, %struct.Memory** %MEMORY
  br label %block_.L_407924

block_.L_407916:                                  ; preds = %routine_ucomiss_0xab0f18___xmm0.exit364
  %loadMem_407916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %801, i64 0, i64 0
  %YMM0.i343 = bitcast %union.VectorReg* %802 to %"class.std::bitset"*
  %803 = bitcast %"class.std::bitset"* %YMM0.i343 to i8*
  %804 = load i64, i64* %PC.i342
  %805 = add i64 %804, 9
  store i64 %805, i64* %PC.i342
  %806 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %807 = bitcast i8* %803 to float*
  store float %806, float* %807, align 1
  %808 = getelementptr inbounds i8, i8* %803, i64 4
  %809 = bitcast i8* %808 to float*
  store float 0.000000e+00, float* %809, align 1
  %810 = getelementptr inbounds i8, i8* %803, i64 8
  %811 = bitcast i8* %810 to float*
  store float 0.000000e+00, float* %811, align 1
  %812 = getelementptr inbounds i8, i8* %803, i64 12
  %813 = bitcast i8* %812 to float*
  store float 0.000000e+00, float* %813, align 1
  store %struct.Memory* %loadMem_407916, %struct.Memory** %MEMORY
  %loadMem_40791f = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 15
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %821 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %820, i64 0, i64 0
  %XMM0.i341 = bitcast %union.VectorReg* %821 to %union.vec128_t*
  %822 = load i64, i64* %RBP.i340
  %823 = sub i64 %822, 36
  %824 = bitcast %union.vec128_t* %XMM0.i341 to i8*
  %825 = load i64, i64* %PC.i339
  %826 = add i64 %825, 5
  store i64 %826, i64* %PC.i339
  %827 = bitcast i8* %824 to <2 x float>*
  %828 = load <2 x float>, <2 x float>* %827, align 1
  %829 = extractelement <2 x float> %828, i32 0
  %830 = inttoptr i64 %823 to float*
  store float %829, float* %830
  store %struct.Memory* %loadMem_40791f, %struct.Memory** %MEMORY
  br label %block_.L_407924

block_.L_407924:                                  ; preds = %block_.L_407916, %block_4078f6
  %loadMem_407924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 15
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %837, i64 0, i64 0
  %YMM0.i338 = bitcast %union.VectorReg* %838 to %"class.std::bitset"*
  %839 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %840 = load i64, i64* %RBP.i337
  %841 = sub i64 %840, 36
  %842 = load i64, i64* %PC.i336
  %843 = add i64 %842, 5
  store i64 %843, i64* %PC.i336
  %844 = inttoptr i64 %841 to float*
  %845 = load float, float* %844
  %846 = bitcast i8* %839 to float*
  store float %845, float* %846, align 1
  %847 = getelementptr inbounds i8, i8* %839, i64 4
  %848 = bitcast i8* %847 to float*
  store float 0.000000e+00, float* %848, align 1
  %849 = getelementptr inbounds i8, i8* %839, i64 8
  %850 = bitcast i8* %849 to float*
  store float 0.000000e+00, float* %850, align 1
  %851 = getelementptr inbounds i8, i8* %839, i64 12
  %852 = bitcast i8* %851 to float*
  store float 0.000000e+00, float* %852, align 1
  store %struct.Memory* %loadMem_407924, %struct.Memory** %MEMORY
  %loadMem_407929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 33
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 11
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RDI.i335 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %PC.i334
  %860 = add i64 %859, 10
  store i64 %860, i64* %PC.i334
  store i64 ptrtoint (%G__0x57a0c7_type* @G__0x57a0c7 to i64), i64* %RDI.i335, align 8
  store %struct.Memory* %loadMem_407929, %struct.Memory** %MEMORY
  %loadMem_407933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %865 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %864, i64 0, i64 0
  %YMM0.i332 = bitcast %union.VectorReg* %865 to %"class.std::bitset"*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %866, i64 0, i64 0
  %XMM0.i333 = bitcast %union.VectorReg* %867 to %union.vec128_t*
  %868 = bitcast %"class.std::bitset"* %YMM0.i332 to i8*
  %869 = bitcast %union.vec128_t* %XMM0.i333 to i8*
  %870 = load i64, i64* %PC.i331
  %871 = add i64 %870, 4
  store i64 %871, i64* %PC.i331
  %872 = bitcast i8* %869 to <2 x float>*
  %873 = load <2 x float>, <2 x float>* %872, align 1
  %874 = extractelement <2 x float> %873, i32 0
  %875 = fpext float %874 to double
  %876 = bitcast i8* %868 to double*
  store double %875, double* %876, align 1
  store %struct.Memory* %loadMem_407933, %struct.Memory** %MEMORY
  %loadMem_407937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 9
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RSI.i329 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 15
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RBP.i330
  %887 = sub i64 %886, 32
  %888 = load i64, i64* %PC.i328
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i328
  %890 = inttoptr i64 %887 to i64*
  %891 = load i64, i64* %890
  store i64 %891, i64* %RSI.i329, align 8
  store %struct.Memory* %loadMem_407937, %struct.Memory** %MEMORY
  %loadMem_40793b = load %struct.Memory*, %struct.Memory** %MEMORY
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 33
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 1
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %898 = bitcast %union.anon* %897 to %struct.anon.2*
  %AL.i327 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %898, i32 0, i32 0
  %899 = load i64, i64* %PC.i326
  %900 = add i64 %899, 2
  store i64 %900, i64* %PC.i326
  store i8 1, i8* %AL.i327, align 1
  store %struct.Memory* %loadMem_40793b, %struct.Memory** %MEMORY
  %loadMem1_40793d = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %PC.i325
  %905 = add i64 %904, 304243
  %906 = load i64, i64* %PC.i325
  %907 = add i64 %906, 5
  %908 = load i64, i64* %PC.i325
  %909 = add i64 %908, 5
  store i64 %909, i64* %PC.i325
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %911 = load i64, i64* %910, align 8
  %912 = add i64 %911, -8
  %913 = inttoptr i64 %912 to i64*
  store i64 %907, i64* %913
  store i64 %912, i64* %910, align 8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %905, i64* %914, align 8
  store %struct.Memory* %loadMem1_40793d, %struct.Memory** %MEMORY
  %loadMem2_40793d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40793d = load i64, i64* %3
  %call2_40793d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_40793d, %struct.Memory* %loadMem2_40793d)
  store %struct.Memory* %call2_40793d, %struct.Memory** %MEMORY
  %loadMem_407942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %EAX.i323 = bitcast %union.anon* %920 to i32*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i324
  %925 = sub i64 %924, 40
  %926 = load i32, i32* %EAX.i323
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i322
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC.i322
  %930 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %930
  store %struct.Memory* %loadMem_407942, %struct.Memory** %MEMORY
  %loadMem_407945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %PC.i321
  %935 = add i64 %934, 267
  %936 = load i64, i64* %PC.i321
  %937 = add i64 %936, 5
  store i64 %937, i64* %PC.i321
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %935, i64* %938, align 8
  store %struct.Memory* %loadMem_407945, %struct.Memory** %MEMORY
  br label %block_.L_407a50

block_.L_40794a:                                  ; preds = %block_4078b7, %routine_ucomiss_0xab0f1c___xmm0.exit
  %loadMem_40794a = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %943 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %942, i64 0, i64 0
  %YMM0.i319 = bitcast %union.VectorReg* %943 to %"class.std::bitset"*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %944, i64 0, i64 0
  %XMM0.i320 = bitcast %union.VectorReg* %945 to %union.vec128_t*
  %946 = bitcast %"class.std::bitset"* %YMM0.i319 to i8*
  %947 = bitcast %"class.std::bitset"* %YMM0.i319 to i8*
  %948 = bitcast %union.vec128_t* %XMM0.i320 to i8*
  %949 = load i64, i64* %PC.i318
  %950 = add i64 %949, 3
  store i64 %950, i64* %PC.i318
  %951 = bitcast i8* %947 to i64*
  %952 = load i64, i64* %951, align 1
  %953 = getelementptr inbounds i8, i8* %947, i64 8
  %954 = bitcast i8* %953 to i64*
  %955 = load i64, i64* %954, align 1
  %956 = bitcast i8* %948 to i64*
  %957 = load i64, i64* %956, align 1
  %958 = getelementptr inbounds i8, i8* %948, i64 8
  %959 = bitcast i8* %958 to i64*
  %960 = load i64, i64* %959, align 1
  %961 = xor i64 %957, %952
  %962 = xor i64 %960, %955
  %963 = trunc i64 %961 to i32
  %964 = lshr i64 %961, 32
  %965 = trunc i64 %964 to i32
  %966 = bitcast i8* %946 to i32*
  store i32 %963, i32* %966, align 1
  %967 = getelementptr inbounds i8, i8* %946, i64 4
  %968 = bitcast i8* %967 to i32*
  store i32 %965, i32* %968, align 1
  %969 = trunc i64 %962 to i32
  %970 = getelementptr inbounds i8, i8* %946, i64 8
  %971 = bitcast i8* %970 to i32*
  store i32 %969, i32* %971, align 1
  %972 = lshr i64 %962, 32
  %973 = trunc i64 %972 to i32
  %974 = getelementptr inbounds i8, i8* %946, i64 12
  %975 = bitcast i8* %974 to i32*
  store i32 %973, i32* %975, align 1
  store %struct.Memory* %loadMem_40794a, %struct.Memory** %MEMORY
  %loadMem_40794d = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 1
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %PC.i316
  %983 = add i64 %982, 10
  store i64 %983, i64* %PC.i316
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_40794d, %struct.Memory** %MEMORY
  %loadMem_407957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 5
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %989 to i64*
  %990 = load i64, i64* %PC.i314
  %991 = add i64 %990, 10
  store i64 %991, i64* %PC.i314
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_407957, %struct.Memory** %MEMORY
  %loadMem_407961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %996 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %995, i64 0, i64 1
  %YMM1.i313 = bitcast %union.VectorReg* %996 to %"class.std::bitset"*
  %997 = bitcast %"class.std::bitset"* %YMM1.i313 to i8*
  %998 = load i64, i64* %PC.i312
  %999 = add i64 %998, 9
  store i64 %999, i64* %PC.i312
  %1000 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %1001 = bitcast i8* %997 to float*
  store float %1000, float* %1001, align 1
  %1002 = getelementptr inbounds i8, i8* %997, i64 4
  %1003 = bitcast i8* %1002 to float*
  store float 0.000000e+00, float* %1003, align 1
  %1004 = getelementptr inbounds i8, i8* %997, i64 8
  %1005 = bitcast i8* %1004 to float*
  store float 0.000000e+00, float* %1005, align 1
  %1006 = getelementptr inbounds i8, i8* %997, i64 12
  %1007 = bitcast i8* %1006 to float*
  store float 0.000000e+00, float* %1007, align 1
  store %struct.Memory* %loadMem_407961, %struct.Memory** %MEMORY
  %loadMem_40796a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1011, i64 0, i64 0
  %XMM0.i307 = bitcast %union.VectorReg* %1012 to %union.vec128_t*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1013, i64 0, i64 1
  %XMM1.i308 = bitcast %union.VectorReg* %1014 to %union.vec128_t*
  %1015 = bitcast %union.vec128_t* %XMM1.i308 to i8*
  %1016 = bitcast %union.vec128_t* %XMM0.i307 to i8*
  %1017 = load i64, i64* %PC.i306
  %1018 = add i64 %1017, 3
  store i64 %1018, i64* %PC.i306
  %1019 = bitcast i8* %1015 to <2 x float>*
  %1020 = load <2 x float>, <2 x float>* %1019, align 1
  %1021 = extractelement <2 x float> %1020, i32 0
  %1022 = bitcast i8* %1016 to <2 x float>*
  %1023 = load <2 x float>, <2 x float>* %1022, align 1
  %1024 = extractelement <2 x float> %1023, i32 0
  %1025 = fcmp uno float %1021, %1024
  br i1 %1025, label %1026, label %1038

; <label>:1026:                                   ; preds = %block_.L_40794a
  %1027 = fadd float %1021, %1024
  %1028 = bitcast float %1027 to i32
  %1029 = and i32 %1028, 2143289344
  %1030 = icmp eq i32 %1029, 2139095040
  %1031 = and i32 %1028, 4194303
  %1032 = icmp ne i32 %1031, 0
  %1033 = and i1 %1030, %1032
  br i1 %1033, label %1034, label %1044

; <label>:1034:                                   ; preds = %1026
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1036 = load i64, i64* %1035, align 8
  %1037 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1036, %struct.Memory* %loadMem_40796a)
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:1038:                                   ; preds = %block_.L_40794a
  %1039 = fcmp ogt float %1021, %1024
  br i1 %1039, label %1044, label %1040

; <label>:1040:                                   ; preds = %1038
  %1041 = fcmp olt float %1021, %1024
  br i1 %1041, label %1044, label %1042

; <label>:1042:                                   ; preds = %1040
  %1043 = fcmp oeq float %1021, %1024
  br i1 %1043, label %1044, label %1051

; <label>:1044:                                   ; preds = %1042, %1040, %1038, %1026
  %1045 = phi i8 [ 0, %1038 ], [ 0, %1040 ], [ 1, %1042 ], [ 1, %1026 ]
  %1046 = phi i8 [ 0, %1038 ], [ 0, %1040 ], [ 0, %1042 ], [ 1, %1026 ]
  %1047 = phi i8 [ 0, %1038 ], [ 1, %1040 ], [ 0, %1042 ], [ 1, %1026 ]
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1045, i8* %1048, align 1
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1046, i8* %1049, align 1
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1047, i8* %1050, align 1
  br label %1051

; <label>:1051:                                   ; preds = %1044, %1042
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1052, align 1
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1053, align 1
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1054, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %1034, %1051
  %1055 = phi %struct.Memory* [ %1037, %1034 ], [ %loadMem_40796a, %1051 ]
  store %struct.Memory* %1055, %struct.Memory** %MEMORY
  %loadMem_40796d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 1
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 5
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RCX.i305
  %1066 = load i64, i64* %PC.i303
  %1067 = add i64 %1066, 4
  store i64 %1067, i64* %PC.i303
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1069 = load i8, i8* %1068, align 1
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1071 = load i8, i8* %1070, align 1
  %1072 = or i8 %1071, %1069
  %1073 = icmp eq i8 %1072, 0
  %1074 = load i64, i64* %RAX.i304, align 8
  %1075 = select i1 %1073, i64 %1065, i64 %1074
  store i64 %1075, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_40796d, %struct.Memory** %MEMORY
  %loadMem_407971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1080 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1079, i64 0, i64 0
  %XMM0.i300 = bitcast %union.VectorReg* %1080 to %union.vec128_t*
  %1081 = bitcast %union.vec128_t* %XMM0.i300 to i8*
  %1082 = load i64, i64* %PC.i299
  %1083 = add i64 %1082, 8
  store i64 %1083, i64* %PC.i299
  %1084 = bitcast i8* %1081 to <2 x float>*
  %1085 = load <2 x float>, <2 x float>* %1084, align 1
  %1086 = extractelement <2 x float> %1085, i32 0
  %1087 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %1088 = fcmp uno float %1086, %1087
  br i1 %1088, label %1089, label %1101

; <label>:1089:                                   ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %1090 = fadd float %1086, %1087
  %1091 = bitcast float %1090 to i32
  %1092 = and i32 %1091, 2143289344
  %1093 = icmp eq i32 %1092, 2139095040
  %1094 = and i32 %1091, 4194303
  %1095 = icmp ne i32 %1094, 0
  %1096 = and i1 %1093, %1095
  br i1 %1096, label %1097, label %1107

; <label>:1097:                                   ; preds = %1089
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1099 = load i64, i64* %1098, align 8
  %1100 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1099, %struct.Memory* %loadMem_407971)
  br label %routine_ucomiss_0xab0f18___xmm0.exit

; <label>:1101:                                   ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %1102 = fcmp ogt float %1086, %1087
  br i1 %1102, label %1107, label %1103

; <label>:1103:                                   ; preds = %1101
  %1104 = fcmp olt float %1086, %1087
  br i1 %1104, label %1107, label %1105

; <label>:1105:                                   ; preds = %1103
  %1106 = fcmp oeq float %1086, %1087
  br i1 %1106, label %1107, label %1114

; <label>:1107:                                   ; preds = %1105, %1103, %1101, %1089
  %1108 = phi i8 [ 0, %1101 ], [ 0, %1103 ], [ 1, %1105 ], [ 1, %1089 ]
  %1109 = phi i8 [ 0, %1101 ], [ 0, %1103 ], [ 0, %1105 ], [ 1, %1089 ]
  %1110 = phi i8 [ 0, %1101 ], [ 1, %1103 ], [ 0, %1105 ], [ 1, %1089 ]
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1108, i8* %1111, align 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1109, i8* %1112, align 1
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1110, i8* %1113, align 1
  br label %1114

; <label>:1114:                                   ; preds = %1107, %1105
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1115, align 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1116, align 1
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1117, align 1
  br label %routine_ucomiss_0xab0f18___xmm0.exit

routine_ucomiss_0xab0f18___xmm0.exit:             ; preds = %1097, %1114
  %1118 = phi %struct.Memory* [ %1100, %1097 ], [ %loadMem_407971, %1114 ]
  store %struct.Memory* %1118, %struct.Memory** %MEMORY
  %loadMem_407979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 1
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 15
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %1127 to i64*
  %1128 = load i64, i64* %RBP.i298
  %1129 = sub i64 %1128, 48
  %1130 = load i64, i64* %RAX.i297
  %1131 = load i64, i64* %PC.i296
  %1132 = add i64 %1131, 4
  store i64 %1132, i64* %PC.i296
  %1133 = inttoptr i64 %1129 to i64*
  store i64 %1130, i64* %1133
  store %struct.Memory* %loadMem_407979, %struct.Memory** %MEMORY
  %loadMem_40797d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %PC.i295
  %1138 = add i64 %1137, 38
  %1139 = load i64, i64* %PC.i295
  %1140 = add i64 %1139, 6
  %1141 = load i64, i64* %PC.i295
  %1142 = add i64 %1141, 6
  store i64 %1142, i64* %PC.i295
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1144 = load i8, i8* %1143, align 1
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1146 = load i8, i8* %1145, align 1
  %1147 = or i8 %1146, %1144
  %1148 = icmp ne i8 %1147, 0
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %BRANCH_TAKEN, align 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1151 = select i1 %1148, i64 %1138, i64 %1140
  store i64 %1151, i64* %1150, align 8
  store %struct.Memory* %loadMem_40797d, %struct.Memory** %MEMORY
  %loadBr_40797d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40797d = icmp eq i8 %loadBr_40797d, 1
  br i1 %cmpBr_40797d, label %block_.L_4079a3, label %block_407983

block_407983:                                     ; preds = %routine_ucomiss_0xab0f18___xmm0.exit
  %loadMem_407983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1155, i64 0, i64 0
  %YMM0.i294 = bitcast %union.VectorReg* %1156 to %"class.std::bitset"*
  %1157 = bitcast %"class.std::bitset"* %YMM0.i294 to i8*
  %1158 = load i64, i64* %PC.i293
  %1159 = add i64 %1158, 9
  store i64 %1159, i64* %PC.i293
  %1160 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %1161 = bitcast i8* %1157 to float*
  store float %1160, float* %1161, align 1
  %1162 = getelementptr inbounds i8, i8* %1157, i64 4
  %1163 = bitcast i8* %1162 to float*
  store float 0.000000e+00, float* %1163, align 1
  %1164 = getelementptr inbounds i8, i8* %1157, i64 8
  %1165 = bitcast i8* %1164 to float*
  store float 0.000000e+00, float* %1165, align 1
  %1166 = getelementptr inbounds i8, i8* %1157, i64 12
  %1167 = bitcast i8* %1166 to float*
  store float 0.000000e+00, float* %1167, align 1
  store %struct.Memory* %loadMem_407983, %struct.Memory** %MEMORY
  %loadMem_40798c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 33
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1170 to i64*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 1
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1175 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1174, i64 0, i64 0
  %XMM0.i292 = bitcast %union.VectorReg* %1175 to %union.vec128_t*
  %1176 = bitcast %union.vec128_t* %XMM0.i292 to i8*
  %1177 = load i64, i64* %PC.i290
  %1178 = add i64 %1177, 4
  store i64 %1178, i64* %PC.i290
  %1179 = bitcast i8* %1176 to i64*
  %1180 = load i64, i64* %1179, align 1
  %1181 = trunc i64 %1180 to i32
  %1182 = bitcast i64* %RAX.i291 to [2 x i32]*
  %1183 = bitcast i64* %RAX.i291 to i32*
  store i32 %1181, i32* %1183, align 1
  %1184 = getelementptr inbounds [2 x i32], [2 x i32]* %1182, i64 0, i64 1
  store i32 0, i32* %1184, align 1
  store %struct.Memory* %loadMem_40798c, %struct.Memory** %MEMORY
  %loadMem_407990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 1
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %RAX.i289
  %1192 = load i64, i64* %PC.i288
  %1193 = add i64 %1192, 5
  store i64 %1193, i64* %PC.i288
  %1194 = xor i64 -2147483648, %1191
  %1195 = trunc i64 %1194 to i32
  %1196 = and i64 %1194, 4294967295
  store i64 %1196, i64* %RAX.i289, align 8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1197, align 1
  %1198 = and i32 %1195, 255
  %1199 = call i32 @llvm.ctpop.i32(i32 %1198)
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1202, i8* %1203, align 1
  %1204 = icmp eq i32 %1195, 0
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1205, i8* %1206, align 1
  %1207 = lshr i32 %1195, 31
  %1208 = trunc i32 %1207 to i8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1208, i8* %1209, align 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1210, align 1
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1211, align 1
  store %struct.Memory* %loadMem_407990, %struct.Memory** %MEMORY
  %loadMem_407995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 1
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %EAX.i286 = bitcast %union.anon* %1217 to i32*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1218, i64 0, i64 0
  %YMM0.i287 = bitcast %union.VectorReg* %1219 to %"class.std::bitset"*
  %1220 = bitcast %"class.std::bitset"* %YMM0.i287 to i8*
  %1221 = load i32, i32* %EAX.i286
  %1222 = zext i32 %1221 to i64
  %1223 = load i64, i64* %PC.i285
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %PC.i285
  %1225 = bitcast i8* %1220 to i32*
  store i32 %1221, i32* %1225, align 1
  %1226 = getelementptr inbounds i8, i8* %1220, i64 4
  %1227 = bitcast i8* %1226 to i32*
  store i32 0, i32* %1227, align 1
  %1228 = getelementptr inbounds i8, i8* %1220, i64 8
  %1229 = bitcast i8* %1228 to i32*
  store i32 0, i32* %1229, align 1
  %1230 = getelementptr inbounds i8, i8* %1220, i64 12
  %1231 = bitcast i8* %1230 to i32*
  store i32 0, i32* %1231, align 1
  store %struct.Memory* %loadMem_407995, %struct.Memory** %MEMORY
  %loadMem_407999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 15
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1238, i64 0, i64 0
  %XMM0.i284 = bitcast %union.VectorReg* %1239 to %union.vec128_t*
  %1240 = load i64, i64* %RBP.i283
  %1241 = sub i64 %1240, 52
  %1242 = bitcast %union.vec128_t* %XMM0.i284 to i8*
  %1243 = load i64, i64* %PC.i282
  %1244 = add i64 %1243, 5
  store i64 %1244, i64* %PC.i282
  %1245 = bitcast i8* %1242 to <2 x float>*
  %1246 = load <2 x float>, <2 x float>* %1245, align 1
  %1247 = extractelement <2 x float> %1246, i32 0
  %1248 = inttoptr i64 %1241 to float*
  store float %1247, float* %1248
  store %struct.Memory* %loadMem_407999, %struct.Memory** %MEMORY
  %loadMem_40799e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %PC.i281
  %1253 = add i64 %1252, 19
  %1254 = load i64, i64* %PC.i281
  %1255 = add i64 %1254, 5
  store i64 %1255, i64* %PC.i281
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1253, i64* %1256, align 8
  store %struct.Memory* %loadMem_40799e, %struct.Memory** %MEMORY
  br label %block_.L_4079b1

block_.L_4079a3:                                  ; preds = %routine_ucomiss_0xab0f18___xmm0.exit
  %loadMem_4079a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1260, i64 0, i64 0
  %YMM0.i280 = bitcast %union.VectorReg* %1261 to %"class.std::bitset"*
  %1262 = bitcast %"class.std::bitset"* %YMM0.i280 to i8*
  %1263 = load i64, i64* %PC.i279
  %1264 = add i64 %1263, 9
  store i64 %1264, i64* %PC.i279
  %1265 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %1266 = bitcast i8* %1262 to float*
  store float %1265, float* %1266, align 1
  %1267 = getelementptr inbounds i8, i8* %1262, i64 4
  %1268 = bitcast i8* %1267 to float*
  store float 0.000000e+00, float* %1268, align 1
  %1269 = getelementptr inbounds i8, i8* %1262, i64 8
  %1270 = bitcast i8* %1269 to float*
  store float 0.000000e+00, float* %1270, align 1
  %1271 = getelementptr inbounds i8, i8* %1262, i64 12
  %1272 = bitcast i8* %1271 to float*
  store float 0.000000e+00, float* %1272, align 1
  store %struct.Memory* %loadMem_4079a3, %struct.Memory** %MEMORY
  %loadMem_4079ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 15
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1280 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1279, i64 0, i64 0
  %XMM0.i278 = bitcast %union.VectorReg* %1280 to %union.vec128_t*
  %1281 = load i64, i64* %RBP.i277
  %1282 = sub i64 %1281, 52
  %1283 = bitcast %union.vec128_t* %XMM0.i278 to i8*
  %1284 = load i64, i64* %PC.i276
  %1285 = add i64 %1284, 5
  store i64 %1285, i64* %PC.i276
  %1286 = bitcast i8* %1283 to <2 x float>*
  %1287 = load <2 x float>, <2 x float>* %1286, align 1
  %1288 = extractelement <2 x float> %1287, i32 0
  %1289 = inttoptr i64 %1282 to float*
  store float %1288, float* %1289
  store %struct.Memory* %loadMem_4079ac, %struct.Memory** %MEMORY
  br label %block_.L_4079b1

block_.L_4079b1:                                  ; preds = %block_.L_4079a3, %block_407983
  %loadMem_4079b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 15
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1296, i64 0, i64 0
  %YMM0.i275 = bitcast %union.VectorReg* %1297 to %"class.std::bitset"*
  %1298 = bitcast %"class.std::bitset"* %YMM0.i275 to i8*
  %1299 = load i64, i64* %RBP.i274
  %1300 = sub i64 %1299, 52
  %1301 = load i64, i64* %PC.i273
  %1302 = add i64 %1301, 5
  store i64 %1302, i64* %PC.i273
  %1303 = inttoptr i64 %1300 to float*
  %1304 = load float, float* %1303
  %1305 = bitcast i8* %1298 to float*
  store float %1304, float* %1305, align 1
  %1306 = getelementptr inbounds i8, i8* %1298, i64 4
  %1307 = bitcast i8* %1306 to float*
  store float 0.000000e+00, float* %1307, align 1
  %1308 = getelementptr inbounds i8, i8* %1298, i64 8
  %1309 = bitcast i8* %1308 to float*
  store float 0.000000e+00, float* %1309, align 1
  %1310 = getelementptr inbounds i8, i8* %1298, i64 12
  %1311 = bitcast i8* %1310 to float*
  store float 0.000000e+00, float* %1311, align 1
  store %struct.Memory* %loadMem_4079b1, %struct.Memory** %MEMORY
  %loadMem_4079b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1315, i64 0, i64 1
  %YMM1.i271 = bitcast %union.VectorReg* %1316 to %"class.std::bitset"*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1318 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1317, i64 0, i64 1
  %XMM1.i272 = bitcast %union.VectorReg* %1318 to %union.vec128_t*
  %1319 = bitcast %"class.std::bitset"* %YMM1.i271 to i8*
  %1320 = bitcast %"class.std::bitset"* %YMM1.i271 to i8*
  %1321 = bitcast %union.vec128_t* %XMM1.i272 to i8*
  %1322 = load i64, i64* %PC.i270
  %1323 = add i64 %1322, 3
  store i64 %1323, i64* %PC.i270
  %1324 = bitcast i8* %1320 to i64*
  %1325 = load i64, i64* %1324, align 1
  %1326 = getelementptr inbounds i8, i8* %1320, i64 8
  %1327 = bitcast i8* %1326 to i64*
  %1328 = load i64, i64* %1327, align 1
  %1329 = bitcast i8* %1321 to i64*
  %1330 = load i64, i64* %1329, align 1
  %1331 = getelementptr inbounds i8, i8* %1321, i64 8
  %1332 = bitcast i8* %1331 to i64*
  %1333 = load i64, i64* %1332, align 1
  %1334 = xor i64 %1330, %1325
  %1335 = xor i64 %1333, %1328
  %1336 = trunc i64 %1334 to i32
  %1337 = lshr i64 %1334, 32
  %1338 = trunc i64 %1337 to i32
  %1339 = bitcast i8* %1319 to i32*
  store i32 %1336, i32* %1339, align 1
  %1340 = getelementptr inbounds i8, i8* %1319, i64 4
  %1341 = bitcast i8* %1340 to i32*
  store i32 %1338, i32* %1341, align 1
  %1342 = trunc i64 %1335 to i32
  %1343 = getelementptr inbounds i8, i8* %1319, i64 8
  %1344 = bitcast i8* %1343 to i32*
  store i32 %1342, i32* %1344, align 1
  %1345 = lshr i64 %1335, 32
  %1346 = trunc i64 %1345 to i32
  %1347 = getelementptr inbounds i8, i8* %1319, i64 12
  %1348 = bitcast i8* %1347 to i32*
  store i32 %1346, i32* %1348, align 1
  store %struct.Memory* %loadMem_4079b6, %struct.Memory** %MEMORY
  %loadMem_4079b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 1
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %1354 to i64*
  %1355 = load i64, i64* %PC.i268
  %1356 = add i64 %1355, 10
  store i64 %1356, i64* %PC.i268
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_4079b9, %struct.Memory** %MEMORY
  %loadMem_4079c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 5
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %PC.i266
  %1364 = add i64 %1363, 10
  store i64 %1364, i64* %PC.i266
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX.i267, align 8
  store %struct.Memory* %loadMem_4079c3, %struct.Memory** %MEMORY
  %loadMem_4079cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1368, i64 0, i64 0
  %YMM0.i264 = bitcast %union.VectorReg* %1369 to %"class.std::bitset"*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1371 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1370, i64 0, i64 0
  %XMM0.i265 = bitcast %union.VectorReg* %1371 to %union.vec128_t*
  %1372 = bitcast %"class.std::bitset"* %YMM0.i264 to i8*
  %1373 = bitcast %union.vec128_t* %XMM0.i265 to i8*
  %1374 = load i64, i64* %PC.i263
  %1375 = add i64 %1374, 4
  store i64 %1375, i64* %PC.i263
  %1376 = bitcast i8* %1373 to <2 x float>*
  %1377 = load <2 x float>, <2 x float>* %1376, align 1
  %1378 = extractelement <2 x float> %1377, i32 0
  %1379 = fpext float %1378 to double
  %1380 = bitcast i8* %1372 to double*
  store double %1379, double* %1380, align 1
  store %struct.Memory* %loadMem_4079cd, %struct.Memory** %MEMORY
  %loadMem_4079d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1384, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1385 to %"class.std::bitset"*
  %1386 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1387 = load i64, i64* %PC.i262
  %1388 = add i64 %1387, 9
  store i64 %1388, i64* %PC.i262
  %1389 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %1390 = bitcast i8* %1386 to float*
  store float %1389, float* %1390, align 1
  %1391 = getelementptr inbounds i8, i8* %1386, i64 4
  %1392 = bitcast i8* %1391 to float*
  store float 0.000000e+00, float* %1392, align 1
  %1393 = getelementptr inbounds i8, i8* %1386, i64 8
  %1394 = bitcast i8* %1393 to float*
  store float 0.000000e+00, float* %1394, align 1
  %1395 = getelementptr inbounds i8, i8* %1386, i64 12
  %1396 = bitcast i8* %1395 to float*
  store float 0.000000e+00, float* %1396, align 1
  store %struct.Memory* %loadMem_4079d1, %struct.Memory** %MEMORY
  %loadMem_4079da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1401 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1400, i64 0, i64 1
  %XMM1.i258 = bitcast %union.VectorReg* %1401 to %union.vec128_t*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1402, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1403 to %union.vec128_t*
  %1404 = bitcast %union.vec128_t* %XMM2.i to i8*
  %1405 = bitcast %union.vec128_t* %XMM1.i258 to i8*
  %1406 = load i64, i64* %PC.i257
  %1407 = add i64 %1406, 3
  store i64 %1407, i64* %PC.i257
  %1408 = bitcast i8* %1404 to <2 x float>*
  %1409 = load <2 x float>, <2 x float>* %1408, align 1
  %1410 = extractelement <2 x float> %1409, i32 0
  %1411 = bitcast i8* %1405 to <2 x float>*
  %1412 = load <2 x float>, <2 x float>* %1411, align 1
  %1413 = extractelement <2 x float> %1412, i32 0
  %1414 = fcmp uno float %1410, %1413
  br i1 %1414, label %1415, label %1427

; <label>:1415:                                   ; preds = %block_.L_4079b1
  %1416 = fadd float %1410, %1413
  %1417 = bitcast float %1416 to i32
  %1418 = and i32 %1417, 2143289344
  %1419 = icmp eq i32 %1418, 2139095040
  %1420 = and i32 %1417, 4194303
  %1421 = icmp ne i32 %1420, 0
  %1422 = and i1 %1419, %1421
  br i1 %1422, label %1423, label %1433

; <label>:1423:                                   ; preds = %1415
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1425 = load i64, i64* %1424, align 8
  %1426 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1425, %struct.Memory* %loadMem_4079da)
  br label %routine_ucomiss__xmm1___xmm2.exit

; <label>:1427:                                   ; preds = %block_.L_4079b1
  %1428 = fcmp ogt float %1410, %1413
  br i1 %1428, label %1433, label %1429

; <label>:1429:                                   ; preds = %1427
  %1430 = fcmp olt float %1410, %1413
  br i1 %1430, label %1433, label %1431

; <label>:1431:                                   ; preds = %1429
  %1432 = fcmp oeq float %1410, %1413
  br i1 %1432, label %1433, label %1440

; <label>:1433:                                   ; preds = %1431, %1429, %1427, %1415
  %1434 = phi i8 [ 0, %1427 ], [ 0, %1429 ], [ 1, %1431 ], [ 1, %1415 ]
  %1435 = phi i8 [ 0, %1427 ], [ 0, %1429 ], [ 0, %1431 ], [ 1, %1415 ]
  %1436 = phi i8 [ 0, %1427 ], [ 1, %1429 ], [ 0, %1431 ], [ 1, %1415 ]
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1434, i8* %1437, align 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1435, i8* %1438, align 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1436, i8* %1439, align 1
  br label %1440

; <label>:1440:                                   ; preds = %1433, %1431
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1441, align 1
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1442, align 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1443, align 1
  br label %routine_ucomiss__xmm1___xmm2.exit

routine_ucomiss__xmm1___xmm2.exit:                ; preds = %1423, %1440
  %1444 = phi %struct.Memory* [ %1426, %1423 ], [ %loadMem_4079da, %1440 ]
  store %struct.Memory* %1444, %struct.Memory** %MEMORY
  %loadMem_4079dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %1453 to i64*
  %1454 = load i64, i64* %RCX.i256
  %1455 = load i64, i64* %PC.i254
  %1456 = add i64 %1455, 4
  store i64 %1456, i64* %PC.i254
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1458 = load i8, i8* %1457, align 1
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1460 = load i8, i8* %1459, align 1
  %1461 = or i8 %1460, %1458
  %1462 = icmp eq i8 %1461, 0
  %1463 = load i64, i64* %RAX.i255, align 8
  %1464 = select i1 %1462, i64 %1454, i64 %1463
  store i64 %1464, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_4079dd, %struct.Memory** %MEMORY
  %loadMem_4079e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1468, i64 0, i64 1
  %XMM1.i251 = bitcast %union.VectorReg* %1469 to %union.vec128_t*
  %1470 = bitcast %union.vec128_t* %XMM1.i251 to i8*
  %1471 = load i64, i64* %PC.i250
  %1472 = add i64 %1471, 8
  store i64 %1472, i64* %PC.i250
  %1473 = bitcast i8* %1470 to <2 x float>*
  %1474 = load <2 x float>, <2 x float>* %1473, align 1
  %1475 = extractelement <2 x float> %1474, i32 0
  %1476 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %1477 = fcmp uno float %1475, %1476
  br i1 %1477, label %1478, label %1490

; <label>:1478:                                   ; preds = %routine_ucomiss__xmm1___xmm2.exit
  %1479 = fadd float %1475, %1476
  %1480 = bitcast float %1479 to i32
  %1481 = and i32 %1480, 2143289344
  %1482 = icmp eq i32 %1481, 2139095040
  %1483 = and i32 %1480, 4194303
  %1484 = icmp ne i32 %1483, 0
  %1485 = and i1 %1482, %1484
  br i1 %1485, label %1486, label %1496

; <label>:1486:                                   ; preds = %1478
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1488 = load i64, i64* %1487, align 8
  %1489 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1488, %struct.Memory* %loadMem_4079e1)
  br label %routine_ucomiss_0xab0f1c___xmm1.exit

; <label>:1490:                                   ; preds = %routine_ucomiss__xmm1___xmm2.exit
  %1491 = fcmp ogt float %1475, %1476
  br i1 %1491, label %1496, label %1492

; <label>:1492:                                   ; preds = %1490
  %1493 = fcmp olt float %1475, %1476
  br i1 %1493, label %1496, label %1494

; <label>:1494:                                   ; preds = %1492
  %1495 = fcmp oeq float %1475, %1476
  br i1 %1495, label %1496, label %1503

; <label>:1496:                                   ; preds = %1494, %1492, %1490, %1478
  %1497 = phi i8 [ 0, %1490 ], [ 0, %1492 ], [ 1, %1494 ], [ 1, %1478 ]
  %1498 = phi i8 [ 0, %1490 ], [ 0, %1492 ], [ 0, %1494 ], [ 1, %1478 ]
  %1499 = phi i8 [ 0, %1490 ], [ 1, %1492 ], [ 0, %1494 ], [ 1, %1478 ]
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1497, i8* %1500, align 1
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1498, i8* %1501, align 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1499, i8* %1502, align 1
  br label %1503

; <label>:1503:                                   ; preds = %1496, %1494
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1504, align 1
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1505, align 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1506, align 1
  br label %routine_ucomiss_0xab0f1c___xmm1.exit

routine_ucomiss_0xab0f1c___xmm1.exit:             ; preds = %1486, %1503
  %1507 = phi %struct.Memory* [ %1489, %1486 ], [ %loadMem_4079e1, %1503 ]
  store %struct.Memory* %1507, %struct.Memory** %MEMORY
  %loadMem_4079e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 1
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 15
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1516 to i64*
  %1517 = load i64, i64* %RBP.i249
  %1518 = sub i64 %1517, 64
  %1519 = load i64, i64* %RAX.i248
  %1520 = load i64, i64* %PC.i247
  %1521 = add i64 %1520, 4
  store i64 %1521, i64* %PC.i247
  %1522 = inttoptr i64 %1518 to i64*
  store i64 %1519, i64* %1522
  store %struct.Memory* %loadMem_4079e9, %struct.Memory** %MEMORY
  %loadMem_4079ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 15
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1529, i64 0, i64 0
  %XMM0.i246 = bitcast %union.VectorReg* %1530 to %union.vec128_t*
  %1531 = load i64, i64* %RBP.i245
  %1532 = sub i64 %1531, 72
  %1533 = bitcast %union.vec128_t* %XMM0.i246 to i8*
  %1534 = load i64, i64* %PC.i244
  %1535 = add i64 %1534, 5
  store i64 %1535, i64* %PC.i244
  %1536 = bitcast i8* %1533 to double*
  %1537 = load double, double* %1536, align 1
  %1538 = inttoptr i64 %1532 to double*
  store double %1537, double* %1538
  store %struct.Memory* %loadMem_4079ed, %struct.Memory** %MEMORY
  %loadMem_4079f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1541 to i64*
  %1542 = load i64, i64* %PC.i243
  %1543 = add i64 %1542, 38
  %1544 = load i64, i64* %PC.i243
  %1545 = add i64 %1544, 6
  %1546 = load i64, i64* %PC.i243
  %1547 = add i64 %1546, 6
  store i64 %1547, i64* %PC.i243
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1549 = load i8, i8* %1548, align 1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1551 = load i8, i8* %1550, align 1
  %1552 = or i8 %1551, %1549
  %1553 = icmp ne i8 %1552, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %BRANCH_TAKEN, align 1
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1556 = select i1 %1553, i64 %1543, i64 %1545
  store i64 %1556, i64* %1555, align 8
  store %struct.Memory* %loadMem_4079f2, %struct.Memory** %MEMORY
  %loadBr_4079f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4079f2 = icmp eq i8 %loadBr_4079f2, 1
  br i1 %cmpBr_4079f2, label %block_.L_407a18, label %block_4079f8

block_4079f8:                                     ; preds = %routine_ucomiss_0xab0f1c___xmm1.exit
  %loadMem_4079f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1560, i64 0, i64 0
  %YMM0.i242 = bitcast %union.VectorReg* %1561 to %"class.std::bitset"*
  %1562 = bitcast %"class.std::bitset"* %YMM0.i242 to i8*
  %1563 = load i64, i64* %PC.i241
  %1564 = add i64 %1563, 9
  store i64 %1564, i64* %PC.i241
  %1565 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %1566 = bitcast i8* %1562 to float*
  store float %1565, float* %1566, align 1
  %1567 = getelementptr inbounds i8, i8* %1562, i64 4
  %1568 = bitcast i8* %1567 to float*
  store float 0.000000e+00, float* %1568, align 1
  %1569 = getelementptr inbounds i8, i8* %1562, i64 8
  %1570 = bitcast i8* %1569 to float*
  store float 0.000000e+00, float* %1570, align 1
  %1571 = getelementptr inbounds i8, i8* %1562, i64 12
  %1572 = bitcast i8* %1571 to float*
  store float 0.000000e+00, float* %1572, align 1
  store %struct.Memory* %loadMem_4079f8, %struct.Memory** %MEMORY
  %loadMem_407a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 1
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1579, i64 0, i64 0
  %XMM0.i240 = bitcast %union.VectorReg* %1580 to %union.vec128_t*
  %1581 = bitcast %union.vec128_t* %XMM0.i240 to i8*
  %1582 = load i64, i64* %PC.i238
  %1583 = add i64 %1582, 4
  store i64 %1583, i64* %PC.i238
  %1584 = bitcast i8* %1581 to i64*
  %1585 = load i64, i64* %1584, align 1
  %1586 = trunc i64 %1585 to i32
  %1587 = bitcast i64* %RAX.i239 to [2 x i32]*
  %1588 = bitcast i64* %RAX.i239 to i32*
  store i32 %1586, i32* %1588, align 1
  %1589 = getelementptr inbounds [2 x i32], [2 x i32]* %1587, i64 0, i64 1
  store i32 0, i32* %1589, align 1
  store %struct.Memory* %loadMem_407a01, %struct.Memory** %MEMORY
  %loadMem_407a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RAX.i237
  %1597 = load i64, i64* %PC.i236
  %1598 = add i64 %1597, 5
  store i64 %1598, i64* %PC.i236
  %1599 = xor i64 -2147483648, %1596
  %1600 = trunc i64 %1599 to i32
  %1601 = and i64 %1599, 4294967295
  store i64 %1601, i64* %RAX.i237, align 8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1602, align 1
  %1603 = and i32 %1600, 255
  %1604 = call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1607, i8* %1608, align 1
  %1609 = icmp eq i32 %1600, 0
  %1610 = zext i1 %1609 to i8
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1610, i8* %1611, align 1
  %1612 = lshr i32 %1600, 31
  %1613 = trunc i32 %1612 to i8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1613, i8* %1614, align 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1615, align 1
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1616, align 1
  store %struct.Memory* %loadMem_407a05, %struct.Memory** %MEMORY
  %loadMem_407a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 1
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %EAX.i234 = bitcast %union.anon* %1622 to i32*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1623, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %1624 to %"class.std::bitset"*
  %1625 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %1626 = load i32, i32* %EAX.i234
  %1627 = zext i32 %1626 to i64
  %1628 = load i64, i64* %PC.i233
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC.i233
  %1630 = bitcast i8* %1625 to i32*
  store i32 %1626, i32* %1630, align 1
  %1631 = getelementptr inbounds i8, i8* %1625, i64 4
  %1632 = bitcast i8* %1631 to i32*
  store i32 0, i32* %1632, align 1
  %1633 = getelementptr inbounds i8, i8* %1625, i64 8
  %1634 = bitcast i8* %1633 to i32*
  store i32 0, i32* %1634, align 1
  %1635 = getelementptr inbounds i8, i8* %1625, i64 12
  %1636 = bitcast i8* %1635 to i32*
  store i32 0, i32* %1636, align 1
  store %struct.Memory* %loadMem_407a0a, %struct.Memory** %MEMORY
  %loadMem_407a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 15
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1643, i64 0, i64 0
  %XMM0.i232 = bitcast %union.VectorReg* %1644 to %union.vec128_t*
  %1645 = load i64, i64* %RBP.i231
  %1646 = sub i64 %1645, 76
  %1647 = bitcast %union.vec128_t* %XMM0.i232 to i8*
  %1648 = load i64, i64* %PC.i230
  %1649 = add i64 %1648, 5
  store i64 %1649, i64* %PC.i230
  %1650 = bitcast i8* %1647 to <2 x float>*
  %1651 = load <2 x float>, <2 x float>* %1650, align 1
  %1652 = extractelement <2 x float> %1651, i32 0
  %1653 = inttoptr i64 %1646 to float*
  store float %1652, float* %1653
  store %struct.Memory* %loadMem_407a0e, %struct.Memory** %MEMORY
  %loadMem_407a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %PC.i229
  %1658 = add i64 %1657, 19
  %1659 = load i64, i64* %PC.i229
  %1660 = add i64 %1659, 5
  store i64 %1660, i64* %PC.i229
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1658, i64* %1661, align 8
  store %struct.Memory* %loadMem_407a13, %struct.Memory** %MEMORY
  br label %block_.L_407a26

block_.L_407a18:                                  ; preds = %routine_ucomiss_0xab0f1c___xmm1.exit
  %loadMem_407a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1666 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1665, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %1666 to %"class.std::bitset"*
  %1667 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1668 = load i64, i64* %PC.i227
  %1669 = add i64 %1668, 9
  store i64 %1669, i64* %PC.i227
  %1670 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %1671 = bitcast i8* %1667 to float*
  store float %1670, float* %1671, align 1
  %1672 = getelementptr inbounds i8, i8* %1667, i64 4
  %1673 = bitcast i8* %1672 to float*
  store float 0.000000e+00, float* %1673, align 1
  %1674 = getelementptr inbounds i8, i8* %1667, i64 8
  %1675 = bitcast i8* %1674 to float*
  store float 0.000000e+00, float* %1675, align 1
  %1676 = getelementptr inbounds i8, i8* %1667, i64 12
  %1677 = bitcast i8* %1676 to float*
  store float 0.000000e+00, float* %1677, align 1
  store %struct.Memory* %loadMem_407a18, %struct.Memory** %MEMORY
  %loadMem_407a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1684, i64 0, i64 0
  %XMM0.i226 = bitcast %union.VectorReg* %1685 to %union.vec128_t*
  %1686 = load i64, i64* %RBP.i225
  %1687 = sub i64 %1686, 76
  %1688 = bitcast %union.vec128_t* %XMM0.i226 to i8*
  %1689 = load i64, i64* %PC.i224
  %1690 = add i64 %1689, 5
  store i64 %1690, i64* %PC.i224
  %1691 = bitcast i8* %1688 to <2 x float>*
  %1692 = load <2 x float>, <2 x float>* %1691, align 1
  %1693 = extractelement <2 x float> %1692, i32 0
  %1694 = inttoptr i64 %1687 to float*
  store float %1693, float* %1694
  store %struct.Memory* %loadMem_407a21, %struct.Memory** %MEMORY
  br label %block_.L_407a26

block_.L_407a26:                                  ; preds = %block_.L_407a18, %block_4079f8
  %loadMem_407a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 33
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 15
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1701, i64 0, i64 0
  %YMM0.i223 = bitcast %union.VectorReg* %1702 to %"class.std::bitset"*
  %1703 = bitcast %"class.std::bitset"* %YMM0.i223 to i8*
  %1704 = load i64, i64* %RBP.i222
  %1705 = sub i64 %1704, 76
  %1706 = load i64, i64* %PC.i221
  %1707 = add i64 %1706, 5
  store i64 %1707, i64* %PC.i221
  %1708 = inttoptr i64 %1705 to float*
  %1709 = load float, float* %1708
  %1710 = bitcast i8* %1703 to float*
  store float %1709, float* %1710, align 1
  %1711 = getelementptr inbounds i8, i8* %1703, i64 4
  %1712 = bitcast i8* %1711 to float*
  store float 0.000000e+00, float* %1712, align 1
  %1713 = getelementptr inbounds i8, i8* %1703, i64 8
  %1714 = bitcast i8* %1713 to float*
  store float 0.000000e+00, float* %1714, align 1
  %1715 = getelementptr inbounds i8, i8* %1703, i64 12
  %1716 = bitcast i8* %1715 to float*
  store float 0.000000e+00, float* %1716, align 1
  store %struct.Memory* %loadMem_407a26, %struct.Memory** %MEMORY
  %loadMem_407a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 11
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RDI.i220 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %PC.i219
  %1724 = add i64 %1723, 10
  store i64 %1724, i64* %PC.i219
  store i64 ptrtoint (%G__0x57a0df_type* @G__0x57a0df to i64), i64* %RDI.i220, align 8
  store %struct.Memory* %loadMem_407a2b, %struct.Memory** %MEMORY
  %loadMem_407a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 33
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1727 to i64*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1728, i64 0, i64 1
  %YMM1.i217 = bitcast %union.VectorReg* %1729 to %"class.std::bitset"*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1730, i64 0, i64 0
  %XMM0.i218 = bitcast %union.VectorReg* %1731 to %union.vec128_t*
  %1732 = bitcast %"class.std::bitset"* %YMM1.i217 to i8*
  %1733 = bitcast %union.vec128_t* %XMM0.i218 to i8*
  %1734 = load i64, i64* %PC.i216
  %1735 = add i64 %1734, 4
  store i64 %1735, i64* %PC.i216
  %1736 = bitcast i8* %1733 to <2 x float>*
  %1737 = load <2 x float>, <2 x float>* %1736, align 1
  %1738 = extractelement <2 x float> %1737, i32 0
  %1739 = fpext float %1738 to double
  %1740 = bitcast i8* %1732 to double*
  store double %1739, double* %1740, align 1
  store %struct.Memory* %loadMem_407a35, %struct.Memory** %MEMORY
  %loadMem_407a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 9
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RSI.i214 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 15
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %RBP.i215
  %1751 = sub i64 %1750, 48
  %1752 = load i64, i64* %PC.i213
  %1753 = add i64 %1752, 4
  store i64 %1753, i64* %PC.i213
  %1754 = inttoptr i64 %1751 to i64*
  %1755 = load i64, i64* %1754
  store i64 %1755, i64* %RSI.i214, align 8
  store %struct.Memory* %loadMem_407a39, %struct.Memory** %MEMORY
  %loadMem_407a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1763 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1762, i64 0, i64 0
  %YMM0.i212 = bitcast %union.VectorReg* %1763 to %"class.std::bitset"*
  %1764 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %1765 = load i64, i64* %RBP.i211
  %1766 = sub i64 %1765, 72
  %1767 = load i64, i64* %PC.i210
  %1768 = add i64 %1767, 5
  store i64 %1768, i64* %PC.i210
  %1769 = inttoptr i64 %1766 to double*
  %1770 = load double, double* %1769
  %1771 = bitcast i8* %1764 to double*
  store double %1770, double* %1771, align 1
  %1772 = getelementptr inbounds i8, i8* %1764, i64 8
  %1773 = bitcast i8* %1772 to double*
  store double 0.000000e+00, double* %1773, align 1
  store %struct.Memory* %loadMem_407a3d, %struct.Memory** %MEMORY
  %loadMem_407a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 7
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RDX.i208 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 15
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1782 to i64*
  %1783 = load i64, i64* %RBP.i209
  %1784 = sub i64 %1783, 64
  %1785 = load i64, i64* %PC.i207
  %1786 = add i64 %1785, 4
  store i64 %1786, i64* %PC.i207
  %1787 = inttoptr i64 %1784 to i64*
  %1788 = load i64, i64* %1787
  store i64 %1788, i64* %RDX.i208, align 8
  store %struct.Memory* %loadMem_407a42, %struct.Memory** %MEMORY
  %loadMem_407a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 1
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %1795 = bitcast %union.anon* %1794 to %struct.anon.2*
  %AL.i206 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1795, i32 0, i32 0
  %1796 = load i64, i64* %PC.i205
  %1797 = add i64 %1796, 2
  store i64 %1797, i64* %PC.i205
  store i8 2, i8* %AL.i206, align 1
  store %struct.Memory* %loadMem_407a46, %struct.Memory** %MEMORY
  %loadMem1_407a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %PC.i204
  %1802 = add i64 %1801, 303976
  %1803 = load i64, i64* %PC.i204
  %1804 = add i64 %1803, 5
  %1805 = load i64, i64* %PC.i204
  %1806 = add i64 %1805, 5
  store i64 %1806, i64* %PC.i204
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1808 = load i64, i64* %1807, align 8
  %1809 = add i64 %1808, -8
  %1810 = inttoptr i64 %1809 to i64*
  store i64 %1804, i64* %1810
  store i64 %1809, i64* %1807, align 8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1802, i64* %1811, align 8
  store %struct.Memory* %loadMem1_407a48, %struct.Memory** %MEMORY
  %loadMem2_407a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407a48 = load i64, i64* %3
  %call2_407a48 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_407a48, %struct.Memory* %loadMem2_407a48)
  store %struct.Memory* %call2_407a48, %struct.Memory** %MEMORY
  %loadMem_407a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %1817 to i32*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i203
  %1822 = sub i64 %1821, 80
  %1823 = load i32, i32* %EAX.i202
  %1824 = zext i32 %1823 to i64
  %1825 = load i64, i64* %PC.i201
  %1826 = add i64 %1825, 3
  store i64 %1826, i64* %PC.i201
  %1827 = inttoptr i64 %1822 to i32*
  store i32 %1823, i32* %1827
  store %struct.Memory* %loadMem_407a4d, %struct.Memory** %MEMORY
  br label %block_.L_407a50

block_.L_407a50:                                  ; preds = %block_.L_407a26, %block_.L_407924
  %loadMem_407a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 11
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RDI.i200 = bitcast %union.anon* %1833 to i64*
  %1834 = load i64, i64* %PC.i199
  %1835 = add i64 %1834, 8
  store i64 %1835, i64* %PC.i199
  %1836 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %1836, i64* %RDI.i200, align 8
  store %struct.Memory* %loadMem_407a50, %struct.Memory** %MEMORY
  %loadMem1_407a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %PC.i198
  %1841 = add i64 %1840, -26936
  %1842 = load i64, i64* %PC.i198
  %1843 = add i64 %1842, 5
  %1844 = load i64, i64* %PC.i198
  %1845 = add i64 %1844, 5
  store i64 %1845, i64* %PC.i198
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1847 = load i64, i64* %1846, align 8
  %1848 = add i64 %1847, -8
  %1849 = inttoptr i64 %1848 to i64*
  store i64 %1843, i64* %1849
  store i64 %1848, i64* %1846, align 8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1841, i64* %1850, align 8
  store %struct.Memory* %loadMem1_407a58, %struct.Memory** %MEMORY
  %loadMem2_407a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407a58 = load i64, i64* %3
  %1851 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @fflush to i64), %struct.Memory* %loadMem2_407a58)
  store %struct.Memory* %1851, %struct.Memory** %MEMORY
  %loadMem_407a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %1857 to i32*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RBP.i195
  %1862 = sub i64 %1861, 84
  %1863 = load i32, i32* %EAX.i194
  %1864 = zext i32 %1863 to i64
  %1865 = load i64, i64* %PC.i193
  %1866 = add i64 %1865, 3
  store i64 %1866, i64* %PC.i193
  %1867 = inttoptr i64 %1862 to i32*
  store i32 %1863, i32* %1867
  store %struct.Memory* %loadMem_407a5d, %struct.Memory** %MEMORY
  br label %block_.L_407a60

block_.L_407a60:                                  ; preds = %block_.L_407a50, %block_407892
  %loadMem_407a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 15
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RBP.i192
  %1875 = sub i64 %1874, 12
  %1876 = load i64, i64* %PC.i191
  %1877 = add i64 %1876, 4
  store i64 %1877, i64* %PC.i191
  %1878 = inttoptr i64 %1875 to i32*
  %1879 = load i32, i32* %1878
  %1880 = sub i32 %1879, 1
  %1881 = icmp ult i32 %1879, 1
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1882, i8* %1883, align 1
  %1884 = and i32 %1880, 255
  %1885 = call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1888, i8* %1889, align 1
  %1890 = xor i32 %1879, 1
  %1891 = xor i32 %1890, %1880
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1894, i8* %1895, align 1
  %1896 = icmp eq i32 %1880, 0
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1897, i8* %1898, align 1
  %1899 = lshr i32 %1880, 31
  %1900 = trunc i32 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1900, i8* %1901, align 1
  %1902 = lshr i32 %1879, 31
  %1903 = xor i32 %1899, %1902
  %1904 = add i32 %1903, %1902
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1906, i8* %1907, align 1
  store %struct.Memory* %loadMem_407a60, %struct.Memory** %MEMORY
  %loadMem_407a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %PC.i190
  %1912 = add i64 %1911, 29
  %1913 = load i64, i64* %PC.i190
  %1914 = add i64 %1913, 6
  %1915 = load i64, i64* %PC.i190
  %1916 = add i64 %1915, 6
  store i64 %1916, i64* %PC.i190
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1918 = load i8, i8* %1917, align 1
  %1919 = icmp eq i8 %1918, 0
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %BRANCH_TAKEN, align 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1922 = select i1 %1919, i64 %1912, i64 %1914
  store i64 %1922, i64* %1921, align 8
  store %struct.Memory* %loadMem_407a64, %struct.Memory** %MEMORY
  %loadBr_407a64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407a64 = icmp eq i8 %loadBr_407a64, 1
  br i1 %cmpBr_407a64, label %block_.L_407a81, label %block_407a6a

block_407a6a:                                     ; preds = %block_.L_407a60
  %loadMem_407a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1926, i64 0, i64 0
  %YMM0.i189 = bitcast %union.VectorReg* %1927 to %"class.std::bitset"*
  %1928 = bitcast %"class.std::bitset"* %YMM0.i189 to i8*
  %1929 = load i64, i64* %PC.i188
  %1930 = add i64 %1929, 9
  store i64 %1930, i64* %PC.i188
  %1931 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %1932 = bitcast i8* %1928 to float*
  store float %1931, float* %1932, align 1
  %1933 = getelementptr inbounds i8, i8* %1928, i64 4
  %1934 = bitcast i8* %1933 to float*
  store float 0.000000e+00, float* %1934, align 1
  %1935 = getelementptr inbounds i8, i8* %1928, i64 8
  %1936 = bitcast i8* %1935 to float*
  store float 0.000000e+00, float* %1936, align 1
  %1937 = getelementptr inbounds i8, i8* %1928, i64 12
  %1938 = bitcast i8* %1937 to float*
  store float 0.000000e+00, float* %1938, align 1
  store %struct.Memory* %loadMem_407a6a, %struct.Memory** %MEMORY
  %loadMem_407a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1943 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1942, i64 0, i64 0
  %XMM0.i187 = bitcast %union.VectorReg* %1943 to %union.vec128_t*
  %1944 = bitcast %union.vec128_t* %XMM0.i187 to i8*
  %1945 = load i64, i64* %PC.i186
  %1946 = add i64 %1945, 9
  store i64 %1946, i64* %PC.i186
  %1947 = bitcast i8* %1944 to <2 x float>*
  %1948 = load <2 x float>, <2 x float>* %1947, align 1
  %1949 = extractelement <2 x float> %1948, i32 0
  store float %1949, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*)
  store %struct.Memory* %loadMem_407a73, %struct.Memory** %MEMORY
  %loadMem_407a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %PC.i185
  %1954 = add i64 %1953, 23
  %1955 = load i64, i64* %PC.i185
  %1956 = add i64 %1955, 5
  store i64 %1956, i64* %PC.i185
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1954, i64* %1957, align 8
  store %struct.Memory* %loadMem_407a7c, %struct.Memory** %MEMORY
  br label %block_.L_407a93

block_.L_407a81:                                  ; preds = %block_.L_407a60
  %loadMem_407a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1962 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1961, i64 0, i64 0
  %YMM0.i184 = bitcast %union.VectorReg* %1962 to %"class.std::bitset"*
  %1963 = bitcast %"class.std::bitset"* %YMM0.i184 to i8*
  %1964 = load i64, i64* %PC.i183
  %1965 = add i64 %1964, 9
  store i64 %1965, i64* %PC.i183
  %1966 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %1967 = bitcast i8* %1963 to float*
  store float %1966, float* %1967, align 1
  %1968 = getelementptr inbounds i8, i8* %1963, i64 4
  %1969 = bitcast i8* %1968 to float*
  store float 0.000000e+00, float* %1969, align 1
  %1970 = getelementptr inbounds i8, i8* %1963, i64 8
  %1971 = bitcast i8* %1970 to float*
  store float 0.000000e+00, float* %1971, align 1
  %1972 = getelementptr inbounds i8, i8* %1963, i64 12
  %1973 = bitcast i8* %1972 to float*
  store float 0.000000e+00, float* %1973, align 1
  store %struct.Memory* %loadMem_407a81, %struct.Memory** %MEMORY
  %loadMem_407a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1978 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1977, i64 0, i64 0
  %XMM0.i182 = bitcast %union.VectorReg* %1978 to %union.vec128_t*
  %1979 = bitcast %union.vec128_t* %XMM0.i182 to i8*
  %1980 = load i64, i64* %PC.i181
  %1981 = add i64 %1980, 9
  store i64 %1981, i64* %PC.i181
  %1982 = bitcast i8* %1979 to <2 x float>*
  %1983 = load <2 x float>, <2 x float>* %1982, align 1
  %1984 = extractelement <2 x float> %1983, i32 0
  store float %1984, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*)
  store %struct.Memory* %loadMem_407a8a, %struct.Memory** %MEMORY
  br label %block_.L_407a93

block_.L_407a93:                                  ; preds = %block_.L_407a81, %block_407a6a
  %loadMem_407a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %PC.i180
  %1989 = add i64 %1988, 17
  %1990 = load i64, i64* %PC.i180
  %1991 = add i64 %1990, 5
  store i64 %1991, i64* %PC.i180
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1989, i64* %1992, align 8
  store %struct.Memory* %loadMem_407a93, %struct.Memory** %MEMORY
  br label %block_.L_407aa4

block_.L_407a98:                                  ; preds = %entry
  %loadMem_407a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1996, i64 0, i64 0
  %YMM0.i178 = bitcast %union.VectorReg* %1997 to %"class.std::bitset"*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1999 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1998, i64 0, i64 0
  %XMM0.i179 = bitcast %union.VectorReg* %1999 to %union.vec128_t*
  %2000 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %2001 = bitcast %"class.std::bitset"* %YMM0.i178 to i8*
  %2002 = bitcast %union.vec128_t* %XMM0.i179 to i8*
  %2003 = load i64, i64* %PC.i177
  %2004 = add i64 %2003, 3
  store i64 %2004, i64* %PC.i177
  %2005 = bitcast i8* %2001 to i64*
  %2006 = load i64, i64* %2005, align 1
  %2007 = getelementptr inbounds i8, i8* %2001, i64 8
  %2008 = bitcast i8* %2007 to i64*
  %2009 = load i64, i64* %2008, align 1
  %2010 = bitcast i8* %2002 to i64*
  %2011 = load i64, i64* %2010, align 1
  %2012 = getelementptr inbounds i8, i8* %2002, i64 8
  %2013 = bitcast i8* %2012 to i64*
  %2014 = load i64, i64* %2013, align 1
  %2015 = xor i64 %2011, %2006
  %2016 = xor i64 %2014, %2009
  %2017 = trunc i64 %2015 to i32
  %2018 = lshr i64 %2015, 32
  %2019 = trunc i64 %2018 to i32
  %2020 = bitcast i8* %2000 to i32*
  store i32 %2017, i32* %2020, align 1
  %2021 = getelementptr inbounds i8, i8* %2000, i64 4
  %2022 = bitcast i8* %2021 to i32*
  store i32 %2019, i32* %2022, align 1
  %2023 = trunc i64 %2016 to i32
  %2024 = getelementptr inbounds i8, i8* %2000, i64 8
  %2025 = bitcast i8* %2024 to i32*
  store i32 %2023, i32* %2025, align 1
  %2026 = lshr i64 %2016, 32
  %2027 = trunc i64 %2026 to i32
  %2028 = getelementptr inbounds i8, i8* %2000, i64 12
  %2029 = bitcast i8* %2028 to i32*
  store i32 %2027, i32* %2029, align 1
  store %struct.Memory* %loadMem_407a98, %struct.Memory** %MEMORY
  %loadMem_407a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2033, i64 0, i64 0
  %XMM0.i176 = bitcast %union.VectorReg* %2034 to %union.vec128_t*
  %2035 = bitcast %union.vec128_t* %XMM0.i176 to i8*
  %2036 = load i64, i64* %PC.i175
  %2037 = add i64 %2036, 9
  store i64 %2037, i64* %PC.i175
  %2038 = bitcast i8* %2035 to <2 x float>*
  %2039 = load <2 x float>, <2 x float>* %2038, align 1
  %2040 = extractelement <2 x float> %2039, i32 0
  store float %2040, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*)
  store %struct.Memory* %loadMem_407a9b, %struct.Memory** %MEMORY
  br label %block_.L_407aa4

block_.L_407aa4:                                  ; preds = %block_.L_407a98, %block_.L_407a93
  %loadMem_407aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %PC.i174
  %2045 = add i64 %2044, 8
  store i64 %2045, i64* %PC.i174
  %2046 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2047, align 1
  %2048 = and i32 %2046, 255
  %2049 = call i32 @llvm.ctpop.i32(i32 %2048)
  %2050 = trunc i32 %2049 to i8
  %2051 = and i8 %2050, 1
  %2052 = xor i8 %2051, 1
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2052, i8* %2053, align 1
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2054, align 1
  %2055 = icmp eq i32 %2046, 0
  %2056 = zext i1 %2055 to i8
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2056, i8* %2057, align 1
  %2058 = lshr i32 %2046, 31
  %2059 = trunc i32 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2059, i8* %2060, align 1
  %2061 = lshr i32 %2046, 31
  %2062 = xor i32 %2058, %2061
  %2063 = add i32 %2062, %2061
  %2064 = icmp eq i32 %2063, 2
  %2065 = zext i1 %2064 to i8
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2065, i8* %2066, align 1
  store %struct.Memory* %loadMem_407aa4, %struct.Memory** %MEMORY
  %loadMem_407aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2069 to i64*
  %2070 = load i64, i64* %PC.i173
  %2071 = add i64 %2070, 11
  %2072 = load i64, i64* %PC.i173
  %2073 = add i64 %2072, 6
  %2074 = load i64, i64* %PC.i173
  %2075 = add i64 %2074, 6
  store i64 %2075, i64* %PC.i173
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2077 = load i8, i8* %2076, align 1
  %2078 = icmp eq i8 %2077, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %BRANCH_TAKEN, align 1
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2081 = select i1 %2078, i64 %2071, i64 %2073
  store i64 %2081, i64* %2080, align 8
  store %struct.Memory* %loadMem_407aac, %struct.Memory** %MEMORY
  %loadBr_407aac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407aac = icmp eq i8 %loadBr_407aac, 1
  br i1 %cmpBr_407aac, label %block_.L_407ab7, label %block_407ab2

block_407ab2:                                     ; preds = %block_.L_407aa4
  %loadMem_407ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2084 to i64*
  %2085 = load i64, i64* %PC.i172
  %2086 = add i64 %2085, 45
  %2087 = load i64, i64* %PC.i172
  %2088 = add i64 %2087, 5
  store i64 %2088, i64* %PC.i172
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2086, i64* %2089, align 8
  store %struct.Memory* %loadMem_407ab2, %struct.Memory** %MEMORY
  br label %block_.L_407adf

block_.L_407ab7:                                  ; preds = %block_.L_407aa4
  %loadMem_407ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 11
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %PC.i170
  %2097 = add i64 %2096, 10
  store i64 %2097, i64* %PC.i170
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI.i171, align 8
  store %struct.Memory* %loadMem_407ab7, %struct.Memory** %MEMORY
  %loadMem_407ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 9
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %2103 to i64*
  %2104 = load i64, i64* %PC.i168
  %2105 = add i64 %2104, 5
  store i64 %2105, i64* %PC.i168
  store i64 831, i64* %RSI.i169, align 8
  store %struct.Memory* %loadMem_407ac1, %struct.Memory** %MEMORY
  %loadMem_407ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 7
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %2111 to i64*
  %2112 = load i64, i64* %PC.i166
  %2113 = add i64 %2112, 10
  store i64 %2113, i64* %PC.i166
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i167, align 8
  store %struct.Memory* %loadMem_407ac6, %struct.Memory** %MEMORY
  %loadMem_407ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 1
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %2119 to i64*
  %2120 = load i64, i64* %PC.i164
  %2121 = add i64 %2120, 5
  store i64 %2121, i64* %PC.i164
  store i64 4294967295, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_407ad0, %struct.Memory** %MEMORY
  %loadMem_407ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 1
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %EAX.i162 = bitcast %union.anon* %2127 to i32*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 5
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %2130 to i64*
  %2131 = load i32, i32* %EAX.i162
  %2132 = zext i32 %2131 to i64
  %2133 = load i64, i64* %PC.i161
  %2134 = add i64 %2133, 2
  store i64 %2134, i64* %PC.i161
  %2135 = and i64 %2132, 4294967295
  store i64 %2135, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_407ad5, %struct.Memory** %MEMORY
  %loadMem_407ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 1
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %2141 to i32*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 17
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %R8D.i160 = bitcast %union.anon* %2144 to i32*
  %2145 = bitcast i32* %R8D.i160 to i64*
  %2146 = load i32, i32* %EAX.i159
  %2147 = zext i32 %2146 to i64
  %2148 = load i64, i64* %PC.i158
  %2149 = add i64 %2148, 3
  store i64 %2149, i64* %PC.i158
  %2150 = and i64 %2147, 4294967295
  store i64 %2150, i64* %2145, align 8
  store %struct.Memory* %loadMem_407ad7, %struct.Memory** %MEMORY
  %loadMem1_407ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %PC.i157
  %2155 = add i64 %2154, 304566
  %2156 = load i64, i64* %PC.i157
  %2157 = add i64 %2156, 5
  %2158 = load i64, i64* %PC.i157
  %2159 = add i64 %2158, 5
  store i64 %2159, i64* %PC.i157
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2161 = load i64, i64* %2160, align 8
  %2162 = add i64 %2161, -8
  %2163 = inttoptr i64 %2162 to i64*
  store i64 %2157, i64* %2163
  store i64 %2162, i64* %2160, align 8
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2155, i64* %2164, align 8
  store %struct.Memory* %loadMem1_407ada, %struct.Memory** %MEMORY
  %loadMem2_407ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407ada = load i64, i64* %3
  %call2_407ada = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_407ada, %struct.Memory* %loadMem2_407ada)
  store %struct.Memory* %call2_407ada, %struct.Memory** %MEMORY
  br label %block_.L_407adf

block_.L_407adf:                                  ; preds = %block_.L_407ab7, %block_407ab2
  %loadMem_407adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 11
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RDI.i155 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 15
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %RBP.i156
  %2175 = sub i64 %2174, 12
  %2176 = load i64, i64* %PC.i154
  %2177 = add i64 %2176, 3
  store i64 %2177, i64* %PC.i154
  %2178 = inttoptr i64 %2175 to i32*
  %2179 = load i32, i32* %2178
  %2180 = zext i32 %2179 to i64
  store i64 %2180, i64* %RDI.i155, align 8
  store %struct.Memory* %loadMem_407adf, %struct.Memory** %MEMORY
  %loadMem1_407ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %PC.i153
  %2185 = add i64 %2184, 535726
  %2186 = load i64, i64* %PC.i153
  %2187 = add i64 %2186, 5
  %2188 = load i64, i64* %PC.i153
  %2189 = add i64 %2188, 5
  store i64 %2189, i64* %PC.i153
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2191 = load i64, i64* %2190, align 8
  %2192 = add i64 %2191, -8
  %2193 = inttoptr i64 %2192 to i64*
  store i64 %2187, i64* %2193
  store i64 %2192, i64* %2190, align 8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2185, i64* %2194, align 8
  store %struct.Memory* %loadMem1_407ae2, %struct.Memory** %MEMORY
  %loadMem2_407ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407ae2 = load i64, i64* %3
  %call2_407ae2 = call %struct.Memory* @sub_48a790.worm_reasons(%struct.State* %0, i64 %loadPC_407ae2, %struct.Memory* %loadMem2_407ae2)
  store %struct.Memory* %call2_407ae2, %struct.Memory** %MEMORY
  %loadMem_407ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 33
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %2197 to i64*
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 11
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %RDI.i152 = bitcast %union.anon* %2200 to i64*
  %2201 = load i64, i64* %PC.i151
  %2202 = add i64 %2201, 7
  store i64 %2202, i64* %PC.i151
  %2203 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %2204 = zext i32 %2203 to i64
  store i64 %2204, i64* %RDI.i152, align 8
  store %struct.Memory* %loadMem_407ae7, %struct.Memory** %MEMORY
  %loadMem_407aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 11
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %EDI.i149 = bitcast %union.anon* %2210 to i32*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RBP.i150
  %2215 = sub i64 %2214, 20
  %2216 = load i32, i32* %EDI.i149
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC.i148
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC.i148
  %2220 = inttoptr i64 %2215 to i32*
  store i32 %2216, i32* %2220
  store %struct.Memory* %loadMem_407aee, %struct.Memory** %MEMORY
  %loadMem_407af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 33
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %PC.i147
  %2225 = add i64 %2224, 8
  store i64 %2225, i64* %PC.i147
  %2226 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2227, align 1
  %2228 = and i32 %2226, 255
  %2229 = call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2232, i8* %2233, align 1
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2234, align 1
  %2235 = icmp eq i32 %2226, 0
  %2236 = zext i1 %2235 to i8
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2236, i8* %2237, align 1
  %2238 = lshr i32 %2226, 31
  %2239 = trunc i32 %2238 to i8
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2239, i8* %2240, align 1
  %2241 = lshr i32 %2226, 31
  %2242 = xor i32 %2238, %2241
  %2243 = add i32 %2242, %2241
  %2244 = icmp eq i32 %2243, 2
  %2245 = zext i1 %2244 to i8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2245, i8* %2246, align 1
  store %struct.Memory* %loadMem_407af1, %struct.Memory** %MEMORY
  %loadMem_407af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %PC.i146
  %2251 = add i64 %2250, 23
  %2252 = load i64, i64* %PC.i146
  %2253 = add i64 %2252, 6
  %2254 = load i64, i64* %PC.i146
  %2255 = add i64 %2254, 6
  store i64 %2255, i64* %PC.i146
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2257 = load i8, i8* %2256, align 1
  %2258 = icmp ne i8 %2257, 0
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2260 = load i8, i8* %2259, align 1
  %2261 = icmp ne i8 %2260, 0
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2263 = load i8, i8* %2262, align 1
  %2264 = icmp ne i8 %2263, 0
  %2265 = xor i1 %2261, %2264
  %2266 = or i1 %2258, %2265
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %BRANCH_TAKEN, align 1
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2269 = select i1 %2266, i64 %2251, i64 %2253
  store i64 %2269, i64* %2268, align 8
  store %struct.Memory* %loadMem_407af9, %struct.Memory** %MEMORY
  %loadBr_407af9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407af9 = icmp eq i8 %loadBr_407af9, 1
  br i1 %cmpBr_407af9, label %block_.L_407b10, label %block_407aff

block_407aff:                                     ; preds = %block_.L_407adf
  %loadMem_407aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 33
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 1
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %PC.i144
  %2277 = add i64 %2276, 7
  store i64 %2277, i64* %PC.i144
  %2278 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_407aff, %struct.Memory** %MEMORY
  %loadMem_407b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 1
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %2285 to i64*
  %2286 = load i64, i64* %RAX.i143
  %2287 = load i64, i64* %PC.i142
  %2288 = add i64 %2287, 3
  store i64 %2288, i64* %PC.i142
  %2289 = trunc i64 %2286 to i32
  %2290 = add i32 -1, %2289
  %2291 = zext i32 %2290 to i64
  store i64 %2291, i64* %RAX.i143, align 8
  %2292 = icmp ult i32 %2290, %2289
  %2293 = icmp ult i32 %2290, -1
  %2294 = or i1 %2292, %2293
  %2295 = zext i1 %2294 to i8
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2295, i8* %2296, align 1
  %2297 = and i32 %2290, 255
  %2298 = call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2301, i8* %2302, align 1
  %2303 = xor i64 -1, %2286
  %2304 = trunc i64 %2303 to i32
  %2305 = xor i32 %2304, %2290
  %2306 = lshr i32 %2305, 4
  %2307 = trunc i32 %2306 to i8
  %2308 = and i8 %2307, 1
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2308, i8* %2309, align 1
  %2310 = icmp eq i32 %2290, 0
  %2311 = zext i1 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2311, i8* %2312, align 1
  %2313 = lshr i32 %2290, 31
  %2314 = trunc i32 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2314, i8* %2315, align 1
  %2316 = lshr i32 %2289, 31
  %2317 = xor i32 %2313, %2316
  %2318 = xor i32 %2313, 1
  %2319 = add i32 %2317, %2318
  %2320 = icmp eq i32 %2319, 2
  %2321 = zext i1 %2320 to i8
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2321, i8* %2322, align 1
  store %struct.Memory* %loadMem_407b06, %struct.Memory** %MEMORY
  %loadMem_407b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 1
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %2328 to i32*
  %2329 = load i32, i32* %EAX.i141
  %2330 = zext i32 %2329 to i64
  %2331 = load i64, i64* %PC.i140
  %2332 = add i64 %2331, 7
  store i64 %2332, i64* %PC.i140
  store i32 %2329, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_407b09, %struct.Memory** %MEMORY
  br label %block_.L_407b10

block_.L_407b10:                                  ; preds = %block_407aff, %block_.L_407adf
  %loadMem_407b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 33
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 11
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RDI.i138 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 15
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %2341 to i64*
  %2342 = load i64, i64* %RBP.i139
  %2343 = sub i64 %2342, 12
  %2344 = load i64, i64* %PC.i137
  %2345 = add i64 %2344, 3
  store i64 %2345, i64* %PC.i137
  %2346 = inttoptr i64 %2343 to i32*
  %2347 = load i32, i32* %2346
  %2348 = zext i32 %2347 to i64
  store i64 %2348, i64* %RDI.i138, align 8
  store %struct.Memory* %loadMem_407b10, %struct.Memory** %MEMORY
  %loadMem1_407b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2351 to i64*
  %2352 = load i64, i64* %PC.i136
  %2353 = add i64 %2352, 276893
  %2354 = load i64, i64* %PC.i136
  %2355 = add i64 %2354, 5
  %2356 = load i64, i64* %PC.i136
  %2357 = add i64 %2356, 5
  store i64 %2357, i64* %PC.i136
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2359 = load i64, i64* %2358, align 8
  %2360 = add i64 %2359, -8
  %2361 = inttoptr i64 %2360 to i64*
  store i64 %2355, i64* %2361
  store i64 %2360, i64* %2358, align 8
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2353, i64* %2362, align 8
  store %struct.Memory* %loadMem1_407b13, %struct.Memory** %MEMORY
  %loadMem2_407b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407b13 = load i64, i64* %3
  %call2_407b13 = call %struct.Memory* @sub_44b4b0.owl_reasons(%struct.State* %0, i64 %loadPC_407b13, %struct.Memory* %loadMem2_407b13)
  store %struct.Memory* %call2_407b13, %struct.Memory** %MEMORY
  %loadMem_407b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 11
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RDI.i134 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 15
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2371 to i64*
  %2372 = load i64, i64* %RBP.i135
  %2373 = sub i64 %2372, 20
  %2374 = load i64, i64* %PC.i133
  %2375 = add i64 %2374, 3
  store i64 %2375, i64* %PC.i133
  %2376 = inttoptr i64 %2373 to i32*
  %2377 = load i32, i32* %2376
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RDI.i134, align 8
  store %struct.Memory* %loadMem_407b18, %struct.Memory** %MEMORY
  %loadMem_407b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 11
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2384 to i32*
  %2385 = load i32, i32* %EDI.i
  %2386 = zext i32 %2385 to i64
  %2387 = load i64, i64* %PC.i132
  %2388 = add i64 %2387, 7
  store i64 %2388, i64* %PC.i132
  store i32 %2385, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  store %struct.Memory* %loadMem_407b1b, %struct.Memory** %MEMORY
  %loadMem_407b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 33
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 11
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RDI.i130 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 15
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %RBP.i131
  %2399 = sub i64 %2398, 12
  %2400 = load i64, i64* %PC.i129
  %2401 = add i64 %2400, 3
  store i64 %2401, i64* %PC.i129
  %2402 = inttoptr i64 %2399 to i32*
  %2403 = load i32, i32* %2402
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RDI.i130, align 8
  store %struct.Memory* %loadMem_407b22, %struct.Memory** %MEMORY
  %loadMem1_407b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2407 to i64*
  %2408 = load i64, i64* %PC.i128
  %2409 = add i64 %2408, 68571
  %2410 = load i64, i64* %PC.i128
  %2411 = add i64 %2410, 5
  %2412 = load i64, i64* %PC.i128
  %2413 = add i64 %2412, 5
  store i64 %2413, i64* %PC.i128
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2415 = load i64, i64* %2414, align 8
  %2416 = add i64 %2415, -8
  %2417 = inttoptr i64 %2416 to i64*
  store i64 %2411, i64* %2417
  store i64 %2416, i64* %2414, align 8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2409, i64* %2418, align 8
  store %struct.Memory* %loadMem1_407b25, %struct.Memory** %MEMORY
  %loadMem2_407b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407b25 = load i64, i64* %3
  %call2_407b25 = call %struct.Memory* @sub_418700.combinations(%struct.State* %0, i64 %loadPC_407b25, %struct.Memory* %loadMem2_407b25)
  store %struct.Memory* %call2_407b25, %struct.Memory** %MEMORY
  %loadMem_407b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %PC.i127
  %2423 = add i64 %2422, 8
  store i64 %2423, i64* %PC.i127
  %2424 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2425, align 1
  %2426 = and i32 %2424, 255
  %2427 = call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2430, i8* %2431, align 1
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2432, align 1
  %2433 = icmp eq i32 %2424, 0
  %2434 = zext i1 %2433 to i8
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2434, i8* %2435, align 1
  %2436 = lshr i32 %2424, 31
  %2437 = trunc i32 %2436 to i8
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2437, i8* %2438, align 1
  %2439 = lshr i32 %2424, 31
  %2440 = xor i32 %2436, %2439
  %2441 = add i32 %2440, %2439
  %2442 = icmp eq i32 %2441, 2
  %2443 = zext i1 %2442 to i8
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2443, i8* %2444, align 1
  store %struct.Memory* %loadMem_407b2a, %struct.Memory** %MEMORY
  %loadMem_407b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2446 = getelementptr inbounds %struct.GPR, %struct.GPR* %2445, i32 0, i32 33
  %2447 = getelementptr inbounds %struct.Reg, %struct.Reg* %2446, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2447 to i64*
  %2448 = load i64, i64* %PC.i126
  %2449 = add i64 %2448, 11
  %2450 = load i64, i64* %PC.i126
  %2451 = add i64 %2450, 6
  %2452 = load i64, i64* %PC.i126
  %2453 = add i64 %2452, 6
  store i64 %2453, i64* %PC.i126
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2455 = load i8, i8* %2454, align 1
  %2456 = icmp eq i8 %2455, 0
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %BRANCH_TAKEN, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2459 = select i1 %2456, i64 %2449, i64 %2451
  store i64 %2459, i64* %2458, align 8
  store %struct.Memory* %loadMem_407b32, %struct.Memory** %MEMORY
  %loadBr_407b32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407b32 = icmp eq i8 %loadBr_407b32, 1
  br i1 %cmpBr_407b32, label %block_.L_407b3d, label %block_407b38

block_407b38:                                     ; preds = %block_.L_407b10
  %loadMem_407b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2462 to i64*
  %2463 = load i64, i64* %PC.i125
  %2464 = add i64 %2463, 45
  %2465 = load i64, i64* %PC.i125
  %2466 = add i64 %2465, 5
  store i64 %2466, i64* %PC.i125
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2464, i64* %2467, align 8
  store %struct.Memory* %loadMem_407b38, %struct.Memory** %MEMORY
  br label %block_.L_407b65

block_.L_407b3d:                                  ; preds = %block_.L_407b10
  %loadMem_407b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 11
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %PC.i123
  %2475 = add i64 %2474, 10
  store i64 %2475, i64* %PC.i123
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI.i124, align 8
  store %struct.Memory* %loadMem_407b3d, %struct.Memory** %MEMORY
  %loadMem_407b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 9
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RSI.i122 = bitcast %union.anon* %2481 to i64*
  %2482 = load i64, i64* %PC.i121
  %2483 = add i64 %2482, 5
  store i64 %2483, i64* %PC.i121
  store i64 849, i64* %RSI.i122, align 8
  store %struct.Memory* %loadMem_407b47, %struct.Memory** %MEMORY
  %loadMem_407b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 7
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RDX.i120 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %PC.i119
  %2491 = add i64 %2490, 10
  store i64 %2491, i64* %PC.i119
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i120, align 8
  store %struct.Memory* %loadMem_407b4c, %struct.Memory** %MEMORY
  %loadMem_407b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 1
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %2497 to i64*
  %2498 = load i64, i64* %PC.i117
  %2499 = add i64 %2498, 5
  store i64 %2499, i64* %PC.i117
  store i64 4294967295, i64* %RAX.i118, align 8
  store %struct.Memory* %loadMem_407b56, %struct.Memory** %MEMORY
  %loadMem_407b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 1
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %EAX.i115 = bitcast %union.anon* %2505 to i32*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %2508 to i64*
  %2509 = load i32, i32* %EAX.i115
  %2510 = zext i32 %2509 to i64
  %2511 = load i64, i64* %PC.i114
  %2512 = add i64 %2511, 2
  store i64 %2512, i64* %PC.i114
  %2513 = and i64 %2510, 4294967295
  store i64 %2513, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_407b5b, %struct.Memory** %MEMORY
  %loadMem_407b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 1
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %2519 to i32*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 17
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %R8D.i113 = bitcast %union.anon* %2522 to i32*
  %2523 = bitcast i32* %R8D.i113 to i64*
  %2524 = load i32, i32* %EAX.i112
  %2525 = zext i32 %2524 to i64
  %2526 = load i64, i64* %PC.i111
  %2527 = add i64 %2526, 3
  store i64 %2527, i64* %PC.i111
  %2528 = and i64 %2525, 4294967295
  store i64 %2528, i64* %2523, align 8
  store %struct.Memory* %loadMem_407b5d, %struct.Memory** %MEMORY
  %loadMem1_407b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %PC.i110
  %2533 = add i64 %2532, 304432
  %2534 = load i64, i64* %PC.i110
  %2535 = add i64 %2534, 5
  %2536 = load i64, i64* %PC.i110
  %2537 = add i64 %2536, 5
  store i64 %2537, i64* %PC.i110
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2539 = load i64, i64* %2538, align 8
  %2540 = add i64 %2539, -8
  %2541 = inttoptr i64 %2540 to i64*
  store i64 %2535, i64* %2541
  store i64 %2540, i64* %2538, align 8
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2533, i64* %2542, align 8
  store %struct.Memory* %loadMem1_407b60, %struct.Memory** %MEMORY
  %loadMem2_407b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407b60 = load i64, i64* %3
  %call2_407b60 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_407b60, %struct.Memory* %loadMem2_407b60)
  store %struct.Memory* %call2_407b60, %struct.Memory** %MEMORY
  br label %block_.L_407b65

block_.L_407b65:                                  ; preds = %block_.L_407b3d, %block_407b38
  %loadMem_407b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 33
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 9
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 15
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2551 to i64*
  %2552 = load i64, i64* %RBP.i109
  %2553 = sub i64 %2552, 16
  %2554 = load i64, i64* %PC.i107
  %2555 = add i64 %2554, 4
  store i64 %2555, i64* %PC.i107
  store i64 %2553, i64* %RSI.i108, align 8
  store %struct.Memory* %loadMem_407b65, %struct.Memory** %MEMORY
  %loadMem_407b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2559, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %2560 to %"class.std::bitset"*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2561, i64 0, i64 0
  %XMM0.i106 = bitcast %union.VectorReg* %2562 to %union.vec128_t*
  %2563 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %2564 = bitcast %"class.std::bitset"* %YMM0.i105 to i8*
  %2565 = bitcast %union.vec128_t* %XMM0.i106 to i8*
  %2566 = load i64, i64* %PC.i104
  %2567 = add i64 %2566, 3
  store i64 %2567, i64* %PC.i104
  %2568 = bitcast i8* %2564 to i64*
  %2569 = load i64, i64* %2568, align 1
  %2570 = getelementptr inbounds i8, i8* %2564, i64 8
  %2571 = bitcast i8* %2570 to i64*
  %2572 = load i64, i64* %2571, align 1
  %2573 = bitcast i8* %2565 to i64*
  %2574 = load i64, i64* %2573, align 1
  %2575 = getelementptr inbounds i8, i8* %2565, i64 8
  %2576 = bitcast i8* %2575 to i64*
  %2577 = load i64, i64* %2576, align 1
  %2578 = xor i64 %2574, %2569
  %2579 = xor i64 %2577, %2572
  %2580 = trunc i64 %2578 to i32
  %2581 = lshr i64 %2578, 32
  %2582 = trunc i64 %2581 to i32
  %2583 = bitcast i8* %2563 to i32*
  store i32 %2580, i32* %2583, align 1
  %2584 = getelementptr inbounds i8, i8* %2563, i64 4
  %2585 = bitcast i8* %2584 to i32*
  store i32 %2582, i32* %2585, align 1
  %2586 = trunc i64 %2579 to i32
  %2587 = getelementptr inbounds i8, i8* %2563, i64 8
  %2588 = bitcast i8* %2587 to i32*
  store i32 %2586, i32* %2588, align 1
  %2589 = lshr i64 %2579, 32
  %2590 = trunc i64 %2589 to i32
  %2591 = getelementptr inbounds i8, i8* %2563, i64 12
  %2592 = bitcast i8* %2591 to i32*
  store i32 %2590, i32* %2592, align 1
  store %struct.Memory* %loadMem_407b69, %struct.Memory** %MEMORY
  %loadMem_407b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 1
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %EAX.i102 = bitcast %union.anon* %2598 to i32*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 1
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %RAX.i103
  %2603 = load i32, i32* %EAX.i102
  %2604 = zext i32 %2603 to i64
  %2605 = load i64, i64* %PC.i101
  %2606 = add i64 %2605, 2
  store i64 %2606, i64* %PC.i101
  %2607 = xor i64 %2604, %2602
  %2608 = trunc i64 %2607 to i32
  %2609 = and i64 %2607, 4294967295
  store i64 %2609, i64* %RAX.i103, align 8
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2610, align 1
  %2611 = and i32 %2608, 255
  %2612 = call i32 @llvm.ctpop.i32(i32 %2611)
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = xor i8 %2614, 1
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2615, i8* %2616, align 1
  %2617 = icmp eq i32 %2608, 0
  %2618 = zext i1 %2617 to i8
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2618, i8* %2619, align 1
  %2620 = lshr i32 %2608, 31
  %2621 = trunc i32 %2620 to i8
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2621, i8* %2622, align 1
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2623, align 1
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2624, align 1
  store %struct.Memory* %loadMem_407b6c, %struct.Memory** %MEMORY
  %loadMem_407b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %2630 to i32*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RCX.i100 = bitcast %union.anon* %2633 to i64*
  %2634 = load i32, i32* %EAX.i99
  %2635 = zext i32 %2634 to i64
  %2636 = load i64, i64* %PC.i98
  %2637 = add i64 %2636, 2
  store i64 %2637, i64* %PC.i98
  %2638 = and i64 %2635, 4294967295
  store i64 %2638, i64* %RCX.i100, align 8
  store %struct.Memory* %loadMem_407b6e, %struct.Memory** %MEMORY
  %loadMem_407b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2643 = getelementptr inbounds %struct.GPR, %struct.GPR* %2642, i32 0, i32 11
  %2644 = getelementptr inbounds %struct.Reg, %struct.Reg* %2643, i32 0, i32 0
  %RDI.i96 = bitcast %union.anon* %2644 to i64*
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 15
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %RBP.i97
  %2649 = sub i64 %2648, 8
  %2650 = load i64, i64* %PC.i95
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %PC.i95
  %2652 = inttoptr i64 %2649 to i64*
  %2653 = load i64, i64* %2652
  store i64 %2653, i64* %RDI.i96, align 8
  store %struct.Memory* %loadMem_407b70, %struct.Memory** %MEMORY
  %loadMem_407b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 7
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %RDX.i93 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 15
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2662 to i64*
  %2663 = load i64, i64* %RBP.i94
  %2664 = sub i64 %2663, 12
  %2665 = load i64, i64* %PC.i92
  %2666 = add i64 %2665, 3
  store i64 %2666, i64* %PC.i92
  %2667 = inttoptr i64 %2664 to i32*
  %2668 = load i32, i32* %2667
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %RDX.i93, align 8
  store %struct.Memory* %loadMem_407b74, %struct.Memory** %MEMORY
  %loadMem_407b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2673, i64 0, i64 1
  %YMM1.i91 = bitcast %union.VectorReg* %2674 to %"class.std::bitset"*
  %2675 = bitcast %"class.std::bitset"* %YMM1.i91 to i8*
  %2676 = load i64, i64* %PC.i90
  %2677 = add i64 %2676, 9
  store i64 %2677, i64* %PC.i90
  %2678 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %2679 = bitcast i8* %2675 to float*
  store float %2678, float* %2679, align 1
  %2680 = getelementptr inbounds i8, i8* %2675, i64 4
  %2681 = bitcast i8* %2680 to float*
  store float 0.000000e+00, float* %2681, align 1
  %2682 = getelementptr inbounds i8, i8* %2675, i64 8
  %2683 = bitcast i8* %2682 to float*
  store float 0.000000e+00, float* %2683, align 1
  %2684 = getelementptr inbounds i8, i8* %2675, i64 12
  %2685 = bitcast i8* %2684 to float*
  store float 0.000000e+00, float* %2685, align 1
  store %struct.Memory* %loadMem_407b77, %struct.Memory** %MEMORY
  %loadMem1_407b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2688 to i64*
  %2689 = load i64, i64* %PC.i89
  %2690 = add i64 %2689, 477968
  %2691 = load i64, i64* %PC.i89
  %2692 = add i64 %2691, 5
  %2693 = load i64, i64* %PC.i89
  %2694 = add i64 %2693, 5
  store i64 %2694, i64* %PC.i89
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2696 = load i64, i64* %2695, align 8
  %2697 = add i64 %2696, -8
  %2698 = inttoptr i64 %2697 to i64*
  store i64 %2692, i64* %2698
  store i64 %2697, i64* %2695, align 8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2690, i64* %2699, align 8
  store %struct.Memory* %loadMem1_407b80, %struct.Memory** %MEMORY
  %loadMem2_407b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407b80 = load i64, i64* %3
  %call2_407b80 = call %struct.Memory* @sub_47c690.review_move_reasons(%struct.State* %0, i64 %loadPC_407b80, %struct.Memory* %loadMem2_407b80)
  store %struct.Memory* %call2_407b80, %struct.Memory** %MEMORY
  %loadMem_407b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 33
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 1
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %2705 to i32*
  %2706 = load i32, i32* %EAX.i88
  %2707 = zext i32 %2706 to i64
  %2708 = load i64, i64* %PC.i87
  %2709 = add i64 %2708, 3
  store i64 %2709, i64* %PC.i87
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2710, align 1
  %2711 = and i32 %2706, 255
  %2712 = call i32 @llvm.ctpop.i32(i32 %2711)
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2715, i8* %2716, align 1
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2717, align 1
  %2718 = icmp eq i32 %2706, 0
  %2719 = zext i1 %2718 to i8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2719, i8* %2720, align 1
  %2721 = lshr i32 %2706, 31
  %2722 = trunc i32 %2721 to i8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2722, i8* %2723, align 1
  %2724 = lshr i32 %2706, 31
  %2725 = xor i32 %2721, %2724
  %2726 = add i32 %2725, %2724
  %2727 = icmp eq i32 %2726, 2
  %2728 = zext i1 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2728, i8* %2729, align 1
  store %struct.Memory* %loadMem_407b85, %struct.Memory** %MEMORY
  %loadMem_407b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %PC.i86
  %2734 = add i64 %2733, 61
  %2735 = load i64, i64* %PC.i86
  %2736 = add i64 %2735, 6
  %2737 = load i64, i64* %PC.i86
  %2738 = add i64 %2737, 6
  store i64 %2738, i64* %PC.i86
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2740 = load i8, i8* %2739, align 1
  store i8 %2740, i8* %BRANCH_TAKEN, align 1
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2742 = icmp ne i8 %2740, 0
  %2743 = select i1 %2742, i64 %2734, i64 %2736
  store i64 %2743, i64* %2741, align 8
  store %struct.Memory* %loadMem_407b88, %struct.Memory** %MEMORY
  %loadBr_407b88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407b88 = icmp eq i8 %loadBr_407b88, 1
  br i1 %cmpBr_407b88, label %block_.L_407bc5, label %block_407b8e

block_407b8e:                                     ; preds = %block_.L_407b65
  %loadMem_407b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2746 to i64*
  %2747 = load i64, i64* %PC.i85
  %2748 = add i64 %2747, 8
  store i64 %2748, i64* %PC.i85
  %2749 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2750, align 1
  %2751 = and i32 %2749, 255
  %2752 = call i32 @llvm.ctpop.i32(i32 %2751)
  %2753 = trunc i32 %2752 to i8
  %2754 = and i8 %2753, 1
  %2755 = xor i8 %2754, 1
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2755, i8* %2756, align 1
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2757, align 1
  %2758 = icmp eq i32 %2749, 0
  %2759 = zext i1 %2758 to i8
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2759, i8* %2760, align 1
  %2761 = lshr i32 %2749, 31
  %2762 = trunc i32 %2761 to i8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2762, i8* %2763, align 1
  %2764 = lshr i32 %2749, 31
  %2765 = xor i32 %2761, %2764
  %2766 = add i32 %2765, %2764
  %2767 = icmp eq i32 %2766, 2
  %2768 = zext i1 %2767 to i8
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2768, i8* %2769, align 1
  store %struct.Memory* %loadMem_407b8e, %struct.Memory** %MEMORY
  %loadMem_407b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2772 to i64*
  %2773 = load i64, i64* %PC.i84
  %2774 = add i64 %2773, 11
  %2775 = load i64, i64* %PC.i84
  %2776 = add i64 %2775, 6
  %2777 = load i64, i64* %PC.i84
  %2778 = add i64 %2777, 6
  store i64 %2778, i64* %PC.i84
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2780 = load i8, i8* %2779, align 1
  %2781 = icmp eq i8 %2780, 0
  %2782 = zext i1 %2781 to i8
  store i8 %2782, i8* %BRANCH_TAKEN, align 1
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2784 = select i1 %2781, i64 %2774, i64 %2776
  store i64 %2784, i64* %2783, align 8
  store %struct.Memory* %loadMem_407b96, %struct.Memory** %MEMORY
  %loadBr_407b96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407b96 = icmp eq i8 %loadBr_407b96, 1
  br i1 %cmpBr_407b96, label %block_.L_407ba1, label %block_407b9c

block_407b9c:                                     ; preds = %block_407b8e
  %loadMem_407b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2787 to i64*
  %2788 = load i64, i64* %PC.i83
  %2789 = add i64 %2788, 36
  %2790 = load i64, i64* %PC.i83
  %2791 = add i64 %2790, 5
  store i64 %2791, i64* %PC.i83
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2789, i64* %2792, align 8
  store %struct.Memory* %loadMem_407b9c, %struct.Memory** %MEMORY
  br label %block_.L_407bc0

block_.L_407ba1:                                  ; preds = %block_407b8e
  %loadMem_407ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 33
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 11
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RDI.i82 = bitcast %union.anon* %2798 to i64*
  %2799 = load i64, i64* %PC.i81
  %2800 = add i64 %2799, 10
  store i64 %2800, i64* %PC.i81
  store i64 ptrtoint (%G__0x57a10c_type* @G__0x57a10c to i64), i64* %RDI.i82, align 8
  store %struct.Memory* %loadMem_407ba1, %struct.Memory** %MEMORY
  %loadMem_407bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 1
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 15
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %RBP.i80
  %2811 = sub i64 %2810, 8
  %2812 = load i64, i64* %PC.i78
  %2813 = add i64 %2812, 4
  store i64 %2813, i64* %PC.i78
  %2814 = inttoptr i64 %2811 to i64*
  %2815 = load i64, i64* %2814
  store i64 %2815, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_407bab, %struct.Memory** %MEMORY
  %loadMem_407baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 1
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 9
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RSI.i77 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %RAX.i76
  %2826 = load i64, i64* %PC.i75
  %2827 = add i64 %2826, 2
  store i64 %2827, i64* %PC.i75
  %2828 = inttoptr i64 %2825 to i32*
  %2829 = load i32, i32* %2828
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RSI.i77, align 8
  store %struct.Memory* %loadMem_407baf, %struct.Memory** %MEMORY
  %loadMem_407bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 15
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %2836 to i64*
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2837, i64 0, i64 0
  %YMM0.i74 = bitcast %union.VectorReg* %2838 to %"class.std::bitset"*
  %2839 = bitcast %"class.std::bitset"* %YMM0.i74 to i8*
  %2840 = load i64, i64* %RBP.i73
  %2841 = sub i64 %2840, 16
  %2842 = load i64, i64* %PC.i72
  %2843 = add i64 %2842, 5
  store i64 %2843, i64* %PC.i72
  %2844 = inttoptr i64 %2841 to float*
  %2845 = load float, float* %2844
  %2846 = fpext float %2845 to double
  %2847 = bitcast i8* %2839 to double*
  store double %2846, double* %2847, align 1
  store %struct.Memory* %loadMem_407bb1, %struct.Memory** %MEMORY
  %loadMem_407bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 1
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %2854 = bitcast %union.anon* %2853 to %struct.anon.2*
  %AL.i71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2854, i32 0, i32 0
  %2855 = load i64, i64* %PC.i70
  %2856 = add i64 %2855, 2
  store i64 %2856, i64* %PC.i70
  store i8 1, i8* %AL.i71, align 1
  store %struct.Memory* %loadMem_407bb6, %struct.Memory** %MEMORY
  %loadMem1_407bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 33
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %PC.i69
  %2861 = add i64 %2860, 303608
  %2862 = load i64, i64* %PC.i69
  %2863 = add i64 %2862, 5
  %2864 = load i64, i64* %PC.i69
  %2865 = add i64 %2864, 5
  store i64 %2865, i64* %PC.i69
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2867 = load i64, i64* %2866, align 8
  %2868 = add i64 %2867, -8
  %2869 = inttoptr i64 %2868 to i64*
  store i64 %2863, i64* %2869
  store i64 %2868, i64* %2866, align 8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2861, i64* %2870, align 8
  store %struct.Memory* %loadMem1_407bb8, %struct.Memory** %MEMORY
  %loadMem2_407bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407bb8 = load i64, i64* %3
  %call2_407bb8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_407bb8, %struct.Memory* %loadMem2_407bb8)
  store %struct.Memory* %call2_407bb8, %struct.Memory** %MEMORY
  %loadMem_407bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 1
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %EAX.i67 = bitcast %union.anon* %2876 to i32*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 15
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %RBP.i68
  %2881 = sub i64 %2880, 88
  %2882 = load i32, i32* %EAX.i67
  %2883 = zext i32 %2882 to i64
  %2884 = load i64, i64* %PC.i66
  %2885 = add i64 %2884, 3
  store i64 %2885, i64* %PC.i66
  %2886 = inttoptr i64 %2881 to i32*
  store i32 %2882, i32* %2886
  store %struct.Memory* %loadMem_407bbd, %struct.Memory** %MEMORY
  br label %block_.L_407bc0

block_.L_407bc0:                                  ; preds = %block_.L_407ba1, %block_407b9c
  %loadMem_407bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2889 to i64*
  %2890 = load i64, i64* %PC.i65
  %2891 = add i64 %2890, 5
  %2892 = load i64, i64* %PC.i65
  %2893 = add i64 %2892, 5
  store i64 %2893, i64* %PC.i65
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2891, i64* %2894, align 8
  store %struct.Memory* %loadMem_407bc0, %struct.Memory** %MEMORY
  br label %block_.L_407bc5

block_.L_407bc5:                                  ; preds = %block_.L_407bc0, %block_.L_407b65
  %loadMem_407bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2897 to i64*
  %2898 = load i64, i64* %PC.i64
  %2899 = add i64 %2898, 8
  store i64 %2899, i64* %PC.i64
  %2900 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2901, align 1
  %2902 = and i32 %2900, 255
  %2903 = call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2906, i8* %2907, align 1
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2908, align 1
  %2909 = icmp eq i32 %2900, 0
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2910, i8* %2911, align 1
  %2912 = lshr i32 %2900, 31
  %2913 = trunc i32 %2912 to i8
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2913, i8* %2914, align 1
  %2915 = lshr i32 %2900, 31
  %2916 = xor i32 %2912, %2915
  %2917 = add i32 %2916, %2915
  %2918 = icmp eq i32 %2917, 2
  %2919 = zext i1 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2919, i8* %2920, align 1
  store %struct.Memory* %loadMem_407bc5, %struct.Memory** %MEMORY
  %loadMem_407bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 33
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %PC.i63
  %2925 = add i64 %2924, 11
  %2926 = load i64, i64* %PC.i63
  %2927 = add i64 %2926, 6
  %2928 = load i64, i64* %PC.i63
  %2929 = add i64 %2928, 6
  store i64 %2929, i64* %PC.i63
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2931 = load i8, i8* %2930, align 1
  %2932 = icmp eq i8 %2931, 0
  %2933 = zext i1 %2932 to i8
  store i8 %2933, i8* %BRANCH_TAKEN, align 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2935 = select i1 %2932, i64 %2925, i64 %2927
  store i64 %2935, i64* %2934, align 8
  store %struct.Memory* %loadMem_407bcd, %struct.Memory** %MEMORY
  %loadBr_407bcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407bcd = icmp eq i8 %loadBr_407bcd, 1
  br i1 %cmpBr_407bcd, label %block_.L_407bd8, label %block_407bd3

block_407bd3:                                     ; preds = %block_.L_407bc5
  %loadMem_407bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 33
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2938 to i64*
  %2939 = load i64, i64* %PC.i62
  %2940 = add i64 %2939, 45
  %2941 = load i64, i64* %PC.i62
  %2942 = add i64 %2941, 5
  store i64 %2942, i64* %PC.i62
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2940, i64* %2943, align 8
  store %struct.Memory* %loadMem_407bd3, %struct.Memory** %MEMORY
  br label %block_.L_407c00

block_.L_407bd8:                                  ; preds = %block_.L_407bc5
  %loadMem_407bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 11
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %RDI.i61 = bitcast %union.anon* %2949 to i64*
  %2950 = load i64, i64* %PC.i60
  %2951 = add i64 %2950, 10
  store i64 %2951, i64* %PC.i60
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI.i61, align 8
  store %struct.Memory* %loadMem_407bd8, %struct.Memory** %MEMORY
  %loadMem_407be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 9
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RSI.i59 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i58
  %2959 = add i64 %2958, 5
  store i64 %2959, i64* %PC.i58
  store i64 854, i64* %RSI.i59, align 8
  store %struct.Memory* %loadMem_407be2, %struct.Memory** %MEMORY
  %loadMem_407be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2962 to i64*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 7
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2965 to i64*
  %2966 = load i64, i64* %PC.i57
  %2967 = add i64 %2966, 10
  store i64 %2967, i64* %PC.i57
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_407be7, %struct.Memory** %MEMORY
  %loadMem_407bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 1
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %2973 to i64*
  %2974 = load i64, i64* %PC.i55
  %2975 = add i64 %2974, 5
  store i64 %2975, i64* %PC.i55
  store i64 4294967295, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_407bf1, %struct.Memory** %MEMORY
  %loadMem_407bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 33
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 1
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %EAX.i54 = bitcast %union.anon* %2981 to i32*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 5
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2984 to i64*
  %2985 = load i32, i32* %EAX.i54
  %2986 = zext i32 %2985 to i64
  %2987 = load i64, i64* %PC.i53
  %2988 = add i64 %2987, 2
  store i64 %2988, i64* %PC.i53
  %2989 = and i64 %2986, 4294967295
  store i64 %2989, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_407bf6, %struct.Memory** %MEMORY
  %loadMem_407bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 33
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 1
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %2995 to i32*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 17
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %2998 to i32*
  %2999 = bitcast i32* %R8D.i to i64*
  %3000 = load i32, i32* %EAX.i52
  %3001 = zext i32 %3000 to i64
  %3002 = load i64, i64* %PC.i51
  %3003 = add i64 %3002, 3
  store i64 %3003, i64* %PC.i51
  %3004 = and i64 %3001, 4294967295
  store i64 %3004, i64* %2999, align 8
  store %struct.Memory* %loadMem_407bf8, %struct.Memory** %MEMORY
  %loadMem1_407bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %PC.i50
  %3009 = add i64 %3008, 304277
  %3010 = load i64, i64* %PC.i50
  %3011 = add i64 %3010, 5
  %3012 = load i64, i64* %PC.i50
  %3013 = add i64 %3012, 5
  store i64 %3013, i64* %PC.i50
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3015 = load i64, i64* %3014, align 8
  %3016 = add i64 %3015, -8
  %3017 = inttoptr i64 %3016 to i64*
  store i64 %3011, i64* %3017
  store i64 %3016, i64* %3014, align 8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3009, i64* %3018, align 8
  store %struct.Memory* %loadMem1_407bfb, %struct.Memory** %MEMORY
  %loadMem2_407bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407bfb = load i64, i64* %3
  %call2_407bfb = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_407bfb, %struct.Memory* %loadMem2_407bfb)
  store %struct.Memory* %call2_407bfb, %struct.Memory** %MEMORY
  br label %block_.L_407c00

block_.L_407c00:                                  ; preds = %block_.L_407bd8, %block_407bd3
  %loadMem_407c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3022, i64 0, i64 0
  %YMM0.i48 = bitcast %union.VectorReg* %3023 to %"class.std::bitset"*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3024, i64 0, i64 0
  %XMM0.i49 = bitcast %union.VectorReg* %3025 to %union.vec128_t*
  %3026 = bitcast %"class.std::bitset"* %YMM0.i48 to i8*
  %3027 = bitcast %"class.std::bitset"* %YMM0.i48 to i8*
  %3028 = bitcast %union.vec128_t* %XMM0.i49 to i8*
  %3029 = load i64, i64* %PC.i47
  %3030 = add i64 %3029, 3
  store i64 %3030, i64* %PC.i47
  %3031 = bitcast i8* %3027 to i64*
  %3032 = load i64, i64* %3031, align 1
  %3033 = getelementptr inbounds i8, i8* %3027, i64 8
  %3034 = bitcast i8* %3033 to i64*
  %3035 = load i64, i64* %3034, align 1
  %3036 = bitcast i8* %3028 to i64*
  %3037 = load i64, i64* %3036, align 1
  %3038 = getelementptr inbounds i8, i8* %3028, i64 8
  %3039 = bitcast i8* %3038 to i64*
  %3040 = load i64, i64* %3039, align 1
  %3041 = xor i64 %3037, %3032
  %3042 = xor i64 %3040, %3035
  %3043 = trunc i64 %3041 to i32
  %3044 = lshr i64 %3041, 32
  %3045 = trunc i64 %3044 to i32
  %3046 = bitcast i8* %3026 to i32*
  store i32 %3043, i32* %3046, align 1
  %3047 = getelementptr inbounds i8, i8* %3026, i64 4
  %3048 = bitcast i8* %3047 to i32*
  store i32 %3045, i32* %3048, align 1
  %3049 = trunc i64 %3042 to i32
  %3050 = getelementptr inbounds i8, i8* %3026, i64 8
  %3051 = bitcast i8* %3050 to i32*
  store i32 %3049, i32* %3051, align 1
  %3052 = lshr i64 %3042, 32
  %3053 = trunc i64 %3052 to i32
  %3054 = getelementptr inbounds i8, i8* %3026, i64 12
  %3055 = bitcast i8* %3054 to i32*
  store i32 %3053, i32* %3055, align 1
  store %struct.Memory* %loadMem_407c00, %struct.Memory** %MEMORY
  %loadMem_407c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 33
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 15
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3062, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3063 to %"class.std::bitset"*
  %3064 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3065 = load i64, i64* %RBP.i46
  %3066 = sub i64 %3065, 16
  %3067 = load i64, i64* %PC.i45
  %3068 = add i64 %3067, 5
  store i64 %3068, i64* %PC.i45
  %3069 = inttoptr i64 %3066 to float*
  %3070 = load float, float* %3069
  %3071 = fpext float %3070 to double
  %3072 = bitcast i8* %3064 to double*
  store double %3071, double* %3072, align 1
  store %struct.Memory* %loadMem_407c03, %struct.Memory** %MEMORY
  %loadMem_407c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3077 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3076, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3077 to %union.vec128_t*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3078, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3079 to %union.vec128_t*
  %3080 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3081 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3082 = load i64, i64* %PC.i41
  %3083 = add i64 %3082, 4
  store i64 %3083, i64* %PC.i41
  %3084 = bitcast i8* %3080 to double*
  %3085 = load double, double* %3084, align 1
  %3086 = bitcast i8* %3081 to double*
  %3087 = load double, double* %3086, align 1
  %3088 = fcmp uno double %3085, %3087
  br i1 %3088, label %3089, label %3101

; <label>:3089:                                   ; preds = %block_.L_407c00
  %3090 = fadd double %3085, %3087
  %3091 = bitcast double %3090 to i64
  %3092 = and i64 %3091, 9221120237041090560
  %3093 = icmp eq i64 %3092, 9218868437227405312
  %3094 = and i64 %3091, 2251799813685247
  %3095 = icmp ne i64 %3094, 0
  %3096 = and i1 %3093, %3095
  br i1 %3096, label %3097, label %3107

; <label>:3097:                                   ; preds = %3089
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3099 = load i64, i64* %3098, align 8
  %3100 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3099, %struct.Memory* %loadMem_407c08)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:3101:                                   ; preds = %block_.L_407c00
  %3102 = fcmp ogt double %3085, %3087
  br i1 %3102, label %3107, label %3103

; <label>:3103:                                   ; preds = %3101
  %3104 = fcmp olt double %3085, %3087
  br i1 %3104, label %3107, label %3105

; <label>:3105:                                   ; preds = %3103
  %3106 = fcmp oeq double %3085, %3087
  br i1 %3106, label %3107, label %3114

; <label>:3107:                                   ; preds = %3105, %3103, %3101, %3089
  %3108 = phi i8 [ 0, %3101 ], [ 0, %3103 ], [ 1, %3105 ], [ 1, %3089 ]
  %3109 = phi i8 [ 0, %3101 ], [ 0, %3103 ], [ 0, %3105 ], [ 1, %3089 ]
  %3110 = phi i8 [ 0, %3101 ], [ 1, %3103 ], [ 0, %3105 ], [ 1, %3089 ]
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3108, i8* %3111, align 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3109, i8* %3112, align 1
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3110, i8* %3113, align 1
  br label %3114

; <label>:3114:                                   ; preds = %3107, %3105
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3115, align 1
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3116, align 1
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3117, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %3097, %3114
  %3118 = phi %struct.Memory* [ %3100, %3097 ], [ %loadMem_407c08, %3114 ]
  store %struct.Memory* %3118, %struct.Memory** %MEMORY
  %loadMem_407c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %3121 to i64*
  %3122 = load i64, i64* %PC.i40
  %3123 = add i64 %3122, 60
  %3124 = load i64, i64* %PC.i40
  %3125 = add i64 %3124, 6
  %3126 = load i64, i64* %PC.i40
  %3127 = add i64 %3126, 6
  store i64 %3127, i64* %PC.i40
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3129 = load i8, i8* %3128, align 1
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3131 = load i8, i8* %3130, align 1
  %3132 = or i8 %3131, %3129
  %3133 = icmp ne i8 %3132, 0
  %3134 = zext i1 %3133 to i8
  store i8 %3134, i8* %BRANCH_TAKEN, align 1
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3136 = select i1 %3133, i64 %3123, i64 %3125
  store i64 %3136, i64* %3135, align 8
  store %struct.Memory* %loadMem_407c0c, %struct.Memory** %MEMORY
  %loadBr_407c0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407c0c = icmp eq i8 %loadBr_407c0c, 1
  br i1 %cmpBr_407c0c, label %block_.L_407c48, label %block_407c12

block_407c12:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_407c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3139 to i64*
  %3140 = load i64, i64* %PC.i39
  %3141 = add i64 %3140, 8
  store i64 %3141, i64* %PC.i39
  %3142 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3143, align 1
  %3144 = and i32 %3142, 255
  %3145 = call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3148, i8* %3149, align 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3150, align 1
  %3151 = icmp eq i32 %3142, 0
  %3152 = zext i1 %3151 to i8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3152, i8* %3153, align 1
  %3154 = lshr i32 %3142, 31
  %3155 = trunc i32 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3155, i8* %3156, align 1
  %3157 = lshr i32 %3142, 31
  %3158 = xor i32 %3154, %3157
  %3159 = add i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 2
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3161, i8* %3162, align 1
  store %struct.Memory* %loadMem_407c12, %struct.Memory** %MEMORY
  %loadMem_407c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %PC.i38
  %3167 = add i64 %3166, 11
  %3168 = load i64, i64* %PC.i38
  %3169 = add i64 %3168, 6
  %3170 = load i64, i64* %PC.i38
  %3171 = add i64 %3170, 6
  store i64 %3171, i64* %PC.i38
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3173 = load i8, i8* %3172, align 1
  %3174 = icmp eq i8 %3173, 0
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %BRANCH_TAKEN, align 1
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3177 = select i1 %3174, i64 %3167, i64 %3169
  store i64 %3177, i64* %3176, align 8
  store %struct.Memory* %loadMem_407c1a, %struct.Memory** %MEMORY
  %loadBr_407c1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407c1a = icmp eq i8 %loadBr_407c1a, 1
  br i1 %cmpBr_407c1a, label %block_.L_407c25, label %block_407c20

block_407c20:                                     ; preds = %block_407c12
  %loadMem_407c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3180 to i64*
  %3181 = load i64, i64* %PC.i37
  %3182 = add i64 %3181, 25
  %3183 = load i64, i64* %PC.i37
  %3184 = add i64 %3183, 5
  store i64 %3184, i64* %PC.i37
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3182, i64* %3185, align 8
  store %struct.Memory* %loadMem_407c20, %struct.Memory** %MEMORY
  br label %block_.L_407c39

block_.L_407c25:                                  ; preds = %block_407c12
  %loadMem_407c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 11
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %PC.i35
  %3193 = add i64 %3192, 10
  store i64 %3193, i64* %PC.i35
  store i64 ptrtoint (%G__0x57a135_type* @G__0x57a135 to i64), i64* %RDI.i36, align 8
  store %struct.Memory* %loadMem_407c25, %struct.Memory** %MEMORY
  %loadMem_407c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 1
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %3200 = bitcast %union.anon* %3199 to %struct.anon.2*
  %AL.i34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3200, i32 0, i32 0
  %3201 = load i64, i64* %PC.i33
  %3202 = add i64 %3201, 2
  store i64 %3202, i64* %PC.i33
  store i8 0, i8* %AL.i34, align 1
  store %struct.Memory* %loadMem_407c2f, %struct.Memory** %MEMORY
  %loadMem1_407c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 33
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3205 to i64*
  %3206 = load i64, i64* %PC.i32
  %3207 = add i64 %3206, 303487
  %3208 = load i64, i64* %PC.i32
  %3209 = add i64 %3208, 5
  %3210 = load i64, i64* %PC.i32
  %3211 = add i64 %3210, 5
  store i64 %3211, i64* %PC.i32
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3213 = load i64, i64* %3212, align 8
  %3214 = add i64 %3213, -8
  %3215 = inttoptr i64 %3214 to i64*
  store i64 %3209, i64* %3215
  store i64 %3214, i64* %3212, align 8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3207, i64* %3216, align 8
  store %struct.Memory* %loadMem1_407c31, %struct.Memory** %MEMORY
  %loadMem2_407c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407c31 = load i64, i64* %3
  %call2_407c31 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_407c31, %struct.Memory* %loadMem2_407c31)
  store %struct.Memory* %call2_407c31, %struct.Memory** %MEMORY
  %loadMem_407c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 33
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 1
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %3222 to i32*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 15
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %RBP.i31
  %3227 = sub i64 %3226, 92
  %3228 = load i32, i32* %EAX.i30
  %3229 = zext i32 %3228 to i64
  %3230 = load i64, i64* %PC.i29
  %3231 = add i64 %3230, 3
  store i64 %3231, i64* %PC.i29
  %3232 = inttoptr i64 %3227 to i32*
  store i32 %3228, i32* %3232
  store %struct.Memory* %loadMem_407c36, %struct.Memory** %MEMORY
  br label %block_.L_407c39

block_.L_407c39:                                  ; preds = %block_.L_407c25, %block_407c20
  %loadMem_407c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 1
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %3238 to i64*
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 15
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %3241 to i64*
  %3242 = load i64, i64* %RBP.i28
  %3243 = sub i64 %3242, 8
  %3244 = load i64, i64* %PC.i26
  %3245 = add i64 %3244, 4
  store i64 %3245, i64* %PC.i26
  %3246 = inttoptr i64 %3243 to i64*
  %3247 = load i64, i64* %3246
  store i64 %3247, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_407c39, %struct.Memory** %MEMORY
  %loadMem_407c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 1
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %RAX.i25
  %3255 = load i64, i64* %PC.i24
  %3256 = add i64 %3255, 6
  store i64 %3256, i64* %PC.i24
  %3257 = inttoptr i64 %3254 to i32*
  store i32 0, i32* %3257
  store %struct.Memory* %loadMem_407c3d, %struct.Memory** %MEMORY
  %loadMem_407c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3260 to i64*
  %3261 = load i64, i64* %PC.i23
  %3262 = add i64 %3261, 60
  %3263 = load i64, i64* %PC.i23
  %3264 = add i64 %3263, 5
  store i64 %3264, i64* %PC.i23
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3262, i64* %3265, align 8
  store %struct.Memory* %loadMem_407c43, %struct.Memory** %MEMORY
  br label %block_.L_407c7f

block_.L_407c48:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_407c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 33
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %PC.i22
  %3270 = add i64 %3269, 8
  store i64 %3270, i64* %PC.i22
  %3271 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3272, align 1
  %3273 = and i32 %3271, 255
  %3274 = call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3277, i8* %3278, align 1
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3279, align 1
  %3280 = icmp eq i32 %3271, 0
  %3281 = zext i1 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3281, i8* %3282, align 1
  %3283 = lshr i32 %3271, 31
  %3284 = trunc i32 %3283 to i8
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3284, i8* %3285, align 1
  %3286 = lshr i32 %3271, 31
  %3287 = xor i32 %3283, %3286
  %3288 = add i32 %3287, %3286
  %3289 = icmp eq i32 %3288, 2
  %3290 = zext i1 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3290, i8* %3291, align 1
  store %struct.Memory* %loadMem_407c48, %struct.Memory** %MEMORY
  %loadMem_407c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 33
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3294 to i64*
  %3295 = load i64, i64* %PC.i21
  %3296 = add i64 %3295, 11
  %3297 = load i64, i64* %PC.i21
  %3298 = add i64 %3297, 6
  %3299 = load i64, i64* %PC.i21
  %3300 = add i64 %3299, 6
  store i64 %3300, i64* %PC.i21
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3302 = load i8, i8* %3301, align 1
  %3303 = icmp eq i8 %3302, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %BRANCH_TAKEN, align 1
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3306 = select i1 %3303, i64 %3296, i64 %3298
  store i64 %3306, i64* %3305, align 8
  store %struct.Memory* %loadMem_407c50, %struct.Memory** %MEMORY
  %loadBr_407c50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407c50 = icmp eq i8 %loadBr_407c50, 1
  br i1 %cmpBr_407c50, label %block_.L_407c5b, label %block_407c56

block_407c56:                                     ; preds = %block_.L_407c48
  %loadMem_407c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3309 to i64*
  %3310 = load i64, i64* %PC.i20
  %3311 = add i64 %3310, 36
  %3312 = load i64, i64* %PC.i20
  %3313 = add i64 %3312, 5
  store i64 %3313, i64* %PC.i20
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3311, i64* %3314, align 8
  store %struct.Memory* %loadMem_407c56, %struct.Memory** %MEMORY
  br label %block_.L_407c7a

block_.L_407c5b:                                  ; preds = %block_.L_407c48
  %loadMem_407c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 11
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %PC.i19
  %3322 = add i64 %3321, 10
  store i64 %3322, i64* %PC.i19
  store i64 ptrtoint (%G__0x57a13e_type* @G__0x57a13e to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_407c5b, %struct.Memory** %MEMORY
  %loadMem_407c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 1
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RBP.i18
  %3333 = sub i64 %3332, 8
  %3334 = load i64, i64* %PC.i16
  %3335 = add i64 %3334, 4
  store i64 %3335, i64* %PC.i16
  %3336 = inttoptr i64 %3333 to i64*
  %3337 = load i64, i64* %3336
  store i64 %3337, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_407c65, %struct.Memory** %MEMORY
  %loadMem_407c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 1
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 9
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3346 to i64*
  %3347 = load i64, i64* %RAX.i15
  %3348 = load i64, i64* %PC.i14
  %3349 = add i64 %3348, 2
  store i64 %3349, i64* %PC.i14
  %3350 = inttoptr i64 %3347 to i32*
  %3351 = load i32, i32* %3350
  %3352 = zext i32 %3351 to i64
  store i64 %3352, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_407c69, %struct.Memory** %MEMORY
  %loadMem_407c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 15
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3360 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3359, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3360 to %"class.std::bitset"*
  %3361 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3362 = load i64, i64* %RBP.i13
  %3363 = sub i64 %3362, 16
  %3364 = load i64, i64* %PC.i12
  %3365 = add i64 %3364, 5
  store i64 %3365, i64* %PC.i12
  %3366 = inttoptr i64 %3363 to float*
  %3367 = load float, float* %3366
  %3368 = fpext float %3367 to double
  %3369 = bitcast i8* %3361 to double*
  store double %3368, double* %3369, align 1
  store %struct.Memory* %loadMem_407c6b, %struct.Memory** %MEMORY
  %loadMem_407c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 1
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %3376 = bitcast %union.anon* %3375 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3376, i32 0, i32 0
  %3377 = load i64, i64* %PC.i11
  %3378 = add i64 %3377, 2
  store i64 %3378, i64* %PC.i11
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_407c70, %struct.Memory** %MEMORY
  %loadMem1_407c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3381 to i64*
  %3382 = load i64, i64* %PC.i10
  %3383 = add i64 %3382, 303422
  %3384 = load i64, i64* %PC.i10
  %3385 = add i64 %3384, 5
  %3386 = load i64, i64* %PC.i10
  %3387 = add i64 %3386, 5
  store i64 %3387, i64* %PC.i10
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3389 = load i64, i64* %3388, align 8
  %3390 = add i64 %3389, -8
  %3391 = inttoptr i64 %3390 to i64*
  store i64 %3385, i64* %3391
  store i64 %3390, i64* %3388, align 8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3383, i64* %3392, align 8
  store %struct.Memory* %loadMem1_407c72, %struct.Memory** %MEMORY
  %loadMem2_407c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_407c72 = load i64, i64* %3
  %call2_407c72 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_407c72, %struct.Memory* %loadMem2_407c72)
  store %struct.Memory* %call2_407c72, %struct.Memory** %MEMORY
  %loadMem_407c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 1
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3398 to i32*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 15
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %RBP.i9
  %3403 = sub i64 %3402, 96
  %3404 = load i32, i32* %EAX.i
  %3405 = zext i32 %3404 to i64
  %3406 = load i64, i64* %PC.i8
  %3407 = add i64 %3406, 3
  store i64 %3407, i64* %PC.i8
  %3408 = inttoptr i64 %3403 to i32*
  store i32 %3404, i32* %3408
  store %struct.Memory* %loadMem_407c77, %struct.Memory** %MEMORY
  br label %block_.L_407c7a

block_.L_407c7a:                                  ; preds = %block_.L_407c5b, %block_407c56
  %loadMem_407c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3411 to i64*
  %3412 = load i64, i64* %PC.i7
  %3413 = add i64 %3412, 5
  %3414 = load i64, i64* %PC.i7
  %3415 = add i64 %3414, 5
  store i64 %3415, i64* %PC.i7
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3413, i64* %3416, align 8
  store %struct.Memory* %loadMem_407c7a, %struct.Memory** %MEMORY
  br label %block_.L_407c7f

block_.L_407c7f:                                  ; preds = %block_.L_407c7a, %block_.L_407c39
  %loadMem_407c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3422 to i64*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 15
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3425 to i64*
  %3426 = load i64, i64* %RBP.i6
  %3427 = sub i64 %3426, 16
  %3428 = load i64, i64* %PC.i5
  %3429 = add i64 %3428, 5
  store i64 %3429, i64* %PC.i5
  %3430 = inttoptr i64 %3427 to float*
  %3431 = load float, float* %3430
  %3432 = call float @llvm.trunc.f32(float %3431)
  %3433 = call float @llvm.fabs.f32(float %3432)
  %3434 = fcmp ogt float %3433, 0x41E0000000000000
  %3435 = fptosi float %3432 to i32
  %3436 = zext i32 %3435 to i64
  %3437 = select i1 %3434, i64 2147483648, i64 %3436
  store i64 %3437, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_407c7f, %struct.Memory** %MEMORY
  %loadMem_407c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3439 = getelementptr inbounds %struct.GPR, %struct.GPR* %3438, i32 0, i32 33
  %3440 = getelementptr inbounds %struct.Reg, %struct.Reg* %3439, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3440 to i64*
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 13
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3443 to i64*
  %3444 = load i64, i64* %RSP.i
  %3445 = load i64, i64* %PC.i4
  %3446 = add i64 %3445, 4
  store i64 %3446, i64* %PC.i4
  %3447 = add i64 96, %3444
  store i64 %3447, i64* %RSP.i, align 8
  %3448 = icmp ult i64 %3447, %3444
  %3449 = icmp ult i64 %3447, 96
  %3450 = or i1 %3448, %3449
  %3451 = zext i1 %3450 to i8
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3451, i8* %3452, align 1
  %3453 = trunc i64 %3447 to i32
  %3454 = and i32 %3453, 255
  %3455 = call i32 @llvm.ctpop.i32(i32 %3454)
  %3456 = trunc i32 %3455 to i8
  %3457 = and i8 %3456, 1
  %3458 = xor i8 %3457, 1
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3458, i8* %3459, align 1
  %3460 = xor i64 96, %3444
  %3461 = xor i64 %3460, %3447
  %3462 = lshr i64 %3461, 4
  %3463 = trunc i64 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3464, i8* %3465, align 1
  %3466 = icmp eq i64 %3447, 0
  %3467 = zext i1 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3467, i8* %3468, align 1
  %3469 = lshr i64 %3447, 63
  %3470 = trunc i64 %3469 to i8
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3470, i8* %3471, align 1
  %3472 = lshr i64 %3444, 63
  %3473 = xor i64 %3469, %3472
  %3474 = add i64 %3473, %3469
  %3475 = icmp eq i64 %3474, 2
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3476, i8* %3477, align 1
  store %struct.Memory* %loadMem_407c84, %struct.Memory** %MEMORY
  %loadMem_407c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %PC.i2
  %3485 = add i64 %3484, 1
  store i64 %3485, i64* %PC.i2
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3487 = load i64, i64* %3486, align 8
  %3488 = add i64 %3487, 8
  %3489 = inttoptr i64 %3487 to i64*
  %3490 = load i64, i64* %3489
  store i64 %3490, i64* %RBP.i3, align 8
  store i64 %3488, i64* %3486, align 8
  store %struct.Memory* %loadMem_407c88, %struct.Memory** %MEMORY
  %loadMem_407c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %PC.i1
  %3495 = add i64 %3494, 1
  store i64 %3495, i64* %PC.i1
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3498 = load i64, i64* %3497, align 8
  %3499 = inttoptr i64 %3498 to i64*
  %3500 = load i64, i64* %3499
  store i64 %3500, i64* %3496, align 8
  %3501 = add i64 %3498, 8
  store i64 %3501, i64* %3497, align 8
  store %struct.Memory* %loadMem_407c89, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_407c89
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movss_0xdb8d4__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xdb8d4__rip__type* @G_0xdb8d4__rip_ to i64)
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

define %struct.Memory* @routine_movl__0x0____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
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

define %struct.Memory* @routine_callq_.reset_engine(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x63___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 99, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.examine_position(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x8__0x7ae448(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*)
  %9 = sub i32 %8, 8
  %10 = icmp ult i32 %8, 8
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
  %19 = xor i32 %8, 8
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

define %struct.Memory* @routine_jl_.L_407a98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0xab0f18___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xab0f18_type* @G__0xab0f18 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xab0f1c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xab0f1c_type* @G__0xab0f1c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.estimate_score(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4078a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0xab0f10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f10_type* @G_0xab0f10 to i32*)
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

define %struct.Memory* @routine_je_.L_407a60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0xab0f18___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %12 = bitcast i8* %8 to float*
  store float %11, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %8, i64 8
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %8, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %15 = fcmp uno float %13, %14
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %block_400488
  %17 = fadd float %13, %14
  %18 = bitcast float %17 to i32
  %19 = and i32 %18, 2143289344
  %20 = icmp eq i32 %19, 2139095040
  %21 = and i32 %18, 4194303
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %26, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:28:                                     ; preds = %block_400488
  %29 = fcmp ogt float %13, %14
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %28
  %31 = fcmp olt float %13, %14
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %30
  %33 = fcmp oeq float %13, %14
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %32, %30, %28, %16
  %35 = phi i8 [ 0, %28 ], [ 0, %30 ], [ 1, %32 ], [ 1, %16 ]
  %36 = phi i8 [ 0, %28 ], [ 0, %30 ], [ 0, %32 ], [ 1, %16 ]
  %37 = phi i8 [ 0, %28 ], [ 1, %30 ], [ 0, %32 ], [ 1, %16 ]
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %40, align 1
  br label %41

; <label>:41:                                     ; preds = %34, %32
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %24, %41
  %45 = phi %struct.Memory* [ %27, %24 ], [ %2, %41 ]
  ret %struct.Memory* %45
}

define %struct.Memory* @routine_jne_.L_40794a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_40794a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x579da7___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x579da7_type* @G__0x579da7 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x579daa___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x579daa_type* @G__0x579daa to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0xab0f18___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %12 = bitcast i8* %8 to float*
  store float %11, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %8, i64 8
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %8, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
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

define %struct.Memory* @routine_cmovaq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %18 = load i8, i8* %17, align 1
  %19 = or i8 %18, %16
  %20 = icmp eq i8 %19, 0
  %21 = load i64, i64* %RAX, align 8
  %22 = select i1 %20, i64 %12, i64 %21
  store i64 %22, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_0xab0f18___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = load float, float* bitcast (%G_0xab0f18_type* @G_0xab0f18 to float*)
  %15 = fcmp uno float %13, %14
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %block_400488
  %17 = fadd float %13, %14
  %18 = bitcast float %17 to i32
  %19 = and i32 %18, 2143289344
  %20 = icmp eq i32 %19, 2139095040
  %21 = and i32 %18, 4194303
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %26, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:28:                                     ; preds = %block_400488
  %29 = fcmp ogt float %13, %14
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %28
  %31 = fcmp olt float %13, %14
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %30
  %33 = fcmp oeq float %13, %14
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %32, %30, %28, %16
  %35 = phi i8 [ 0, %28 ], [ 0, %30 ], [ 1, %32 ], [ 1, %16 ]
  %36 = phi i8 [ 0, %28 ], [ 0, %30 ], [ 0, %32 ], [ 1, %16 ]
  %37 = phi i8 [ 0, %28 ], [ 1, %30 ], [ 0, %32 ], [ 1, %16 ]
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %40, align 1
  br label %41

; <label>:41:                                     ; preds = %34, %32
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %24, %41
  %45 = phi %struct.Memory* [ %27, %24 ], [ %2, %41 ]
  ret %struct.Memory* %45
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

define %struct.Memory* @routine_jbe_.L_407916(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movd__xmm0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = trunc i64 %15 to i32
  %17 = bitcast i64* %RAX to [2 x i32]*
  %18 = bitcast i64* %RAX to i32*
  store i32 %16, i32* %18, align 1
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__0x80000000___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = xor i64 -2147483648, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movd__eax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to i32*
  store i32 %12, i32* %16, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 0, i32* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to i32*
  store i32 0, i32* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 0, i32* %22, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 36
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

define %struct.Memory* @routine_jmpq_.L_407924(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x24__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movq__0x57a0c7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a0c7_type* @G__0x57a0c7 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.gprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_407a50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jbe_.L_4079a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 52
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

define %struct.Memory* @routine_jmpq_.L_4079b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x34__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
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

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss_0xab0f1c___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %12 = bitcast i8* %8 to float*
  store float %11, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %8, i64 8
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %8, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_ucomiss_0xab0f1c___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %15 = fcmp uno float %13, %14
  br i1 %15, label %16, label %28

; <label>:16:                                     ; preds = %block_400488
  %17 = fadd float %13, %14
  %18 = bitcast float %17 to i32
  %19 = and i32 %18, 2143289344
  %20 = icmp eq i32 %19, 2139095040
  %21 = and i32 %18, 4194303
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %26, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:28:                                     ; preds = %block_400488
  %29 = fcmp ogt float %13, %14
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %28
  %31 = fcmp olt float %13, %14
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %30
  %33 = fcmp oeq float %13, %14
  br i1 %33, label %34, label %41

; <label>:34:                                     ; preds = %32, %30, %28, %16
  %35 = phi i8 [ 0, %28 ], [ 0, %30 ], [ 1, %32 ], [ 1, %16 ]
  %36 = phi i8 [ 0, %28 ], [ 0, %30 ], [ 0, %32 ], [ 1, %16 ]
  %37 = phi i8 [ 0, %28 ], [ 1, %30 ], [ 0, %32 ], [ 1, %16 ]
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %40, align 1
  br label %41

; <label>:41:                                     ; preds = %34, %32
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %24, %41
  %45 = phi %struct.Memory* [ %27, %24 ], [ %2, %41 ]
  ret %struct.Memory* %45
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
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

define %struct.Memory* @routine_jbe_.L_407a18(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0xab0f1c___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load float, float* bitcast (%G_0xab0f1c_type* @G_0xab0f1c to float*)
  %12 = bitcast i8* %8 to float*
  store float %11, float* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %8, i64 8
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds i8, i8* %8, i64 12
  %18 = bitcast i8* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 76
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

define %struct.Memory* @routine_jmpq_.L_407a26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x4c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_movq__0x57a0df___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a0df_type* @G__0x57a0df to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fflush_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jne_.L_407a81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss__xmm0__0xab0f14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  store float %13, float* bitcast (%G_0xab0f14_type* @G_0xab0f14 to float*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_407a93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_407aa4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
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

define %struct.Memory* @routine_jne_.L_407ab7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_407adf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x579f16___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x579f16_type* @G__0x579f16 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x33f___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 831, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a100_type* @G__0x57a100 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.worm_reasons(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_0xab0f28___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_407b10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.owl_reasons(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i32 %9, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.combinations(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_407b3d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_407b65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x351___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 849, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.review_move_reasons(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_407bc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_407ba1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_407bc0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a10c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a10c_type* @G__0x57a10c to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl___rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_407bc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_407bd8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_407c00(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x356___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 854, i64* %RSI, align 8
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

define %struct.Memory* @routine_jbe_.L_407c48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_407c25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_407c39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a135___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a135_type* @G__0x57a135 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_407c7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_407c5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_407c7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a13e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a13e_type* @G__0x57a13e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = call float @llvm.trunc.f32(float %17)
  %19 = call float @llvm.fabs.f32(float %18)
  %20 = fcmp ogt float %19, 0x41E0000000000000
  %21 = fptosi float %18 to i32
  %22 = zext i32 %21 to i64
  %23 = select i1 %20, i64 2147483648, i64 %22
  store i64 %23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
