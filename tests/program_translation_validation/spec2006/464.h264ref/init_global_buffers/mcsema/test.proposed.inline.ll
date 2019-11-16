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
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb918_type = type <{ [8 x i8] }>
%G_0x6f6f88_type = type <{ [8 x i8] }>
%G_0x722ca0_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G__0x4c164e_type = type <{ [8 x i8] }>
%G__0x4c166d_type = type <{ [8 x i8] }>
%G__0x6cea08_type = type <{ [8 x i8] }>
%G__0x6d4740_type = type <{ [8 x i8] }>
%G__0x6f96f0_type = type <{ [8 x i8] }>
%G__0x6f9728_type = type <{ [8 x i8] }>
%G__0x70d1a0_type = type <{ [8 x i8] }>
%G__0x70fcf8_type = type <{ [8 x i8] }>
%G__0x722c90_type = type <{ [8 x i8] }>
%G__0x722cb8_type = type <{ [8 x i8] }>
%G__0x723650_type = type <{ [8 x i8] }>
%G__0x726410_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cb918 = global %G_0x6cb918_type zeroinitializer
@G_0x6f6f88 = global %G_0x6f6f88_type zeroinitializer
@G_0x722ca0 = global %G_0x722ca0_type zeroinitializer
@G_0x722cb0 = global %G_0x722cb0_type zeroinitializer
@G__0x4c164e = global %G__0x4c164e_type zeroinitializer
@G__0x4c166d = global %G__0x4c166d_type zeroinitializer
@G__0x6cea08 = global %G__0x6cea08_type zeroinitializer
@G__0x6d4740 = global %G__0x6d4740_type zeroinitializer
@G__0x6f96f0 = global %G__0x6f96f0_type zeroinitializer
@G__0x6f9728 = global %G__0x6f9728_type zeroinitializer
@G__0x70d1a0 = global %G__0x70d1a0_type zeroinitializer
@G__0x70fcf8 = global %G__0x70fcf8_type zeroinitializer
@G__0x722c90 = global %G__0x722c90_type zeroinitializer
@G__0x722cb8 = global %G__0x722cb8_type zeroinitializer
@G__0x723650 = global %G__0x723650_type zeroinitializer
@G__0x726410 = global %G__0x726410_type zeroinitializer

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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4380f0.init_orig_buffers(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459a80.get_mem3Dint(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459be0.get_mem4Dint(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45a020.get_mem2Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459570.get_mem3Dpel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459480.get_mem2Dpel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_459720.get_mem2D(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4200c0.get_mem_FME(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_47c0a0.rc_alloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @init_global_buffers(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_434670 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_434670, %struct.Memory** %MEMORY
  %loadMem_434671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i89 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i89
  %27 = load i64, i64* %PC.i88
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i88
  store i64 %26, i64* %RBP.i90, align 8
  store %struct.Memory* %loadMem_434671, %struct.Memory** %MEMORY
  %loadMem_434674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i106 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i106
  %36 = load i64, i64* %PC.i105
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i105
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i106, align 8
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
  store %struct.Memory* %loadMem_434674, %struct.Memory** %MEMORY
  %loadMem_434678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %RBP.i161
  %74 = sub i64 %73, 8
  %75 = load i64, i64* %PC.i160
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i160
  %77 = inttoptr i64 %74 to i32*
  store i32 0, i32* %77
  store %struct.Memory* %loadMem_434678, %struct.Memory** %MEMORY
  %loadMem_43467f = load %struct.Memory*, %struct.Memory** %MEMORY
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 33
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %PC.i176
  %85 = add i64 %84, 8
  store i64 %85, i64* %PC.i176
  %86 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %86, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_43467f, %struct.Memory** %MEMORY
  %loadMem_434687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 33
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %RAX.i207
  %97 = add i64 %96, 36
  %98 = load i64, i64* %PC.i206
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC.i206
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_434687, %struct.Memory** %MEMORY
  %loadMem_43468a = load %struct.Memory*, %struct.Memory** %MEMORY
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 33
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %105 to i64*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %RCX.i225
  %110 = load i64, i64* %PC.i224
  %111 = add i64 %110, 2
  store i64 %111, i64* %PC.i224
  %112 = trunc i64 %109 to i32
  %113 = shl i32 %112, 1
  %114 = icmp slt i32 %112, 0
  %115 = icmp slt i32 %113, 0
  %116 = xor i1 %114, %115
  %117 = zext i32 %113 to i64
  store i64 %117, i64* %RCX.i225, align 8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %119 = zext i1 %114 to i8
  store i8 %119, i8* %118, align 1
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %121 = and i32 %113, 254
  %122 = call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %120, align 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %126, align 1
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %128 = icmp eq i32 %113, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %127, align 1
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %131 = lshr i32 %113, 31
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %130, align 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %134 = zext i1 %116 to i8
  store i8 %134, i8* %133, align 1
  store %struct.Memory* %loadMem_43468a, %struct.Memory** %MEMORY
  %loadMem_43468d = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %ECX.i397 = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %143 to i64*
  %144 = load i32, i32* %ECX.i397
  %145 = zext i32 %144 to i64
  %146 = load i64, i64* %PC.i396
  %147 = add i64 %146, 3
  store i64 %147, i64* %PC.i396
  %148 = shl i64 %145, 32
  %149 = ashr exact i64 %148, 32
  store i64 %149, i64* %RAX.i398, align 8
  store %struct.Memory* %loadMem_43468d, %struct.Memory** %MEMORY
  %loadMem_434690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %155 to i64*
  %156 = load i64, i64* %RAX.i476
  %157 = load i64, i64* %PC.i475
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC.i475
  %159 = shl i64 %156, 1
  %160 = icmp slt i64 %159, 0
  %161 = shl i64 %159, 1
  store i64 %161, i64* %RAX.i476, align 8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %163 = zext i1 %160 to i8
  store i8 %163, i8* %162, align 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %165 = trunc i64 %161 to i32
  %166 = and i32 %165, 254
  %167 = call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %164, align 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %171, align 1
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %173 = icmp eq i64 %161, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %172, align 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %176 = lshr i64 %161, 63
  %177 = trunc i64 %176 to i8
  store i8 %177, i8* %175, align 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %178, align 1
  store %struct.Memory* %loadMem_434690, %struct.Memory** %MEMORY
  %loadMem_434694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 11
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RDI.i493 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RAX.i492
  %189 = load i64, i64* %PC.i491
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC.i491
  store i64 %188, i64* %RDI.i493, align 8
  store %struct.Memory* %loadMem_434694, %struct.Memory** %MEMORY
  %loadMem1_434697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %PC.i521
  %195 = add i64 %194, -210247
  %196 = load i64, i64* %PC.i521
  %197 = add i64 %196, 5
  %198 = load i64, i64* %PC.i521
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC.i521
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, -8
  %203 = inttoptr i64 %202 to i64*
  store i64 %197, i64* %203
  store i64 %202, i64* %200, align 8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %195, i64* %204, align 8
  store %struct.Memory* %loadMem1_434697, %struct.Memory** %MEMORY
  %loadMem2_434697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434697 = load i64, i64* %3
  %205 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_434697)
  store %struct.Memory* %205, %struct.Memory** %MEMORY
  %loadMem_43469c = load %struct.Memory*, %struct.Memory** %MEMORY
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 33
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %208 to i64*
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %211 to i64*
  %212 = load i64, i64* %RAX.i538
  %213 = load i64, i64* %PC.i537
  %214 = add i64 %213, 8
  store i64 %214, i64* %PC.i537
  store i64 %212, i64* bitcast (%G_0x722ca0_type* @G_0x722ca0 to i64*)
  store %struct.Memory* %loadMem_43469c, %struct.Memory** %MEMORY
  %loadMem_4346a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RAX.i650
  %222 = load i64, i64* %PC.i649
  %223 = add i64 %222, 4
  store i64 %223, i64* %PC.i649
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %224, align 1
  %225 = trunc i64 %221 to i32
  %226 = and i32 %225, 255
  %227 = call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %230, i8* %231, align 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1
  %233 = icmp eq i64 %221, 0
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %234, i8* %235, align 1
  %236 = lshr i64 %221, 63
  %237 = trunc i64 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %237, i8* %238, align 1
  %239 = lshr i64 %221, 63
  %240 = xor i64 %236, %239
  %241 = add i64 %240, %239
  %242 = icmp eq i64 %241, 2
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %243, i8* %244, align 1
  store %struct.Memory* %loadMem_4346a4, %struct.Memory** %MEMORY
  %loadMem_4346a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %PC.i675
  %249 = add i64 %248, 21
  %250 = load i64, i64* %PC.i675
  %251 = add i64 %250, 6
  %252 = load i64, i64* %PC.i675
  %253 = add i64 %252, 6
  store i64 %253, i64* %PC.i675
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %255 = load i8, i8* %254, align 1
  %256 = icmp eq i8 %255, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %BRANCH_TAKEN, align 1
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %259 = select i1 %256, i64 %249, i64 %251
  store i64 %259, i64* %258, align 8
  store %struct.Memory* %loadMem_4346a8, %struct.Memory** %MEMORY
  %loadBr_4346a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4346a8 = icmp eq i8 %loadBr_4346a8, 1
  br i1 %cmpBr_4346a8, label %block_.L_4346bd, label %block_4346ae

block_4346ae:                                     ; preds = %entry
  %loadMem_4346ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 11
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RDI.i674 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %PC.i673
  %267 = add i64 %266, 10
  store i64 %267, i64* %PC.i673
  store i64 ptrtoint (%G__0x4c164e_type* @G__0x4c164e to i64), i64* %RDI.i674, align 8
  store %struct.Memory* %loadMem_4346ae, %struct.Memory** %MEMORY
  %loadMem1_4346b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %PC.i672
  %272 = add i64 %271, 150840
  %273 = load i64, i64* %PC.i672
  %274 = add i64 %273, 5
  %275 = load i64, i64* %PC.i672
  %276 = add i64 %275, 5
  store i64 %276, i64* %PC.i672
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %274, i64* %280
  store i64 %279, i64* %277, align 8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %272, i64* %281, align 8
  store %struct.Memory* %loadMem1_4346b8, %struct.Memory** %MEMORY
  %loadMem2_4346b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4346b8 = load i64, i64* %3
  %call2_4346b8 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_4346b8, %struct.Memory* %loadMem2_4346b8)
  store %struct.Memory* %call2_4346b8, %struct.Memory** %MEMORY
  br label %block_.L_4346bd

block_.L_4346bd:                                  ; preds = %block_4346ae, %entry
  %loadMem_4346bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %PC.i670
  %289 = add i64 %288, 8
  store i64 %289, i64* %PC.i670
  %290 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %290, i64* %RAX.i671, align 8
  store %struct.Memory* %loadMem_4346bd, %struct.Memory** %MEMORY
  %loadMem_4346c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %296 to i64*
  %297 = load i64, i64* %RAX.i669
  %298 = add i64 %297, 1148
  %299 = load i64, i64* %PC.i668
  %300 = add i64 %299, 7
  store i64 %300, i64* %PC.i668
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %303, align 1
  %304 = and i32 %302, 255
  %305 = call i32 @llvm.ctpop.i32(i32 %304)
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = xor i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %308, i8* %309, align 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %310, align 1
  %311 = icmp eq i32 %302, 0
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %312, i8* %313, align 1
  %314 = lshr i32 %302, 31
  %315 = trunc i32 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %315, i8* %316, align 1
  %317 = lshr i32 %302, 31
  %318 = xor i32 %314, %317
  %319 = add i32 %318, %317
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %321, i8* %322, align 1
  store %struct.Memory* %loadMem_4346c5, %struct.Memory** %MEMORY
  %loadMem_4346cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %PC.i667
  %327 = add i64 %326, 73
  %328 = load i64, i64* %PC.i667
  %329 = add i64 %328, 6
  %330 = load i64, i64* %PC.i667
  %331 = add i64 %330, 6
  store i64 %331, i64* %PC.i667
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %333 = load i8, i8* %332, align 1
  %334 = icmp eq i8 %333, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %BRANCH_TAKEN, align 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %337 = select i1 %334, i64 %327, i64 %329
  store i64 %337, i64* %336, align 8
  store %struct.Memory* %loadMem_4346cc, %struct.Memory** %MEMORY
  %loadBr_4346cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4346cc = icmp eq i8 %loadBr_4346cc, 1
  br i1 %cmpBr_4346cc, label %block_.L_434715, label %block_4346d2

block_4346d2:                                     ; preds = %block_.L_4346bd
  %loadMem_4346d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RAX.i666 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %PC.i665
  %345 = add i64 %344, 8
  store i64 %345, i64* %PC.i665
  %346 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %346, i64* %RAX.i666, align 8
  store %struct.Memory* %loadMem_4346d2, %struct.Memory** %MEMORY
  %loadMem_4346da = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 5
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %RAX.i663
  %357 = add i64 %356, 36
  %358 = load i64, i64* %PC.i662
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC.i662
  %360 = inttoptr i64 %357 to i32*
  %361 = load i32, i32* %360
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RCX.i664, align 8
  store %struct.Memory* %loadMem_4346da, %struct.Memory** %MEMORY
  %loadMem_4346dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %368 to i64*
  %369 = load i64, i64* %RCX.i661
  %370 = load i64, i64* %PC.i660
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC.i660
  %372 = and i64 %369, 4294967295
  %373 = shl i64 %372, 1
  %374 = trunc i64 %373 to i32
  %375 = icmp slt i32 %374, 0
  %376 = shl i32 %374, 1
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RCX.i661, align 8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %379 = zext i1 %375 to i8
  store i8 %379, i8* %378, align 1
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %381 = and i32 %376, 254
  %382 = call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %380, align 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %386, align 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %388 = icmp eq i32 %376, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %387, align 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %391 = lshr i32 %376, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %390, align 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %393, align 1
  store %struct.Memory* %loadMem_4346dd, %struct.Memory** %MEMORY
  %loadMem_4346e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %ECX.i658 = bitcast %union.anon* %399 to i32*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RAX.i659 = bitcast %union.anon* %402 to i64*
  %403 = load i32, i32* %ECX.i658
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC.i657
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i657
  %407 = shl i64 %404, 32
  %408 = ashr exact i64 %407, 32
  store i64 %408, i64* %RAX.i659, align 8
  store %struct.Memory* %loadMem_4346e0, %struct.Memory** %MEMORY
  %loadMem_4346e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RAX.i656
  %416 = load i64, i64* %PC.i655
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC.i655
  %418 = shl i64 %415, 1
  %419 = icmp slt i64 %418, 0
  %420 = shl i64 %418, 1
  store i64 %420, i64* %RAX.i656, align 8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %422 = zext i1 %419 to i8
  store i8 %422, i8* %421, align 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %424 = trunc i64 %420 to i32
  %425 = and i32 %424, 254
  %426 = call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %423, align 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %430, align 1
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %432 = icmp eq i64 %420, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %431, align 1
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %435 = lshr i64 %420, 63
  %436 = trunc i64 %435 to i8
  store i8 %436, i8* %434, align 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %437, align 1
  store %struct.Memory* %loadMem_4346e3, %struct.Memory** %MEMORY
  %loadMem_4346e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 11
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RDI.i654 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RAX.i653
  %448 = load i64, i64* %PC.i652
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC.i652
  store i64 %447, i64* %RDI.i654, align 8
  store %struct.Memory* %loadMem_4346e7, %struct.Memory** %MEMORY
  %loadMem1_4346ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %PC.i651
  %454 = add i64 %453, -210330
  %455 = load i64, i64* %PC.i651
  %456 = add i64 %455, 5
  %457 = load i64, i64* %PC.i651
  %458 = add i64 %457, 5
  store i64 %458, i64* %PC.i651
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %460 = load i64, i64* %459, align 8
  %461 = add i64 %460, -8
  %462 = inttoptr i64 %461 to i64*
  store i64 %456, i64* %462
  store i64 %461, i64* %459, align 8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %454, i64* %463, align 8
  store %struct.Memory* %loadMem1_4346ea, %struct.Memory** %MEMORY
  %loadMem2_4346ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4346ea = load i64, i64* %3
  %464 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_4346ea)
  store %struct.Memory* %464, %struct.Memory** %MEMORY
  %loadMem_4346ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %RAX.i648
  %472 = load i64, i64* %PC.i647
  %473 = add i64 %472, 8
  store i64 %473, i64* %PC.i647
  store i64 %471, i64* bitcast (%G_0x6f6f88_type* @G_0x6f6f88 to i64*)
  store %struct.Memory* %loadMem_4346ef, %struct.Memory** %MEMORY
  %loadMem_4346f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RAX.i646 = bitcast %union.anon* %479 to i64*
  %480 = load i64, i64* %RAX.i646
  %481 = load i64, i64* %PC.i645
  %482 = add i64 %481, 4
  store i64 %482, i64* %PC.i645
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %483, align 1
  %484 = trunc i64 %480 to i32
  %485 = and i32 %484, 255
  %486 = call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %489, i8* %490, align 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %491, align 1
  %492 = icmp eq i64 %480, 0
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %493, i8* %494, align 1
  %495 = lshr i64 %480, 63
  %496 = trunc i64 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %496, i8* %497, align 1
  %498 = lshr i64 %480, 63
  %499 = xor i64 %495, %498
  %500 = add i64 %499, %498
  %501 = icmp eq i64 %500, 2
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %502, i8* %503, align 1
  store %struct.Memory* %loadMem_4346f7, %struct.Memory** %MEMORY
  %loadMem_4346fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %PC.i644
  %508 = add i64 %507, 21
  %509 = load i64, i64* %PC.i644
  %510 = add i64 %509, 6
  %511 = load i64, i64* %PC.i644
  %512 = add i64 %511, 6
  store i64 %512, i64* %PC.i644
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %514 = load i8, i8* %513, align 1
  %515 = icmp eq i8 %514, 0
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %BRANCH_TAKEN, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %518 = select i1 %515, i64 %508, i64 %510
  store i64 %518, i64* %517, align 8
  store %struct.Memory* %loadMem_4346fb, %struct.Memory** %MEMORY
  %loadBr_4346fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4346fb = icmp eq i8 %loadBr_4346fb, 1
  br i1 %cmpBr_4346fb, label %block_.L_434710, label %block_434701

block_434701:                                     ; preds = %block_4346d2
  %loadMem_434701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i642 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 11
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RDI.i643 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %PC.i642
  %526 = add i64 %525, 10
  store i64 %526, i64* %PC.i642
  store i64 ptrtoint (%G__0x4c164e_type* @G__0x4c164e to i64), i64* %RDI.i643, align 8
  store %struct.Memory* %loadMem_434701, %struct.Memory** %MEMORY
  %loadMem1_43470b = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %PC.i641
  %531 = add i64 %530, 150757
  %532 = load i64, i64* %PC.i641
  %533 = add i64 %532, 5
  %534 = load i64, i64* %PC.i641
  %535 = add i64 %534, 5
  store i64 %535, i64* %PC.i641
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = add i64 %537, -8
  %539 = inttoptr i64 %538 to i64*
  store i64 %533, i64* %539
  store i64 %538, i64* %536, align 8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %531, i64* %540, align 8
  store %struct.Memory* %loadMem1_43470b, %struct.Memory** %MEMORY
  %loadMem2_43470b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43470b = load i64, i64* %3
  %call2_43470b = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_43470b, %struct.Memory* %loadMem2_43470b)
  store %struct.Memory* %call2_43470b, %struct.Memory** %MEMORY
  br label %block_.L_434710

block_.L_434710:                                  ; preds = %block_434701, %block_4346d2
  %loadMem_434710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %PC.i640
  %545 = add i64 %544, 5
  %546 = load i64, i64* %PC.i640
  %547 = add i64 %546, 5
  store i64 %547, i64* %PC.i640
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %545, i64* %548, align 8
  store %struct.Memory* %loadMem_434710, %struct.Memory** %MEMORY
  br label %block_.L_434715

block_.L_434715:                                  ; preds = %block_.L_434710, %block_.L_4346bd
  %loadMem1_434715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %PC.i639
  %553 = add i64 %552, 14811
  %554 = load i64, i64* %PC.i639
  %555 = add i64 %554, 5
  %556 = load i64, i64* %PC.i639
  %557 = add i64 %556, 5
  store i64 %557, i64* %PC.i639
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = add i64 %559, -8
  %561 = inttoptr i64 %560 to i64*
  store i64 %555, i64* %561
  store i64 %560, i64* %558, align 8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %553, i64* %562, align 8
  store %struct.Memory* %loadMem1_434715, %struct.Memory** %MEMORY
  %loadMem2_434715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434715 = load i64, i64* %3
  %call2_434715 = call %struct.Memory* @sub_4380f0.init_orig_buffers(%struct.State* %0, i64 %loadPC_434715, %struct.Memory* %loadMem2_434715)
  store %struct.Memory* %call2_434715, %struct.Memory** %MEMORY
  %loadMem_43471a = load %struct.Memory*, %struct.Memory** %MEMORY
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 33
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 15
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %RAX.i637
  %573 = load i64, i64* %RBP.i638
  %574 = sub i64 %573, 8
  %575 = load i64, i64* %PC.i636
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC.i636
  %577 = trunc i64 %572 to i32
  %578 = inttoptr i64 %574 to i32*
  %579 = load i32, i32* %578
  %580 = add i32 %579, %577
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RAX.i637, align 8
  %582 = icmp ult i32 %580, %577
  %583 = icmp ult i32 %580, %579
  %584 = or i1 %582, %583
  %585 = zext i1 %584 to i8
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %585, i8* %586, align 1
  %587 = and i32 %580, 255
  %588 = call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %591, i8* %592, align 1
  %593 = xor i32 %579, %577
  %594 = xor i32 %593, %580
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %597, i8* %598, align 1
  %599 = icmp eq i32 %580, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1
  %602 = lshr i32 %580, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1
  %605 = lshr i32 %577, 31
  %606 = lshr i32 %579, 31
  %607 = xor i32 %602, %605
  %608 = xor i32 %602, %606
  %609 = add i32 %607, %608
  %610 = icmp eq i32 %609, 2
  %611 = zext i1 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %611, i8* %612, align 1
  store %struct.Memory* %loadMem_43471a, %struct.Memory** %MEMORY
  %loadMem_43471d = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 1
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %EAX.i634 = bitcast %union.anon* %618 to i32*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 15
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %621 to i64*
  %622 = load i64, i64* %RBP.i635
  %623 = sub i64 %622, 8
  %624 = load i32, i32* %EAX.i634
  %625 = zext i32 %624 to i64
  %626 = load i64, i64* %PC.i633
  %627 = add i64 %626, 3
  store i64 %627, i64* %PC.i633
  %628 = inttoptr i64 %623 to i32*
  store i32 %624, i32* %628
  store %struct.Memory* %loadMem_43471d, %struct.Memory** %MEMORY
  %loadMem_434720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 5
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RCX.i632 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %PC.i631
  %636 = add i64 %635, 8
  store i64 %636, i64* %PC.i631
  %637 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %637, i64* %RCX.i632, align 8
  store %struct.Memory* %loadMem_434720, %struct.Memory** %MEMORY
  %loadMem_434728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 33
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 5
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %643 to i64*
  %644 = load i64, i64* %RCX.i630
  %645 = add i64 %644, 1284
  %646 = load i64, i64* %PC.i629
  %647 = add i64 %646, 7
  store i64 %647, i64* %PC.i629
  %648 = inttoptr i64 %645 to i32*
  %649 = load i32, i32* %648
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %650, align 1
  %651 = and i32 %649, 255
  %652 = call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %655, i8* %656, align 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %657, align 1
  %658 = icmp eq i32 %649, 0
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %659, i8* %660, align 1
  %661 = lshr i32 %649, 31
  %662 = trunc i32 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %662, i8* %663, align 1
  %664 = lshr i32 %649, 31
  %665 = xor i32 %661, %664
  %666 = add i32 %665, %664
  %667 = icmp eq i32 %666, 2
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %668, i8* %669, align 1
  store %struct.Memory* %loadMem_434728, %struct.Memory** %MEMORY
  %loadMem_43472f = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %672 to i64*
  %673 = load i64, i64* %PC.i628
  %674 = add i64 %673, 45
  %675 = load i64, i64* %PC.i628
  %676 = add i64 %675, 6
  %677 = load i64, i64* %PC.i628
  %678 = add i64 %677, 6
  store i64 %678, i64* %PC.i628
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %680 = load i8, i8* %679, align 1
  %681 = icmp eq i8 %680, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %BRANCH_TAKEN, align 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %684 = select i1 %681, i64 %674, i64 %676
  store i64 %684, i64* %683, align 8
  store %struct.Memory* %loadMem_43472f, %struct.Memory** %MEMORY
  %loadBr_43472f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43472f = icmp eq i8 %loadBr_43472f, 1
  br i1 %cmpBr_43472f, label %block_.L_43475c, label %block_434735

block_434735:                                     ; preds = %block_.L_434715
  %loadMem_434735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 1
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %PC.i626
  %692 = add i64 %691, 8
  store i64 %692, i64* %PC.i626
  %693 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %693, i64* %RAX.i627, align 8
  store %struct.Memory* %loadMem_434735, %struct.Memory** %MEMORY
  %loadMem_43473d = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %RAX.i625
  %701 = add i64 %700, 1288
  %702 = load i64, i64* %PC.i624
  %703 = add i64 %702, 7
  store i64 %703, i64* %PC.i624
  %704 = inttoptr i64 %701 to i32*
  %705 = load i32, i32* %704
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %706, align 1
  %707 = and i32 %705, 255
  %708 = call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %711, i8* %712, align 1
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %713, align 1
  %714 = icmp eq i32 %705, 0
  %715 = zext i1 %714 to i8
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %715, i8* %716, align 1
  %717 = lshr i32 %705, 31
  %718 = trunc i32 %717 to i8
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %718, i8* %719, align 1
  %720 = lshr i32 %705, 31
  %721 = xor i32 %717, %720
  %722 = add i32 %721, %720
  %723 = icmp eq i32 %722, 2
  %724 = zext i1 %723 to i8
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %724, i8* %725, align 1
  store %struct.Memory* %loadMem_43473d, %struct.Memory** %MEMORY
  %loadMem_434744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %PC.i623
  %730 = add i64 %729, 24
  %731 = load i64, i64* %PC.i623
  %732 = add i64 %731, 6
  %733 = load i64, i64* %PC.i623
  %734 = add i64 %733, 6
  store i64 %734, i64* %PC.i623
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %736 = load i8, i8* %735, align 1
  %737 = icmp eq i8 %736, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %BRANCH_TAKEN, align 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %740 = select i1 %737, i64 %730, i64 %732
  store i64 %740, i64* %739, align 8
  store %struct.Memory* %loadMem_434744, %struct.Memory** %MEMORY
  %loadBr_434744 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434744 = icmp eq i8 %loadBr_434744, 1
  br i1 %cmpBr_434744, label %block_.L_43475c, label %block_43474a

block_43474a:                                     ; preds = %block_434735
  %loadMem_43474a = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 1
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %PC.i621
  %748 = add i64 %747, 8
  store i64 %748, i64* %PC.i621
  %749 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %749, i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_43474a, %struct.Memory** %MEMORY
  %loadMem_434752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %755 to i64*
  %756 = load i64, i64* %RAX.i620
  %757 = add i64 %756, 60
  %758 = load i64, i64* %PC.i619
  %759 = add i64 %758, 4
  store i64 %759, i64* %PC.i619
  %760 = inttoptr i64 %757 to i32*
  %761 = load i32, i32* %760
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %762, align 1
  %763 = and i32 %761, 255
  %764 = call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %767, i8* %768, align 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %769, align 1
  %770 = icmp eq i32 %761, 0
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %771, i8* %772, align 1
  %773 = lshr i32 %761, 31
  %774 = trunc i32 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %774, i8* %775, align 1
  %776 = lshr i32 %761, 31
  %777 = xor i32 %773, %776
  %778 = add i32 %777, %776
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %780, i8* %781, align 1
  store %struct.Memory* %loadMem_434752, %struct.Memory** %MEMORY
  %loadMem_434756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %784 to i64*
  %785 = load i64, i64* %PC.i618
  %786 = add i64 %785, 117
  %787 = load i64, i64* %PC.i618
  %788 = add i64 %787, 6
  %789 = load i64, i64* %PC.i618
  %790 = add i64 %789, 6
  store i64 %790, i64* %PC.i618
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %792 = load i8, i8* %791, align 1
  store i8 %792, i8* %BRANCH_TAKEN, align 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %794 = icmp ne i8 %792, 0
  %795 = select i1 %794, i64 %786, i64 %788
  store i64 %795, i64* %793, align 8
  store %struct.Memory* %loadMem_434756, %struct.Memory** %MEMORY
  %loadBr_434756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434756 = icmp eq i8 %loadBr_434756, 1
  br i1 %cmpBr_434756, label %block_.L_4347cb, label %block_.L_43475c

block_.L_43475c:                                  ; preds = %block_43474a, %block_434735, %block_.L_434715
  %loadMem_43475c = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 11
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RDI.i617 = bitcast %union.anon* %801 to i64*
  %802 = load i64, i64* %PC.i616
  %803 = add i64 %802, 10
  store i64 %803, i64* %PC.i616
  store i64 ptrtoint (%G__0x6d4740_type* @G__0x6d4740 to i64), i64* %RDI.i617, align 8
  store %struct.Memory* %loadMem_43475c, %struct.Memory** %MEMORY
  %loadMem_434766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 9
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RSI.i615 = bitcast %union.anon* %809 to i64*
  %810 = load i64, i64* %PC.i614
  %811 = add i64 %810, 5
  store i64 %811, i64* %PC.i614
  store i64 6, i64* %RSI.i615, align 8
  store %struct.Memory* %loadMem_434766, %struct.Memory** %MEMORY
  %loadMem_43476b = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 7
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RDX.i613 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %PC.i612
  %819 = add i64 %818, 5
  store i64 %819, i64* %PC.i612
  store i64 15, i64* %RDX.i613, align 8
  store %struct.Memory* %loadMem_43476b, %struct.Memory** %MEMORY
  %loadMem_434770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 5
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %PC.i610
  %827 = add i64 %826, 5
  store i64 %827, i64* %PC.i610
  store i64 3, i64* %RCX.i611, align 8
  store %struct.Memory* %loadMem_434770, %struct.Memory** %MEMORY
  %loadMem1_434775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %830 to i64*
  %831 = load i64, i64* %PC.i609
  %832 = add i64 %831, 152331
  %833 = load i64, i64* %PC.i609
  %834 = add i64 %833, 5
  %835 = load i64, i64* %PC.i609
  %836 = add i64 %835, 5
  store i64 %836, i64* %PC.i609
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %838 = load i64, i64* %837, align 8
  %839 = add i64 %838, -8
  %840 = inttoptr i64 %839 to i64*
  store i64 %834, i64* %840
  store i64 %839, i64* %837, align 8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %832, i64* %841, align 8
  store %struct.Memory* %loadMem1_434775, %struct.Memory** %MEMORY
  %loadMem2_434775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434775 = load i64, i64* %3
  %call2_434775 = call %struct.Memory* @sub_459a80.get_mem3Dint(%struct.State* %0, i64 %loadPC_434775, %struct.Memory* %loadMem2_434775)
  store %struct.Memory* %call2_434775, %struct.Memory** %MEMORY
  %loadMem_43477a = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 11
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RDI.i608 = bitcast %union.anon* %847 to i64*
  %848 = load i64, i64* %PC.i607
  %849 = add i64 %848, 10
  store i64 %849, i64* %PC.i607
  store i64 ptrtoint (%G__0x6f9728_type* @G__0x6f9728 to i64), i64* %RDI.i608, align 8
  store %struct.Memory* %loadMem_43477a, %struct.Memory** %MEMORY
  %loadMem_434784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 9
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RSI.i606 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %PC.i605
  %857 = add i64 %856, 5
  store i64 %857, i64* %PC.i605
  store i64 6, i64* %RSI.i606, align 8
  store %struct.Memory* %loadMem_434784, %struct.Memory** %MEMORY
  %loadMem_434789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 7
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RDX.i604 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %PC.i603
  %865 = add i64 %864, 5
  store i64 %865, i64* %PC.i603
  store i64 15, i64* %RDX.i604, align 8
  store %struct.Memory* %loadMem_434789, %struct.Memory** %MEMORY
  %loadMem_43478e = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 5
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %PC.i601
  %873 = add i64 %872, 5
  store i64 %873, i64* %PC.i601
  store i64 3, i64* %RCX.i602, align 8
  store %struct.Memory* %loadMem_43478e, %struct.Memory** %MEMORY
  %loadMem_434793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i599 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 15
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %RAX.i599
  %884 = load i64, i64* %RBP.i600
  %885 = sub i64 %884, 8
  %886 = load i64, i64* %PC.i598
  %887 = add i64 %886, 3
  store i64 %887, i64* %PC.i598
  %888 = trunc i64 %883 to i32
  %889 = inttoptr i64 %885 to i32*
  %890 = load i32, i32* %889
  %891 = add i32 %890, %888
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RAX.i599, align 8
  %893 = icmp ult i32 %891, %888
  %894 = icmp ult i32 %891, %890
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %896, i8* %897, align 1
  %898 = and i32 %891, 255
  %899 = call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %902, i8* %903, align 1
  %904 = xor i32 %890, %888
  %905 = xor i32 %904, %891
  %906 = lshr i32 %905, 4
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %908, i8* %909, align 1
  %910 = icmp eq i32 %891, 0
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %911, i8* %912, align 1
  %913 = lshr i32 %891, 31
  %914 = trunc i32 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %914, i8* %915, align 1
  %916 = lshr i32 %888, 31
  %917 = lshr i32 %890, 31
  %918 = xor i32 %913, %916
  %919 = xor i32 %913, %917
  %920 = add i32 %918, %919
  %921 = icmp eq i32 %920, 2
  %922 = zext i1 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %922, i8* %923, align 1
  store %struct.Memory* %loadMem_434793, %struct.Memory** %MEMORY
  %loadMem_434796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 33
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 1
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %EAX.i596 = bitcast %union.anon* %929 to i32*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 15
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %932 to i64*
  %933 = load i64, i64* %RBP.i597
  %934 = sub i64 %933, 8
  %935 = load i32, i32* %EAX.i596
  %936 = zext i32 %935 to i64
  %937 = load i64, i64* %PC.i595
  %938 = add i64 %937, 3
  store i64 %938, i64* %PC.i595
  %939 = inttoptr i64 %934 to i32*
  store i32 %935, i32* %939
  store %struct.Memory* %loadMem_434796, %struct.Memory** %MEMORY
  %loadMem1_434799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %942 to i64*
  %943 = load i64, i64* %PC.i594
  %944 = add i64 %943, 152295
  %945 = load i64, i64* %PC.i594
  %946 = add i64 %945, 5
  %947 = load i64, i64* %PC.i594
  %948 = add i64 %947, 5
  store i64 %948, i64* %PC.i594
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %950 = load i64, i64* %949, align 8
  %951 = add i64 %950, -8
  %952 = inttoptr i64 %951 to i64*
  store i64 %946, i64* %952
  store i64 %951, i64* %949, align 8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %944, i64* %953, align 8
  store %struct.Memory* %loadMem1_434799, %struct.Memory** %MEMORY
  %loadMem2_434799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434799 = load i64, i64* %3
  %call2_434799 = call %struct.Memory* @sub_459a80.get_mem3Dint(%struct.State* %0, i64 %loadPC_434799, %struct.Memory* %loadMem2_434799)
  store %struct.Memory* %call2_434799, %struct.Memory** %MEMORY
  %loadMem_43479e = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 11
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RDI.i593 = bitcast %union.anon* %959 to i64*
  %960 = load i64, i64* %PC.i592
  %961 = add i64 %960, 10
  store i64 %961, i64* %PC.i592
  store i64 ptrtoint (%G__0x70fcf8_type* @G__0x70fcf8 to i64), i64* %RDI.i593, align 8
  store %struct.Memory* %loadMem_43479e, %struct.Memory** %MEMORY
  %loadMem_4347a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 9
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RSI.i591 = bitcast %union.anon* %967 to i64*
  %968 = load i64, i64* %PC.i590
  %969 = add i64 %968, 5
  store i64 %969, i64* %PC.i590
  store i64 6, i64* %RSI.i591, align 8
  store %struct.Memory* %loadMem_4347a8, %struct.Memory** %MEMORY
  %loadMem_4347ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 5
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %PC.i588
  %977 = add i64 %976, 5
  store i64 %977, i64* %PC.i588
  store i64 15, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_4347ad, %struct.Memory** %MEMORY
  %loadMem_4347b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 33
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 17
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %R8D.i587 = bitcast %union.anon* %983 to i32*
  %984 = bitcast i32* %R8D.i587 to i64*
  %985 = load i64, i64* %PC.i586
  %986 = add i64 %985, 6
  store i64 %986, i64* %PC.i586
  store i64 3, i64* %984, align 8
  store %struct.Memory* %loadMem_4347b2, %struct.Memory** %MEMORY
  %loadMem_4347b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 15
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %995 to i64*
  %996 = load i64, i64* %RAX.i584
  %997 = load i64, i64* %RBP.i585
  %998 = sub i64 %997, 8
  %999 = load i64, i64* %PC.i583
  %1000 = add i64 %999, 3
  store i64 %1000, i64* %PC.i583
  %1001 = trunc i64 %996 to i32
  %1002 = inttoptr i64 %998 to i32*
  %1003 = load i32, i32* %1002
  %1004 = add i32 %1003, %1001
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RAX.i584, align 8
  %1006 = icmp ult i32 %1004, %1001
  %1007 = icmp ult i32 %1004, %1003
  %1008 = or i1 %1006, %1007
  %1009 = zext i1 %1008 to i8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1009, i8* %1010, align 1
  %1011 = and i32 %1004, 255
  %1012 = call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1015, i8* %1016, align 1
  %1017 = xor i32 %1003, %1001
  %1018 = xor i32 %1017, %1004
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1021, i8* %1022, align 1
  %1023 = icmp eq i32 %1004, 0
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1024, i8* %1025, align 1
  %1026 = lshr i32 %1004, 31
  %1027 = trunc i32 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1027, i8* %1028, align 1
  %1029 = lshr i32 %1001, 31
  %1030 = lshr i32 %1003, 31
  %1031 = xor i32 %1026, %1029
  %1032 = xor i32 %1026, %1030
  %1033 = add i32 %1031, %1032
  %1034 = icmp eq i32 %1033, 2
  %1035 = zext i1 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1035, i8* %1036, align 1
  store %struct.Memory* %loadMem_4347b8, %struct.Memory** %MEMORY
  %loadMem_4347bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 1
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %EAX.i581 = bitcast %union.anon* %1042 to i32*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 15
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %RBP.i582
  %1047 = sub i64 %1046, 8
  %1048 = load i32, i32* %EAX.i581
  %1049 = zext i32 %1048 to i64
  %1050 = load i64, i64* %PC.i580
  %1051 = add i64 %1050, 3
  store i64 %1051, i64* %PC.i580
  %1052 = inttoptr i64 %1047 to i32*
  store i32 %1048, i32* %1052
  store %struct.Memory* %loadMem_4347bb, %struct.Memory** %MEMORY
  %loadMem_4347be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 5
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %ECX.i578 = bitcast %union.anon* %1058 to i32*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 7
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %1061 to i64*
  %1062 = load i32, i32* %ECX.i578
  %1063 = zext i32 %1062 to i64
  %1064 = load i64, i64* %PC.i577
  %1065 = add i64 %1064, 2
  store i64 %1065, i64* %PC.i577
  %1066 = and i64 %1063, 4294967295
  store i64 %1066, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_4347be, %struct.Memory** %MEMORY
  %loadMem1_4347c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %PC.i576
  %1071 = add i64 %1070, 152608
  %1072 = load i64, i64* %PC.i576
  %1073 = add i64 %1072, 5
  %1074 = load i64, i64* %PC.i576
  %1075 = add i64 %1074, 5
  store i64 %1075, i64* %PC.i576
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1077 = load i64, i64* %1076, align 8
  %1078 = add i64 %1077, -8
  %1079 = inttoptr i64 %1078 to i64*
  store i64 %1073, i64* %1079
  store i64 %1078, i64* %1076, align 8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1071, i64* %1080, align 8
  store %struct.Memory* %loadMem1_4347c0, %struct.Memory** %MEMORY
  %loadMem2_4347c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4347c0 = load i64, i64* %3
  %call2_4347c0 = call %struct.Memory* @sub_459be0.get_mem4Dint(%struct.State* %0, i64 %loadPC_4347c0, %struct.Memory* %loadMem2_4347c0)
  store %struct.Memory* %call2_4347c0, %struct.Memory** %MEMORY
  %loadMem_4347c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 1
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 15
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RAX.i574
  %1091 = load i64, i64* %RBP.i575
  %1092 = sub i64 %1091, 8
  %1093 = load i64, i64* %PC.i573
  %1094 = add i64 %1093, 3
  store i64 %1094, i64* %PC.i573
  %1095 = trunc i64 %1090 to i32
  %1096 = inttoptr i64 %1092 to i32*
  %1097 = load i32, i32* %1096
  %1098 = add i32 %1097, %1095
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RAX.i574, align 8
  %1100 = icmp ult i32 %1098, %1095
  %1101 = icmp ult i32 %1098, %1097
  %1102 = or i1 %1100, %1101
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1103, i8* %1104, align 1
  %1105 = and i32 %1098, 255
  %1106 = call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1109, i8* %1110, align 1
  %1111 = xor i32 %1097, %1095
  %1112 = xor i32 %1111, %1098
  %1113 = lshr i32 %1112, 4
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1115, i8* %1116, align 1
  %1117 = icmp eq i32 %1098, 0
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1118, i8* %1119, align 1
  %1120 = lshr i32 %1098, 31
  %1121 = trunc i32 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1121, i8* %1122, align 1
  %1123 = lshr i32 %1095, 31
  %1124 = lshr i32 %1097, 31
  %1125 = xor i32 %1120, %1123
  %1126 = xor i32 %1120, %1124
  %1127 = add i32 %1125, %1126
  %1128 = icmp eq i32 %1127, 2
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1129, i8* %1130, align 1
  store %struct.Memory* %loadMem_4347c5, %struct.Memory** %MEMORY
  %loadMem_4347c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 1
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %EAX.i571 = bitcast %union.anon* %1136 to i32*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 15
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RBP.i572
  %1141 = sub i64 %1140, 8
  %1142 = load i32, i32* %EAX.i571
  %1143 = zext i32 %1142 to i64
  %1144 = load i64, i64* %PC.i570
  %1145 = add i64 %1144, 3
  store i64 %1145, i64* %PC.i570
  %1146 = inttoptr i64 %1141 to i32*
  store i32 %1142, i32* %1146
  store %struct.Memory* %loadMem_4347c8, %struct.Memory** %MEMORY
  br label %block_.L_4347cb

block_.L_4347cb:                                  ; preds = %block_.L_43475c, %block_43474a
  %loadMem_4347cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %1152 to i64*
  %1153 = load i64, i64* %PC.i568
  %1154 = add i64 %1153, 8
  store i64 %1154, i64* %PC.i568
  %1155 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1155, i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_4347cb, %struct.Memory** %MEMORY
  %loadMem_4347d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 1
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RAX.i567
  %1163 = add i64 %1162, 1236
  %1164 = load i64, i64* %PC.i566
  %1165 = add i64 %1164, 7
  store i64 %1165, i64* %PC.i566
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
  store %struct.Memory* %loadMem_4347d3, %struct.Memory** %MEMORY
  %loadMem_4347da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %PC.i565
  %1192 = add i64 %1191, 27
  %1193 = load i64, i64* %PC.i565
  %1194 = add i64 %1193, 6
  %1195 = load i64, i64* %PC.i565
  %1196 = add i64 %1195, 6
  store i64 %1196, i64* %PC.i565
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1198 = load i8, i8* %1197, align 1
  %1199 = icmp eq i8 %1198, 0
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %BRANCH_TAKEN, align 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1202 = select i1 %1199, i64 %1192, i64 %1194
  store i64 %1202, i64* %1201, align 8
  store %struct.Memory* %loadMem_4347da, %struct.Memory** %MEMORY
  %loadBr_4347da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4347da = icmp eq i8 %loadBr_4347da, 1
  br i1 %cmpBr_4347da, label %block_.L_4347f5, label %block_4347e0

block_4347e0:                                     ; preds = %block_.L_4347cb
  %loadMem_4347e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 1
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %PC.i563
  %1210 = add i64 %1209, 8
  store i64 %1210, i64* %PC.i563
  %1211 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1211, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_4347e0, %struct.Memory** %MEMORY
  %loadMem_4347e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 33
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 1
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %1217 to i64*
  %1218 = load i64, i64* %RAX.i562
  %1219 = add i64 %1218, 1316
  %1220 = load i64, i64* %PC.i561
  %1221 = add i64 %1220, 7
  store i64 %1221, i64* %PC.i561
  %1222 = inttoptr i64 %1219 to i32*
  %1223 = load i32, i32* %1222
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1224, align 1
  %1225 = and i32 %1223, 255
  %1226 = call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1229, i8* %1230, align 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1231, align 1
  %1232 = icmp eq i32 %1223, 0
  %1233 = zext i1 %1232 to i8
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1233, i8* %1234, align 1
  %1235 = lshr i32 %1223, 31
  %1236 = trunc i32 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i32 %1223, 31
  %1239 = xor i32 %1235, %1238
  %1240 = add i32 %1239, %1238
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1242, i8* %1243, align 1
  store %struct.Memory* %loadMem_4347e8, %struct.Memory** %MEMORY
  %loadMem_4347ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 33
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %PC.i560
  %1248 = add i64 %1247, 158
  %1249 = load i64, i64* %PC.i560
  %1250 = add i64 %1249, 6
  %1251 = load i64, i64* %PC.i560
  %1252 = add i64 %1251, 6
  store i64 %1252, i64* %PC.i560
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1254 = load i8, i8* %1253, align 1
  %1255 = icmp ne i8 %1254, 0
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1257 = load i8, i8* %1256, align 1
  %1258 = icmp ne i8 %1257, 0
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1260 = load i8, i8* %1259, align 1
  %1261 = icmp ne i8 %1260, 0
  %1262 = xor i1 %1258, %1261
  %1263 = or i1 %1255, %1262
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %BRANCH_TAKEN, align 1
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1266 = select i1 %1263, i64 %1248, i64 %1250
  store i64 %1266, i64* %1265, align 8
  store %struct.Memory* %loadMem_4347ef, %struct.Memory** %MEMORY
  %loadBr_4347ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4347ef = icmp eq i8 %loadBr_4347ef, 1
  br i1 %cmpBr_4347ef, label %block_.L_43488d, label %block_.L_4347f5

block_.L_4347f5:                                  ; preds = %block_4347e0, %block_.L_4347cb
  %loadMem_4347f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 33
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 11
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RDI.i559 = bitcast %union.anon* %1272 to i64*
  %1273 = load i64, i64* %PC.i558
  %1274 = add i64 %1273, 10
  store i64 %1274, i64* %PC.i558
  store i64 ptrtoint (%G__0x6cea08_type* @G__0x6cea08 to i64), i64* %RDI.i559, align 8
  store %struct.Memory* %loadMem_4347f5, %struct.Memory** %MEMORY
  %loadMem_4347ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 9
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RSI.i557 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %PC.i556
  %1282 = add i64 %1281, 5
  store i64 %1282, i64* %PC.i556
  store i64 2, i64* %RSI.i557, align 8
  store %struct.Memory* %loadMem_4347ff, %struct.Memory** %MEMORY
  %loadMem_434804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 1
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i554
  %1290 = add i64 %1289, 5
  store i64 %1290, i64* %PC.i554
  store i64 4, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_434804, %struct.Memory** %MEMORY
  %loadMem_434809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 5
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RCX.i553 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %PC.i552
  %1298 = add i64 %1297, 8
  store i64 %1298, i64* %PC.i552
  %1299 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1299, i64* %RCX.i553, align 8
  store %struct.Memory* %loadMem_434809, %struct.Memory** %MEMORY
  %loadMem_434811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 5
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %1305 to i64*
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 7
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %1308 to i64*
  %1309 = load i64, i64* %RCX.i550
  %1310 = add i64 %1309, 52
  %1311 = load i64, i64* %PC.i549
  %1312 = add i64 %1311, 3
  store i64 %1312, i64* %PC.i549
  %1313 = inttoptr i64 %1310 to i32*
  %1314 = load i32, i32* %1313
  %1315 = zext i32 %1314 to i64
  store i64 %1315, i64* %RDX.i551, align 8
  store %struct.Memory* %loadMem_434811, %struct.Memory** %MEMORY
  %loadMem_434814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 1
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %EAX.i547 = bitcast %union.anon* %1321 to i32*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 15
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %1324 to i64*
  %1325 = load i64, i64* %RBP.i548
  %1326 = sub i64 %1325, 12
  %1327 = load i32, i32* %EAX.i547
  %1328 = zext i32 %1327 to i64
  %1329 = load i64, i64* %PC.i546
  %1330 = add i64 %1329, 3
  store i64 %1330, i64* %PC.i546
  %1331 = inttoptr i64 %1326 to i32*
  store i32 %1327, i32* %1331
  store %struct.Memory* %loadMem_434814, %struct.Memory** %MEMORY
  %loadMem_434817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 7
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %EDX.i544 = bitcast %union.anon* %1337 to i32*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 1
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RAX.i545 = bitcast %union.anon* %1340 to i64*
  %1341 = load i32, i32* %EDX.i544
  %1342 = zext i32 %1341 to i64
  %1343 = load i64, i64* %PC.i543
  %1344 = add i64 %1343, 2
  store i64 %1344, i64* %PC.i543
  %1345 = and i64 %1342, 4294967295
  store i64 %1345, i64* %RAX.i545, align 8
  store %struct.Memory* %loadMem_434817, %struct.Memory** %MEMORY
  %loadMem_434819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %PC.i542
  %1350 = add i64 %1349, 1
  store i64 %1350, i64* %PC.i542
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1353 = bitcast %union.anon* %1352 to i32*
  %1354 = load i32, i32* %1353, align 8
  %1355 = sext i32 %1354 to i64
  %1356 = lshr i64 %1355, 32
  store i64 %1356, i64* %1351, align 8
  store %struct.Memory* %loadMem_434819, %struct.Memory** %MEMORY
  %loadMem_43481a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 17
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %R8D.i540 = bitcast %union.anon* %1362 to i32*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 15
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %1365 to i64*
  %1366 = bitcast i32* %R8D.i540 to i64*
  %1367 = load i64, i64* %RBP.i541
  %1368 = sub i64 %1367, 12
  %1369 = load i64, i64* %PC.i539
  %1370 = add i64 %1369, 4
  store i64 %1370, i64* %PC.i539
  %1371 = inttoptr i64 %1368 to i32*
  %1372 = load i32, i32* %1371
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %1366, align 8
  store %struct.Memory* %loadMem_43481a, %struct.Memory** %MEMORY
  %loadMem_43481e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 17
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %R8D.i535 = bitcast %union.anon* %1379 to i32*
  %1380 = load i32, i32* %R8D.i535
  %1381 = zext i32 %1380 to i64
  %1382 = load i64, i64* %PC.i534
  %1383 = add i64 %1382, 3
  store i64 %1383, i64* %PC.i534
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1385 = bitcast %union.anon* %1384 to i32*
  %1386 = load i32, i32* %1385, align 8
  %1387 = zext i32 %1386 to i64
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1389 = bitcast %union.anon* %1388 to i32*
  %1390 = load i32, i32* %1389, align 8
  %1391 = zext i32 %1390 to i64
  %1392 = shl i64 %1381, 32
  %1393 = ashr exact i64 %1392, 32
  %1394 = shl i64 %1391, 32
  %1395 = or i64 %1394, %1387
  %1396 = sdiv i64 %1395, %1393
  %1397 = shl i64 %1396, 32
  %1398 = ashr exact i64 %1397, 32
  %1399 = icmp eq i64 %1396, %1398
  br i1 %1399, label %1404, label %1400

; <label>:1400:                                   ; preds = %block_.L_4347f5
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1402 = load i64, i64* %1401, align 8
  %1403 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1402, %struct.Memory* %loadMem_43481e)
  br label %routine_idivl__r8d.exit536

; <label>:1404:                                   ; preds = %block_.L_4347f5
  %1405 = srem i64 %1395, %1393
  %1406 = getelementptr inbounds %union.anon, %union.anon* %1384, i64 0, i32 0
  %1407 = and i64 %1396, 4294967295
  store i64 %1407, i64* %1406, align 8
  %1408 = getelementptr inbounds %union.anon, %union.anon* %1388, i64 0, i32 0
  %1409 = and i64 %1405, 4294967295
  store i64 %1409, i64* %1408, align 8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1410, align 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1411, align 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1412, align 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1413, align 1
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1414, align 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1415, align 1
  br label %routine_idivl__r8d.exit536

routine_idivl__r8d.exit536:                       ; preds = %1400, %1404
  %1416 = phi %struct.Memory* [ %1403, %1400 ], [ %loadMem_43481e, %1404 ]
  store %struct.Memory* %1416, %struct.Memory** %MEMORY
  %loadMem_434821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 5
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %PC.i532
  %1424 = add i64 %1423, 8
  store i64 %1424, i64* %PC.i532
  %1425 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1425, i64* %RCX.i533, align 8
  store %struct.Memory* %loadMem_434821, %struct.Memory** %MEMORY
  %loadMem_434829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 19
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %R9D.i530 = bitcast %union.anon* %1431 to i32*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 5
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %1434 to i64*
  %1435 = bitcast i32* %R9D.i530 to i64*
  %1436 = load i64, i64* %RCX.i531
  %1437 = add i64 %1436, 60
  %1438 = load i64, i64* %PC.i529
  %1439 = add i64 %1438, 4
  store i64 %1439, i64* %PC.i529
  %1440 = inttoptr i64 %1437 to i32*
  %1441 = load i32, i32* %1440
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %1435, align 8
  store %struct.Memory* %loadMem_434829, %struct.Memory** %MEMORY
  %loadMem_43482d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 1
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %EAX.i527 = bitcast %union.anon* %1448 to i32*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 15
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %1451 to i64*
  %1452 = load i64, i64* %RBP.i528
  %1453 = sub i64 %1452, 16
  %1454 = load i32, i32* %EAX.i527
  %1455 = zext i32 %1454 to i64
  %1456 = load i64, i64* %PC.i526
  %1457 = add i64 %1456, 3
  store i64 %1457, i64* %PC.i526
  %1458 = inttoptr i64 %1453 to i32*
  store i32 %1454, i32* %1458
  store %struct.Memory* %loadMem_43482d, %struct.Memory** %MEMORY
  %loadMem_434830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 19
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %R9D.i524 = bitcast %union.anon* %1464 to i32*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 1
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %1467 to i64*
  %1468 = load i32, i32* %R9D.i524
  %1469 = zext i32 %1468 to i64
  %1470 = load i64, i64* %PC.i523
  %1471 = add i64 %1470, 3
  store i64 %1471, i64* %PC.i523
  %1472 = and i64 %1469, 4294967295
  store i64 %1472, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_434830, %struct.Memory** %MEMORY
  %loadMem_434833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %1475 to i64*
  %1476 = load i64, i64* %PC.i522
  %1477 = add i64 %1476, 1
  store i64 %1477, i64* %PC.i522
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1480 = bitcast %union.anon* %1479 to i32*
  %1481 = load i32, i32* %1480, align 8
  %1482 = sext i32 %1481 to i64
  %1483 = lshr i64 %1482, 32
  store i64 %1483, i64* %1478, align 8
  store %struct.Memory* %loadMem_434833, %struct.Memory** %MEMORY
  %loadMem_434834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 17
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %R8D.i520 = bitcast %union.anon* %1489 to i32*
  %1490 = load i32, i32* %R8D.i520
  %1491 = zext i32 %1490 to i64
  %1492 = load i64, i64* %PC.i519
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %PC.i519
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1495 = bitcast %union.anon* %1494 to i32*
  %1496 = load i32, i32* %1495, align 8
  %1497 = zext i32 %1496 to i64
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1499 = bitcast %union.anon* %1498 to i32*
  %1500 = load i32, i32* %1499, align 8
  %1501 = zext i32 %1500 to i64
  %1502 = shl i64 %1491, 32
  %1503 = ashr exact i64 %1502, 32
  %1504 = shl i64 %1501, 32
  %1505 = or i64 %1504, %1497
  %1506 = sdiv i64 %1505, %1503
  %1507 = shl i64 %1506, 32
  %1508 = ashr exact i64 %1507, 32
  %1509 = icmp eq i64 %1506, %1508
  br i1 %1509, label %1514, label %1510

; <label>:1510:                                   ; preds = %routine_idivl__r8d.exit536
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1512 = load i64, i64* %1511, align 8
  %1513 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1512, %struct.Memory* %loadMem_434834)
  br label %routine_idivl__r8d.exit

; <label>:1514:                                   ; preds = %routine_idivl__r8d.exit536
  %1515 = srem i64 %1505, %1503
  %1516 = getelementptr inbounds %union.anon, %union.anon* %1494, i64 0, i32 0
  %1517 = and i64 %1506, 4294967295
  store i64 %1517, i64* %1516, align 8
  %1518 = getelementptr inbounds %union.anon, %union.anon* %1498, i64 0, i32 0
  %1519 = and i64 %1515, 4294967295
  store i64 %1519, i64* %1518, align 8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1520, align 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1521, align 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1522, align 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1523, align 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1524, align 1
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1525, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %1510, %1514
  %1526 = phi %struct.Memory* [ %1513, %1510 ], [ %loadMem_434834, %1514 ]
  store %struct.Memory* %1526, %struct.Memory** %MEMORY
  %loadMem_434837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 19
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %R9D.i517 = bitcast %union.anon* %1532 to i32*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %1535 to i64*
  %1536 = bitcast i32* %R9D.i517 to i64*
  %1537 = load i64, i64* %RBP.i518
  %1538 = sub i64 %1537, 16
  %1539 = load i64, i64* %PC.i516
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %PC.i516
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %1536, align 8
  store %struct.Memory* %loadMem_434837, %struct.Memory** %MEMORY
  %loadMem_43483b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 19
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %1549 to i32*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 7
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %1552 to i64*
  %1553 = load i32, i32* %R9D.i
  %1554 = zext i32 %1553 to i64
  %1555 = load i64, i64* %PC.i514
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i514
  %1557 = and i64 %1554, 4294967295
  store i64 %1557, i64* %RDX.i515, align 8
  store %struct.Memory* %loadMem_43483b, %struct.Memory** %MEMORY
  %loadMem_43483e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 1
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %EAX.i512 = bitcast %union.anon* %1563 to i32*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 5
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %1566 to i64*
  %1567 = load i32, i32* %EAX.i512
  %1568 = zext i32 %1567 to i64
  %1569 = load i64, i64* %PC.i511
  %1570 = add i64 %1569, 2
  store i64 %1570, i64* %PC.i511
  %1571 = and i64 %1568, 4294967295
  store i64 %1571, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_43483e, %struct.Memory** %MEMORY
  %loadMem1_434840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %1574 to i64*
  %1575 = load i64, i64* %PC.i510
  %1576 = add i64 %1575, 153808
  %1577 = load i64, i64* %PC.i510
  %1578 = add i64 %1577, 5
  %1579 = load i64, i64* %PC.i510
  %1580 = add i64 %1579, 5
  store i64 %1580, i64* %PC.i510
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1582 = load i64, i64* %1581, align 8
  %1583 = add i64 %1582, -8
  %1584 = inttoptr i64 %1583 to i64*
  store i64 %1578, i64* %1584
  store i64 %1583, i64* %1581, align 8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1576, i64* %1585, align 8
  store %struct.Memory* %loadMem1_434840, %struct.Memory** %MEMORY
  %loadMem2_434840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434840 = load i64, i64* %3
  %call2_434840 = call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* %0, i64 %loadPC_434840, %struct.Memory* %loadMem2_434840)
  store %struct.Memory* %call2_434840, %struct.Memory** %MEMORY
  %loadMem_434845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 11
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RDI.i509 = bitcast %union.anon* %1591 to i64*
  %1592 = load i64, i64* %PC.i508
  %1593 = add i64 %1592, 10
  store i64 %1593, i64* %PC.i508
  store i64 ptrtoint (%G__0x722cb8_type* @G__0x722cb8 to i64), i64* %RDI.i509, align 8
  store %struct.Memory* %loadMem_434845, %struct.Memory** %MEMORY
  %loadMem_43484f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 33
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 5
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %1599 to i64*
  %1600 = load i64, i64* %PC.i506
  %1601 = add i64 %1600, 5
  store i64 %1601, i64* %PC.i506
  store i64 4, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_43484f, %struct.Memory** %MEMORY
  %loadMem_434854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 1
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %RAX.i504
  %1612 = load i64, i64* %RBP.i505
  %1613 = sub i64 %1612, 8
  %1614 = load i64, i64* %PC.i503
  %1615 = add i64 %1614, 3
  store i64 %1615, i64* %PC.i503
  %1616 = trunc i64 %1611 to i32
  %1617 = inttoptr i64 %1613 to i32*
  %1618 = load i32, i32* %1617
  %1619 = add i32 %1618, %1616
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RAX.i504, align 8
  %1621 = icmp ult i32 %1619, %1616
  %1622 = icmp ult i32 %1619, %1618
  %1623 = or i1 %1621, %1622
  %1624 = zext i1 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1624, i8* %1625, align 1
  %1626 = and i32 %1619, 255
  %1627 = call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1630, i8* %1631, align 1
  %1632 = xor i32 %1618, %1616
  %1633 = xor i32 %1632, %1619
  %1634 = lshr i32 %1633, 4
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1636, i8* %1637, align 1
  %1638 = icmp eq i32 %1619, 0
  %1639 = zext i1 %1638 to i8
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1639, i8* %1640, align 1
  %1641 = lshr i32 %1619, 31
  %1642 = trunc i32 %1641 to i8
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1642, i8* %1643, align 1
  %1644 = lshr i32 %1616, 31
  %1645 = lshr i32 %1618, 31
  %1646 = xor i32 %1641, %1644
  %1647 = xor i32 %1641, %1645
  %1648 = add i32 %1646, %1647
  %1649 = icmp eq i32 %1648, 2
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1650, i8* %1651, align 1
  store %struct.Memory* %loadMem_434854, %struct.Memory** %MEMORY
  %loadMem_434857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 1
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %EAX.i501 = bitcast %union.anon* %1657 to i32*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 15
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RBP.i502
  %1662 = sub i64 %1661, 8
  %1663 = load i32, i32* %EAX.i501
  %1664 = zext i32 %1663 to i64
  %1665 = load i64, i64* %PC.i500
  %1666 = add i64 %1665, 3
  store i64 %1666, i64* %PC.i500
  %1667 = inttoptr i64 %1662 to i32*
  store i32 %1663, i32* %1667
  store %struct.Memory* %loadMem_434857, %struct.Memory** %MEMORY
  %loadMem_43485a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 21
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %R10.i499 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %PC.i498
  %1675 = add i64 %1674, 8
  store i64 %1675, i64* %PC.i498
  %1676 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1676, i64* %R10.i499, align 8
  store %struct.Memory* %loadMem_43485a, %struct.Memory** %MEMORY
  %loadMem_434862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 33
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 1
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 21
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %R10.i497 = bitcast %union.anon* %1685 to i64*
  %1686 = load i64, i64* %R10.i497
  %1687 = add i64 %1686, 52
  %1688 = load i64, i64* %PC.i495
  %1689 = add i64 %1688, 4
  store i64 %1689, i64* %PC.i495
  %1690 = inttoptr i64 %1687 to i32*
  %1691 = load i32, i32* %1690
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_434862, %struct.Memory** %MEMORY
  %loadMem_434866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 33
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %1695 to i64*
  %1696 = load i64, i64* %PC.i494
  %1697 = add i64 %1696, 1
  store i64 %1697, i64* %PC.i494
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1700 = bitcast %union.anon* %1699 to i32*
  %1701 = load i32, i32* %1700, align 8
  %1702 = sext i32 %1701 to i64
  %1703 = lshr i64 %1702, 32
  store i64 %1703, i64* %1698, align 8
  store %struct.Memory* %loadMem_434866, %struct.Memory** %MEMORY
  %loadMem_434867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 5
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %ECX.i489 = bitcast %union.anon* %1709 to i32*
  %1710 = load i32, i32* %ECX.i489
  %1711 = zext i32 %1710 to i64
  %1712 = load i64, i64* %PC.i488
  %1713 = add i64 %1712, 2
  store i64 %1713, i64* %PC.i488
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1715 = bitcast %union.anon* %1714 to i32*
  %1716 = load i32, i32* %1715, align 8
  %1717 = zext i32 %1716 to i64
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1719 = bitcast %union.anon* %1718 to i32*
  %1720 = load i32, i32* %1719, align 8
  %1721 = zext i32 %1720 to i64
  %1722 = shl i64 %1711, 32
  %1723 = ashr exact i64 %1722, 32
  %1724 = shl i64 %1721, 32
  %1725 = or i64 %1724, %1717
  %1726 = sdiv i64 %1725, %1723
  %1727 = shl i64 %1726, 32
  %1728 = ashr exact i64 %1727, 32
  %1729 = icmp eq i64 %1726, %1728
  br i1 %1729, label %1734, label %1730

; <label>:1730:                                   ; preds = %routine_idivl__r8d.exit
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1732 = load i64, i64* %1731, align 8
  %1733 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1732, %struct.Memory* %loadMem_434867)
  br label %routine_idivl__ecx.exit490

; <label>:1734:                                   ; preds = %routine_idivl__r8d.exit
  %1735 = srem i64 %1725, %1723
  %1736 = getelementptr inbounds %union.anon, %union.anon* %1714, i64 0, i32 0
  %1737 = and i64 %1726, 4294967295
  store i64 %1737, i64* %1736, align 8
  %1738 = getelementptr inbounds %union.anon, %union.anon* %1718, i64 0, i32 0
  %1739 = and i64 %1735, 4294967295
  store i64 %1739, i64* %1738, align 8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1740, align 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1741, align 1
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1742, align 1
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1743, align 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1744, align 1
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1745, align 1
  br label %routine_idivl__ecx.exit490

routine_idivl__ecx.exit490:                       ; preds = %1730, %1734
  %1746 = phi %struct.Memory* [ %1733, %1730 ], [ %loadMem_434867, %1734 ]
  store %struct.Memory* %1746, %struct.Memory** %MEMORY
  %loadMem_434869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 21
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %R10.i487 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %PC.i486
  %1754 = add i64 %1753, 8
  store i64 %1754, i64* %PC.i486
  %1755 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1755, i64* %R10.i487, align 8
  store %struct.Memory* %loadMem_434869, %struct.Memory** %MEMORY
  %loadMem_434871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 9
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RSI.i485 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 21
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %R10.i = bitcast %union.anon* %1764 to i64*
  %1765 = load i64, i64* %R10.i
  %1766 = add i64 %1765, 60
  %1767 = load i64, i64* %PC.i484
  %1768 = add i64 %1767, 4
  store i64 %1768, i64* %PC.i484
  %1769 = inttoptr i64 %1766 to i32*
  %1770 = load i32, i32* %1769
  %1771 = zext i32 %1770 to i64
  store i64 %1771, i64* %RSI.i485, align 8
  store %struct.Memory* %loadMem_434871, %struct.Memory** %MEMORY
  %loadMem_434875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 1
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %EAX.i482 = bitcast %union.anon* %1777 to i32*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 15
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %1780 to i64*
  %1781 = load i64, i64* %RBP.i483
  %1782 = sub i64 %1781, 20
  %1783 = load i32, i32* %EAX.i482
  %1784 = zext i32 %1783 to i64
  %1785 = load i64, i64* %PC.i481
  %1786 = add i64 %1785, 3
  store i64 %1786, i64* %PC.i481
  %1787 = inttoptr i64 %1782 to i32*
  store i32 %1783, i32* %1787
  store %struct.Memory* %loadMem_434875, %struct.Memory** %MEMORY
  %loadMem_434878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 9
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %ESI.i479 = bitcast %union.anon* %1793 to i32*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 1
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %1796 to i64*
  %1797 = load i32, i32* %ESI.i479
  %1798 = zext i32 %1797 to i64
  %1799 = load i64, i64* %PC.i478
  %1800 = add i64 %1799, 2
  store i64 %1800, i64* %PC.i478
  %1801 = and i64 %1798, 4294967295
  store i64 %1801, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_434878, %struct.Memory** %MEMORY
  %loadMem_43487a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 33
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1804 to i64*
  %1805 = load i64, i64* %PC.i477
  %1806 = add i64 %1805, 1
  store i64 %1806, i64* %PC.i477
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1809 = bitcast %union.anon* %1808 to i32*
  %1810 = load i32, i32* %1809, align 8
  %1811 = sext i32 %1810 to i64
  %1812 = lshr i64 %1811, 32
  store i64 %1812, i64* %1807, align 8
  store %struct.Memory* %loadMem_43487a, %struct.Memory** %MEMORY
  %loadMem_43487b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 5
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %ECX.i473 = bitcast %union.anon* %1818 to i32*
  %1819 = load i32, i32* %ECX.i473
  %1820 = zext i32 %1819 to i64
  %1821 = load i64, i64* %PC.i472
  %1822 = add i64 %1821, 2
  store i64 %1822, i64* %PC.i472
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1824 = bitcast %union.anon* %1823 to i32*
  %1825 = load i32, i32* %1824, align 8
  %1826 = zext i32 %1825 to i64
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1828 = bitcast %union.anon* %1827 to i32*
  %1829 = load i32, i32* %1828, align 8
  %1830 = zext i32 %1829 to i64
  %1831 = shl i64 %1820, 32
  %1832 = ashr exact i64 %1831, 32
  %1833 = shl i64 %1830, 32
  %1834 = or i64 %1833, %1826
  %1835 = sdiv i64 %1834, %1832
  %1836 = shl i64 %1835, 32
  %1837 = ashr exact i64 %1836, 32
  %1838 = icmp eq i64 %1835, %1837
  br i1 %1838, label %1843, label %1839

; <label>:1839:                                   ; preds = %routine_idivl__ecx.exit490
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1841 = load i64, i64* %1840, align 8
  %1842 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1841, %struct.Memory* %loadMem_43487b)
  br label %routine_idivl__ecx.exit474

; <label>:1843:                                   ; preds = %routine_idivl__ecx.exit490
  %1844 = srem i64 %1834, %1832
  %1845 = getelementptr inbounds %union.anon, %union.anon* %1823, i64 0, i32 0
  %1846 = and i64 %1835, 4294967295
  store i64 %1846, i64* %1845, align 8
  %1847 = getelementptr inbounds %union.anon, %union.anon* %1827, i64 0, i32 0
  %1848 = and i64 %1844, 4294967295
  store i64 %1848, i64* %1847, align 8
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1849, align 1
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1850, align 1
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1851, align 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1852, align 1
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1853, align 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1854, align 1
  br label %routine_idivl__ecx.exit474

routine_idivl__ecx.exit474:                       ; preds = %1839, %1843
  %1855 = phi %struct.Memory* [ %1842, %1839 ], [ %loadMem_43487b, %1843 ]
  store %struct.Memory* %1855, %struct.Memory** %MEMORY
  %loadMem_43487d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 9
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RSI.i470 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 15
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1864 to i64*
  %1865 = load i64, i64* %RBP.i471
  %1866 = sub i64 %1865, 20
  %1867 = load i64, i64* %PC.i469
  %1868 = add i64 %1867, 3
  store i64 %1868, i64* %PC.i469
  %1869 = inttoptr i64 %1866 to i32*
  %1870 = load i32, i32* %1869
  %1871 = zext i32 %1870 to i64
  store i64 %1871, i64* %RSI.i470, align 8
  store %struct.Memory* %loadMem_43487d, %struct.Memory** %MEMORY
  %loadMem_434880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 1
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %1877 to i32*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 7
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %1880 to i64*
  %1881 = load i32, i32* %EAX.i467
  %1882 = zext i32 %1881 to i64
  %1883 = load i64, i64* %PC.i466
  %1884 = add i64 %1883, 2
  store i64 %1884, i64* %PC.i466
  %1885 = and i64 %1882, 4294967295
  store i64 %1885, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_434880, %struct.Memory** %MEMORY
  %loadMem1_434882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %PC.i465
  %1890 = add i64 %1889, 153502
  %1891 = load i64, i64* %PC.i465
  %1892 = add i64 %1891, 5
  %1893 = load i64, i64* %PC.i465
  %1894 = add i64 %1893, 5
  store i64 %1894, i64* %PC.i465
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1896 = load i64, i64* %1895, align 8
  %1897 = add i64 %1896, -8
  %1898 = inttoptr i64 %1897 to i64*
  store i64 %1892, i64* %1898
  store i64 %1897, i64* %1895, align 8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1890, i64* %1899, align 8
  store %struct.Memory* %loadMem1_434882, %struct.Memory** %MEMORY
  %loadMem2_434882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434882 = load i64, i64* %3
  %call2_434882 = call %struct.Memory* @sub_45a020.get_mem2Dshort(%struct.State* %0, i64 %loadPC_434882, %struct.Memory* %loadMem2_434882)
  store %struct.Memory* %call2_434882, %struct.Memory** %MEMORY
  %loadMem_434887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 1
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 15
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %RAX.i463
  %1910 = load i64, i64* %RBP.i464
  %1911 = sub i64 %1910, 8
  %1912 = load i64, i64* %PC.i462
  %1913 = add i64 %1912, 3
  store i64 %1913, i64* %PC.i462
  %1914 = trunc i64 %1909 to i32
  %1915 = inttoptr i64 %1911 to i32*
  %1916 = load i32, i32* %1915
  %1917 = add i32 %1916, %1914
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RAX.i463, align 8
  %1919 = icmp ult i32 %1917, %1914
  %1920 = icmp ult i32 %1917, %1916
  %1921 = or i1 %1919, %1920
  %1922 = zext i1 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1922, i8* %1923, align 1
  %1924 = and i32 %1917, 255
  %1925 = call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1928, i8* %1929, align 1
  %1930 = xor i32 %1916, %1914
  %1931 = xor i32 %1930, %1917
  %1932 = lshr i32 %1931, 4
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1934, i8* %1935, align 1
  %1936 = icmp eq i32 %1917, 0
  %1937 = zext i1 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1937, i8* %1938, align 1
  %1939 = lshr i32 %1917, 31
  %1940 = trunc i32 %1939 to i8
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1940, i8* %1941, align 1
  %1942 = lshr i32 %1914, 31
  %1943 = lshr i32 %1916, 31
  %1944 = xor i32 %1939, %1942
  %1945 = xor i32 %1939, %1943
  %1946 = add i32 %1944, %1945
  %1947 = icmp eq i32 %1946, 2
  %1948 = zext i1 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1948, i8* %1949, align 1
  store %struct.Memory* %loadMem_434887, %struct.Memory** %MEMORY
  %loadMem_43488a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 1
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %1955 to i32*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 15
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %RBP.i461
  %1960 = sub i64 %1959, 8
  %1961 = load i32, i32* %EAX.i460
  %1962 = zext i32 %1961 to i64
  %1963 = load i64, i64* %PC.i459
  %1964 = add i64 %1963, 3
  store i64 %1964, i64* %PC.i459
  %1965 = inttoptr i64 %1960 to i32*
  store i32 %1961, i32* %1965
  store %struct.Memory* %loadMem_43488a, %struct.Memory** %MEMORY
  br label %block_.L_43488d

block_.L_43488d:                                  ; preds = %routine_idivl__ecx.exit474, %block_4347e0
  %loadMem_43488d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 11
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RDI.i458 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %PC.i457
  %1973 = add i64 %1972, 10
  store i64 %1973, i64* %PC.i457
  store i64 ptrtoint (%G__0x726410_type* @G__0x726410 to i64), i64* %RDI.i458, align 8
  store %struct.Memory* %loadMem_43488d, %struct.Memory** %MEMORY
  %loadMem_434897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 1
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %PC.i455
  %1981 = add i64 %1980, 8
  store i64 %1981, i64* %PC.i455
  %1982 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1982, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_434897, %struct.Memory** %MEMORY
  %loadMem_43489f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1985 to i64*
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 1
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 5
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %1991 to i64*
  %1992 = load i64, i64* %RAX.i453
  %1993 = add i64 %1992, 60
  %1994 = load i64, i64* %PC.i452
  %1995 = add i64 %1994, 3
  store i64 %1995, i64* %PC.i452
  %1996 = inttoptr i64 %1993 to i32*
  %1997 = load i32, i32* %1996
  %1998 = zext i32 %1997 to i64
  store i64 %1998, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_43489f, %struct.Memory** %MEMORY
  %loadMem_4348a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 5
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %RCX.i451
  %2006 = load i64, i64* %PC.i450
  %2007 = add i64 %2006, 3
  store i64 %2007, i64* %PC.i450
  %2008 = trunc i64 %2005 to i32
  %2009 = add i32 8, %2008
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RCX.i451, align 8
  %2011 = icmp ult i32 %2009, %2008
  %2012 = icmp ult i32 %2009, 8
  %2013 = or i1 %2011, %2012
  %2014 = zext i1 %2013 to i8
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2014, i8* %2015, align 1
  %2016 = and i32 %2009, 255
  %2017 = call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2020, i8* %2021, align 1
  %2022 = xor i64 8, %2005
  %2023 = trunc i64 %2022 to i32
  %2024 = xor i32 %2023, %2009
  %2025 = lshr i32 %2024, 4
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2027, i8* %2028, align 1
  %2029 = icmp eq i32 %2009, 0
  %2030 = zext i1 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2030, i8* %2031, align 1
  %2032 = lshr i32 %2009, 31
  %2033 = trunc i32 %2032 to i8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2033, i8* %2034, align 1
  %2035 = lshr i32 %2008, 31
  %2036 = xor i32 %2032, %2035
  %2037 = add i32 %2036, %2032
  %2038 = icmp eq i32 %2037, 2
  %2039 = zext i1 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2039, i8* %2040, align 1
  store %struct.Memory* %loadMem_4348a2, %struct.Memory** %MEMORY
  %loadMem_4348a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 1
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %2046 to i64*
  %2047 = load i64, i64* %PC.i448
  %2048 = add i64 %2047, 8
  store i64 %2048, i64* %PC.i448
  %2049 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2049, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_4348a5, %struct.Memory** %MEMORY
  %loadMem_4348ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 33
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 1
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 7
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %RAX.i446
  %2060 = add i64 %2059, 52
  %2061 = load i64, i64* %PC.i445
  %2062 = add i64 %2061, 3
  store i64 %2062, i64* %PC.i445
  %2063 = inttoptr i64 %2060 to i32*
  %2064 = load i32, i32* %2063
  %2065 = zext i32 %2064 to i64
  store i64 %2065, i64* %RDX.i447, align 8
  store %struct.Memory* %loadMem_4348ad, %struct.Memory** %MEMORY
  %loadMem_4348b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 7
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RDX.i444 = bitcast %union.anon* %2071 to i64*
  %2072 = load i64, i64* %RDX.i444
  %2073 = load i64, i64* %PC.i443
  %2074 = add i64 %2073, 3
  store i64 %2074, i64* %PC.i443
  %2075 = trunc i64 %2072 to i32
  %2076 = add i32 8, %2075
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RDX.i444, align 8
  %2078 = icmp ult i32 %2076, %2075
  %2079 = icmp ult i32 %2076, 8
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2081, i8* %2082, align 1
  %2083 = and i32 %2076, 255
  %2084 = call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2087, i8* %2088, align 1
  %2089 = xor i64 8, %2072
  %2090 = trunc i64 %2089 to i32
  %2091 = xor i32 %2090, %2076
  %2092 = lshr i32 %2091, 4
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2094, i8* %2095, align 1
  %2096 = icmp eq i32 %2076, 0
  %2097 = zext i1 %2096 to i8
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2097, i8* %2098, align 1
  %2099 = lshr i32 %2076, 31
  %2100 = trunc i32 %2099 to i8
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2100, i8* %2101, align 1
  %2102 = lshr i32 %2075, 31
  %2103 = xor i32 %2099, %2102
  %2104 = add i32 %2103, %2099
  %2105 = icmp eq i32 %2104, 2
  %2106 = zext i1 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2106, i8* %2107, align 1
  store %struct.Memory* %loadMem_4348b0, %struct.Memory** %MEMORY
  %loadMem_4348b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 7
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RDX.i442 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RDX.i442
  %2115 = load i64, i64* %PC.i441
  %2116 = add i64 %2115, 3
  store i64 %2116, i64* %PC.i441
  %2117 = and i64 %2114, 4294967295
  %2118 = shl i64 %2117, 1
  %2119 = trunc i64 %2118 to i32
  %2120 = icmp slt i32 %2119, 0
  %2121 = shl i32 %2119, 1
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RDX.i442, align 8
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2124 = zext i1 %2120 to i8
  store i8 %2124, i8* %2123, align 1
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2126 = and i32 %2121, 254
  %2127 = call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %2125, align 1
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2131, align 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2133 = icmp eq i32 %2121, 0
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %2132, align 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2136 = lshr i32 %2121, 31
  %2137 = trunc i32 %2136 to i8
  store i8 %2137, i8* %2135, align 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2138, align 1
  store %struct.Memory* %loadMem_4348b3, %struct.Memory** %MEMORY
  %loadMem_4348b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 5
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %ECX.i439 = bitcast %union.anon* %2144 to i32*
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 9
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %RSI.i440 = bitcast %union.anon* %2147 to i64*
  %2148 = load i32, i32* %ECX.i439
  %2149 = zext i32 %2148 to i64
  %2150 = load i64, i64* %PC.i438
  %2151 = add i64 %2150, 2
  store i64 %2151, i64* %PC.i438
  %2152 = and i64 %2149, 4294967295
  store i64 %2152, i64* %RSI.i440, align 8
  store %struct.Memory* %loadMem_4348b6, %struct.Memory** %MEMORY
  %loadMem1_4348b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 33
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2155 to i64*
  %2156 = load i64, i64* %PC.i437
  %2157 = add i64 %2156, 151368
  %2158 = load i64, i64* %PC.i437
  %2159 = add i64 %2158, 5
  %2160 = load i64, i64* %PC.i437
  %2161 = add i64 %2160, 5
  store i64 %2161, i64* %PC.i437
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2163 = load i64, i64* %2162, align 8
  %2164 = add i64 %2163, -8
  %2165 = inttoptr i64 %2164 to i64*
  store i64 %2159, i64* %2165
  store i64 %2164, i64* %2162, align 8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2157, i64* %2166, align 8
  store %struct.Memory* %loadMem1_4348b8, %struct.Memory** %MEMORY
  %loadMem2_4348b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4348b8 = load i64, i64* %3
  %call2_4348b8 = call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* %0, i64 %loadPC_4348b8, %struct.Memory* %loadMem2_4348b8)
  store %struct.Memory* %call2_4348b8, %struct.Memory** %MEMORY
  %loadMem_4348bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 33
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2169 to i64*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 1
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 15
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %RAX.i435
  %2177 = load i64, i64* %RBP.i436
  %2178 = sub i64 %2177, 8
  %2179 = load i64, i64* %PC.i434
  %2180 = add i64 %2179, 3
  store i64 %2180, i64* %PC.i434
  %2181 = trunc i64 %2176 to i32
  %2182 = inttoptr i64 %2178 to i32*
  %2183 = load i32, i32* %2182
  %2184 = add i32 %2183, %2181
  %2185 = zext i32 %2184 to i64
  store i64 %2185, i64* %RAX.i435, align 8
  %2186 = icmp ult i32 %2184, %2181
  %2187 = icmp ult i32 %2184, %2183
  %2188 = or i1 %2186, %2187
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2189, i8* %2190, align 1
  %2191 = and i32 %2184, 255
  %2192 = call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2195, i8* %2196, align 1
  %2197 = xor i32 %2183, %2181
  %2198 = xor i32 %2197, %2184
  %2199 = lshr i32 %2198, 4
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2201, i8* %2202, align 1
  %2203 = icmp eq i32 %2184, 0
  %2204 = zext i1 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2204, i8* %2205, align 1
  %2206 = lshr i32 %2184, 31
  %2207 = trunc i32 %2206 to i8
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2207, i8* %2208, align 1
  %2209 = lshr i32 %2181, 31
  %2210 = lshr i32 %2183, 31
  %2211 = xor i32 %2206, %2209
  %2212 = xor i32 %2206, %2210
  %2213 = add i32 %2211, %2212
  %2214 = icmp eq i32 %2213, 2
  %2215 = zext i1 %2214 to i8
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2215, i8* %2216, align 1
  store %struct.Memory* %loadMem_4348bd, %struct.Memory** %MEMORY
  %loadMem_4348c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 1
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %2222 to i32*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 15
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RBP.i433
  %2227 = sub i64 %2226, 8
  %2228 = load i32, i32* %EAX.i432
  %2229 = zext i32 %2228 to i64
  %2230 = load i64, i64* %PC.i431
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %PC.i431
  %2232 = inttoptr i64 %2227 to i32*
  store i32 %2228, i32* %2232
  store %struct.Memory* %loadMem_4348c0, %struct.Memory** %MEMORY
  %loadMem_4348c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 11
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RDI.i430 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %PC.i429
  %2240 = add i64 %2239, 8
  store i64 %2240, i64* %PC.i429
  %2241 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2241, i64* %RDI.i430, align 8
  store %struct.Memory* %loadMem_4348c3, %struct.Memory** %MEMORY
  %loadMem_4348cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 11
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RDI.i428 = bitcast %union.anon* %2247 to i64*
  %2248 = load i64, i64* %RDI.i428
  %2249 = add i64 %2248, 2464
  %2250 = load i64, i64* %PC.i427
  %2251 = add i64 %2250, 7
  store i64 %2251, i64* %PC.i427
  %2252 = inttoptr i64 %2249 to i32*
  %2253 = load i32, i32* %2252
  %2254 = sub i32 %2253, 2
  %2255 = icmp ult i32 %2253, 2
  %2256 = zext i1 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2256, i8* %2257, align 1
  %2258 = and i32 %2254, 255
  %2259 = call i32 @llvm.ctpop.i32(i32 %2258)
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = xor i8 %2261, 1
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2262, i8* %2263, align 1
  %2264 = xor i32 %2253, 2
  %2265 = xor i32 %2264, %2254
  %2266 = lshr i32 %2265, 4
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2268, i8* %2269, align 1
  %2270 = icmp eq i32 %2254, 0
  %2271 = zext i1 %2270 to i8
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2271, i8* %2272, align 1
  %2273 = lshr i32 %2254, 31
  %2274 = trunc i32 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2274, i8* %2275, align 1
  %2276 = lshr i32 %2253, 31
  %2277 = xor i32 %2273, %2276
  %2278 = add i32 %2277, %2276
  %2279 = icmp eq i32 %2278, 2
  %2280 = zext i1 %2279 to i8
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2280, i8* %2281, align 1
  store %struct.Memory* %loadMem_4348cb, %struct.Memory** %MEMORY
  %loadMem_4348d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 33
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2284 to i64*
  %2285 = load i64, i64* %PC.i426
  %2286 = add i64 %2285, 520
  %2287 = load i64, i64* %PC.i426
  %2288 = add i64 %2287, 6
  %2289 = load i64, i64* %PC.i426
  %2290 = add i64 %2289, 6
  store i64 %2290, i64* %PC.i426
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2292 = load i8, i8* %2291, align 1
  %2293 = icmp eq i8 %2292, 0
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %BRANCH_TAKEN, align 1
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2296 = select i1 %2293, i64 %2286, i64 %2288
  store i64 %2296, i64* %2295, align 8
  store %struct.Memory* %loadMem_4348d2, %struct.Memory** %MEMORY
  %loadBr_4348d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4348d2 = icmp eq i8 %loadBr_4348d2, 1
  br i1 %cmpBr_4348d2, label %block_.L_434ada, label %block_4348d8

block_4348d8:                                     ; preds = %block_.L_43488d
  %loadMem_4348d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 1
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %PC.i424
  %2304 = add i64 %2303, 5
  store i64 %2304, i64* %PC.i424
  store i64 16, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_4348d8, %struct.Memory** %MEMORY
  %loadMem_4348dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 11
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %RDI.i423 = bitcast %union.anon* %2310 to i64*
  %2311 = load i64, i64* %PC.i422
  %2312 = add i64 %2311, 8
  store i64 %2312, i64* %PC.i422
  %2313 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %2313, i64* %RDI.i423, align 8
  store %struct.Memory* %loadMem_4348dd, %struct.Memory** %MEMORY
  %loadMem_4348e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 1
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %2319 to i32*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 9
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RSI.i421 = bitcast %union.anon* %2322 to i64*
  %2323 = load i32, i32* %EAX.i420
  %2324 = zext i32 %2323 to i64
  %2325 = load i64, i64* %PC.i419
  %2326 = add i64 %2325, 2
  store i64 %2326, i64* %PC.i419
  %2327 = and i64 %2324, 4294967295
  store i64 %2327, i64* %RSI.i421, align 8
  store %struct.Memory* %loadMem_4348e5, %struct.Memory** %MEMORY
  %loadMem_4348e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 33
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 1
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %2333 to i32*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 7
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RDX.i418 = bitcast %union.anon* %2336 to i64*
  %2337 = load i32, i32* %EAX.i417
  %2338 = zext i32 %2337 to i64
  %2339 = load i64, i64* %PC.i416
  %2340 = add i64 %2339, 2
  store i64 %2340, i64* %PC.i416
  %2341 = and i64 %2338, 4294967295
  store i64 %2341, i64* %RDX.i418, align 8
  store %struct.Memory* %loadMem_4348e7, %struct.Memory** %MEMORY
  %loadMem1_4348e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %PC.i415
  %2346 = add i64 %2345, 151319
  %2347 = load i64, i64* %PC.i415
  %2348 = add i64 %2347, 5
  %2349 = load i64, i64* %PC.i415
  %2350 = add i64 %2349, 5
  store i64 %2350, i64* %PC.i415
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2352 = load i64, i64* %2351, align 8
  %2353 = add i64 %2352, -8
  %2354 = inttoptr i64 %2353 to i64*
  store i64 %2348, i64* %2354
  store i64 %2353, i64* %2351, align 8
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2346, i64* %2355, align 8
  store %struct.Memory* %loadMem1_4348e9, %struct.Memory** %MEMORY
  %loadMem2_4348e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4348e9 = load i64, i64* %3
  %call2_4348e9 = call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* %0, i64 %loadPC_4348e9, %struct.Memory* %loadMem2_4348e9)
  store %struct.Memory* %call2_4348e9, %struct.Memory** %MEMORY
  %loadMem_4348ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 7
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RDX.i414 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %PC.i413
  %2363 = add i64 %2362, 5
  store i64 %2363, i64* %PC.i413
  store i64 8, i64* %RDX.i414, align 8
  store %struct.Memory* %loadMem_4348ee, %struct.Memory** %MEMORY
  %loadMem_4348f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 7
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %EDX.i411 = bitcast %union.anon* %2369 to i32*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 9
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RSI.i412 = bitcast %union.anon* %2372 to i64*
  %2373 = load i32, i32* %EDX.i411
  %2374 = zext i32 %2373 to i64
  %2375 = load i64, i64* %PC.i410
  %2376 = add i64 %2375, 2
  store i64 %2376, i64* %PC.i410
  %2377 = and i64 %2374, 4294967295
  store i64 %2377, i64* %RSI.i412, align 8
  store %struct.Memory* %loadMem_4348f3, %struct.Memory** %MEMORY
  %loadMem_4348f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 33
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 1
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RAX.i408
  %2388 = load i64, i64* %RBP.i409
  %2389 = sub i64 %2388, 8
  %2390 = load i64, i64* %PC.i407
  %2391 = add i64 %2390, 3
  store i64 %2391, i64* %PC.i407
  %2392 = trunc i64 %2387 to i32
  %2393 = inttoptr i64 %2389 to i32*
  %2394 = load i32, i32* %2393
  %2395 = add i32 %2394, %2392
  %2396 = zext i32 %2395 to i64
  store i64 %2396, i64* %RAX.i408, align 8
  %2397 = icmp ult i32 %2395, %2392
  %2398 = icmp ult i32 %2395, %2394
  %2399 = or i1 %2397, %2398
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2400, i8* %2401, align 1
  %2402 = and i32 %2395, 255
  %2403 = call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2406, i8* %2407, align 1
  %2408 = xor i32 %2394, %2392
  %2409 = xor i32 %2408, %2395
  %2410 = lshr i32 %2409, 4
  %2411 = trunc i32 %2410 to i8
  %2412 = and i8 %2411, 1
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2412, i8* %2413, align 1
  %2414 = icmp eq i32 %2395, 0
  %2415 = zext i1 %2414 to i8
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2415, i8* %2416, align 1
  %2417 = lshr i32 %2395, 31
  %2418 = trunc i32 %2417 to i8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2418, i8* %2419, align 1
  %2420 = lshr i32 %2392, 31
  %2421 = lshr i32 %2394, 31
  %2422 = xor i32 %2417, %2420
  %2423 = xor i32 %2417, %2421
  %2424 = add i32 %2422, %2423
  %2425 = icmp eq i32 %2424, 2
  %2426 = zext i1 %2425 to i8
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2426, i8* %2427, align 1
  store %struct.Memory* %loadMem_4348f5, %struct.Memory** %MEMORY
  %loadMem_4348f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 1
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %EAX.i405 = bitcast %union.anon* %2433 to i32*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 15
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %RBP.i406
  %2438 = sub i64 %2437, 8
  %2439 = load i32, i32* %EAX.i405
  %2440 = zext i32 %2439 to i64
  %2441 = load i64, i64* %PC.i404
  %2442 = add i64 %2441, 3
  store i64 %2442, i64* %PC.i404
  %2443 = inttoptr i64 %2438 to i32*
  store i32 %2439, i32* %2443
  store %struct.Memory* %loadMem_4348f8, %struct.Memory** %MEMORY
  %loadMem_4348fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 11
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RDI.i403 = bitcast %union.anon* %2449 to i64*
  %2450 = load i64, i64* %PC.i402
  %2451 = add i64 %2450, 8
  store i64 %2451, i64* %PC.i402
  %2452 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2452, i64* %RDI.i403, align 8
  store %struct.Memory* %loadMem_4348fb, %struct.Memory** %MEMORY
  %loadMem_434903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 11
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RDI.i401 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RDI.i401
  %2460 = add i64 %2459, 2904
  %2461 = load i64, i64* %PC.i400
  %2462 = add i64 %2461, 7
  store i64 %2462, i64* %PC.i400
  %2463 = inttoptr i64 %2460 to i32*
  %2464 = load i32, i32* %2463
  %2465 = sext i32 %2464 to i64
  store i64 %2465, i64* %RDI.i401, align 8
  store %struct.Memory* %loadMem_434903, %struct.Memory** %MEMORY
  %loadMem1_43490a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 33
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %PC.i399
  %2470 = add i64 %2469, -210986
  %2471 = load i64, i64* %PC.i399
  %2472 = add i64 %2471, 5
  %2473 = load i64, i64* %PC.i399
  %2474 = add i64 %2473, 5
  store i64 %2474, i64* %PC.i399
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2476 = load i64, i64* %2475, align 8
  %2477 = add i64 %2476, -8
  %2478 = inttoptr i64 %2477 to i64*
  store i64 %2472, i64* %2478
  store i64 %2477, i64* %2475, align 8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2470, i64* %2479, align 8
  store %struct.Memory* %loadMem1_43490a, %struct.Memory** %MEMORY
  %loadMem2_43490a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43490a = load i64, i64* %3
  %2480 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_43490a)
  store %struct.Memory* %2480, %struct.Memory** %MEMORY
  %loadMem_43490f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 9
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RSI.i395 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %PC.i394
  %2488 = add i64 %2487, 8
  store i64 %2488, i64* %PC.i394
  %2489 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %2489, i64* %RSI.i395, align 8
  store %struct.Memory* %loadMem_43490f, %struct.Memory** %MEMORY
  %loadMem_434917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 1
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 9
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RSI.i393 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %RSI.i393
  %2500 = add i64 %2499, 16
  %2501 = load i64, i64* %RAX.i392
  %2502 = load i64, i64* %PC.i391
  %2503 = add i64 %2502, 4
  store i64 %2503, i64* %PC.i391
  %2504 = inttoptr i64 %2500 to i64*
  store i64 %2501, i64* %2504
  store %struct.Memory* %loadMem_434917, %struct.Memory** %MEMORY
  %loadMem_43491b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 1
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %2510 to i64*
  %2511 = load i64, i64* %RAX.i390
  %2512 = load i64, i64* %PC.i389
  %2513 = add i64 %2512, 4
  store i64 %2513, i64* %PC.i389
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2514, align 1
  %2515 = trunc i64 %2511 to i32
  %2516 = and i32 %2515, 255
  %2517 = call i32 @llvm.ctpop.i32(i32 %2516)
  %2518 = trunc i32 %2517 to i8
  %2519 = and i8 %2518, 1
  %2520 = xor i8 %2519, 1
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2520, i8* %2521, align 1
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2522, align 1
  %2523 = icmp eq i64 %2511, 0
  %2524 = zext i1 %2523 to i8
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2524, i8* %2525, align 1
  %2526 = lshr i64 %2511, 63
  %2527 = trunc i64 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2527, i8* %2528, align 1
  %2529 = lshr i64 %2511, 63
  %2530 = xor i64 %2526, %2529
  %2531 = add i64 %2530, %2529
  %2532 = icmp eq i64 %2531, 2
  %2533 = zext i1 %2532 to i8
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2533, i8* %2534, align 1
  store %struct.Memory* %loadMem_43491b, %struct.Memory** %MEMORY
  %loadMem_43491f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 33
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2537 to i64*
  %2538 = load i64, i64* %PC.i388
  %2539 = add i64 %2538, 21
  %2540 = load i64, i64* %PC.i388
  %2541 = add i64 %2540, 6
  %2542 = load i64, i64* %PC.i388
  %2543 = add i64 %2542, 6
  store i64 %2543, i64* %PC.i388
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2545 = load i8, i8* %2544, align 1
  %2546 = icmp eq i8 %2545, 0
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %BRANCH_TAKEN, align 1
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2549 = select i1 %2546, i64 %2539, i64 %2541
  store i64 %2549, i64* %2548, align 8
  store %struct.Memory* %loadMem_43491f, %struct.Memory** %MEMORY
  %loadBr_43491f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43491f = icmp eq i8 %loadBr_43491f, 1
  br i1 %cmpBr_43491f, label %block_.L_434934, label %block_434925

block_434925:                                     ; preds = %block_4348d8
  %loadMem_434925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 33
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 11
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RDI.i387 = bitcast %union.anon* %2555 to i64*
  %2556 = load i64, i64* %PC.i386
  %2557 = add i64 %2556, 10
  store i64 %2557, i64* %PC.i386
  store i64 ptrtoint (%G__0x4c166d_type* @G__0x4c166d to i64), i64* %RDI.i387, align 8
  store %struct.Memory* %loadMem_434925, %struct.Memory** %MEMORY
  %loadMem1_43492f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 33
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2560 to i64*
  %2561 = load i64, i64* %PC.i385
  %2562 = add i64 %2561, 150209
  %2563 = load i64, i64* %PC.i385
  %2564 = add i64 %2563, 5
  %2565 = load i64, i64* %PC.i385
  %2566 = add i64 %2565, 5
  store i64 %2566, i64* %PC.i385
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2568 = load i64, i64* %2567, align 8
  %2569 = add i64 %2568, -8
  %2570 = inttoptr i64 %2569 to i64*
  store i64 %2564, i64* %2570
  store i64 %2569, i64* %2567, align 8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2562, i64* %2571, align 8
  store %struct.Memory* %loadMem1_43492f, %struct.Memory** %MEMORY
  %loadMem2_43492f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43492f = load i64, i64* %3
  %call2_43492f = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_43492f, %struct.Memory* %loadMem2_43492f)
  store %struct.Memory* %call2_43492f, %struct.Memory** %MEMORY
  br label %block_.L_434934

block_.L_434934:                                  ; preds = %block_434925, %block_4348d8
  %loadMem_434934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 15
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %RBP.i384
  %2579 = sub i64 %2578, 4
  %2580 = load i64, i64* %PC.i383
  %2581 = add i64 %2580, 7
  store i64 %2581, i64* %PC.i383
  %2582 = inttoptr i64 %2579 to i32*
  store i32 0, i32* %2582
  store %struct.Memory* %loadMem_434934, %struct.Memory** %MEMORY
  br label %block_.L_43493b

block_.L_43493b:                                  ; preds = %block_434952, %block_.L_434934
  %loadMem_43493b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 1
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 15
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %2591 to i64*
  %2592 = load i64, i64* %RBP.i382
  %2593 = sub i64 %2592, 4
  %2594 = load i64, i64* %PC.i380
  %2595 = add i64 %2594, 3
  store i64 %2595, i64* %PC.i380
  %2596 = inttoptr i64 %2593 to i32*
  %2597 = load i32, i32* %2596
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_43493b, %struct.Memory** %MEMORY
  %loadMem_43493e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 5
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %2604 to i64*
  %2605 = load i64, i64* %PC.i378
  %2606 = add i64 %2605, 8
  store i64 %2606, i64* %PC.i378
  %2607 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2607, i64* %RCX.i379, align 8
  store %struct.Memory* %loadMem_43493e, %struct.Memory** %MEMORY
  %loadMem_434946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 1
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %2613 to i32*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 5
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %2616 to i64*
  %2617 = load i32, i32* %EAX.i376
  %2618 = zext i32 %2617 to i64
  %2619 = load i64, i64* %RCX.i377
  %2620 = add i64 %2619, 2904
  %2621 = load i64, i64* %PC.i375
  %2622 = add i64 %2621, 6
  store i64 %2622, i64* %PC.i375
  %2623 = inttoptr i64 %2620 to i32*
  %2624 = load i32, i32* %2623
  %2625 = sub i32 %2617, %2624
  %2626 = icmp ult i32 %2617, %2624
  %2627 = zext i1 %2626 to i8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2627, i8* %2628, align 1
  %2629 = and i32 %2625, 255
  %2630 = call i32 @llvm.ctpop.i32(i32 %2629)
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  %2633 = xor i8 %2632, 1
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2633, i8* %2634, align 1
  %2635 = xor i32 %2624, %2617
  %2636 = xor i32 %2635, %2625
  %2637 = lshr i32 %2636, 4
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2639, i8* %2640, align 1
  %2641 = icmp eq i32 %2625, 0
  %2642 = zext i1 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2625, 31
  %2645 = trunc i32 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2645, i8* %2646, align 1
  %2647 = lshr i32 %2617, 31
  %2648 = lshr i32 %2624, 31
  %2649 = xor i32 %2648, %2647
  %2650 = xor i32 %2644, %2647
  %2651 = add i32 %2650, %2649
  %2652 = icmp eq i32 %2651, 2
  %2653 = zext i1 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2653, i8* %2654, align 1
  store %struct.Memory* %loadMem_434946, %struct.Memory** %MEMORY
  %loadMem_43494c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 33
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %PC.i374
  %2659 = add i64 %2658, 101
  %2660 = load i64, i64* %PC.i374
  %2661 = add i64 %2660, 6
  %2662 = load i64, i64* %PC.i374
  %2663 = add i64 %2662, 6
  store i64 %2663, i64* %PC.i374
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2665 = load i8, i8* %2664, align 1
  %2666 = icmp ne i8 %2665, 0
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2668 = load i8, i8* %2667, align 1
  %2669 = icmp ne i8 %2668, 0
  %2670 = xor i1 %2666, %2669
  %2671 = xor i1 %2670, true
  %2672 = zext i1 %2671 to i8
  store i8 %2672, i8* %BRANCH_TAKEN, align 1
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2674 = select i1 %2670, i64 %2661, i64 %2659
  store i64 %2674, i64* %2673, align 8
  store %struct.Memory* %loadMem_43494c, %struct.Memory** %MEMORY
  %loadBr_43494c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43494c = icmp eq i8 %loadBr_43494c, 1
  br i1 %cmpBr_43494c, label %block_.L_4349b1, label %block_434952

block_434952:                                     ; preds = %block_.L_43493b
  %loadMem_434952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 1
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %PC.i372
  %2682 = add i64 %2681, 8
  store i64 %2682, i64* %PC.i372
  %2683 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %2683, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_434952, %struct.Memory** %MEMORY
  %loadMem_43495a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2688 = getelementptr inbounds %struct.GPR, %struct.GPR* %2687, i32 0, i32 1
  %2689 = getelementptr inbounds %struct.Reg, %struct.Reg* %2688, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %2689 to i64*
  %2690 = load i64, i64* %RAX.i371
  %2691 = add i64 %2690, 16
  %2692 = load i64, i64* %PC.i370
  %2693 = add i64 %2692, 4
  store i64 %2693, i64* %PC.i370
  %2694 = inttoptr i64 %2691 to i64*
  %2695 = load i64, i64* %2694
  store i64 %2695, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_43495a, %struct.Memory** %MEMORY
  %loadMem_43495e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 5
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 15
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %2704 to i64*
  %2705 = load i64, i64* %RBP.i369
  %2706 = sub i64 %2705, 4
  %2707 = load i64, i64* %PC.i367
  %2708 = add i64 %2707, 4
  store i64 %2708, i64* %PC.i367
  %2709 = inttoptr i64 %2706 to i32*
  %2710 = load i32, i32* %2709
  %2711 = sext i32 %2710 to i64
  store i64 %2711, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_43495e, %struct.Memory** %MEMORY
  %loadMem_434962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 33
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 5
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %RCX.i366
  %2719 = load i64, i64* %PC.i365
  %2720 = add i64 %2719, 4
  store i64 %2720, i64* %PC.i365
  %2721 = shl i64 %2718, 2
  %2722 = icmp slt i64 %2721, 0
  %2723 = shl i64 %2721, 1
  store i64 %2723, i64* %RCX.i366, align 8
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2725 = zext i1 %2722 to i8
  store i8 %2725, i8* %2724, align 1
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2727 = trunc i64 %2723 to i32
  %2728 = and i32 %2727, 254
  %2729 = call i32 @llvm.ctpop.i32(i32 %2728)
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = xor i8 %2731, 1
  store i8 %2732, i8* %2726, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2733, align 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2735 = icmp eq i64 %2723, 0
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %2734, align 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2738 = lshr i64 %2723, 63
  %2739 = trunc i64 %2738 to i8
  store i8 %2739, i8* %2737, align 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2740, align 1
  store %struct.Memory* %loadMem_434962, %struct.Memory** %MEMORY
  %loadMem_434966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 33
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 1
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 5
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %2749 to i64*
  %2750 = load i64, i64* %RAX.i363
  %2751 = load i64, i64* %RCX.i364
  %2752 = load i64, i64* %PC.i362
  %2753 = add i64 %2752, 3
  store i64 %2753, i64* %PC.i362
  %2754 = add i64 %2751, %2750
  store i64 %2754, i64* %RAX.i363, align 8
  %2755 = icmp ult i64 %2754, %2750
  %2756 = icmp ult i64 %2754, %2751
  %2757 = or i1 %2755, %2756
  %2758 = zext i1 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2758, i8* %2759, align 1
  %2760 = trunc i64 %2754 to i32
  %2761 = and i32 %2760, 255
  %2762 = call i32 @llvm.ctpop.i32(i32 %2761)
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  %2765 = xor i8 %2764, 1
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2765, i8* %2766, align 1
  %2767 = xor i64 %2751, %2750
  %2768 = xor i64 %2767, %2754
  %2769 = lshr i64 %2768, 4
  %2770 = trunc i64 %2769 to i8
  %2771 = and i8 %2770, 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2771, i8* %2772, align 1
  %2773 = icmp eq i64 %2754, 0
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2774, i8* %2775, align 1
  %2776 = lshr i64 %2754, 63
  %2777 = trunc i64 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2777, i8* %2778, align 1
  %2779 = lshr i64 %2750, 63
  %2780 = lshr i64 %2751, 63
  %2781 = xor i64 %2776, %2779
  %2782 = xor i64 %2776, %2780
  %2783 = add i64 %2781, %2782
  %2784 = icmp eq i64 %2783, 2
  %2785 = zext i1 %2784 to i8
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2785, i8* %2786, align 1
  store %struct.Memory* %loadMem_434966, %struct.Memory** %MEMORY
  %loadMem_434969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 5
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %PC.i360
  %2794 = add i64 %2793, 8
  store i64 %2794, i64* %PC.i360
  %2795 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2795, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_434969, %struct.Memory** %MEMORY
  %loadMem_434971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 33
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 5
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %2801 to i64*
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2803 = getelementptr inbounds %struct.GPR, %struct.GPR* %2802, i32 0, i32 7
  %2804 = getelementptr inbounds %struct.Reg, %struct.Reg* %2803, i32 0, i32 0
  %RDX.i359 = bitcast %union.anon* %2804 to i64*
  %2805 = load i64, i64* %RCX.i358
  %2806 = add i64 %2805, 36
  %2807 = load i64, i64* %PC.i357
  %2808 = add i64 %2807, 3
  store i64 %2808, i64* %PC.i357
  %2809 = inttoptr i64 %2806 to i32*
  %2810 = load i32, i32* %2809
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RDX.i359, align 8
  store %struct.Memory* %loadMem_434971, %struct.Memory** %MEMORY
  %loadMem_434974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 7
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %2817 to i64*
  %2818 = load i64, i64* %RDX.i356
  %2819 = load i64, i64* %PC.i355
  %2820 = add i64 %2819, 3
  store i64 %2820, i64* %PC.i355
  %2821 = trunc i64 %2818 to i32
  %2822 = add i32 1, %2821
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RDX.i356, align 8
  %2824 = icmp ult i32 %2822, %2821
  %2825 = icmp ult i32 %2822, 1
  %2826 = or i1 %2824, %2825
  %2827 = zext i1 %2826 to i8
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2827, i8* %2828, align 1
  %2829 = and i32 %2822, 255
  %2830 = call i32 @llvm.ctpop.i32(i32 %2829)
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  %2833 = xor i8 %2832, 1
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2833, i8* %2834, align 1
  %2835 = xor i64 1, %2818
  %2836 = trunc i64 %2835 to i32
  %2837 = xor i32 %2836, %2822
  %2838 = lshr i32 %2837, 4
  %2839 = trunc i32 %2838 to i8
  %2840 = and i8 %2839, 1
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2840, i8* %2841, align 1
  %2842 = icmp eq i32 %2822, 0
  %2843 = zext i1 %2842 to i8
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2843, i8* %2844, align 1
  %2845 = lshr i32 %2822, 31
  %2846 = trunc i32 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2846, i8* %2847, align 1
  %2848 = lshr i32 %2821, 31
  %2849 = xor i32 %2845, %2848
  %2850 = add i32 %2849, %2845
  %2851 = icmp eq i32 %2850, 2
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2852, i8* %2853, align 1
  store %struct.Memory* %loadMem_434974, %struct.Memory** %MEMORY
  %loadMem_434977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 5
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %PC.i353
  %2861 = add i64 %2860, 8
  store i64 %2861, i64* %PC.i353
  %2862 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2862, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_434977, %struct.Memory** %MEMORY
  %loadMem_43497f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 5
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 9
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RSI.i352 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RCX.i351
  %2873 = add i64 %2872, 60
  %2874 = load i64, i64* %PC.i350
  %2875 = add i64 %2874, 3
  store i64 %2875, i64* %PC.i350
  %2876 = inttoptr i64 %2873 to i32*
  %2877 = load i32, i32* %2876
  %2878 = zext i32 %2877 to i64
  store i64 %2878, i64* %RSI.i352, align 8
  store %struct.Memory* %loadMem_43497f, %struct.Memory** %MEMORY
  %loadMem_434982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 5
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2884 to i64*
  %2885 = load i64, i64* %PC.i348
  %2886 = add i64 %2885, 8
  store i64 %2886, i64* %PC.i348
  %2887 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2887, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_434982, %struct.Memory** %MEMORY
  %loadMem_43498a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 5
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %2893 to i64*
  %2894 = load i64, i64* %RCX.i347
  %2895 = add i64 %2894, 52
  %2896 = load i64, i64* %PC.i346
  %2897 = add i64 %2896, 3
  store i64 %2897, i64* %PC.i346
  %2898 = inttoptr i64 %2895 to i32*
  %2899 = load i32, i32* %2898
  %2900 = zext i32 %2899 to i64
  store i64 %2900, i64* %RCX.i347, align 8
  store %struct.Memory* %loadMem_43498a, %struct.Memory** %MEMORY
  %loadMem_43498d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 1
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 11
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RDI.i345 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RAX.i344
  %2911 = load i64, i64* %PC.i343
  %2912 = add i64 %2911, 3
  store i64 %2912, i64* %PC.i343
  store i64 %2910, i64* %RDI.i345, align 8
  store %struct.Memory* %loadMem_43498d, %struct.Memory** %MEMORY
  %loadMem_434990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 9
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %ESI.i341 = bitcast %union.anon* %2918 to i32*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 15
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RBP.i342
  %2923 = sub i64 %2922, 24
  %2924 = load i32, i32* %ESI.i341
  %2925 = zext i32 %2924 to i64
  %2926 = load i64, i64* %PC.i340
  %2927 = add i64 %2926, 3
  store i64 %2927, i64* %PC.i340
  %2928 = inttoptr i64 %2923 to i32*
  store i32 %2924, i32* %2928
  store %struct.Memory* %loadMem_434990, %struct.Memory** %MEMORY
  %loadMem_434993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 7
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %EDX.i338 = bitcast %union.anon* %2934 to i32*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 9
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RSI.i339 = bitcast %union.anon* %2937 to i64*
  %2938 = load i32, i32* %EDX.i338
  %2939 = zext i32 %2938 to i64
  %2940 = load i64, i64* %PC.i337
  %2941 = add i64 %2940, 2
  store i64 %2941, i64* %PC.i337
  %2942 = and i64 %2939, 4294967295
  store i64 %2942, i64* %RSI.i339, align 8
  store %struct.Memory* %loadMem_434993, %struct.Memory** %MEMORY
  %loadMem_434995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 7
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RDX.i335 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %RBP.i336
  %2953 = sub i64 %2952, 24
  %2954 = load i64, i64* %PC.i334
  %2955 = add i64 %2954, 3
  store i64 %2955, i64* %PC.i334
  %2956 = inttoptr i64 %2953 to i32*
  %2957 = load i32, i32* %2956
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %RDX.i335, align 8
  store %struct.Memory* %loadMem_434995, %struct.Memory** %MEMORY
  %loadMem1_434998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 33
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2961 to i64*
  %2962 = load i64, i64* %PC.i333
  %2963 = add i64 %2962, 150488
  %2964 = load i64, i64* %PC.i333
  %2965 = add i64 %2964, 5
  %2966 = load i64, i64* %PC.i333
  %2967 = add i64 %2966, 5
  store i64 %2967, i64* %PC.i333
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2969 = load i64, i64* %2968, align 8
  %2970 = add i64 %2969, -8
  %2971 = inttoptr i64 %2970 to i64*
  store i64 %2965, i64* %2971
  store i64 %2970, i64* %2968, align 8
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2963, i64* %2972, align 8
  store %struct.Memory* %loadMem1_434998, %struct.Memory** %MEMORY
  %loadMem2_434998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434998 = load i64, i64* %3
  %call2_434998 = call %struct.Memory* @sub_459570.get_mem3Dpel(%struct.State* %0, i64 %loadPC_434998, %struct.Memory* %loadMem2_434998)
  store %struct.Memory* %call2_434998, %struct.Memory** %MEMORY
  %loadMem_43499d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 1
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %2978 to i64*
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 15
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %2981 to i64*
  %2982 = load i64, i64* %RAX.i331
  %2983 = load i64, i64* %RBP.i332
  %2984 = sub i64 %2983, 8
  %2985 = load i64, i64* %PC.i330
  %2986 = add i64 %2985, 3
  store i64 %2986, i64* %PC.i330
  %2987 = trunc i64 %2982 to i32
  %2988 = inttoptr i64 %2984 to i32*
  %2989 = load i32, i32* %2988
  %2990 = add i32 %2989, %2987
  %2991 = zext i32 %2990 to i64
  store i64 %2991, i64* %RAX.i331, align 8
  %2992 = icmp ult i32 %2990, %2987
  %2993 = icmp ult i32 %2990, %2989
  %2994 = or i1 %2992, %2993
  %2995 = zext i1 %2994 to i8
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2995, i8* %2996, align 1
  %2997 = and i32 %2990, 255
  %2998 = call i32 @llvm.ctpop.i32(i32 %2997)
  %2999 = trunc i32 %2998 to i8
  %3000 = and i8 %2999, 1
  %3001 = xor i8 %3000, 1
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3001, i8* %3002, align 1
  %3003 = xor i32 %2989, %2987
  %3004 = xor i32 %3003, %2990
  %3005 = lshr i32 %3004, 4
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3007, i8* %3008, align 1
  %3009 = icmp eq i32 %2990, 0
  %3010 = zext i1 %3009 to i8
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3010, i8* %3011, align 1
  %3012 = lshr i32 %2990, 31
  %3013 = trunc i32 %3012 to i8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3013, i8* %3014, align 1
  %3015 = lshr i32 %2987, 31
  %3016 = lshr i32 %2989, 31
  %3017 = xor i32 %3012, %3015
  %3018 = xor i32 %3012, %3016
  %3019 = add i32 %3017, %3018
  %3020 = icmp eq i32 %3019, 2
  %3021 = zext i1 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3021, i8* %3022, align 1
  store %struct.Memory* %loadMem_43499d, %struct.Memory** %MEMORY
  %loadMem_4349a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 33
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 1
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %3028 to i32*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 15
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %3031 to i64*
  %3032 = load i64, i64* %RBP.i329
  %3033 = sub i64 %3032, 8
  %3034 = load i32, i32* %EAX.i328
  %3035 = zext i32 %3034 to i64
  %3036 = load i64, i64* %PC.i327
  %3037 = add i64 %3036, 3
  store i64 %3037, i64* %PC.i327
  %3038 = inttoptr i64 %3033 to i32*
  store i32 %3034, i32* %3038
  store %struct.Memory* %loadMem_4349a0, %struct.Memory** %MEMORY
  %loadMem_4349a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 33
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 1
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 15
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %3047 to i64*
  %3048 = load i64, i64* %RBP.i326
  %3049 = sub i64 %3048, 4
  %3050 = load i64, i64* %PC.i324
  %3051 = add i64 %3050, 3
  store i64 %3051, i64* %PC.i324
  %3052 = inttoptr i64 %3049 to i32*
  %3053 = load i32, i32* %3052
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RAX.i325, align 8
  store %struct.Memory* %loadMem_4349a3, %struct.Memory** %MEMORY
  %loadMem_4349a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 33
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 1
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %3060 to i64*
  %3061 = load i64, i64* %RAX.i323
  %3062 = load i64, i64* %PC.i322
  %3063 = add i64 %3062, 3
  store i64 %3063, i64* %PC.i322
  %3064 = trunc i64 %3061 to i32
  %3065 = add i32 1, %3064
  %3066 = zext i32 %3065 to i64
  store i64 %3066, i64* %RAX.i323, align 8
  %3067 = icmp ult i32 %3065, %3064
  %3068 = icmp ult i32 %3065, 1
  %3069 = or i1 %3067, %3068
  %3070 = zext i1 %3069 to i8
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3070, i8* %3071, align 1
  %3072 = and i32 %3065, 255
  %3073 = call i32 @llvm.ctpop.i32(i32 %3072)
  %3074 = trunc i32 %3073 to i8
  %3075 = and i8 %3074, 1
  %3076 = xor i8 %3075, 1
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3076, i8* %3077, align 1
  %3078 = xor i64 1, %3061
  %3079 = trunc i64 %3078 to i32
  %3080 = xor i32 %3079, %3065
  %3081 = lshr i32 %3080, 4
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3083, i8* %3084, align 1
  %3085 = icmp eq i32 %3065, 0
  %3086 = zext i1 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3086, i8* %3087, align 1
  %3088 = lshr i32 %3065, 31
  %3089 = trunc i32 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3089, i8* %3090, align 1
  %3091 = lshr i32 %3064, 31
  %3092 = xor i32 %3088, %3091
  %3093 = add i32 %3092, %3088
  %3094 = icmp eq i32 %3093, 2
  %3095 = zext i1 %3094 to i8
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3095, i8* %3096, align 1
  store %struct.Memory* %loadMem_4349a6, %struct.Memory** %MEMORY
  %loadMem_4349a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 1
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %EAX.i320 = bitcast %union.anon* %3102 to i32*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 15
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %3105 to i64*
  %3106 = load i64, i64* %RBP.i321
  %3107 = sub i64 %3106, 4
  %3108 = load i32, i32* %EAX.i320
  %3109 = zext i32 %3108 to i64
  %3110 = load i64, i64* %PC.i319
  %3111 = add i64 %3110, 3
  store i64 %3111, i64* %PC.i319
  %3112 = inttoptr i64 %3107 to i32*
  store i32 %3108, i32* %3112
  store %struct.Memory* %loadMem_4349a9, %struct.Memory** %MEMORY
  %loadMem_4349ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 33
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %PC.i318
  %3117 = add i64 %3116, -113
  %3118 = load i64, i64* %PC.i318
  %3119 = add i64 %3118, 5
  store i64 %3119, i64* %PC.i318
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3117, i64* %3120, align 8
  store %struct.Memory* %loadMem_4349ac, %struct.Memory** %MEMORY
  br label %block_.L_43493b

block_.L_4349b1:                                  ; preds = %block_.L_43493b
  %loadMem_4349b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 1
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %3126 to i64*
  %3127 = load i64, i64* %PC.i316
  %3128 = add i64 %3127, 5
  store i64 %3128, i64* %PC.i316
  store i64 4, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_4349b1, %struct.Memory** %MEMORY
  %loadMem_4349b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 5
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %PC.i314
  %3136 = add i64 %3135, 8
  store i64 %3136, i64* %PC.i314
  %3137 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %3137, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_4349b6, %struct.Memory** %MEMORY
  %loadMem_4349be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 5
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %RCX.i313
  %3145 = load i64, i64* %PC.i312
  %3146 = add i64 %3145, 4
  store i64 %3146, i64* %PC.i312
  %3147 = add i64 32, %3144
  store i64 %3147, i64* %RCX.i313, align 8
  %3148 = icmp ult i64 %3147, %3144
  %3149 = icmp ult i64 %3147, 32
  %3150 = or i1 %3148, %3149
  %3151 = zext i1 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3151, i8* %3152, align 1
  %3153 = trunc i64 %3147 to i32
  %3154 = and i32 %3153, 255
  %3155 = call i32 @llvm.ctpop.i32(i32 %3154)
  %3156 = trunc i32 %3155 to i8
  %3157 = and i8 %3156, 1
  %3158 = xor i8 %3157, 1
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3158, i8* %3159, align 1
  %3160 = xor i64 32, %3144
  %3161 = xor i64 %3160, %3147
  %3162 = lshr i64 %3161, 4
  %3163 = trunc i64 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3164, i8* %3165, align 1
  %3166 = icmp eq i64 %3147, 0
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3167, i8* %3168, align 1
  %3169 = lshr i64 %3147, 63
  %3170 = trunc i64 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3170, i8* %3171, align 1
  %3172 = lshr i64 %3144, 63
  %3173 = xor i64 %3169, %3172
  %3174 = add i64 %3173, %3169
  %3175 = icmp eq i64 %3174, 2
  %3176 = zext i1 %3175 to i8
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3176, i8* %3177, align 1
  store %struct.Memory* %loadMem_4349be, %struct.Memory** %MEMORY
  %loadMem_4349c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 5
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 11
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RDI.i311 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %RCX.i310
  %3188 = load i64, i64* %PC.i309
  %3189 = add i64 %3188, 3
  store i64 %3189, i64* %PC.i309
  store i64 %3187, i64* %RDI.i311, align 8
  store %struct.Memory* %loadMem_4349c2, %struct.Memory** %MEMORY
  %loadMem_4349c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 33
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 1
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %EAX.i307 = bitcast %union.anon* %3195 to i32*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 9
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RSI.i308 = bitcast %union.anon* %3198 to i64*
  %3199 = load i32, i32* %EAX.i307
  %3200 = zext i32 %3199 to i64
  %3201 = load i64, i64* %PC.i306
  %3202 = add i64 %3201, 2
  store i64 %3202, i64* %PC.i306
  %3203 = and i64 %3200, 4294967295
  store i64 %3203, i64* %RSI.i308, align 8
  store %struct.Memory* %loadMem_4349c5, %struct.Memory** %MEMORY
  %loadMem_4349c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 33
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 1
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %EAX.i304 = bitcast %union.anon* %3209 to i32*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 7
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %RDX.i305 = bitcast %union.anon* %3212 to i64*
  %3213 = load i32, i32* %EAX.i304
  %3214 = zext i32 %3213 to i64
  %3215 = load i64, i64* %PC.i303
  %3216 = add i64 %3215, 2
  store i64 %3216, i64* %PC.i303
  %3217 = and i64 %3214, 4294967295
  store i64 %3217, i64* %RDX.i305, align 8
  store %struct.Memory* %loadMem_4349c7, %struct.Memory** %MEMORY
  %loadMem1_4349c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 33
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %PC.i302
  %3222 = add i64 %3221, 150199
  %3223 = load i64, i64* %PC.i302
  %3224 = add i64 %3223, 5
  %3225 = load i64, i64* %PC.i302
  %3226 = add i64 %3225, 5
  store i64 %3226, i64* %PC.i302
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3228 = load i64, i64* %3227, align 8
  %3229 = add i64 %3228, -8
  %3230 = inttoptr i64 %3229 to i64*
  store i64 %3224, i64* %3230
  store i64 %3229, i64* %3227, align 8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3222, i64* %3231, align 8
  store %struct.Memory* %loadMem1_4349c9, %struct.Memory** %MEMORY
  %loadMem2_4349c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4349c9 = load i64, i64* %3
  %call2_4349c9 = call %struct.Memory* @sub_459480.get_mem2Dpel(%struct.State* %0, i64 %loadPC_4349c9, %struct.Memory* %loadMem2_4349c9)
  store %struct.Memory* %call2_4349c9, %struct.Memory** %MEMORY
  %loadMem_4349ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 1
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 15
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %3240 to i64*
  %3241 = load i64, i64* %RAX.i300
  %3242 = load i64, i64* %RBP.i301
  %3243 = sub i64 %3242, 8
  %3244 = load i64, i64* %PC.i299
  %3245 = add i64 %3244, 3
  store i64 %3245, i64* %PC.i299
  %3246 = trunc i64 %3241 to i32
  %3247 = inttoptr i64 %3243 to i32*
  %3248 = load i32, i32* %3247
  %3249 = add i32 %3248, %3246
  %3250 = zext i32 %3249 to i64
  store i64 %3250, i64* %RAX.i300, align 8
  %3251 = icmp ult i32 %3249, %3246
  %3252 = icmp ult i32 %3249, %3248
  %3253 = or i1 %3251, %3252
  %3254 = zext i1 %3253 to i8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3254, i8* %3255, align 1
  %3256 = and i32 %3249, 255
  %3257 = call i32 @llvm.ctpop.i32(i32 %3256)
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  %3260 = xor i8 %3259, 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3260, i8* %3261, align 1
  %3262 = xor i32 %3248, %3246
  %3263 = xor i32 %3262, %3249
  %3264 = lshr i32 %3263, 4
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3266, i8* %3267, align 1
  %3268 = icmp eq i32 %3249, 0
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3269, i8* %3270, align 1
  %3271 = lshr i32 %3249, 31
  %3272 = trunc i32 %3271 to i8
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3272, i8* %3273, align 1
  %3274 = lshr i32 %3246, 31
  %3275 = lshr i32 %3248, 31
  %3276 = xor i32 %3271, %3274
  %3277 = xor i32 %3271, %3275
  %3278 = add i32 %3276, %3277
  %3279 = icmp eq i32 %3278, 2
  %3280 = zext i1 %3279 to i8
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3280, i8* %3281, align 1
  store %struct.Memory* %loadMem_4349ce, %struct.Memory** %MEMORY
  %loadMem_4349d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 33
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 1
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %EAX.i297 = bitcast %union.anon* %3287 to i32*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 15
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %RBP.i298
  %3292 = sub i64 %3291, 8
  %3293 = load i32, i32* %EAX.i297
  %3294 = zext i32 %3293 to i64
  %3295 = load i64, i64* %PC.i296
  %3296 = add i64 %3295, 3
  store i64 %3296, i64* %PC.i296
  %3297 = inttoptr i64 %3292 to i32*
  store i32 %3293, i32* %3297
  store %struct.Memory* %loadMem_4349d1, %struct.Memory** %MEMORY
  %loadMem_4349d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 5
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %PC.i294
  %3305 = add i64 %3304, 8
  store i64 %3305, i64* %PC.i294
  %3306 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %3306, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_4349d4, %struct.Memory** %MEMORY
  %loadMem_4349dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3308 = getelementptr inbounds %struct.GPR, %struct.GPR* %3307, i32 0, i32 33
  %3309 = getelementptr inbounds %struct.Reg, %struct.Reg* %3308, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3309 to i64*
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 5
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %3312 to i64*
  %3313 = load i64, i64* %RCX.i293
  %3314 = load i64, i64* %PC.i292
  %3315 = add i64 %3314, 4
  store i64 %3315, i64* %PC.i292
  %3316 = add i64 8, %3313
  store i64 %3316, i64* %RCX.i293, align 8
  %3317 = icmp ult i64 %3316, %3313
  %3318 = icmp ult i64 %3316, 8
  %3319 = or i1 %3317, %3318
  %3320 = zext i1 %3319 to i8
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3320, i8* %3321, align 1
  %3322 = trunc i64 %3316 to i32
  %3323 = and i32 %3322, 255
  %3324 = call i32 @llvm.ctpop.i32(i32 %3323)
  %3325 = trunc i32 %3324 to i8
  %3326 = and i8 %3325, 1
  %3327 = xor i8 %3326, 1
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3327, i8* %3328, align 1
  %3329 = xor i64 8, %3313
  %3330 = xor i64 %3329, %3316
  %3331 = lshr i64 %3330, 4
  %3332 = trunc i64 %3331 to i8
  %3333 = and i8 %3332, 1
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3333, i8* %3334, align 1
  %3335 = icmp eq i64 %3316, 0
  %3336 = zext i1 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3336, i8* %3337, align 1
  %3338 = lshr i64 %3316, 63
  %3339 = trunc i64 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3339, i8* %3340, align 1
  %3341 = lshr i64 %3313, 63
  %3342 = xor i64 %3338, %3341
  %3343 = add i64 %3342, %3338
  %3344 = icmp eq i64 %3343, 2
  %3345 = zext i1 %3344 to i8
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3345, i8* %3346, align 1
  store %struct.Memory* %loadMem_4349dc, %struct.Memory** %MEMORY
  %loadMem_4349e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 33
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3349 to i64*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 11
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RDI.i291 = bitcast %union.anon* %3352 to i64*
  %3353 = load i64, i64* %PC.i290
  %3354 = add i64 %3353, 8
  store i64 %3354, i64* %PC.i290
  %3355 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3355, i64* %RDI.i291, align 8
  store %struct.Memory* %loadMem_4349e0, %struct.Memory** %MEMORY
  %loadMem_4349e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 33
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 9
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RSI.i288 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 11
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RDI.i289 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %RDI.i289
  %3366 = add i64 %3365, 2904
  %3367 = load i64, i64* %PC.i287
  %3368 = add i64 %3367, 6
  store i64 %3368, i64* %PC.i287
  %3369 = inttoptr i64 %3366 to i32*
  %3370 = load i32, i32* %3369
  %3371 = zext i32 %3370 to i64
  store i64 %3371, i64* %RSI.i288, align 8
  store %struct.Memory* %loadMem_4349e8, %struct.Memory** %MEMORY
  %loadMem_4349ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 33
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 11
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RDI.i286 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %PC.i285
  %3379 = add i64 %3378, 8
  store i64 %3379, i64* %PC.i285
  %3380 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3380, i64* %RDI.i286, align 8
  store %struct.Memory* %loadMem_4349ee, %struct.Memory** %MEMORY
  %loadMem_4349f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 33
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3383 to i64*
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3385 = getelementptr inbounds %struct.GPR, %struct.GPR* %3384, i32 0, i32 7
  %3386 = getelementptr inbounds %struct.Reg, %struct.Reg* %3385, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %3386 to i64*
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 11
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %RDI.i284 = bitcast %union.anon* %3389 to i64*
  %3390 = load i64, i64* %RDI.i284
  %3391 = add i64 %3390, 60
  %3392 = load i64, i64* %PC.i282
  %3393 = add i64 %3392, 3
  store i64 %3393, i64* %PC.i282
  %3394 = inttoptr i64 %3391 to i32*
  %3395 = load i32, i32* %3394
  %3396 = zext i32 %3395 to i64
  store i64 %3396, i64* %RDX.i283, align 8
  store %struct.Memory* %loadMem_4349f6, %struct.Memory** %MEMORY
  %loadMem_4349f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 11
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RDI.i281 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %PC.i280
  %3404 = add i64 %3403, 8
  store i64 %3404, i64* %PC.i280
  %3405 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3405, i64* %RDI.i281, align 8
  store %struct.Memory* %loadMem_4349f9, %struct.Memory** %MEMORY
  %loadMem_434a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 1
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 11
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RDI.i279 = bitcast %union.anon* %3414 to i64*
  %3415 = load i64, i64* %RDI.i279
  %3416 = add i64 %3415, 52
  %3417 = load i64, i64* %PC.i277
  %3418 = add i64 %3417, 3
  store i64 %3418, i64* %PC.i277
  %3419 = inttoptr i64 %3416 to i32*
  %3420 = load i32, i32* %3419
  %3421 = zext i32 %3420 to i64
  store i64 %3421, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_434a01, %struct.Memory** %MEMORY
  %loadMem_434a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 5
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 11
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %RDI.i276 = bitcast %union.anon* %3430 to i64*
  %3431 = load i64, i64* %RCX.i275
  %3432 = load i64, i64* %PC.i274
  %3433 = add i64 %3432, 3
  store i64 %3433, i64* %PC.i274
  store i64 %3431, i64* %RDI.i276, align 8
  store %struct.Memory* %loadMem_434a04, %struct.Memory** %MEMORY
  %loadMem_434a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 1
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %EAX.i272 = bitcast %union.anon* %3439 to i32*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 5
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %3442 to i64*
  %3443 = load i32, i32* %EAX.i272
  %3444 = zext i32 %3443 to i64
  %3445 = load i64, i64* %PC.i271
  %3446 = add i64 %3445, 2
  store i64 %3446, i64* %PC.i271
  %3447 = and i64 %3444, 4294967295
  store i64 %3447, i64* %RCX.i273, align 8
  store %struct.Memory* %loadMem_434a07, %struct.Memory** %MEMORY
  %loadMem1_434a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 33
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %PC.i270
  %3452 = add i64 %3451, 150375
  %3453 = load i64, i64* %PC.i270
  %3454 = add i64 %3453, 5
  %3455 = load i64, i64* %PC.i270
  %3456 = add i64 %3455, 5
  store i64 %3456, i64* %PC.i270
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3458 = load i64, i64* %3457, align 8
  %3459 = add i64 %3458, -8
  %3460 = inttoptr i64 %3459 to i64*
  store i64 %3454, i64* %3460
  store i64 %3459, i64* %3457, align 8
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3452, i64* %3461, align 8
  store %struct.Memory* %loadMem1_434a09, %struct.Memory** %MEMORY
  %loadMem2_434a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434a09 = load i64, i64* %3
  %call2_434a09 = call %struct.Memory* @sub_459570.get_mem3Dpel(%struct.State* %0, i64 %loadPC_434a09, %struct.Memory* %loadMem2_434a09)
  store %struct.Memory* %call2_434a09, %struct.Memory** %MEMORY
  %loadMem_434a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 33
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 1
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 15
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %3470 to i64*
  %3471 = load i64, i64* %RAX.i268
  %3472 = load i64, i64* %RBP.i269
  %3473 = sub i64 %3472, 8
  %3474 = load i64, i64* %PC.i267
  %3475 = add i64 %3474, 3
  store i64 %3475, i64* %PC.i267
  %3476 = trunc i64 %3471 to i32
  %3477 = inttoptr i64 %3473 to i32*
  %3478 = load i32, i32* %3477
  %3479 = add i32 %3478, %3476
  %3480 = zext i32 %3479 to i64
  store i64 %3480, i64* %RAX.i268, align 8
  %3481 = icmp ult i32 %3479, %3476
  %3482 = icmp ult i32 %3479, %3478
  %3483 = or i1 %3481, %3482
  %3484 = zext i1 %3483 to i8
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3484, i8* %3485, align 1
  %3486 = and i32 %3479, 255
  %3487 = call i32 @llvm.ctpop.i32(i32 %3486)
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  %3490 = xor i8 %3489, 1
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3490, i8* %3491, align 1
  %3492 = xor i32 %3478, %3476
  %3493 = xor i32 %3492, %3479
  %3494 = lshr i32 %3493, 4
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3496, i8* %3497, align 1
  %3498 = icmp eq i32 %3479, 0
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3499, i8* %3500, align 1
  %3501 = lshr i32 %3479, 31
  %3502 = trunc i32 %3501 to i8
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3502, i8* %3503, align 1
  %3504 = lshr i32 %3476, 31
  %3505 = lshr i32 %3478, 31
  %3506 = xor i32 %3501, %3504
  %3507 = xor i32 %3501, %3505
  %3508 = add i32 %3506, %3507
  %3509 = icmp eq i32 %3508, 2
  %3510 = zext i1 %3509 to i8
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3510, i8* %3511, align 1
  store %struct.Memory* %loadMem_434a0e, %struct.Memory** %MEMORY
  %loadMem_434a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 33
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 1
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %EAX.i265 = bitcast %union.anon* %3517 to i32*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 15
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %3520 to i64*
  %3521 = load i64, i64* %RBP.i266
  %3522 = sub i64 %3521, 8
  %3523 = load i32, i32* %EAX.i265
  %3524 = zext i32 %3523 to i64
  %3525 = load i64, i64* %PC.i264
  %3526 = add i64 %3525, 3
  store i64 %3526, i64* %PC.i264
  %3527 = inttoptr i64 %3522 to i32*
  store i32 %3523, i32* %3527
  store %struct.Memory* %loadMem_434a11, %struct.Memory** %MEMORY
  %loadMem_434a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 11
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RDI.i263 = bitcast %union.anon* %3533 to i64*
  %3534 = load i64, i64* %PC.i262
  %3535 = add i64 %3534, 8
  store i64 %3535, i64* %PC.i262
  %3536 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %3536, i64* %RDI.i263, align 8
  store %struct.Memory* %loadMem_434a14, %struct.Memory** %MEMORY
  %loadMem_434a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 33
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 11
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RDI.i261 = bitcast %union.anon* %3542 to i64*
  %3543 = load i64, i64* %RDI.i261
  %3544 = load i64, i64* %PC.i260
  %3545 = add i64 %3544, 4
  store i64 %3545, i64* %PC.i260
  %3546 = add i64 24, %3543
  store i64 %3546, i64* %RDI.i261, align 8
  %3547 = icmp ult i64 %3546, %3543
  %3548 = icmp ult i64 %3546, 24
  %3549 = or i1 %3547, %3548
  %3550 = zext i1 %3549 to i8
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3550, i8* %3551, align 1
  %3552 = trunc i64 %3546 to i32
  %3553 = and i32 %3552, 255
  %3554 = call i32 @llvm.ctpop.i32(i32 %3553)
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = xor i8 %3556, 1
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3557, i8* %3558, align 1
  %3559 = xor i64 24, %3543
  %3560 = xor i64 %3559, %3546
  %3561 = lshr i64 %3560, 4
  %3562 = trunc i64 %3561 to i8
  %3563 = and i8 %3562, 1
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3563, i8* %3564, align 1
  %3565 = icmp eq i64 %3546, 0
  %3566 = zext i1 %3565 to i8
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3566, i8* %3567, align 1
  %3568 = lshr i64 %3546, 63
  %3569 = trunc i64 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3569, i8* %3570, align 1
  %3571 = lshr i64 %3543, 63
  %3572 = xor i64 %3568, %3571
  %3573 = add i64 %3572, %3568
  %3574 = icmp eq i64 %3573, 2
  %3575 = zext i1 %3574 to i8
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3575, i8* %3576, align 1
  store %struct.Memory* %loadMem_434a1c, %struct.Memory** %MEMORY
  %loadMem_434a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 17
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %R8.i259 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %PC.i258
  %3584 = add i64 %3583, 8
  store i64 %3584, i64* %PC.i258
  %3585 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3585, i64* %R8.i259, align 8
  store %struct.Memory* %loadMem_434a20, %struct.Memory** %MEMORY
  %loadMem_434a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 9
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RSI.i256 = bitcast %union.anon* %3591 to i64*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 17
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %R8.i257 = bitcast %union.anon* %3594 to i64*
  %3595 = load i64, i64* %R8.i257
  %3596 = add i64 %3595, 2904
  %3597 = load i64, i64* %PC.i255
  %3598 = add i64 %3597, 7
  store i64 %3598, i64* %PC.i255
  %3599 = inttoptr i64 %3596 to i32*
  %3600 = load i32, i32* %3599
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %RSI.i256, align 8
  store %struct.Memory* %loadMem_434a28, %struct.Memory** %MEMORY
  %loadMem_434a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 33
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3604 to i64*
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3606 = getelementptr inbounds %struct.GPR, %struct.GPR* %3605, i32 0, i32 17
  %3607 = getelementptr inbounds %struct.Reg, %struct.Reg* %3606, i32 0, i32 0
  %R8.i254 = bitcast %union.anon* %3607 to i64*
  %3608 = load i64, i64* %PC.i253
  %3609 = add i64 %3608, 8
  store i64 %3609, i64* %PC.i253
  %3610 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3610, i64* %R8.i254, align 8
  store %struct.Memory* %loadMem_434a2f, %struct.Memory** %MEMORY
  %loadMem_434a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3613 to i64*
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 7
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %3616 to i64*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 17
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %R8.i252 = bitcast %union.anon* %3619 to i64*
  %3620 = load i64, i64* %R8.i252
  %3621 = add i64 %3620, 60
  %3622 = load i64, i64* %PC.i250
  %3623 = add i64 %3622, 4
  store i64 %3623, i64* %PC.i250
  %3624 = inttoptr i64 %3621 to i32*
  %3625 = load i32, i32* %3624
  %3626 = zext i32 %3625 to i64
  store i64 %3626, i64* %RDX.i251, align 8
  store %struct.Memory* %loadMem_434a37, %struct.Memory** %MEMORY
  %loadMem_434a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 33
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 17
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %R8.i249 = bitcast %union.anon* %3632 to i64*
  %3633 = load i64, i64* %PC.i248
  %3634 = add i64 %3633, 8
  store i64 %3634, i64* %PC.i248
  %3635 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3635, i64* %R8.i249, align 8
  store %struct.Memory* %loadMem_434a3b, %struct.Memory** %MEMORY
  %loadMem_434a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 33
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 5
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %3641 to i64*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 17
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %R8.i247 = bitcast %union.anon* %3644 to i64*
  %3645 = load i64, i64* %R8.i247
  %3646 = add i64 %3645, 52
  %3647 = load i64, i64* %PC.i245
  %3648 = add i64 %3647, 4
  store i64 %3648, i64* %PC.i245
  %3649 = inttoptr i64 %3646 to i32*
  %3650 = load i32, i32* %3649
  %3651 = zext i32 %3650 to i64
  store i64 %3651, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_434a43, %struct.Memory** %MEMORY
  %loadMem1_434a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %PC.i244
  %3656 = add i64 %3655, 150313
  %3657 = load i64, i64* %PC.i244
  %3658 = add i64 %3657, 5
  %3659 = load i64, i64* %PC.i244
  %3660 = add i64 %3659, 5
  store i64 %3660, i64* %PC.i244
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3662 = load i64, i64* %3661, align 8
  %3663 = add i64 %3662, -8
  %3664 = inttoptr i64 %3663 to i64*
  store i64 %3658, i64* %3664
  store i64 %3663, i64* %3661, align 8
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3656, i64* %3665, align 8
  store %struct.Memory* %loadMem1_434a47, %struct.Memory** %MEMORY
  %loadMem2_434a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434a47 = load i64, i64* %3
  %call2_434a47 = call %struct.Memory* @sub_459570.get_mem3Dpel(%struct.State* %0, i64 %loadPC_434a47, %struct.Memory* %loadMem2_434a47)
  store %struct.Memory* %call2_434a47, %struct.Memory** %MEMORY
  %loadMem_434a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 33
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 5
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %PC.i242
  %3673 = add i64 %3672, 5
  store i64 %3673, i64* %PC.i242
  store i64 16, i64* %RCX.i243, align 8
  store %struct.Memory* %loadMem_434a4c, %struct.Memory** %MEMORY
  %loadMem_434a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 33
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 1
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 15
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3682 to i64*
  %3683 = load i64, i64* %RAX.i240
  %3684 = load i64, i64* %RBP.i241
  %3685 = sub i64 %3684, 8
  %3686 = load i64, i64* %PC.i239
  %3687 = add i64 %3686, 3
  store i64 %3687, i64* %PC.i239
  %3688 = trunc i64 %3683 to i32
  %3689 = inttoptr i64 %3685 to i32*
  %3690 = load i32, i32* %3689
  %3691 = add i32 %3690, %3688
  %3692 = zext i32 %3691 to i64
  store i64 %3692, i64* %RAX.i240, align 8
  %3693 = icmp ult i32 %3691, %3688
  %3694 = icmp ult i32 %3691, %3690
  %3695 = or i1 %3693, %3694
  %3696 = zext i1 %3695 to i8
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3696, i8* %3697, align 1
  %3698 = and i32 %3691, 255
  %3699 = call i32 @llvm.ctpop.i32(i32 %3698)
  %3700 = trunc i32 %3699 to i8
  %3701 = and i8 %3700, 1
  %3702 = xor i8 %3701, 1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3702, i8* %3703, align 1
  %3704 = xor i32 %3690, %3688
  %3705 = xor i32 %3704, %3691
  %3706 = lshr i32 %3705, 4
  %3707 = trunc i32 %3706 to i8
  %3708 = and i8 %3707, 1
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3708, i8* %3709, align 1
  %3710 = icmp eq i32 %3691, 0
  %3711 = zext i1 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3711, i8* %3712, align 1
  %3713 = lshr i32 %3691, 31
  %3714 = trunc i32 %3713 to i8
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3714, i8* %3715, align 1
  %3716 = lshr i32 %3688, 31
  %3717 = lshr i32 %3690, 31
  %3718 = xor i32 %3713, %3716
  %3719 = xor i32 %3713, %3717
  %3720 = add i32 %3718, %3719
  %3721 = icmp eq i32 %3720, 2
  %3722 = zext i1 %3721 to i8
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3722, i8* %3723, align 1
  store %struct.Memory* %loadMem_434a51, %struct.Memory** %MEMORY
  %loadMem_434a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 1
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %3729 to i32*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 15
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3732 to i64*
  %3733 = load i64, i64* %RBP.i238
  %3734 = sub i64 %3733, 8
  %3735 = load i32, i32* %EAX.i237
  %3736 = zext i32 %3735 to i64
  %3737 = load i64, i64* %PC.i236
  %3738 = add i64 %3737, 3
  store i64 %3738, i64* %PC.i236
  %3739 = inttoptr i64 %3734 to i32*
  store i32 %3735, i32* %3739
  store %struct.Memory* %loadMem_434a54, %struct.Memory** %MEMORY
  %loadMem_434a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 11
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %RDI.i235 = bitcast %union.anon* %3745 to i64*
  %3746 = load i64, i64* %PC.i234
  %3747 = add i64 %3746, 8
  store i64 %3747, i64* %PC.i234
  %3748 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %3748, i64* %RDI.i235, align 8
  store %struct.Memory* %loadMem_434a57, %struct.Memory** %MEMORY
  %loadMem_434a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3751 to i64*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 11
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RDI.i233 = bitcast %union.anon* %3754 to i64*
  %3755 = load i64, i64* %RDI.i233
  %3756 = load i64, i64* %PC.i232
  %3757 = add i64 %3756, 4
  store i64 %3757, i64* %PC.i232
  %3758 = add i64 40, %3755
  store i64 %3758, i64* %RDI.i233, align 8
  %3759 = icmp ult i64 %3758, %3755
  %3760 = icmp ult i64 %3758, 40
  %3761 = or i1 %3759, %3760
  %3762 = zext i1 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3762, i8* %3763, align 1
  %3764 = trunc i64 %3758 to i32
  %3765 = and i32 %3764, 255
  %3766 = call i32 @llvm.ctpop.i32(i32 %3765)
  %3767 = trunc i32 %3766 to i8
  %3768 = and i8 %3767, 1
  %3769 = xor i8 %3768, 1
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3769, i8* %3770, align 1
  %3771 = xor i64 40, %3755
  %3772 = xor i64 %3771, %3758
  %3773 = lshr i64 %3772, 4
  %3774 = trunc i64 %3773 to i8
  %3775 = and i8 %3774, 1
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3775, i8* %3776, align 1
  %3777 = icmp eq i64 %3758, 0
  %3778 = zext i1 %3777 to i8
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3778, i8* %3779, align 1
  %3780 = lshr i64 %3758, 63
  %3781 = trunc i64 %3780 to i8
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3781, i8* %3782, align 1
  %3783 = lshr i64 %3755, 63
  %3784 = xor i64 %3780, %3783
  %3785 = add i64 %3784, %3780
  %3786 = icmp eq i64 %3785, 2
  %3787 = zext i1 %3786 to i8
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3787, i8* %3788, align 1
  store %struct.Memory* %loadMem_434a5f, %struct.Memory** %MEMORY
  %loadMem_434a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 33
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 17
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %R8.i231 = bitcast %union.anon* %3794 to i64*
  %3795 = load i64, i64* %PC.i230
  %3796 = add i64 %3795, 8
  store i64 %3796, i64* %PC.i230
  %3797 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3797, i64* %R8.i231, align 8
  store %struct.Memory* %loadMem_434a63, %struct.Memory** %MEMORY
  %loadMem_434a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 1
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 17
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %R8.i229 = bitcast %union.anon* %3806 to i64*
  %3807 = load i64, i64* %R8.i229
  %3808 = add i64 %3807, 60
  %3809 = load i64, i64* %PC.i227
  %3810 = add i64 %3809, 4
  store i64 %3810, i64* %PC.i227
  %3811 = inttoptr i64 %3808 to i32*
  %3812 = load i32, i32* %3811
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_434a6b, %struct.Memory** %MEMORY
  %loadMem_434a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %PC.i226
  %3818 = add i64 %3817, 1
  store i64 %3818, i64* %PC.i226
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3821 = bitcast %union.anon* %3820 to i32*
  %3822 = load i32, i32* %3821, align 8
  %3823 = sext i32 %3822 to i64
  %3824 = lshr i64 %3823, 32
  store i64 %3824, i64* %3819, align 8
  store %struct.Memory* %loadMem_434a6f, %struct.Memory** %MEMORY
  %loadMem_434a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 33
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 5
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %ECX.i222 = bitcast %union.anon* %3830 to i32*
  %3831 = load i32, i32* %ECX.i222
  %3832 = zext i32 %3831 to i64
  %3833 = load i64, i64* %PC.i221
  %3834 = add i64 %3833, 2
  store i64 %3834, i64* %PC.i221
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3836 = bitcast %union.anon* %3835 to i32*
  %3837 = load i32, i32* %3836, align 8
  %3838 = zext i32 %3837 to i64
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3840 = bitcast %union.anon* %3839 to i32*
  %3841 = load i32, i32* %3840, align 8
  %3842 = zext i32 %3841 to i64
  %3843 = shl i64 %3832, 32
  %3844 = ashr exact i64 %3843, 32
  %3845 = shl i64 %3842, 32
  %3846 = or i64 %3845, %3838
  %3847 = sdiv i64 %3846, %3844
  %3848 = shl i64 %3847, 32
  %3849 = ashr exact i64 %3848, 32
  %3850 = icmp eq i64 %3847, %3849
  br i1 %3850, label %3855, label %3851

; <label>:3851:                                   ; preds = %block_.L_4349b1
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3853 = load i64, i64* %3852, align 8
  %3854 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3853, %struct.Memory* %loadMem_434a70)
  br label %routine_idivl__ecx.exit223

; <label>:3855:                                   ; preds = %block_.L_4349b1
  %3856 = srem i64 %3846, %3844
  %3857 = getelementptr inbounds %union.anon, %union.anon* %3835, i64 0, i32 0
  %3858 = and i64 %3847, 4294967295
  store i64 %3858, i64* %3857, align 8
  %3859 = getelementptr inbounds %union.anon, %union.anon* %3839, i64 0, i32 0
  %3860 = and i64 %3856, 4294967295
  store i64 %3860, i64* %3859, align 8
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3861, align 1
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3862, align 1
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3863, align 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3864, align 1
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3865, align 1
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3866, align 1
  br label %routine_idivl__ecx.exit223

routine_idivl__ecx.exit223:                       ; preds = %3851, %3855
  %3867 = phi %struct.Memory* [ %3854, %3851 ], [ %loadMem_434a70, %3855 ]
  store %struct.Memory* %3867, %struct.Memory** %MEMORY
  %loadMem_434a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3869 = getelementptr inbounds %struct.GPR, %struct.GPR* %3868, i32 0, i32 33
  %3870 = getelementptr inbounds %struct.Reg, %struct.Reg* %3869, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3870 to i64*
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3872 = getelementptr inbounds %struct.GPR, %struct.GPR* %3871, i32 0, i32 17
  %3873 = getelementptr inbounds %struct.Reg, %struct.Reg* %3872, i32 0, i32 0
  %R8.i220 = bitcast %union.anon* %3873 to i64*
  %3874 = load i64, i64* %PC.i219
  %3875 = add i64 %3874, 8
  store i64 %3875, i64* %PC.i219
  %3876 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3876, i64* %R8.i220, align 8
  store %struct.Memory* %loadMem_434a72, %struct.Memory** %MEMORY
  %loadMem_434a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 9
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 17
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %R8.i218 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %R8.i218
  %3887 = add i64 %3886, 52
  %3888 = load i64, i64* %PC.i216
  %3889 = add i64 %3888, 4
  store i64 %3889, i64* %PC.i216
  %3890 = inttoptr i64 %3887 to i32*
  %3891 = load i32, i32* %3890
  %3892 = zext i32 %3891 to i64
  store i64 %3892, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_434a7a, %struct.Memory** %MEMORY
  %loadMem_434a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %EAX.i214 = bitcast %union.anon* %3898 to i32*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 15
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RBP.i215
  %3903 = sub i64 %3902, 28
  %3904 = load i32, i32* %EAX.i214
  %3905 = zext i32 %3904 to i64
  %3906 = load i64, i64* %PC.i213
  %3907 = add i64 %3906, 3
  store i64 %3907, i64* %PC.i213
  %3908 = inttoptr i64 %3903 to i32*
  store i32 %3904, i32* %3908
  store %struct.Memory* %loadMem_434a7e, %struct.Memory** %MEMORY
  %loadMem_434a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3911 to i64*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 9
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %ESI.i211 = bitcast %union.anon* %3914 to i32*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %3917 to i64*
  %3918 = load i32, i32* %ESI.i211
  %3919 = zext i32 %3918 to i64
  %3920 = load i64, i64* %PC.i210
  %3921 = add i64 %3920, 2
  store i64 %3921, i64* %PC.i210
  %3922 = and i64 %3919, 4294967295
  store i64 %3922, i64* %RAX.i212, align 8
  store %struct.Memory* %loadMem_434a81, %struct.Memory** %MEMORY
  %loadMem_434a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3925 to i64*
  %3926 = load i64, i64* %PC.i209
  %3927 = add i64 %3926, 1
  store i64 %3927, i64* %PC.i209
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3930 = bitcast %union.anon* %3929 to i32*
  %3931 = load i32, i32* %3930, align 8
  %3932 = sext i32 %3931 to i64
  %3933 = lshr i64 %3932, 32
  store i64 %3933, i64* %3928, align 8
  store %struct.Memory* %loadMem_434a83, %struct.Memory** %MEMORY
  %loadMem_434a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 5
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %ECX.i204 = bitcast %union.anon* %3939 to i32*
  %3940 = load i32, i32* %ECX.i204
  %3941 = zext i32 %3940 to i64
  %3942 = load i64, i64* %PC.i203
  %3943 = add i64 %3942, 2
  store i64 %3943, i64* %PC.i203
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3945 = bitcast %union.anon* %3944 to i32*
  %3946 = load i32, i32* %3945, align 8
  %3947 = zext i32 %3946 to i64
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3949 = bitcast %union.anon* %3948 to i32*
  %3950 = load i32, i32* %3949, align 8
  %3951 = zext i32 %3950 to i64
  %3952 = shl i64 %3941, 32
  %3953 = ashr exact i64 %3952, 32
  %3954 = shl i64 %3951, 32
  %3955 = or i64 %3954, %3947
  %3956 = sdiv i64 %3955, %3953
  %3957 = shl i64 %3956, 32
  %3958 = ashr exact i64 %3957, 32
  %3959 = icmp eq i64 %3956, %3958
  br i1 %3959, label %3964, label %3960

; <label>:3960:                                   ; preds = %routine_idivl__ecx.exit223
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3962 = load i64, i64* %3961, align 8
  %3963 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3962, %struct.Memory* %loadMem_434a84)
  br label %routine_idivl__ecx.exit205

; <label>:3964:                                   ; preds = %routine_idivl__ecx.exit223
  %3965 = srem i64 %3955, %3953
  %3966 = getelementptr inbounds %union.anon, %union.anon* %3944, i64 0, i32 0
  %3967 = and i64 %3956, 4294967295
  store i64 %3967, i64* %3966, align 8
  %3968 = getelementptr inbounds %union.anon, %union.anon* %3948, i64 0, i32 0
  %3969 = and i64 %3965, 4294967295
  store i64 %3969, i64* %3968, align 8
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3970, align 1
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3971, align 1
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3972, align 1
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3973, align 1
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3974, align 1
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3975, align 1
  br label %routine_idivl__ecx.exit205

routine_idivl__ecx.exit205:                       ; preds = %3960, %3964
  %3976 = phi %struct.Memory* [ %3963, %3960 ], [ %loadMem_434a84, %3964 ]
  store %struct.Memory* %3976, %struct.Memory** %MEMORY
  %loadMem_434a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 33
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3979 to i64*
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 9
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %RSI.i201 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 15
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %3985 to i64*
  %3986 = load i64, i64* %RBP.i202
  %3987 = sub i64 %3986, 28
  %3988 = load i64, i64* %PC.i200
  %3989 = add i64 %3988, 3
  store i64 %3989, i64* %PC.i200
  %3990 = inttoptr i64 %3987 to i32*
  %3991 = load i32, i32* %3990
  %3992 = zext i32 %3991 to i64
  store i64 %3992, i64* %RSI.i201, align 8
  store %struct.Memory* %loadMem_434a86, %struct.Memory** %MEMORY
  %loadMem_434a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 1
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %EAX.i198 = bitcast %union.anon* %3998 to i32*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 7
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RDX.i199 = bitcast %union.anon* %4001 to i64*
  %4002 = load i32, i32* %EAX.i198
  %4003 = zext i32 %4002 to i64
  %4004 = load i64, i64* %PC.i197
  %4005 = add i64 %4004, 2
  store i64 %4005, i64* %PC.i197
  %4006 = and i64 %4003, 4294967295
  store i64 %4006, i64* %RDX.i199, align 8
  store %struct.Memory* %loadMem_434a89, %struct.Memory** %MEMORY
  %loadMem1_434a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %PC.i196
  %4011 = add i64 %4010, 150677
  %4012 = load i64, i64* %PC.i196
  %4013 = add i64 %4012, 5
  %4014 = load i64, i64* %PC.i196
  %4015 = add i64 %4014, 5
  store i64 %4015, i64* %PC.i196
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4017 = load i64, i64* %4016, align 8
  %4018 = add i64 %4017, -8
  %4019 = inttoptr i64 %4018 to i64*
  store i64 %4013, i64* %4019
  store i64 %4018, i64* %4016, align 8
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4011, i64* %4020, align 8
  store %struct.Memory* %loadMem1_434a8b, %struct.Memory** %MEMORY
  %loadMem2_434a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434a8b = load i64, i64* %3
  %call2_434a8b = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_434a8b, %struct.Memory* %loadMem2_434a8b)
  store %struct.Memory* %call2_434a8b, %struct.Memory** %MEMORY
  %loadMem_434a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 33
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 5
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %PC.i194
  %4028 = add i64 %4027, 5
  store i64 %4028, i64* %PC.i194
  store i64 16, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_434a90, %struct.Memory** %MEMORY
  %loadMem_434a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 33
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 1
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %4034 to i64*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 15
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %4037 to i64*
  %4038 = load i64, i64* %RAX.i192
  %4039 = load i64, i64* %RBP.i193
  %4040 = sub i64 %4039, 8
  %4041 = load i64, i64* %PC.i191
  %4042 = add i64 %4041, 3
  store i64 %4042, i64* %PC.i191
  %4043 = trunc i64 %4038 to i32
  %4044 = inttoptr i64 %4040 to i32*
  %4045 = load i32, i32* %4044
  %4046 = add i32 %4045, %4043
  %4047 = zext i32 %4046 to i64
  store i64 %4047, i64* %RAX.i192, align 8
  %4048 = icmp ult i32 %4046, %4043
  %4049 = icmp ult i32 %4046, %4045
  %4050 = or i1 %4048, %4049
  %4051 = zext i1 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4051, i8* %4052, align 1
  %4053 = and i32 %4046, 255
  %4054 = call i32 @llvm.ctpop.i32(i32 %4053)
  %4055 = trunc i32 %4054 to i8
  %4056 = and i8 %4055, 1
  %4057 = xor i8 %4056, 1
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4057, i8* %4058, align 1
  %4059 = xor i32 %4045, %4043
  %4060 = xor i32 %4059, %4046
  %4061 = lshr i32 %4060, 4
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4063, i8* %4064, align 1
  %4065 = icmp eq i32 %4046, 0
  %4066 = zext i1 %4065 to i8
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4066, i8* %4067, align 1
  %4068 = lshr i32 %4046, 31
  %4069 = trunc i32 %4068 to i8
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4069, i8* %4070, align 1
  %4071 = lshr i32 %4043, 31
  %4072 = lshr i32 %4045, 31
  %4073 = xor i32 %4068, %4071
  %4074 = xor i32 %4068, %4072
  %4075 = add i32 %4073, %4074
  %4076 = icmp eq i32 %4075, 2
  %4077 = zext i1 %4076 to i8
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4077, i8* %4078, align 1
  store %struct.Memory* %loadMem_434a95, %struct.Memory** %MEMORY
  %loadMem_434a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 1
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %4084 to i32*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 15
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %4087 to i64*
  %4088 = load i64, i64* %RBP.i190
  %4089 = sub i64 %4088, 8
  %4090 = load i32, i32* %EAX.i189
  %4091 = zext i32 %4090 to i64
  %4092 = load i64, i64* %PC.i188
  %4093 = add i64 %4092, 3
  store i64 %4093, i64* %PC.i188
  %4094 = inttoptr i64 %4089 to i32*
  store i32 %4090, i32* %4094
  store %struct.Memory* %loadMem_434a98, %struct.Memory** %MEMORY
  %loadMem_434a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 33
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 11
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %RDI.i187 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %PC.i186
  %4102 = add i64 %4101, 8
  store i64 %4102, i64* %PC.i186
  %4103 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %4103, i64* %RDI.i187, align 8
  store %struct.Memory* %loadMem_434a9b, %struct.Memory** %MEMORY
  %loadMem_434aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 11
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RDI.i185 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RDI.i185
  %4111 = load i64, i64* %PC.i184
  %4112 = add i64 %4111, 4
  store i64 %4112, i64* %PC.i184
  %4113 = add i64 48, %4110
  store i64 %4113, i64* %RDI.i185, align 8
  %4114 = icmp ult i64 %4113, %4110
  %4115 = icmp ult i64 %4113, 48
  %4116 = or i1 %4114, %4115
  %4117 = zext i1 %4116 to i8
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4117, i8* %4118, align 1
  %4119 = trunc i64 %4113 to i32
  %4120 = and i32 %4119, 255
  %4121 = call i32 @llvm.ctpop.i32(i32 %4120)
  %4122 = trunc i32 %4121 to i8
  %4123 = and i8 %4122, 1
  %4124 = xor i8 %4123, 1
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4124, i8* %4125, align 1
  %4126 = xor i64 48, %4110
  %4127 = xor i64 %4126, %4113
  %4128 = lshr i64 %4127, 4
  %4129 = trunc i64 %4128 to i8
  %4130 = and i8 %4129, 1
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4130, i8* %4131, align 1
  %4132 = icmp eq i64 %4113, 0
  %4133 = zext i1 %4132 to i8
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4133, i8* %4134, align 1
  %4135 = lshr i64 %4113, 63
  %4136 = trunc i64 %4135 to i8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4136, i8* %4137, align 1
  %4138 = lshr i64 %4110, 63
  %4139 = xor i64 %4135, %4138
  %4140 = add i64 %4139, %4135
  %4141 = icmp eq i64 %4140, 2
  %4142 = zext i1 %4141 to i8
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4142, i8* %4143, align 1
  store %struct.Memory* %loadMem_434aa3, %struct.Memory** %MEMORY
  %loadMem_434aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 33
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 17
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %R8.i183 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %PC.i182
  %4151 = add i64 %4150, 8
  store i64 %4151, i64* %PC.i182
  %4152 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4152, i64* %R8.i183, align 8
  store %struct.Memory* %loadMem_434aa7, %struct.Memory** %MEMORY
  %loadMem_434aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4154 = getelementptr inbounds %struct.GPR, %struct.GPR* %4153, i32 0, i32 33
  %4155 = getelementptr inbounds %struct.Reg, %struct.Reg* %4154, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4155 to i64*
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 1
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 17
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %R8.i181 = bitcast %union.anon* %4161 to i64*
  %4162 = load i64, i64* %R8.i181
  %4163 = add i64 %4162, 52
  %4164 = load i64, i64* %PC.i179
  %4165 = add i64 %4164, 4
  store i64 %4165, i64* %PC.i179
  %4166 = inttoptr i64 %4163 to i32*
  %4167 = load i32, i32* %4166
  %4168 = zext i32 %4167 to i64
  store i64 %4168, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_434aaf, %struct.Memory** %MEMORY
  %loadMem_434ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 33
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %PC.i178
  %4173 = add i64 %4172, 1
  store i64 %4173, i64* %PC.i178
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4176 = bitcast %union.anon* %4175 to i32*
  %4177 = load i32, i32* %4176, align 8
  %4178 = sext i32 %4177 to i64
  %4179 = lshr i64 %4178, 32
  store i64 %4179, i64* %4174, align 8
  store %struct.Memory* %loadMem_434ab3, %struct.Memory** %MEMORY
  %loadMem_434ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 33
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 5
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %ECX.i174 = bitcast %union.anon* %4185 to i32*
  %4186 = load i32, i32* %ECX.i174
  %4187 = zext i32 %4186 to i64
  %4188 = load i64, i64* %PC.i173
  %4189 = add i64 %4188, 2
  store i64 %4189, i64* %PC.i173
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4191 = bitcast %union.anon* %4190 to i32*
  %4192 = load i32, i32* %4191, align 8
  %4193 = zext i32 %4192 to i64
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4195 = bitcast %union.anon* %4194 to i32*
  %4196 = load i32, i32* %4195, align 8
  %4197 = zext i32 %4196 to i64
  %4198 = shl i64 %4187, 32
  %4199 = ashr exact i64 %4198, 32
  %4200 = shl i64 %4197, 32
  %4201 = or i64 %4200, %4193
  %4202 = sdiv i64 %4201, %4199
  %4203 = shl i64 %4202, 32
  %4204 = ashr exact i64 %4203, 32
  %4205 = icmp eq i64 %4202, %4204
  br i1 %4205, label %4210, label %4206

; <label>:4206:                                   ; preds = %routine_idivl__ecx.exit205
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4208 = load i64, i64* %4207, align 8
  %4209 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4208, %struct.Memory* %loadMem_434ab4)
  br label %routine_idivl__ecx.exit175

; <label>:4210:                                   ; preds = %routine_idivl__ecx.exit205
  %4211 = srem i64 %4201, %4199
  %4212 = getelementptr inbounds %union.anon, %union.anon* %4190, i64 0, i32 0
  %4213 = and i64 %4202, 4294967295
  store i64 %4213, i64* %4212, align 8
  %4214 = getelementptr inbounds %union.anon, %union.anon* %4194, i64 0, i32 0
  %4215 = and i64 %4211, 4294967295
  store i64 %4215, i64* %4214, align 8
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4216, align 1
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4217, align 1
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4218, align 1
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4219, align 1
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4220, align 1
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4221, align 1
  br label %routine_idivl__ecx.exit175

routine_idivl__ecx.exit175:                       ; preds = %4206, %4210
  %4222 = phi %struct.Memory* [ %4209, %4206 ], [ %loadMem_434ab4, %4210 ]
  store %struct.Memory* %4222, %struct.Memory** %MEMORY
  %loadMem_434ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 33
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4225 to i64*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 17
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %R8.i172 = bitcast %union.anon* %4228 to i64*
  %4229 = load i64, i64* %PC.i171
  %4230 = add i64 %4229, 8
  store i64 %4230, i64* %PC.i171
  %4231 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4231, i64* %R8.i172, align 8
  store %struct.Memory* %loadMem_434ab6, %struct.Memory** %MEMORY
  %loadMem_434abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 9
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RSI.i170 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 17
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4240 to i64*
  %4241 = load i64, i64* %R8.i
  %4242 = add i64 %4241, 60
  %4243 = load i64, i64* %PC.i169
  %4244 = add i64 %4243, 4
  store i64 %4244, i64* %PC.i169
  %4245 = inttoptr i64 %4242 to i32*
  %4246 = load i32, i32* %4245
  %4247 = zext i32 %4246 to i64
  store i64 %4247, i64* %RSI.i170, align 8
  store %struct.Memory* %loadMem_434abe, %struct.Memory** %MEMORY
  %loadMem_434ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4249 = getelementptr inbounds %struct.GPR, %struct.GPR* %4248, i32 0, i32 33
  %4250 = getelementptr inbounds %struct.Reg, %struct.Reg* %4249, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4250 to i64*
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 1
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %EAX.i167 = bitcast %union.anon* %4253 to i32*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 15
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %4256 to i64*
  %4257 = load i64, i64* %RBP.i168
  %4258 = sub i64 %4257, 32
  %4259 = load i32, i32* %EAX.i167
  %4260 = zext i32 %4259 to i64
  %4261 = load i64, i64* %PC.i166
  %4262 = add i64 %4261, 3
  store i64 %4262, i64* %PC.i166
  %4263 = inttoptr i64 %4258 to i32*
  store i32 %4259, i32* %4263
  store %struct.Memory* %loadMem_434ac2, %struct.Memory** %MEMORY
  %loadMem_434ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4265 = getelementptr inbounds %struct.GPR, %struct.GPR* %4264, i32 0, i32 33
  %4266 = getelementptr inbounds %struct.Reg, %struct.Reg* %4265, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4266 to i64*
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 9
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %ESI.i164 = bitcast %union.anon* %4269 to i32*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 1
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %4272 to i64*
  %4273 = load i32, i32* %ESI.i164
  %4274 = zext i32 %4273 to i64
  %4275 = load i64, i64* %PC.i163
  %4276 = add i64 %4275, 2
  store i64 %4276, i64* %PC.i163
  %4277 = and i64 %4274, 4294967295
  store i64 %4277, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_434ac5, %struct.Memory** %MEMORY
  %loadMem_434ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 33
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4280 to i64*
  %4281 = load i64, i64* %PC.i162
  %4282 = add i64 %4281, 1
  store i64 %4282, i64* %PC.i162
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4285 = bitcast %union.anon* %4284 to i32*
  %4286 = load i32, i32* %4285, align 8
  %4287 = sext i32 %4286 to i64
  %4288 = lshr i64 %4287, 32
  store i64 %4288, i64* %4283, align 8
  store %struct.Memory* %loadMem_434ac7, %struct.Memory** %MEMORY
  %loadMem_434ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 33
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 5
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4294 to i32*
  %4295 = load i32, i32* %ECX.i
  %4296 = zext i32 %4295 to i64
  %4297 = load i64, i64* %PC.i159
  %4298 = add i64 %4297, 2
  store i64 %4298, i64* %PC.i159
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4300 = bitcast %union.anon* %4299 to i32*
  %4301 = load i32, i32* %4300, align 8
  %4302 = zext i32 %4301 to i64
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4304 = bitcast %union.anon* %4303 to i32*
  %4305 = load i32, i32* %4304, align 8
  %4306 = zext i32 %4305 to i64
  %4307 = shl i64 %4296, 32
  %4308 = ashr exact i64 %4307, 32
  %4309 = shl i64 %4306, 32
  %4310 = or i64 %4309, %4302
  %4311 = sdiv i64 %4310, %4308
  %4312 = shl i64 %4311, 32
  %4313 = ashr exact i64 %4312, 32
  %4314 = icmp eq i64 %4311, %4313
  br i1 %4314, label %4319, label %4315

; <label>:4315:                                   ; preds = %routine_idivl__ecx.exit175
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4317 = load i64, i64* %4316, align 8
  %4318 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4317, %struct.Memory* %loadMem_434ac8)
  br label %routine_idivl__ecx.exit

; <label>:4319:                                   ; preds = %routine_idivl__ecx.exit175
  %4320 = srem i64 %4310, %4308
  %4321 = getelementptr inbounds %union.anon, %union.anon* %4299, i64 0, i32 0
  %4322 = and i64 %4311, 4294967295
  store i64 %4322, i64* %4321, align 8
  %4323 = getelementptr inbounds %union.anon, %union.anon* %4303, i64 0, i32 0
  %4324 = and i64 %4320, 4294967295
  store i64 %4324, i64* %4323, align 8
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4325, align 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4326, align 1
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4327, align 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4328, align 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4329, align 1
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4330, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %4315, %4319
  %4331 = phi %struct.Memory* [ %4318, %4315 ], [ %loadMem_434ac8, %4319 ]
  store %struct.Memory* %4331, %struct.Memory** %MEMORY
  %loadMem_434aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4333 = getelementptr inbounds %struct.GPR, %struct.GPR* %4332, i32 0, i32 33
  %4334 = getelementptr inbounds %struct.Reg, %struct.Reg* %4333, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4334 to i64*
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 9
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %RSI.i157 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 15
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4340 to i64*
  %4341 = load i64, i64* %RBP.i158
  %4342 = sub i64 %4341, 32
  %4343 = load i64, i64* %PC.i156
  %4344 = add i64 %4343, 3
  store i64 %4344, i64* %PC.i156
  %4345 = inttoptr i64 %4342 to i32*
  %4346 = load i32, i32* %4345
  %4347 = zext i32 %4346 to i64
  store i64 %4347, i64* %RSI.i157, align 8
  store %struct.Memory* %loadMem_434aca, %struct.Memory** %MEMORY
  %loadMem_434acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 1
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %4353 to i32*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 7
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %4356 to i64*
  %4357 = load i32, i32* %EAX.i154
  %4358 = zext i32 %4357 to i64
  %4359 = load i64, i64* %PC.i153
  %4360 = add i64 %4359, 2
  store i64 %4360, i64* %PC.i153
  %4361 = and i64 %4358, 4294967295
  store i64 %4361, i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_434acd, %struct.Memory** %MEMORY
  %loadMem1_434acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 33
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %PC.i152
  %4366 = add i64 %4365, 150609
  %4367 = load i64, i64* %PC.i152
  %4368 = add i64 %4367, 5
  %4369 = load i64, i64* %PC.i152
  %4370 = add i64 %4369, 5
  store i64 %4370, i64* %PC.i152
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4372 = load i64, i64* %4371, align 8
  %4373 = add i64 %4372, -8
  %4374 = inttoptr i64 %4373 to i64*
  store i64 %4368, i64* %4374
  store i64 %4373, i64* %4371, align 8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4366, i64* %4375, align 8
  store %struct.Memory* %loadMem1_434acf, %struct.Memory** %MEMORY
  %loadMem2_434acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434acf = load i64, i64* %3
  %call2_434acf = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_434acf, %struct.Memory* %loadMem2_434acf)
  store %struct.Memory* %call2_434acf, %struct.Memory** %MEMORY
  %loadMem_434ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 33
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4378 to i64*
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 1
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4383 = getelementptr inbounds %struct.GPR, %struct.GPR* %4382, i32 0, i32 15
  %4384 = getelementptr inbounds %struct.Reg, %struct.Reg* %4383, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %4384 to i64*
  %4385 = load i64, i64* %RAX.i150
  %4386 = load i64, i64* %RBP.i151
  %4387 = sub i64 %4386, 8
  %4388 = load i64, i64* %PC.i149
  %4389 = add i64 %4388, 3
  store i64 %4389, i64* %PC.i149
  %4390 = trunc i64 %4385 to i32
  %4391 = inttoptr i64 %4387 to i32*
  %4392 = load i32, i32* %4391
  %4393 = add i32 %4392, %4390
  %4394 = zext i32 %4393 to i64
  store i64 %4394, i64* %RAX.i150, align 8
  %4395 = icmp ult i32 %4393, %4390
  %4396 = icmp ult i32 %4393, %4392
  %4397 = or i1 %4395, %4396
  %4398 = zext i1 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4398, i8* %4399, align 1
  %4400 = and i32 %4393, 255
  %4401 = call i32 @llvm.ctpop.i32(i32 %4400)
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = xor i8 %4403, 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4404, i8* %4405, align 1
  %4406 = xor i32 %4392, %4390
  %4407 = xor i32 %4406, %4393
  %4408 = lshr i32 %4407, 4
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4410, i8* %4411, align 1
  %4412 = icmp eq i32 %4393, 0
  %4413 = zext i1 %4412 to i8
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4413, i8* %4414, align 1
  %4415 = lshr i32 %4393, 31
  %4416 = trunc i32 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4416, i8* %4417, align 1
  %4418 = lshr i32 %4390, 31
  %4419 = lshr i32 %4392, 31
  %4420 = xor i32 %4415, %4418
  %4421 = xor i32 %4415, %4419
  %4422 = add i32 %4420, %4421
  %4423 = icmp eq i32 %4422, 2
  %4424 = zext i1 %4423 to i8
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4424, i8* %4425, align 1
  store %struct.Memory* %loadMem_434ad4, %struct.Memory** %MEMORY
  %loadMem_434ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 33
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4428 to i64*
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 1
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %4431 to i32*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 15
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %4434 to i64*
  %4435 = load i64, i64* %RBP.i148
  %4436 = sub i64 %4435, 8
  %4437 = load i32, i32* %EAX.i147
  %4438 = zext i32 %4437 to i64
  %4439 = load i64, i64* %PC.i146
  %4440 = add i64 %4439, 3
  store i64 %4440, i64* %PC.i146
  %4441 = inttoptr i64 %4436 to i32*
  store i32 %4437, i32* %4441
  store %struct.Memory* %loadMem_434ad7, %struct.Memory** %MEMORY
  br label %block_.L_434ada

block_.L_434ada:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_43488d
  %loadMem_434ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 1
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %4447 to i64*
  %4448 = load i64, i64* %PC.i144
  %4449 = add i64 %4448, 8
  store i64 %4449, i64* %PC.i144
  %4450 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4450, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_434ada, %struct.Memory** %MEMORY
  %loadMem_434ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 33
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 1
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %4456 to i64*
  %4457 = load i64, i64* %RAX.i143
  %4458 = add i64 %4457, 2908
  %4459 = load i64, i64* %PC.i142
  %4460 = add i64 %4459, 7
  store i64 %4460, i64* %PC.i142
  %4461 = inttoptr i64 %4458 to i32*
  %4462 = load i32, i32* %4461
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4463, align 1
  %4464 = and i32 %4462, 255
  %4465 = call i32 @llvm.ctpop.i32(i32 %4464)
  %4466 = trunc i32 %4465 to i8
  %4467 = and i8 %4466, 1
  %4468 = xor i8 %4467, 1
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4468, i8* %4469, align 1
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4470, align 1
  %4471 = icmp eq i32 %4462, 0
  %4472 = zext i1 %4471 to i8
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4472, i8* %4473, align 1
  %4474 = lshr i32 %4462, 31
  %4475 = trunc i32 %4474 to i8
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4475, i8* %4476, align 1
  %4477 = lshr i32 %4462, 31
  %4478 = xor i32 %4474, %4477
  %4479 = add i32 %4478, %4477
  %4480 = icmp eq i32 %4479, 2
  %4481 = zext i1 %4480 to i8
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4481, i8* %4482, align 1
  store %struct.Memory* %loadMem_434ae2, %struct.Memory** %MEMORY
  %loadMem_434ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 33
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4485 to i64*
  %4486 = load i64, i64* %PC.i141
  %4487 = add i64 %4486, 121
  %4488 = load i64, i64* %PC.i141
  %4489 = add i64 %4488, 6
  %4490 = load i64, i64* %PC.i141
  %4491 = add i64 %4490, 6
  store i64 %4491, i64* %PC.i141
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4493 = load i8, i8* %4492, align 1
  store i8 %4493, i8* %BRANCH_TAKEN, align 1
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4495 = icmp ne i8 %4493, 0
  %4496 = select i1 %4495, i64 %4487, i64 %4489
  store i64 %4496, i64* %4494, align 8
  store %struct.Memory* %loadMem_434ae9, %struct.Memory** %MEMORY
  %loadBr_434ae9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434ae9 = icmp eq i8 %loadBr_434ae9, 1
  br i1 %cmpBr_434ae9, label %block_.L_434b62, label %block_434aef

block_434aef:                                     ; preds = %block_.L_434ada
  %loadMem_434aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 11
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RDI.i140 = bitcast %union.anon* %4502 to i64*
  %4503 = load i64, i64* %PC.i139
  %4504 = add i64 %4503, 10
  store i64 %4504, i64* %PC.i139
  store i64 ptrtoint (%G__0x723650_type* @G__0x723650 to i64), i64* %RDI.i140, align 8
  store %struct.Memory* %loadMem_434aef, %struct.Memory** %MEMORY
  %loadMem_434af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 33
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 1
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %4510 to i64*
  %4511 = load i64, i64* %PC.i137
  %4512 = add i64 %4511, 8
  store i64 %4512, i64* %PC.i137
  %4513 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4513, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_434af9, %struct.Memory** %MEMORY
  %loadMem_434b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 33
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4516 to i64*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 1
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 9
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %4522 to i64*
  %4523 = load i64, i64* %RAX.i135
  %4524 = add i64 %4523, 60
  %4525 = load i64, i64* %PC.i134
  %4526 = add i64 %4525, 3
  store i64 %4526, i64* %PC.i134
  %4527 = inttoptr i64 %4524 to i32*
  %4528 = load i32, i32* %4527
  %4529 = zext i32 %4528 to i64
  store i64 %4529, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_434b01, %struct.Memory** %MEMORY
  %loadMem_434b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 33
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 1
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %PC.i132
  %4537 = add i64 %4536, 8
  store i64 %4537, i64* %PC.i132
  %4538 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4538, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_434b04, %struct.Memory** %MEMORY
  %loadMem_434b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 33
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4541 to i64*
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 1
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %4544 to i64*
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 7
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %4547 to i64*
  %4548 = load i64, i64* %RAX.i130
  %4549 = add i64 %4548, 52
  %4550 = load i64, i64* %PC.i129
  %4551 = add i64 %4550, 3
  store i64 %4551, i64* %PC.i129
  %4552 = inttoptr i64 %4549 to i32*
  %4553 = load i32, i32* %4552
  %4554 = zext i32 %4553 to i64
  store i64 %4554, i64* %RDX.i131, align 8
  store %struct.Memory* %loadMem_434b0c, %struct.Memory** %MEMORY
  %loadMem1_434b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %PC.i128
  %4559 = add i64 %4558, 150545
  %4560 = load i64, i64* %PC.i128
  %4561 = add i64 %4560, 5
  %4562 = load i64, i64* %PC.i128
  %4563 = add i64 %4562, 5
  store i64 %4563, i64* %PC.i128
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4565 = load i64, i64* %4564, align 8
  %4566 = add i64 %4565, -8
  %4567 = inttoptr i64 %4566 to i64*
  store i64 %4561, i64* %4567
  store i64 %4566, i64* %4564, align 8
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4559, i64* %4568, align 8
  store %struct.Memory* %loadMem1_434b0f, %struct.Memory** %MEMORY
  %loadMem2_434b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434b0f = load i64, i64* %3
  %call2_434b0f = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_434b0f, %struct.Memory* %loadMem2_434b0f)
  store %struct.Memory* %call2_434b0f, %struct.Memory** %MEMORY
  %loadMem_434b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 33
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 11
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %RDI.i127 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %PC.i126
  %4576 = add i64 %4575, 10
  store i64 %4576, i64* %PC.i126
  store i64 ptrtoint (%G__0x70d1a0_type* @G__0x70d1a0 to i64), i64* %RDI.i127, align 8
  store %struct.Memory* %loadMem_434b14, %struct.Memory** %MEMORY
  %loadMem_434b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 7
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %4582 to i64*
  %4583 = load i64, i64* %PC.i124
  %4584 = add i64 %4583, 5
  store i64 %4584, i64* %PC.i124
  store i64 8, i64* %RDX.i125, align 8
  store %struct.Memory* %loadMem_434b1e, %struct.Memory** %MEMORY
  %loadMem_434b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 1
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %4590 to i64*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 15
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %4593 to i64*
  %4594 = load i64, i64* %RAX.i122
  %4595 = load i64, i64* %RBP.i123
  %4596 = sub i64 %4595, 8
  %4597 = load i64, i64* %PC.i121
  %4598 = add i64 %4597, 3
  store i64 %4598, i64* %PC.i121
  %4599 = trunc i64 %4594 to i32
  %4600 = inttoptr i64 %4596 to i32*
  %4601 = load i32, i32* %4600
  %4602 = add i32 %4601, %4599
  %4603 = zext i32 %4602 to i64
  store i64 %4603, i64* %RAX.i122, align 8
  %4604 = icmp ult i32 %4602, %4599
  %4605 = icmp ult i32 %4602, %4601
  %4606 = or i1 %4604, %4605
  %4607 = zext i1 %4606 to i8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4607, i8* %4608, align 1
  %4609 = and i32 %4602, 255
  %4610 = call i32 @llvm.ctpop.i32(i32 %4609)
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = xor i8 %4612, 1
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4613, i8* %4614, align 1
  %4615 = xor i32 %4601, %4599
  %4616 = xor i32 %4615, %4602
  %4617 = lshr i32 %4616, 4
  %4618 = trunc i32 %4617 to i8
  %4619 = and i8 %4618, 1
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4619, i8* %4620, align 1
  %4621 = icmp eq i32 %4602, 0
  %4622 = zext i1 %4621 to i8
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4622, i8* %4623, align 1
  %4624 = lshr i32 %4602, 31
  %4625 = trunc i32 %4624 to i8
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4625, i8* %4626, align 1
  %4627 = lshr i32 %4599, 31
  %4628 = lshr i32 %4601, 31
  %4629 = xor i32 %4624, %4627
  %4630 = xor i32 %4624, %4628
  %4631 = add i32 %4629, %4630
  %4632 = icmp eq i32 %4631, 2
  %4633 = zext i1 %4632 to i8
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4633, i8* %4634, align 1
  store %struct.Memory* %loadMem_434b23, %struct.Memory** %MEMORY
  %loadMem_434b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 33
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4637 to i64*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 1
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %EAX.i119 = bitcast %union.anon* %4640 to i32*
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 15
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %4643 to i64*
  %4644 = load i64, i64* %RBP.i120
  %4645 = sub i64 %4644, 8
  %4646 = load i32, i32* %EAX.i119
  %4647 = zext i32 %4646 to i64
  %4648 = load i64, i64* %PC.i118
  %4649 = add i64 %4648, 3
  store i64 %4649, i64* %PC.i118
  %4650 = inttoptr i64 %4645 to i32*
  store i32 %4646, i32* %4650
  store %struct.Memory* %loadMem_434b26, %struct.Memory** %MEMORY
  %loadMem_434b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 33
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 5
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %4656 to i64*
  %4657 = load i64, i64* %PC.i116
  %4658 = add i64 %4657, 8
  store i64 %4658, i64* %PC.i116
  %4659 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4659, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_434b29, %struct.Memory** %MEMORY
  %loadMem_434b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 1
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 5
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %4668 to i64*
  %4669 = load i64, i64* %RCX.i115
  %4670 = add i64 %4669, 60
  %4671 = load i64, i64* %PC.i113
  %4672 = add i64 %4671, 3
  store i64 %4672, i64* %PC.i113
  %4673 = inttoptr i64 %4670 to i32*
  %4674 = load i32, i32* %4673
  %4675 = zext i32 %4674 to i64
  store i64 %4675, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_434b31, %struct.Memory** %MEMORY
  %loadMem_434b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 33
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4678 to i64*
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4680 = getelementptr inbounds %struct.GPR, %struct.GPR* %4679, i32 0, i32 7
  %4681 = getelementptr inbounds %struct.Reg, %struct.Reg* %4680, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4681 to i32*
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 15
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %4684 to i64*
  %4685 = load i64, i64* %RBP.i112
  %4686 = sub i64 %4685, 36
  %4687 = load i32, i32* %EDX.i
  %4688 = zext i32 %4687 to i64
  %4689 = load i64, i64* %PC.i111
  %4690 = add i64 %4689, 3
  store i64 %4690, i64* %PC.i111
  %4691 = inttoptr i64 %4686 to i32*
  store i32 %4687, i32* %4691
  store %struct.Memory* %loadMem_434b34, %struct.Memory** %MEMORY
  %loadMem_434b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %PC.i110
  %4696 = add i64 %4695, 1
  store i64 %4696, i64* %PC.i110
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4699 = bitcast %union.anon* %4698 to i32*
  %4700 = load i32, i32* %4699, align 8
  %4701 = sext i32 %4700 to i64
  %4702 = lshr i64 %4701, 32
  store i64 %4702, i64* %4697, align 8
  store %struct.Memory* %loadMem_434b37, %struct.Memory** %MEMORY
  %loadMem_434b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 33
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4705 to i64*
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 9
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %4708 to i64*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 15
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %4711 to i64*
  %4712 = load i64, i64* %RBP.i109
  %4713 = sub i64 %4712, 36
  %4714 = load i64, i64* %PC.i107
  %4715 = add i64 %4714, 3
  store i64 %4715, i64* %PC.i107
  %4716 = inttoptr i64 %4713 to i32*
  %4717 = load i32, i32* %4716
  %4718 = zext i32 %4717 to i64
  store i64 %4718, i64* %RSI.i108, align 8
  store %struct.Memory* %loadMem_434b38, %struct.Memory** %MEMORY
  %loadMem_434b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 33
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4721 to i64*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 9
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %ESI.i103 = bitcast %union.anon* %4724 to i32*
  %4725 = load i32, i32* %ESI.i103
  %4726 = zext i32 %4725 to i64
  %4727 = load i64, i64* %PC.i102
  %4728 = add i64 %4727, 2
  store i64 %4728, i64* %PC.i102
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4730 = bitcast %union.anon* %4729 to i32*
  %4731 = load i32, i32* %4730, align 8
  %4732 = zext i32 %4731 to i64
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4734 = bitcast %union.anon* %4733 to i32*
  %4735 = load i32, i32* %4734, align 8
  %4736 = zext i32 %4735 to i64
  %4737 = shl i64 %4726, 32
  %4738 = ashr exact i64 %4737, 32
  %4739 = shl i64 %4736, 32
  %4740 = or i64 %4739, %4732
  %4741 = sdiv i64 %4740, %4738
  %4742 = shl i64 %4741, 32
  %4743 = ashr exact i64 %4742, 32
  %4744 = icmp eq i64 %4741, %4743
  br i1 %4744, label %4749, label %4745

; <label>:4745:                                   ; preds = %block_434aef
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4747 = load i64, i64* %4746, align 8
  %4748 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4747, %struct.Memory* %loadMem_434b3b)
  br label %routine_idivl__esi.exit104

; <label>:4749:                                   ; preds = %block_434aef
  %4750 = srem i64 %4740, %4738
  %4751 = getelementptr inbounds %union.anon, %union.anon* %4729, i64 0, i32 0
  %4752 = and i64 %4741, 4294967295
  store i64 %4752, i64* %4751, align 8
  %4753 = getelementptr inbounds %union.anon, %union.anon* %4733, i64 0, i32 0
  %4754 = and i64 %4750, 4294967295
  store i64 %4754, i64* %4753, align 8
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4755, align 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4756, align 1
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4757, align 1
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4758, align 1
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4759, align 1
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4760, align 1
  br label %routine_idivl__esi.exit104

routine_idivl__esi.exit104:                       ; preds = %4745, %4749
  %4761 = phi %struct.Memory* [ %4748, %4745 ], [ %loadMem_434b3b, %4749 ]
  store %struct.Memory* %4761, %struct.Memory** %MEMORY
  %loadMem_434b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 33
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4764 to i64*
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 5
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4767 to i64*
  %4768 = load i64, i64* %PC.i100
  %4769 = add i64 %4768, 8
  store i64 %4769, i64* %PC.i100
  %4770 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4770, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_434b3d, %struct.Memory** %MEMORY
  %loadMem_434b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 17
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %R8D.i98 = bitcast %union.anon* %4776 to i32*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 5
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %4779 to i64*
  %4780 = bitcast i32* %R8D.i98 to i64*
  %4781 = load i64, i64* %RCX.i99
  %4782 = add i64 %4781, 52
  %4783 = load i64, i64* %PC.i97
  %4784 = add i64 %4783, 4
  store i64 %4784, i64* %PC.i97
  %4785 = inttoptr i64 %4782 to i32*
  %4786 = load i32, i32* %4785
  %4787 = zext i32 %4786 to i64
  store i64 %4787, i64* %4780, align 8
  store %struct.Memory* %loadMem_434b45, %struct.Memory** %MEMORY
  %loadMem_434b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 1
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %4793 to i32*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 15
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %4796 to i64*
  %4797 = load i64, i64* %RBP.i96
  %4798 = sub i64 %4797, 40
  %4799 = load i32, i32* %EAX.i95
  %4800 = zext i32 %4799 to i64
  %4801 = load i64, i64* %PC.i94
  %4802 = add i64 %4801, 3
  store i64 %4802, i64* %PC.i94
  %4803 = inttoptr i64 %4798 to i32*
  store i32 %4799, i32* %4803
  store %struct.Memory* %loadMem_434b49, %struct.Memory** %MEMORY
  %loadMem_434b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 33
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4806 to i64*
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 17
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4809 to i32*
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4811 = getelementptr inbounds %struct.GPR, %struct.GPR* %4810, i32 0, i32 1
  %4812 = getelementptr inbounds %struct.Reg, %struct.Reg* %4811, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %4812 to i64*
  %4813 = load i32, i32* %R8D.i
  %4814 = zext i32 %4813 to i64
  %4815 = load i64, i64* %PC.i92
  %4816 = add i64 %4815, 3
  store i64 %4816, i64* %PC.i92
  %4817 = and i64 %4814, 4294967295
  store i64 %4817, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_434b4c, %struct.Memory** %MEMORY
  %loadMem_434b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 33
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4820 to i64*
  %4821 = load i64, i64* %PC.i91
  %4822 = add i64 %4821, 1
  store i64 %4822, i64* %PC.i91
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4825 = bitcast %union.anon* %4824 to i32*
  %4826 = load i32, i32* %4825, align 8
  %4827 = sext i32 %4826 to i64
  %4828 = lshr i64 %4827, 32
  store i64 %4828, i64* %4823, align 8
  store %struct.Memory* %loadMem_434b4f, %struct.Memory** %MEMORY
  %loadMem_434b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 33
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 9
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4834 to i32*
  %4835 = load i32, i32* %ESI.i
  %4836 = zext i32 %4835 to i64
  %4837 = load i64, i64* %PC.i87
  %4838 = add i64 %4837, 2
  store i64 %4838, i64* %PC.i87
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4840 = bitcast %union.anon* %4839 to i32*
  %4841 = load i32, i32* %4840, align 8
  %4842 = zext i32 %4841 to i64
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4844 = bitcast %union.anon* %4843 to i32*
  %4845 = load i32, i32* %4844, align 8
  %4846 = zext i32 %4845 to i64
  %4847 = shl i64 %4836, 32
  %4848 = ashr exact i64 %4847, 32
  %4849 = shl i64 %4846, 32
  %4850 = or i64 %4849, %4842
  %4851 = sdiv i64 %4850, %4848
  %4852 = shl i64 %4851, 32
  %4853 = ashr exact i64 %4852, 32
  %4854 = icmp eq i64 %4851, %4853
  br i1 %4854, label %4859, label %4855

; <label>:4855:                                   ; preds = %routine_idivl__esi.exit104
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4857 = load i64, i64* %4856, align 8
  %4858 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4857, %struct.Memory* %loadMem_434b50)
  br label %routine_idivl__esi.exit

; <label>:4859:                                   ; preds = %routine_idivl__esi.exit104
  %4860 = srem i64 %4850, %4848
  %4861 = getelementptr inbounds %union.anon, %union.anon* %4839, i64 0, i32 0
  %4862 = and i64 %4851, 4294967295
  store i64 %4862, i64* %4861, align 8
  %4863 = getelementptr inbounds %union.anon, %union.anon* %4843, i64 0, i32 0
  %4864 = and i64 %4860, 4294967295
  store i64 %4864, i64* %4863, align 8
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4865, align 1
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4866, align 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4867, align 1
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4868, align 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4869, align 1
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4870, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %4855, %4859
  %4871 = phi %struct.Memory* [ %4858, %4855 ], [ %loadMem_434b50, %4859 ]
  store %struct.Memory* %4871, %struct.Memory** %MEMORY
  %loadMem_434b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 33
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4874 to i64*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4876 = getelementptr inbounds %struct.GPR, %struct.GPR* %4875, i32 0, i32 9
  %4877 = getelementptr inbounds %struct.Reg, %struct.Reg* %4876, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %4877 to i64*
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 15
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4880 to i64*
  %4881 = load i64, i64* %RBP.i86
  %4882 = sub i64 %4881, 40
  %4883 = load i64, i64* %PC.i84
  %4884 = add i64 %4883, 3
  store i64 %4884, i64* %PC.i84
  %4885 = inttoptr i64 %4882 to i32*
  %4886 = load i32, i32* %4885
  %4887 = zext i32 %4886 to i64
  store i64 %4887, i64* %RSI.i85, align 8
  store %struct.Memory* %loadMem_434b52, %struct.Memory** %MEMORY
  %loadMem_434b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4889 = getelementptr inbounds %struct.GPR, %struct.GPR* %4888, i32 0, i32 33
  %4890 = getelementptr inbounds %struct.Reg, %struct.Reg* %4889, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4890 to i64*
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 1
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %4893 to i32*
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 7
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %4896 to i64*
  %4897 = load i32, i32* %EAX.i82
  %4898 = zext i32 %4897 to i64
  %4899 = load i64, i64* %PC.i81
  %4900 = add i64 %4899, 2
  store i64 %4900, i64* %PC.i81
  %4901 = and i64 %4898, 4294967295
  store i64 %4901, i64* %RDX.i83, align 8
  store %struct.Memory* %loadMem_434b55, %struct.Memory** %MEMORY
  %loadMem1_434b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4903 = getelementptr inbounds %struct.GPR, %struct.GPR* %4902, i32 0, i32 33
  %4904 = getelementptr inbounds %struct.Reg, %struct.Reg* %4903, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %4904 to i64*
  %4905 = load i64, i64* %PC.i80
  %4906 = add i64 %4905, 150473
  %4907 = load i64, i64* %PC.i80
  %4908 = add i64 %4907, 5
  %4909 = load i64, i64* %PC.i80
  %4910 = add i64 %4909, 5
  store i64 %4910, i64* %PC.i80
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4912 = load i64, i64* %4911, align 8
  %4913 = add i64 %4912, -8
  %4914 = inttoptr i64 %4913 to i64*
  store i64 %4908, i64* %4914
  store i64 %4913, i64* %4911, align 8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4906, i64* %4915, align 8
  store %struct.Memory* %loadMem1_434b57, %struct.Memory** %MEMORY
  %loadMem2_434b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434b57 = load i64, i64* %3
  %call2_434b57 = call %struct.Memory* @sub_459720.get_mem2D(%struct.State* %0, i64 %loadPC_434b57, %struct.Memory* %loadMem2_434b57)
  store %struct.Memory* %call2_434b57, %struct.Memory** %MEMORY
  %loadMem_434b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 33
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 1
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 15
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %RAX.i78
  %4926 = load i64, i64* %RBP.i79
  %4927 = sub i64 %4926, 8
  %4928 = load i64, i64* %PC.i77
  %4929 = add i64 %4928, 3
  store i64 %4929, i64* %PC.i77
  %4930 = trunc i64 %4925 to i32
  %4931 = inttoptr i64 %4927 to i32*
  %4932 = load i32, i32* %4931
  %4933 = add i32 %4932, %4930
  %4934 = zext i32 %4933 to i64
  store i64 %4934, i64* %RAX.i78, align 8
  %4935 = icmp ult i32 %4933, %4930
  %4936 = icmp ult i32 %4933, %4932
  %4937 = or i1 %4935, %4936
  %4938 = zext i1 %4937 to i8
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4938, i8* %4939, align 1
  %4940 = and i32 %4933, 255
  %4941 = call i32 @llvm.ctpop.i32(i32 %4940)
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  %4944 = xor i8 %4943, 1
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4944, i8* %4945, align 1
  %4946 = xor i32 %4932, %4930
  %4947 = xor i32 %4946, %4933
  %4948 = lshr i32 %4947, 4
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4950, i8* %4951, align 1
  %4952 = icmp eq i32 %4933, 0
  %4953 = zext i1 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4953, i8* %4954, align 1
  %4955 = lshr i32 %4933, 31
  %4956 = trunc i32 %4955 to i8
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4956, i8* %4957, align 1
  %4958 = lshr i32 %4930, 31
  %4959 = lshr i32 %4932, 31
  %4960 = xor i32 %4955, %4958
  %4961 = xor i32 %4955, %4959
  %4962 = add i32 %4960, %4961
  %4963 = icmp eq i32 %4962, 2
  %4964 = zext i1 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4964, i8* %4965, align 1
  store %struct.Memory* %loadMem_434b5c, %struct.Memory** %MEMORY
  %loadMem_434b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 1
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %EAX.i75 = bitcast %union.anon* %4971 to i32*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 15
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %4974 to i64*
  %4975 = load i64, i64* %RBP.i76
  %4976 = sub i64 %4975, 8
  %4977 = load i32, i32* %EAX.i75
  %4978 = zext i32 %4977 to i64
  %4979 = load i64, i64* %PC.i74
  %4980 = add i64 %4979, 3
  store i64 %4980, i64* %PC.i74
  %4981 = inttoptr i64 %4976 to i32*
  store i32 %4977, i32* %4981
  store %struct.Memory* %loadMem_434b5f, %struct.Memory** %MEMORY
  br label %block_.L_434b62

block_.L_434b62:                                  ; preds = %routine_idivl__esi.exit, %block_.L_434ada
  %loadMem_434b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 33
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 1
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4987 to i64*
  %4988 = load i64, i64* %PC.i72
  %4989 = add i64 %4988, 8
  store i64 %4989, i64* %PC.i72
  %4990 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %4990, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_434b62, %struct.Memory** %MEMORY
  %loadMem_434b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 1
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %RAX.i71
  %4998 = add i64 %4997, 1148
  %4999 = load i64, i64* %PC.i70
  %5000 = add i64 %4999, 7
  store i64 %5000, i64* %PC.i70
  %5001 = inttoptr i64 %4998 to i32*
  %5002 = load i32, i32* %5001
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5003, align 1
  %5004 = and i32 %5002, 255
  %5005 = call i32 @llvm.ctpop.i32(i32 %5004)
  %5006 = trunc i32 %5005 to i8
  %5007 = and i8 %5006, 1
  %5008 = xor i8 %5007, 1
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5008, i8* %5009, align 1
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5010, align 1
  %5011 = icmp eq i32 %5002, 0
  %5012 = zext i1 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5012, i8* %5013, align 1
  %5014 = lshr i32 %5002, 31
  %5015 = trunc i32 %5014 to i8
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5015, i8* %5016, align 1
  %5017 = lshr i32 %5002, 31
  %5018 = xor i32 %5014, %5017
  %5019 = add i32 %5018, %5017
  %5020 = icmp eq i32 %5019, 2
  %5021 = zext i1 %5020 to i8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5021, i8* %5022, align 1
  store %struct.Memory* %loadMem_434b6a, %struct.Memory** %MEMORY
  %loadMem_434b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5025 to i64*
  %5026 = load i64, i64* %PC.i69
  %5027 = add i64 %5026, 123
  %5028 = load i64, i64* %PC.i69
  %5029 = add i64 %5028, 6
  %5030 = load i64, i64* %PC.i69
  %5031 = add i64 %5030, 6
  store i64 %5031, i64* %PC.i69
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5033 = load i8, i8* %5032, align 1
  %5034 = icmp eq i8 %5033, 0
  %5035 = zext i1 %5034 to i8
  store i8 %5035, i8* %BRANCH_TAKEN, align 1
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5037 = select i1 %5034, i64 %5027, i64 %5029
  store i64 %5037, i64* %5036, align 8
  store %struct.Memory* %loadMem_434b71, %struct.Memory** %MEMORY
  %loadBr_434b71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434b71 = icmp eq i8 %loadBr_434b71, 1
  br i1 %cmpBr_434b71, label %block_.L_434bec, label %block_434b77

block_434b77:                                     ; preds = %block_.L_434b62
  %loadMem_434b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 11
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %RDI.i68 = bitcast %union.anon* %5043 to i64*
  %5044 = load i64, i64* %PC.i67
  %5045 = add i64 %5044, 10
  store i64 %5045, i64* %PC.i67
  store i64 ptrtoint (%G__0x722c90_type* @G__0x722c90 to i64), i64* %RDI.i68, align 8
  store %struct.Memory* %loadMem_434b77, %struct.Memory** %MEMORY
  %loadMem_434b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 1
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %5051 to i64*
  %5052 = load i64, i64* %PC.i65
  %5053 = add i64 %5052, 8
  store i64 %5053, i64* %PC.i65
  %5054 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5054, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_434b81, %struct.Memory** %MEMORY
  %loadMem_434b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5057 to i64*
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5059 = getelementptr inbounds %struct.GPR, %struct.GPR* %5058, i32 0, i32 1
  %5060 = getelementptr inbounds %struct.Reg, %struct.Reg* %5059, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %5060 to i64*
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 9
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %RSI.i64 = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %RAX.i63
  %5065 = add i64 %5064, 60
  %5066 = load i64, i64* %PC.i62
  %5067 = add i64 %5066, 3
  store i64 %5067, i64* %PC.i62
  %5068 = inttoptr i64 %5065 to i32*
  %5069 = load i32, i32* %5068
  %5070 = zext i32 %5069 to i64
  store i64 %5070, i64* %RSI.i64, align 8
  store %struct.Memory* %loadMem_434b89, %struct.Memory** %MEMORY
  %loadMem_434b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 33
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5073 to i64*
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 1
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %5076 to i64*
  %5077 = load i64, i64* %PC.i60
  %5078 = add i64 %5077, 8
  store i64 %5078, i64* %PC.i60
  %5079 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5079, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_434b8c, %struct.Memory** %MEMORY
  %loadMem_434b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 33
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 1
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5087 = getelementptr inbounds %struct.GPR, %struct.GPR* %5086, i32 0, i32 7
  %5088 = getelementptr inbounds %struct.Reg, %struct.Reg* %5087, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %5088 to i64*
  %5089 = load i64, i64* %RAX.i58
  %5090 = add i64 %5089, 52
  %5091 = load i64, i64* %PC.i57
  %5092 = add i64 %5091, 3
  store i64 %5092, i64* %PC.i57
  %5093 = inttoptr i64 %5090 to i32*
  %5094 = load i32, i32* %5093
  %5095 = zext i32 %5094 to i64
  store i64 %5095, i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_434b94, %struct.Memory** %MEMORY
  %loadMem1_434b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 33
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %5098 to i64*
  %5099 = load i64, i64* %PC.i56
  %5100 = add i64 %5099, 149737
  %5101 = load i64, i64* %PC.i56
  %5102 = add i64 %5101, 5
  %5103 = load i64, i64* %PC.i56
  %5104 = add i64 %5103, 5
  store i64 %5104, i64* %PC.i56
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5106 = load i64, i64* %5105, align 8
  %5107 = add i64 %5106, -8
  %5108 = inttoptr i64 %5107 to i64*
  store i64 %5102, i64* %5108
  store i64 %5107, i64* %5105, align 8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5100, i64* %5109, align 8
  store %struct.Memory* %loadMem1_434b97, %struct.Memory** %MEMORY
  %loadMem2_434b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434b97 = load i64, i64* %3
  %call2_434b97 = call %struct.Memory* @sub_459480.get_mem2Dpel(%struct.State* %0, i64 %loadPC_434b97, %struct.Memory* %loadMem2_434b97)
  store %struct.Memory* %call2_434b97, %struct.Memory** %MEMORY
  %loadMem_434b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 33
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5112 to i64*
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 1
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 15
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %5118 to i64*
  %5119 = load i64, i64* %RAX.i54
  %5120 = load i64, i64* %RBP.i55
  %5121 = sub i64 %5120, 8
  %5122 = load i64, i64* %PC.i53
  %5123 = add i64 %5122, 3
  store i64 %5123, i64* %PC.i53
  %5124 = trunc i64 %5119 to i32
  %5125 = inttoptr i64 %5121 to i32*
  %5126 = load i32, i32* %5125
  %5127 = add i32 %5126, %5124
  %5128 = zext i32 %5127 to i64
  store i64 %5128, i64* %RAX.i54, align 8
  %5129 = icmp ult i32 %5127, %5124
  %5130 = icmp ult i32 %5127, %5126
  %5131 = or i1 %5129, %5130
  %5132 = zext i1 %5131 to i8
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5132, i8* %5133, align 1
  %5134 = and i32 %5127, 255
  %5135 = call i32 @llvm.ctpop.i32(i32 %5134)
  %5136 = trunc i32 %5135 to i8
  %5137 = and i8 %5136, 1
  %5138 = xor i8 %5137, 1
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5138, i8* %5139, align 1
  %5140 = xor i32 %5126, %5124
  %5141 = xor i32 %5140, %5127
  %5142 = lshr i32 %5141, 4
  %5143 = trunc i32 %5142 to i8
  %5144 = and i8 %5143, 1
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5144, i8* %5145, align 1
  %5146 = icmp eq i32 %5127, 0
  %5147 = zext i1 %5146 to i8
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5147, i8* %5148, align 1
  %5149 = lshr i32 %5127, 31
  %5150 = trunc i32 %5149 to i8
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5150, i8* %5151, align 1
  %5152 = lshr i32 %5124, 31
  %5153 = lshr i32 %5126, 31
  %5154 = xor i32 %5149, %5152
  %5155 = xor i32 %5149, %5153
  %5156 = add i32 %5154, %5155
  %5157 = icmp eq i32 %5156, 2
  %5158 = zext i1 %5157 to i8
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5158, i8* %5159, align 1
  store %struct.Memory* %loadMem_434b9c, %struct.Memory** %MEMORY
  %loadMem_434b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 1
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %EAX.i51 = bitcast %union.anon* %5165 to i32*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 15
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %5168 to i64*
  %5169 = load i64, i64* %RBP.i52
  %5170 = sub i64 %5169, 8
  %5171 = load i32, i32* %EAX.i51
  %5172 = zext i32 %5171 to i64
  %5173 = load i64, i64* %PC.i50
  %5174 = add i64 %5173, 3
  store i64 %5174, i64* %PC.i50
  %5175 = inttoptr i64 %5170 to i32*
  store i32 %5171, i32* %5175
  store %struct.Memory* %loadMem_434b9f, %struct.Memory** %MEMORY
  %loadMem_434ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 33
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5178 to i64*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 11
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RDI.i49 = bitcast %union.anon* %5181 to i64*
  %5182 = load i64, i64* %PC.i48
  %5183 = add i64 %5182, 8
  store i64 %5183, i64* %PC.i48
  %5184 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5184, i64* %RDI.i49, align 8
  store %struct.Memory* %loadMem_434ba2, %struct.Memory** %MEMORY
  %loadMem_434baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5186 = getelementptr inbounds %struct.GPR, %struct.GPR* %5185, i32 0, i32 33
  %5187 = getelementptr inbounds %struct.Reg, %struct.Reg* %5186, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5187 to i64*
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5189 = getelementptr inbounds %struct.GPR, %struct.GPR* %5188, i32 0, i32 11
  %5190 = getelementptr inbounds %struct.Reg, %struct.Reg* %5189, i32 0, i32 0
  %RDI.i47 = bitcast %union.anon* %5190 to i64*
  %5191 = load i64, i64* %RDI.i47
  %5192 = add i64 %5191, 72700
  %5193 = load i64, i64* %PC.i46
  %5194 = add i64 %5193, 7
  store i64 %5194, i64* %PC.i46
  %5195 = inttoptr i64 %5192 to i32*
  %5196 = load i32, i32* %5195
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5197, align 1
  %5198 = and i32 %5196, 255
  %5199 = call i32 @llvm.ctpop.i32(i32 %5198)
  %5200 = trunc i32 %5199 to i8
  %5201 = and i8 %5200, 1
  %5202 = xor i8 %5201, 1
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5202, i8* %5203, align 1
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5204, align 1
  %5205 = icmp eq i32 %5196, 0
  %5206 = zext i1 %5205 to i8
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5206, i8* %5207, align 1
  %5208 = lshr i32 %5196, 31
  %5209 = trunc i32 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5209, i8* %5210, align 1
  %5211 = lshr i32 %5196, 31
  %5212 = xor i32 %5208, %5211
  %5213 = add i32 %5212, %5211
  %5214 = icmp eq i32 %5213, 2
  %5215 = zext i1 %5214 to i8
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5215, i8* %5216, align 1
  store %struct.Memory* %loadMem_434baa, %struct.Memory** %MEMORY
  %loadMem_434bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 33
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5219 to i64*
  %5220 = load i64, i64* %PC.i45
  %5221 = add i64 %5220, 54
  %5222 = load i64, i64* %PC.i45
  %5223 = add i64 %5222, 6
  %5224 = load i64, i64* %PC.i45
  %5225 = add i64 %5224, 6
  store i64 %5225, i64* %PC.i45
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5227 = load i8, i8* %5226, align 1
  store i8 %5227, i8* %BRANCH_TAKEN, align 1
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5229 = icmp ne i8 %5227, 0
  %5230 = select i1 %5229, i64 %5221, i64 %5223
  store i64 %5230, i64* %5228, align 8
  store %struct.Memory* %loadMem_434bb1, %struct.Memory** %MEMORY
  %loadBr_434bb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434bb1 = icmp eq i8 %loadBr_434bb1, 1
  br i1 %cmpBr_434bb1, label %block_.L_434be7, label %block_434bb7

block_434bb7:                                     ; preds = %block_434b77
  %loadMem_434bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 33
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5233 to i64*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 11
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5236 to i64*
  %5237 = load i64, i64* %PC.i44
  %5238 = add i64 %5237, 10
  store i64 %5238, i64* %PC.i44
  store i64 ptrtoint (%G__0x6f96f0_type* @G__0x6f96f0 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_434bb7, %struct.Memory** %MEMORY
  %loadMem_434bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 33
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 9
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5244 to i64*
  %5245 = load i64, i64* %PC.i43
  %5246 = add i64 %5245, 5
  store i64 %5246, i64* %PC.i43
  store i64 2, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_434bc1, %struct.Memory** %MEMORY
  %loadMem_434bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 1
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %5252 to i64*
  %5253 = load i64, i64* %PC.i41
  %5254 = add i64 %5253, 8
  store i64 %5254, i64* %PC.i41
  %5255 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5255, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_434bc6, %struct.Memory** %MEMORY
  %loadMem_434bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 1
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5261 to i64*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 7
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %RAX.i40
  %5266 = add i64 %5265, 64
  %5267 = load i64, i64* %PC.i39
  %5268 = add i64 %5267, 3
  store i64 %5268, i64* %PC.i39
  %5269 = inttoptr i64 %5266 to i32*
  %5270 = load i32, i32* %5269
  %5271 = zext i32 %5270 to i64
  store i64 %5271, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_434bce, %struct.Memory** %MEMORY
  %loadMem_434bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 1
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %PC.i37
  %5279 = add i64 %5278, 8
  store i64 %5279, i64* %PC.i37
  %5280 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5280, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_434bd1, %struct.Memory** %MEMORY
  %loadMem_434bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 33
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %5283 to i64*
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5285 = getelementptr inbounds %struct.GPR, %struct.GPR* %5284, i32 0, i32 1
  %5286 = getelementptr inbounds %struct.Reg, %struct.Reg* %5285, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %5286 to i64*
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 5
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5289 to i64*
  %5290 = load i64, i64* %RAX.i36
  %5291 = add i64 %5290, 56
  %5292 = load i64, i64* %PC.i35
  %5293 = add i64 %5292, 3
  store i64 %5293, i64* %PC.i35
  %5294 = inttoptr i64 %5291 to i32*
  %5295 = load i32, i32* %5294
  %5296 = zext i32 %5295 to i64
  store i64 %5296, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_434bd9, %struct.Memory** %MEMORY
  %loadMem1_434bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5298 = getelementptr inbounds %struct.GPR, %struct.GPR* %5297, i32 0, i32 33
  %5299 = getelementptr inbounds %struct.Reg, %struct.Reg* %5298, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5299 to i64*
  %5300 = load i64, i64* %PC.i34
  %5301 = add i64 %5300, 149908
  %5302 = load i64, i64* %PC.i34
  %5303 = add i64 %5302, 5
  %5304 = load i64, i64* %PC.i34
  %5305 = add i64 %5304, 5
  store i64 %5305, i64* %PC.i34
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5307 = load i64, i64* %5306, align 8
  %5308 = add i64 %5307, -8
  %5309 = inttoptr i64 %5308 to i64*
  store i64 %5303, i64* %5309
  store i64 %5308, i64* %5306, align 8
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5301, i64* %5310, align 8
  store %struct.Memory* %loadMem1_434bdc, %struct.Memory** %MEMORY
  %loadMem2_434bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434bdc = load i64, i64* %3
  %call2_434bdc = call %struct.Memory* @sub_459570.get_mem3Dpel(%struct.State* %0, i64 %loadPC_434bdc, %struct.Memory* %loadMem2_434bdc)
  store %struct.Memory* %call2_434bdc, %struct.Memory** %MEMORY
  %loadMem_434be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 33
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 1
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %5316 to i64*
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 15
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %5319 to i64*
  %5320 = load i64, i64* %RAX.i32
  %5321 = load i64, i64* %RBP.i33
  %5322 = sub i64 %5321, 8
  %5323 = load i64, i64* %PC.i31
  %5324 = add i64 %5323, 3
  store i64 %5324, i64* %PC.i31
  %5325 = trunc i64 %5320 to i32
  %5326 = inttoptr i64 %5322 to i32*
  %5327 = load i32, i32* %5326
  %5328 = add i32 %5327, %5325
  %5329 = zext i32 %5328 to i64
  store i64 %5329, i64* %RAX.i32, align 8
  %5330 = icmp ult i32 %5328, %5325
  %5331 = icmp ult i32 %5328, %5327
  %5332 = or i1 %5330, %5331
  %5333 = zext i1 %5332 to i8
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5333, i8* %5334, align 1
  %5335 = and i32 %5328, 255
  %5336 = call i32 @llvm.ctpop.i32(i32 %5335)
  %5337 = trunc i32 %5336 to i8
  %5338 = and i8 %5337, 1
  %5339 = xor i8 %5338, 1
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5339, i8* %5340, align 1
  %5341 = xor i32 %5327, %5325
  %5342 = xor i32 %5341, %5328
  %5343 = lshr i32 %5342, 4
  %5344 = trunc i32 %5343 to i8
  %5345 = and i8 %5344, 1
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5345, i8* %5346, align 1
  %5347 = icmp eq i32 %5328, 0
  %5348 = zext i1 %5347 to i8
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5348, i8* %5349, align 1
  %5350 = lshr i32 %5328, 31
  %5351 = trunc i32 %5350 to i8
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5351, i8* %5352, align 1
  %5353 = lshr i32 %5325, 31
  %5354 = lshr i32 %5327, 31
  %5355 = xor i32 %5350, %5353
  %5356 = xor i32 %5350, %5354
  %5357 = add i32 %5355, %5356
  %5358 = icmp eq i32 %5357, 2
  %5359 = zext i1 %5358 to i8
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5359, i8* %5360, align 1
  store %struct.Memory* %loadMem_434be1, %struct.Memory** %MEMORY
  %loadMem_434be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 33
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5363 to i64*
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 1
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %5366 to i32*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 15
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %5369 to i64*
  %5370 = load i64, i64* %RBP.i30
  %5371 = sub i64 %5370, 8
  %5372 = load i32, i32* %EAX.i29
  %5373 = zext i32 %5372 to i64
  %5374 = load i64, i64* %PC.i28
  %5375 = add i64 %5374, 3
  store i64 %5375, i64* %PC.i28
  %5376 = inttoptr i64 %5371 to i32*
  store i32 %5372, i32* %5376
  store %struct.Memory* %loadMem_434be4, %struct.Memory** %MEMORY
  br label %block_.L_434be7

block_.L_434be7:                                  ; preds = %block_434bb7, %block_434b77
  %loadMem_434be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5378 = getelementptr inbounds %struct.GPR, %struct.GPR* %5377, i32 0, i32 33
  %5379 = getelementptr inbounds %struct.Reg, %struct.Reg* %5378, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %5379 to i64*
  %5380 = load i64, i64* %PC.i27
  %5381 = add i64 %5380, 5
  %5382 = load i64, i64* %PC.i27
  %5383 = add i64 %5382, 5
  store i64 %5383, i64* %PC.i27
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5381, i64* %5384, align 8
  store %struct.Memory* %loadMem_434be7, %struct.Memory** %MEMORY
  br label %block_.L_434bec

block_.L_434bec:                                  ; preds = %block_.L_434be7, %block_.L_434b62
  %loadMem_434bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 1
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5390 to i64*
  %5391 = load i64, i64* %PC.i25
  %5392 = add i64 %5391, 8
  store i64 %5392, i64* %PC.i25
  %5393 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5393, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_434bec, %struct.Memory** %MEMORY
  %loadMem_434bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 33
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 1
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %5399 to i64*
  %5400 = load i64, i64* %RAX.i24
  %5401 = add i64 %5400, 3292
  %5402 = load i64, i64* %PC.i23
  %5403 = add i64 %5402, 7
  store i64 %5403, i64* %PC.i23
  %5404 = inttoptr i64 %5401 to i32*
  %5405 = load i32, i32* %5404
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5406, align 1
  %5407 = and i32 %5405, 255
  %5408 = call i32 @llvm.ctpop.i32(i32 %5407)
  %5409 = trunc i32 %5408 to i8
  %5410 = and i8 %5409, 1
  %5411 = xor i8 %5410, 1
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5411, i8* %5412, align 1
  %5413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5413, align 1
  %5414 = icmp eq i32 %5405, 0
  %5415 = zext i1 %5414 to i8
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5415, i8* %5416, align 1
  %5417 = lshr i32 %5405, 31
  %5418 = trunc i32 %5417 to i8
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5418, i8* %5419, align 1
  %5420 = lshr i32 %5405, 31
  %5421 = xor i32 %5417, %5420
  %5422 = add i32 %5421, %5420
  %5423 = icmp eq i32 %5422, 2
  %5424 = zext i1 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5424, i8* %5425, align 1
  store %struct.Memory* %loadMem_434bf4, %struct.Memory** %MEMORY
  %loadMem_434bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 33
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5428 to i64*
  %5429 = load i64, i64* %PC.i22
  %5430 = add i64 %5429, 19
  %5431 = load i64, i64* %PC.i22
  %5432 = add i64 %5431, 6
  %5433 = load i64, i64* %PC.i22
  %5434 = add i64 %5433, 6
  store i64 %5434, i64* %PC.i22
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5436 = load i8, i8* %5435, align 1
  store i8 %5436, i8* %BRANCH_TAKEN, align 1
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5438 = icmp ne i8 %5436, 0
  %5439 = select i1 %5438, i64 %5430, i64 %5432
  store i64 %5439, i64* %5437, align 8
  store %struct.Memory* %loadMem_434bfb, %struct.Memory** %MEMORY
  %loadBr_434bfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434bfb = icmp eq i8 %loadBr_434bfb, 1
  br i1 %cmpBr_434bfb, label %block_.L_434c0e, label %block_434c01

block_434c01:                                     ; preds = %block_.L_434bec
  %loadMem_434c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 33
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5442 to i64*
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 1
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %5446 = bitcast %union.anon* %5445 to %struct.anon.2*
  %AL.i21 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5446, i32 0, i32 0
  %5447 = load i64, i64* %PC.i20
  %5448 = add i64 %5447, 2
  store i64 %5448, i64* %PC.i20
  store i8 0, i8* %AL.i21, align 1
  store %struct.Memory* %loadMem_434c01, %struct.Memory** %MEMORY
  %loadMem1_434c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 33
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5451 to i64*
  %5452 = load i64, i64* %PC.i19
  %5453 = add i64 %5452, -84803
  %5454 = load i64, i64* %PC.i19
  %5455 = add i64 %5454, 5
  %5456 = load i64, i64* %PC.i19
  %5457 = add i64 %5456, 5
  store i64 %5457, i64* %PC.i19
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5459 = load i64, i64* %5458, align 8
  %5460 = add i64 %5459, -8
  %5461 = inttoptr i64 %5460 to i64*
  store i64 %5455, i64* %5461
  store i64 %5460, i64* %5458, align 8
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5453, i64* %5462, align 8
  store %struct.Memory* %loadMem1_434c03, %struct.Memory** %MEMORY
  %loadMem2_434c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434c03 = load i64, i64* %3
  %call2_434c03 = call %struct.Memory* @sub_4200c0.get_mem_FME(%struct.State* %0, i64 %loadPC_434c03, %struct.Memory* %loadMem2_434c03)
  store %struct.Memory* %call2_434c03, %struct.Memory** %MEMORY
  %loadMem_434c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 33
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 1
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 15
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %5471 to i64*
  %5472 = load i64, i64* %RAX.i17
  %5473 = load i64, i64* %RBP.i18
  %5474 = sub i64 %5473, 8
  %5475 = load i64, i64* %PC.i16
  %5476 = add i64 %5475, 3
  store i64 %5476, i64* %PC.i16
  %5477 = trunc i64 %5472 to i32
  %5478 = inttoptr i64 %5474 to i32*
  %5479 = load i32, i32* %5478
  %5480 = add i32 %5479, %5477
  %5481 = zext i32 %5480 to i64
  store i64 %5481, i64* %RAX.i17, align 8
  %5482 = icmp ult i32 %5480, %5477
  %5483 = icmp ult i32 %5480, %5479
  %5484 = or i1 %5482, %5483
  %5485 = zext i1 %5484 to i8
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5485, i8* %5486, align 1
  %5487 = and i32 %5480, 255
  %5488 = call i32 @llvm.ctpop.i32(i32 %5487)
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = xor i8 %5490, 1
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5491, i8* %5492, align 1
  %5493 = xor i32 %5479, %5477
  %5494 = xor i32 %5493, %5480
  %5495 = lshr i32 %5494, 4
  %5496 = trunc i32 %5495 to i8
  %5497 = and i8 %5496, 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5497, i8* %5498, align 1
  %5499 = icmp eq i32 %5480, 0
  %5500 = zext i1 %5499 to i8
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5500, i8* %5501, align 1
  %5502 = lshr i32 %5480, 31
  %5503 = trunc i32 %5502 to i8
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5503, i8* %5504, align 1
  %5505 = lshr i32 %5477, 31
  %5506 = lshr i32 %5479, 31
  %5507 = xor i32 %5502, %5505
  %5508 = xor i32 %5502, %5506
  %5509 = add i32 %5507, %5508
  %5510 = icmp eq i32 %5509, 2
  %5511 = zext i1 %5510 to i8
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5511, i8* %5512, align 1
  store %struct.Memory* %loadMem_434c08, %struct.Memory** %MEMORY
  %loadMem_434c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 33
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5515 to i64*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 1
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5518 to i32*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 15
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5521 to i64*
  %5522 = load i64, i64* %RBP.i15
  %5523 = sub i64 %5522, 8
  %5524 = load i32, i32* %EAX.i
  %5525 = zext i32 %5524 to i64
  %5526 = load i64, i64* %PC.i14
  %5527 = add i64 %5526, 3
  store i64 %5527, i64* %PC.i14
  %5528 = inttoptr i64 %5523 to i32*
  store i32 %5524, i32* %5528
  store %struct.Memory* %loadMem_434c0b, %struct.Memory** %MEMORY
  br label %block_.L_434c0e

block_.L_434c0e:                                  ; preds = %block_434c01, %block_.L_434bec
  %loadMem_434c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 33
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5531 to i64*
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 1
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %5534 to i64*
  %5535 = load i64, i64* %PC.i12
  %5536 = add i64 %5535, 8
  store i64 %5536, i64* %PC.i12
  %5537 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %5537, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_434c0e, %struct.Memory** %MEMORY
  %loadMem_434c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5539 = getelementptr inbounds %struct.GPR, %struct.GPR* %5538, i32 0, i32 33
  %5540 = getelementptr inbounds %struct.Reg, %struct.Reg* %5539, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5540 to i64*
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 1
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %5543 to i64*
  %5544 = load i64, i64* %RAX.i11
  %5545 = add i64 %5544, 3236
  %5546 = load i64, i64* %PC.i10
  %5547 = add i64 %5546, 7
  store i64 %5547, i64* %PC.i10
  %5548 = inttoptr i64 %5545 to i32*
  %5549 = load i32, i32* %5548
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5550, align 1
  %5551 = and i32 %5549, 255
  %5552 = call i32 @llvm.ctpop.i32(i32 %5551)
  %5553 = trunc i32 %5552 to i8
  %5554 = and i8 %5553, 1
  %5555 = xor i8 %5554, 1
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5555, i8* %5556, align 1
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5557, align 1
  %5558 = icmp eq i32 %5549, 0
  %5559 = zext i1 %5558 to i8
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5559, i8* %5560, align 1
  %5561 = lshr i32 %5549, 31
  %5562 = trunc i32 %5561 to i8
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5562, i8* %5563, align 1
  %5564 = lshr i32 %5549, 31
  %5565 = xor i32 %5561, %5564
  %5566 = add i32 %5565, %5564
  %5567 = icmp eq i32 %5566, 2
  %5568 = zext i1 %5567 to i8
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5568, i8* %5569, align 1
  store %struct.Memory* %loadMem_434c16, %struct.Memory** %MEMORY
  %loadMem_434c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5571 = getelementptr inbounds %struct.GPR, %struct.GPR* %5570, i32 0, i32 33
  %5572 = getelementptr inbounds %struct.Reg, %struct.Reg* %5571, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5572 to i64*
  %5573 = load i64, i64* %PC.i9
  %5574 = add i64 %5573, 13
  %5575 = load i64, i64* %PC.i9
  %5576 = add i64 %5575, 6
  %5577 = load i64, i64* %PC.i9
  %5578 = add i64 %5577, 6
  store i64 %5578, i64* %PC.i9
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5580 = load i8, i8* %5579, align 1
  store i8 %5580, i8* %BRANCH_TAKEN, align 1
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5582 = icmp ne i8 %5580, 0
  %5583 = select i1 %5582, i64 %5574, i64 %5576
  store i64 %5583, i64* %5581, align 8
  store %struct.Memory* %loadMem_434c1d, %struct.Memory** %MEMORY
  %loadBr_434c1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_434c1d = icmp eq i8 %loadBr_434c1d, 1
  br i1 %cmpBr_434c1d, label %block_.L_434c2a, label %block_434c23

block_434c23:                                     ; preds = %block_.L_434c0e
  %loadMem_434c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 33
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5586 to i64*
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 1
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %5590 = bitcast %union.anon* %5589 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5590, i32 0, i32 0
  %5591 = load i64, i64* %PC.i8
  %5592 = add i64 %5591, 2
  store i64 %5592, i64* %PC.i8
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_434c23, %struct.Memory** %MEMORY
  %loadMem1_434c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5594 = getelementptr inbounds %struct.GPR, %struct.GPR* %5593, i32 0, i32 33
  %5595 = getelementptr inbounds %struct.Reg, %struct.Reg* %5594, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5595 to i64*
  %5596 = load i64, i64* %PC.i7
  %5597 = add i64 %5596, 291963
  %5598 = load i64, i64* %PC.i7
  %5599 = add i64 %5598, 5
  %5600 = load i64, i64* %PC.i7
  %5601 = add i64 %5600, 5
  store i64 %5601, i64* %PC.i7
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5603 = load i64, i64* %5602, align 8
  %5604 = add i64 %5603, -8
  %5605 = inttoptr i64 %5604 to i64*
  store i64 %5599, i64* %5605
  store i64 %5604, i64* %5602, align 8
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5597, i64* %5606, align 8
  store %struct.Memory* %loadMem1_434c25, %struct.Memory** %MEMORY
  %loadMem2_434c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_434c25 = load i64, i64* %3
  %call2_434c25 = call %struct.Memory* @sub_47c0a0.rc_alloc(%struct.State* %0, i64 %loadPC_434c25, %struct.Memory* %loadMem2_434c25)
  store %struct.Memory* %call2_434c25, %struct.Memory** %MEMORY
  br label %block_.L_434c2a

block_.L_434c2a:                                  ; preds = %block_434c23, %block_.L_434c0e
  %loadMem_434c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5608 = getelementptr inbounds %struct.GPR, %struct.GPR* %5607, i32 0, i32 33
  %5609 = getelementptr inbounds %struct.Reg, %struct.Reg* %5608, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5609 to i64*
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 1
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5612 to i64*
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 15
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5615 to i64*
  %5616 = load i64, i64* %RBP.i6
  %5617 = sub i64 %5616, 8
  %5618 = load i64, i64* %PC.i5
  %5619 = add i64 %5618, 3
  store i64 %5619, i64* %PC.i5
  %5620 = inttoptr i64 %5617 to i32*
  %5621 = load i32, i32* %5620
  %5622 = zext i32 %5621 to i64
  store i64 %5622, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_434c2a, %struct.Memory** %MEMORY
  %loadMem_434c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 33
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5625 to i64*
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 13
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5628 to i64*
  %5629 = load i64, i64* %RSP.i
  %5630 = load i64, i64* %PC.i4
  %5631 = add i64 %5630, 4
  store i64 %5631, i64* %PC.i4
  %5632 = add i64 48, %5629
  store i64 %5632, i64* %RSP.i, align 8
  %5633 = icmp ult i64 %5632, %5629
  %5634 = icmp ult i64 %5632, 48
  %5635 = or i1 %5633, %5634
  %5636 = zext i1 %5635 to i8
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5636, i8* %5637, align 1
  %5638 = trunc i64 %5632 to i32
  %5639 = and i32 %5638, 255
  %5640 = call i32 @llvm.ctpop.i32(i32 %5639)
  %5641 = trunc i32 %5640 to i8
  %5642 = and i8 %5641, 1
  %5643 = xor i8 %5642, 1
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5643, i8* %5644, align 1
  %5645 = xor i64 48, %5629
  %5646 = xor i64 %5645, %5632
  %5647 = lshr i64 %5646, 4
  %5648 = trunc i64 %5647 to i8
  %5649 = and i8 %5648, 1
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5649, i8* %5650, align 1
  %5651 = icmp eq i64 %5632, 0
  %5652 = zext i1 %5651 to i8
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5652, i8* %5653, align 1
  %5654 = lshr i64 %5632, 63
  %5655 = trunc i64 %5654 to i8
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5655, i8* %5656, align 1
  %5657 = lshr i64 %5629, 63
  %5658 = xor i64 %5654, %5657
  %5659 = add i64 %5658, %5654
  %5660 = icmp eq i64 %5659, 2
  %5661 = zext i1 %5660 to i8
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5661, i8* %5662, align 1
  store %struct.Memory* %loadMem_434c2d, %struct.Memory** %MEMORY
  %loadMem_434c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 33
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5665 to i64*
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 15
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5668 to i64*
  %5669 = load i64, i64* %PC.i2
  %5670 = add i64 %5669, 1
  store i64 %5670, i64* %PC.i2
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5672 = load i64, i64* %5671, align 8
  %5673 = add i64 %5672, 8
  %5674 = inttoptr i64 %5672 to i64*
  %5675 = load i64, i64* %5674
  store i64 %5675, i64* %RBP.i3, align 8
  store i64 %5673, i64* %5671, align 8
  store %struct.Memory* %loadMem_434c31, %struct.Memory** %MEMORY
  %loadMem_434c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 33
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5678 to i64*
  %5679 = load i64, i64* %PC.i1
  %5680 = add i64 %5679, 1
  store i64 %5680, i64* %PC.i1
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5683 = load i64, i64* %5682, align 8
  %5684 = inttoptr i64 %5683 to i64*
  %5685 = load i64, i64* %5684
  store i64 %5685, i64* %5681, align 8
  %5686 = add i64 %5683, 8
  store i64 %5686, i64* %5682, align 8
  store %struct.Memory* %loadMem_434c32, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_434c32
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

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__rax__0x722ca0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x722ca0_type* @G_0x722ca0 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = trunc i64 %9 to i32
  %14 = and i32 %13, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = icmp eq i64 %9, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i64 %9, 63
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %9, 63
  %28 = xor i64 %24, %27
  %29 = add i64 %28, %27
  %30 = icmp eq i64 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4346bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c164e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c164e_type* @G__0x4c164e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1148
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

define %struct.Memory* @routine_jne_.L_434715(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_shll__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x6f6f88(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  store i64 %9, i64* bitcast (%G_0x6f6f88_type* @G_0x6f6f88 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_434710(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_434715(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.init_orig_buffers(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x504__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1284
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

define %struct.Memory* @routine_jne_.L_43475c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x508__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1288
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

define %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 60
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

define %struct.Memory* @routine_je_.L_4347cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x6d4740___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d4740_type* @G__0x6d4740 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xf___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_mem3Dint(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x6f9728___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6f9728_type* @G__0x6f9728 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x70fcf8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x70fcf8_type* @G__0x70fcf8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xf___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 15, i64* %RCX, align 8
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

define %struct.Memory* @routine_callq_.get_mem4Dint(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1236
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

define %struct.Memory* @routine_jne_.L_4347f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1316
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

define %struct.Memory* @routine_jle_.L_43488d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x6cea08___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6cea08_type* @G__0x6cea08 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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

define %struct.Memory* @routine_movl_0x3c__rcx____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_callq_.get_mem3Dshort(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x722cb8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x722cb8_type* @G__0x722cb8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__r10____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x3c__r10____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_callq_.get_mem2Dshort(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x726410___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x726410_type* @G__0x726410 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 8, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 8
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
  %26 = xor i64 8, %9
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

define %struct.Memory* @routine_movl_0x34__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 8, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 8
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
  %26 = xor i64 8, %9
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

define %struct.Memory* @routine_shll__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
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

define %struct.Memory* @routine_callq_.get_mem2Dint(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__0x9a0__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_434ada(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb918___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %11, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x8___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0xb58__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2904
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6cb918___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_434934(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x4c166d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c166d_type* @G__0x4c166d to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl_0xb58__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2904
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

define %struct.Memory* @routine_jge_.L_4349b1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq_0x6cb918___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_0x3c__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rcx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_callq_.get_mem3Dpel(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_43493b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x6cb918___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb918_type* @G_0x6cb918 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x20___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_mem2Dpel(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 8, %9
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb58__rdi____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 2904
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rdi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x18___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 24, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 24
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
  %25 = xor i64 24, %9
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

define %struct.Memory* @routine_movq_0x6cb8f8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %11, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb58__r8____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 2904
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__r8____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__r8____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x10___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x28___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 40, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 40
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
  %25 = xor i64 40, %9
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

define %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__r8____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_mem2D(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x30___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 48, %9
  store i64 %12, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_0x34__r8____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__r8____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0xb5c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2908
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

define %struct.Memory* @routine_je_.L_434b62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x723650___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x723650_type* @G__0x723650 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x70d1a0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x70d1a0_type* @G__0x70d1a0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
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

define %struct.Memory* @routine_movl_0x34__rcx____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_jne_.L_434bec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x722c90___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x722c90_type* @G__0x722c90 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72700
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

define %struct.Memory* @routine_je_.L_434be7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x6f96f0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6f96f0_type* @G__0x6f96f0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x40__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x38__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_434bec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3292
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

define %struct.Memory* @routine_je_.L_434c0e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.get_mem_FME(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__0xca4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3236
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

define %struct.Memory* @routine_je_.L_434c2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_callq_.rc_alloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
