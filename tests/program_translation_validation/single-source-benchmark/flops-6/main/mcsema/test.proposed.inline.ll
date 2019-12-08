; ModuleID = 'mcsema/test.proposed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400370__init_type = type <{ [23 x i8] }>
%seg_400390__text_type = type <{ [354 x i8] }>
%seg_4004f4__fini_type = type <{ [9 x i8] }>
%seg_400500__rodata_type = type <{ [4 x i8] }>
%seg_400504__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400538__eh_frame_type = type <{ [208 x i8] }>
%seg_601018__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [8 x i8] }>
%seg_400504__fini_type = type <{ [9 x i8] }>
%seg_400510__rodata_type = type <{ [4 x i8] }>
%seg_400514__eh_frame_hdr_type = type <{ [52 x i8] }>
%seg_400548__eh_frame_type = type <{ [208 x i8] }>
%G_0x27c__rip__type = type <{ [8 x i8] }>
%G_0x48f__rip__type = type <{ [8 x i8] }>
%G_0x601038_type = type <{ [8 x i8] }>
%G_0x601040_type = type <{ [8 x i8] }>
%G_0x601048_type = type <{ [8 x i8] }>
%G_0x601050_type = type <{ [8 x i8] }>
%G_0x601058_type = type <{ [8 x i8] }>
%G_0x601060_type = type <{ [8 x i8] }>
%G_0x601070_type = type <{ [8 x i8] }>
%G_0x601078_type = type <{ [8 x i8] }>
%G_0x601080_type = type <{ [8 x i8] }>
%G_0x601088_type = type <{ [8 x i8] }>
%G_0x601090_type = type <{ [8 x i8] }>
%G_0x601098_type = type <{ [8 x i8] }>
%G_0x601120_type = type <{ [16 x i8] }>
%G_0x601128_type = type <{ [16 x i8] }>
%G_0x601258_type = type <{ [16 x i8] }>
%G_0x601260_type = type <{ [16 x i8] }>
%G_0x601278_type = type <{ [16 x i8] }>
%G_0x601280_type = type <{ [16 x i8] }>
%G_0x601288_type = type <{ [16 x i8] }>
%G_0x601290_type = type <{ [16 x i8] }>
%G_0x601298_type = type <{ [16 x i8] }>
%G_0x6012a0_type = type <{ [16 x i8] }>
%G_0x6012d0_type = type <{ [16 x i8] }>
%G__0x400a08_type = type <{ [8 x i8] }>
%G__0x400a40_type = type <{ [8 x i8] }>
%G__0x400a42_type = type <{ [8 x i8] }>
%G__0x400a72_type = type <{ [8 x i8] }>
%G__0x400a96_type = type <{ [8 x i8] }>
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
@seg_400370__init = internal constant %seg_400370__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05}\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400390__text = internal constant %seg_400390__text_type <{ [354 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\F0\04@\00H\C7\C1\80\04@\00H\C7\C7x\04@\00\FF\156\0C \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8(\10`\00H=(\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF(\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE(\10`\00UH\81\EE(\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF(\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\E1\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\CF\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89\90U\C3f\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\BF\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4004f4__fini = internal constant %seg_4004f4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400500__rodata = internal constant %seg_400500__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400504__eh_frame_hdr = internal constant %seg_400504__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00\8C\FE\FF\FFL\00\00\00\BC\FE\FF\FFx\00\00\00t\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400538__eh_frame = internal constant %seg_400538__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\008\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00<\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\E0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601018__data = internal global %seg_601018__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@seg_400504__fini = internal constant %seg_400504__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400510__rodata = internal constant %seg_400510__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400514__eh_frame_hdr = internal constant %seg_400514__eh_frame_hdr_type <{ [52 x i8] c"\01\1B\03;0\00\00\00\05\00\00\00|\FE\FF\FFL\00\00\00\AC\FE\FF\FFx\00\00\00d\FF\FF\FF\8C\00\00\00|\FF\FF\FF\A4\00\00\00\EC\FF\FF\FF\EC\00\00\00" }>
@seg_400548__eh_frame = internal constant %seg_400548__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x27c__rip_ = global %G_0x27c__rip__type zeroinitializer
@G_0x48f__rip_ = global %G_0x48f__rip__type zeroinitializer
@G_0x601038 = global %G_0x601038_type zeroinitializer
@G_0x601040 = global %G_0x601040_type zeroinitializer
@G_0x601048 = global %G_0x601048_type zeroinitializer
@G_0x601050 = global %G_0x601050_type zeroinitializer
@G_0x601058 = global %G_0x601058_type zeroinitializer
@G_0x601060 = global %G_0x601060_type zeroinitializer
@G_0x601070 = global %G_0x601070_type zeroinitializer
@G_0x601078 = global %G_0x601078_type zeroinitializer
@G_0x601080 = global %G_0x601080_type zeroinitializer
@G_0x601088 = global %G_0x601088_type zeroinitializer
@G_0x601090 = global %G_0x601090_type zeroinitializer
@G_0x601098 = global %G_0x601098_type zeroinitializer
@G_0x601120 = global %G_0x601120_type zeroinitializer
@G_0x601128 = global %G_0x601128_type zeroinitializer
@G_0x601258 = global %G_0x601258_type zeroinitializer
@G_0x601260 = global %G_0x601260_type zeroinitializer
@G_0x601278 = global %G_0x601278_type zeroinitializer
@G_0x601280 = global %G_0x601280_type zeroinitializer
@G_0x601288 = global %G_0x601288_type zeroinitializer
@G_0x601290 = global %G_0x601290_type zeroinitializer
@G_0x601298 = global %G_0x601298_type zeroinitializer
@G_0x6012a0 = global %G_0x6012a0_type zeroinitializer
@G_0x6012d0 = global %G_0x6012d0_type zeroinitializer
@G__0x400a08 = global %G__0x400a08_type zeroinitializer
@G__0x400a40 = global %G__0x400a40_type zeroinitializer
@G__0x400a42 = global %G__0x400a42_type zeroinitializer
@G__0x400a72 = global %G__0x400a72_type zeroinitializer
@G__0x400a96 = global %G__0x400a96_type zeroinitializer

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

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4004f0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4004f0, %struct.Memory** %MEMORY
  %loadMem_4004f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i11 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i11
  %27 = load i64, i64* %PC.i10
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i10
  store i64 %26, i64* %RBP.i12, align 8
  store %struct.Memory* %loadMem_4004f1, %struct.Memory** %MEMORY
  %loadMem_4004f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i343 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i343
  %36 = load i64, i64* %PC.i342
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i342
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i343, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_4004f4, %struct.Memory** %MEMORY
  %loadMem_4004fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i353 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i352
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i352
  store i64 ptrtoint (%G__0x400a40_type* @G__0x400a40 to i64), i64* %RDI.i353, align 8
  store %struct.Memory* %loadMem_4004fb, %struct.Memory** %MEMORY
  %loadMem_400505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i397
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i396
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i396
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400505, %struct.Memory** %MEMORY
  %loadMem_40050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.2*
  %AL.i407 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %92, i32 0, i32 0
  %93 = load i64, i64* %PC.i406
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC.i406
  store i8 0, i8* %AL.i407, align 1
  store %struct.Memory* %loadMem_40050c, %struct.Memory** %MEMORY
  %loadMem1_40050e = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i408
  %99 = add i64 %98, -286
  %100 = load i64, i64* %PC.i408
  %101 = add i64 %100, 5
  %102 = load i64, i64* %PC.i408
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC.i408
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %101, i64* %107
  store i64 %106, i64* %104, align 8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %99, i64* %108, align 8
  store %struct.Memory* %loadMem1_40050e, %struct.Memory** %MEMORY
  %loadMem2_40050e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40050e = load i64, i64* %3
  %109 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_40050e)
  store %struct.Memory* %109, %struct.Memory** %MEMORY
  %loadMem_400513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RDI.i405 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %PC.i404
  %117 = add i64 %116, 10
  store i64 %117, i64* %PC.i404
  store i64 ptrtoint (%G__0x400a08_type* @G__0x400a08 to i64), i64* %RDI.i405, align 8
  store %struct.Memory* %loadMem_400513, %struct.Memory** %MEMORY
  %loadMem_40051d = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %EAX.i402 = bitcast %union.anon* %123 to i32*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %RBP.i403
  %128 = sub i64 %127, 92
  %129 = load i32, i32* %EAX.i402
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %PC.i401
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC.i401
  %133 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %133
  store %struct.Memory* %loadMem_40051d, %struct.Memory** %MEMORY
  %loadMem_400520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %140 = bitcast %union.anon* %139 to %struct.anon.2*
  %AL.i400 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %140, i32 0, i32 0
  %141 = load i64, i64* %PC.i399
  %142 = add i64 %141, 2
  store i64 %142, i64* %PC.i399
  store i8 0, i8* %AL.i400, align 1
  store %struct.Memory* %loadMem_400520, %struct.Memory** %MEMORY
  %loadMem1_400522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i398
  %147 = add i64 %146, -306
  %148 = load i64, i64* %PC.i398
  %149 = add i64 %148, 5
  %150 = load i64, i64* %PC.i398
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC.i398
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %149, i64* %155
  store i64 %154, i64* %152, align 8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %147, i64* %156, align 8
  store %struct.Memory* %loadMem1_400522, %struct.Memory** %MEMORY
  %loadMem2_400522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400522 = load i64, i64* %3
  %157 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400522)
  store %struct.Memory* %157, %struct.Memory** %MEMORY
  %loadMem_400527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RDI.i395 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %PC.i394
  %165 = add i64 %164, 10
  store i64 %165, i64* %PC.i394
  store i64 ptrtoint (%G__0x400a42_type* @G__0x400a42 to i64), i64* %RDI.i395, align 8
  store %struct.Memory* %loadMem_400527, %struct.Memory** %MEMORY
  %loadMem_400531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %169, i64 0, i64 0
  %YMM0.i393 = bitcast %union.VectorReg* %170 to %"class.std::bitset"*
  %171 = bitcast %"class.std::bitset"* %YMM0.i393 to i8*
  %172 = load i64, i64* %PC.i392
  %173 = load i64, i64* %PC.i392
  %174 = add i64 %173, 8
  store i64 %174, i64* %PC.i392
  %175 = load double, double* bitcast (%G_0x48f__rip__type* @G_0x48f__rip_ to double*)
  %176 = bitcast i8* %171 to double*
  store double %175, double* %176, align 1
  %177 = getelementptr inbounds i8, i8* %171, i64 8
  %178 = bitcast i8* %177 to double*
  store double 0.000000e+00, double* %178, align 1
  store %struct.Memory* %loadMem_400531, %struct.Memory** %MEMORY
  %loadMem_400539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %182, i64 0, i64 1
  %YMM1.i391 = bitcast %union.VectorReg* %183 to %"class.std::bitset"*
  %184 = bitcast %"class.std::bitset"* %YMM1.i391 to i8*
  %185 = load i64, i64* %PC.i390
  %186 = load i64, i64* %PC.i390
  %187 = add i64 %186, 8
  store i64 %187, i64* %PC.i390
  %188 = load double, double* bitcast (%G_0x48f__rip__type* @G_0x48f__rip_ to double*)
  %189 = bitcast i8* %184 to double*
  store double %188, double* %189, align 1
  %190 = getelementptr inbounds i8, i8* %184, i64 8
  %191 = bitcast i8* %190 to double*
  store double 0.000000e+00, double* %191, align 1
  store %struct.Memory* %loadMem_400539, %struct.Memory** %MEMORY
  %loadMem_400541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %195, i64 0, i64 2
  %YMM2.i389 = bitcast %union.VectorReg* %196 to %"class.std::bitset"*
  %197 = bitcast %"class.std::bitset"* %YMM2.i389 to i8*
  %198 = load i64, i64* %PC.i388
  %199 = load i64, i64* %PC.i388
  %200 = add i64 %199, 8
  store i64 %200, i64* %PC.i388
  %201 = load double, double* bitcast (%G_0x48f__rip__type* @G_0x48f__rip_ to double*)
  %202 = bitcast i8* %197 to double*
  store double %201, double* %202, align 1
  %203 = getelementptr inbounds i8, i8* %197, i64 8
  %204 = bitcast i8* %203 to double*
  store double 0.000000e+00, double* %204, align 1
  store %struct.Memory* %loadMem_400541, %struct.Memory** %MEMORY
  %loadMem_400549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %209 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %208, i64 0, i64 3
  %YMM3.i387 = bitcast %union.VectorReg* %209 to %"class.std::bitset"*
  %210 = bitcast %"class.std::bitset"* %YMM3.i387 to i8*
  %211 = load i64, i64* %PC.i386
  %212 = load i64, i64* %PC.i386
  %213 = add i64 %212, 8
  store i64 %213, i64* %PC.i386
  %214 = load double, double* bitcast (%G_0x48f__rip__type* @G_0x48f__rip_ to double*)
  %215 = bitcast i8* %210 to double*
  store double %214, double* %215, align 1
  %216 = getelementptr inbounds i8, i8* %210, i64 8
  %217 = bitcast i8* %216 to double*
  store double 0.000000e+00, double* %217, align 1
  store %struct.Memory* %loadMem_400549, %struct.Memory** %MEMORY
  %loadMem_400551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 33
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %221, i64 0, i64 4
  %YMM4.i385 = bitcast %union.VectorReg* %222 to %"class.std::bitset"*
  %223 = bitcast %"class.std::bitset"* %YMM4.i385 to i8*
  %224 = load i64, i64* %PC.i384
  %225 = load i64, i64* %PC.i384
  %226 = add i64 %225, 8
  store i64 %226, i64* %PC.i384
  %227 = load double, double* bitcast (%G_0x48f__rip__type* @G_0x48f__rip_ to double*)
  %228 = bitcast i8* %223 to double*
  store double %227, double* %228, align 1
  %229 = getelementptr inbounds i8, i8* %223, i64 8
  %230 = bitcast i8* %229 to double*
  store double 0.000000e+00, double* %230, align 1
  store %struct.Memory* %loadMem_400551, %struct.Memory** %MEMORY
  %loadMem_400559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %234, i64 0, i64 5
  %YMM5.i383 = bitcast %union.VectorReg* %235 to %"class.std::bitset"*
  %236 = bitcast %"class.std::bitset"* %YMM5.i383 to i8*
  %237 = load i64, i64* %PC.i382
  %238 = load i64, i64* %PC.i382
  %239 = add i64 %238, 8
  store i64 %239, i64* %PC.i382
  %240 = load double, double* bitcast (%G_0x48f__rip__type* @G_0x48f__rip_ to double*)
  %241 = bitcast i8* %236 to double*
  store double %240, double* %241, align 1
  %242 = getelementptr inbounds i8, i8* %236, i64 8
  %243 = bitcast i8* %242 to double*
  store double 0.000000e+00, double* %243, align 1
  store %struct.Memory* %loadMem_400559, %struct.Memory** %MEMORY
  %loadMem_400561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RBP.i381
  %251 = sub i64 %250, 56
  %252 = load i64, i64* %PC.i380
  %253 = add i64 %252, 8
  store i64 %253, i64* %PC.i380
  %254 = inttoptr i64 %251 to i64*
  store i64 15625, i64* %254
  store %struct.Memory* %loadMem_400561, %struct.Memory** %MEMORY
  %loadMem_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 4
  %XMM4.i379 = bitcast %union.VectorReg* %259 to %union.vec128_t*
  %260 = bitcast %union.vec128_t* %XMM4.i379 to i8*
  %261 = load i64, i64* %PC.i378
  %262 = add i64 %261, 9
  store i64 %262, i64* %PC.i378
  %263 = bitcast i8* %260 to double*
  %264 = load double, double* %263, align 1
  store double %264, double* bitcast (%G_0x6012d0_type* @G_0x6012d0 to double*)
  store %struct.Memory* %loadMem_400569, %struct.Memory** %MEMORY
  %loadMem_400572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RBP.i377
  %272 = sub i64 %271, 64
  %273 = load i64, i64* %PC.i376
  %274 = add i64 %273, 8
  store i64 %274, i64* %PC.i376
  %275 = inttoptr i64 %272 to i64*
  store i64 512000000, i64* %275
  store %struct.Memory* %loadMem_400572, %struct.Memory** %MEMORY
  %loadMem_40057a = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %280 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %279, i64 0, i64 5
  %XMM5.i375 = bitcast %union.VectorReg* %280 to %union.vec128_t*
  %281 = bitcast %union.vec128_t* %XMM5.i375 to i8*
  %282 = load i64, i64* %PC.i374
  %283 = add i64 %282, 9
  store i64 %283, i64* %PC.i374
  %284 = bitcast i8* %281 to double*
  %285 = load double, double* %284, align 1
  store double %285, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  store %struct.Memory* %loadMem_40057a, %struct.Memory** %MEMORY
  %loadMem_400583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %289, i64 0, i64 4
  %XMM4.i373 = bitcast %union.VectorReg* %290 to %union.vec128_t*
  %291 = bitcast %union.vec128_t* %XMM4.i373 to i8*
  %292 = load i64, i64* %PC.i372
  %293 = add i64 %292, 9
  store i64 %293, i64* %PC.i372
  %294 = bitcast i8* %291 to double*
  %295 = load double, double* %294, align 1
  store double %295, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  store %struct.Memory* %loadMem_400583, %struct.Memory** %MEMORY
  %loadMem_40058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 3
  %XMM3.i371 = bitcast %union.VectorReg* %300 to %union.vec128_t*
  %301 = bitcast %union.vec128_t* %XMM3.i371 to i8*
  %302 = load i64, i64* %PC.i370
  %303 = add i64 %302, 9
  store i64 %303, i64* %PC.i370
  %304 = bitcast i8* %301 to double*
  %305 = load double, double* %304, align 1
  store double %305, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  store %struct.Memory* %loadMem_40058c, %struct.Memory** %MEMORY
  %loadMem_400595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %309, i64 0, i64 2
  %XMM2.i369 = bitcast %union.VectorReg* %310 to %union.vec128_t*
  %311 = bitcast %union.vec128_t* %XMM2.i369 to i8*
  %312 = load i64, i64* %PC.i368
  %313 = add i64 %312, 9
  store i64 %313, i64* %PC.i368
  %314 = bitcast i8* %311 to double*
  %315 = load double, double* %314, align 1
  store double %315, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  store %struct.Memory* %loadMem_400595, %struct.Memory** %MEMORY
  %loadMem_40059e = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %319, i64 0, i64 1
  %XMM1.i367 = bitcast %union.VectorReg* %320 to %union.vec128_t*
  %321 = bitcast %union.vec128_t* %XMM1.i367 to i8*
  %322 = load i64, i64* %PC.i366
  %323 = add i64 %322, 9
  store i64 %323, i64* %PC.i366
  %324 = bitcast i8* %321 to double*
  %325 = load double, double* %324, align 1
  store double %325, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  store %struct.Memory* %loadMem_40059e, %struct.Memory** %MEMORY
  %loadMem_4005a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %329, i64 0, i64 0
  %XMM0.i365 = bitcast %union.VectorReg* %330 to %union.vec128_t*
  %331 = bitcast %union.vec128_t* %XMM0.i365 to i8*
  %332 = load i64, i64* %PC.i364
  %333 = add i64 %332, 9
  store i64 %333, i64* %PC.i364
  %334 = bitcast i8* %331 to double*
  %335 = load double, double* %334, align 1
  store double %335, double* bitcast (%G_0x601128_type* @G_0x601128 to double*)
  store %struct.Memory* %loadMem_4005a7, %struct.Memory** %MEMORY
  %loadMem_4005b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %339, i64 0, i64 0
  %YMM0.i363 = bitcast %union.VectorReg* %340 to %"class.std::bitset"*
  %341 = bitcast %"class.std::bitset"* %YMM0.i363 to i8*
  %342 = load i64, i64* %PC.i362
  %343 = add i64 %342, 9
  store i64 %343, i64* %PC.i362
  %344 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %345 = bitcast i8* %341 to double*
  store double %344, double* %345, align 1
  %346 = getelementptr inbounds i8, i8* %341, i64 8
  %347 = bitcast i8* %346 to double*
  store double 0.000000e+00, double* %347, align 1
  store %struct.Memory* %loadMem_4005b0, %struct.Memory** %MEMORY
  %loadMem_4005b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %351, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %352 to %union.vec128_t*
  %353 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %354 = load i64, i64* %PC.i360
  %355 = add i64 %354, 9
  store i64 %355, i64* %PC.i360
  %356 = bitcast i8* %353 to double*
  %357 = load double, double* %356, align 1
  store double %357, double* bitcast (%G_0x601280_type* @G_0x601280 to double*)
  store %struct.Memory* %loadMem_4005b9, %struct.Memory** %MEMORY
  %loadMem_4005c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %363 to i32*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i359
  %368 = sub i64 %367, 96
  %369 = load i32, i32* %EAX.i358
  %370 = zext i32 %369 to i64
  %371 = load i64, i64* %PC.i357
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC.i357
  %373 = inttoptr i64 %368 to i32*
  store i32 %369, i32* %373
  store %struct.Memory* %loadMem_4005c2, %struct.Memory** %MEMORY
  %loadMem_4005c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %380 = bitcast %union.anon* %379 to %struct.anon.2*
  %AL.i356 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %380, i32 0, i32 0
  %381 = load i64, i64* %PC.i355
  %382 = add i64 %381, 2
  store i64 %382, i64* %PC.i355
  store i8 0, i8* %AL.i356, align 1
  store %struct.Memory* %loadMem_4005c5, %struct.Memory** %MEMORY
  %loadMem1_4005c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %PC.i354
  %387 = add i64 %386, -471
  %388 = load i64, i64* %PC.i354
  %389 = add i64 %388, 5
  %390 = load i64, i64* %PC.i354
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC.i354
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %389, i64* %395
  store i64 %394, i64* %392, align 8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %387, i64* %396, align 8
  store %struct.Memory* %loadMem1_4005c7, %struct.Memory** %MEMORY
  %loadMem2_4005c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005c7 = load i64, i64* %3
  %397 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4005c7)
  store %struct.Memory* %397, %struct.Memory** %MEMORY
  %loadMem_4005cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 11
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RDI.i351 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i350
  %405 = add i64 %404, 10
  store i64 %405, i64* %PC.i350
  store i64 ptrtoint (%G__0x400a72_type* @G__0x400a72 to i64), i64* %RDI.i351, align 8
  store %struct.Memory* %loadMem_4005cc, %struct.Memory** %MEMORY
  %loadMem_4005d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %EAX.i348 = bitcast %union.anon* %411 to i32*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i349
  %416 = sub i64 %415, 100
  %417 = load i32, i32* %EAX.i348
  %418 = zext i32 %417 to i64
  %419 = load i64, i64* %PC.i347
  %420 = add i64 %419, 3
  store i64 %420, i64* %PC.i347
  %421 = inttoptr i64 %416 to i32*
  store i32 %417, i32* %421
  store %struct.Memory* %loadMem_4005d6, %struct.Memory** %MEMORY
  %loadMem_4005d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %428 = bitcast %union.anon* %427 to %struct.anon.2*
  %AL.i346 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %428, i32 0, i32 0
  %429 = load i64, i64* %PC.i345
  %430 = add i64 %429, 2
  store i64 %430, i64* %PC.i345
  store i8 0, i8* %AL.i346, align 1
  store %struct.Memory* %loadMem_4005d9, %struct.Memory** %MEMORY
  %loadMem1_4005db = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %PC.i344
  %435 = add i64 %434, -491
  %436 = load i64, i64* %PC.i344
  %437 = add i64 %436, 5
  %438 = load i64, i64* %PC.i344
  %439 = add i64 %438, 5
  store i64 %439, i64* %PC.i344
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = add i64 %441, -8
  %443 = inttoptr i64 %442 to i64*
  store i64 %437, i64* %443
  store i64 %442, i64* %440, align 8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %435, i64* %444, align 8
  store %struct.Memory* %loadMem1_4005db, %struct.Memory** %MEMORY
  %loadMem2_4005db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005db = load i64, i64* %3
  %445 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4005db)
  store %struct.Memory* %445, %struct.Memory** %MEMORY
  %loadMem_4005e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %449, i64 0, i64 0
  %YMM0.i340 = bitcast %union.VectorReg* %450 to %"class.std::bitset"*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %451, i64 0, i64 0
  %XMM0.i341 = bitcast %union.VectorReg* %452 to %union.vec128_t*
  %453 = bitcast %"class.std::bitset"* %YMM0.i340 to i8*
  %454 = bitcast %"class.std::bitset"* %YMM0.i340 to i8*
  %455 = bitcast %union.vec128_t* %XMM0.i341 to i8*
  %456 = load i64, i64* %PC.i339
  %457 = add i64 %456, 3
  store i64 %457, i64* %PC.i339
  %458 = bitcast i8* %454 to i64*
  %459 = load i64, i64* %458, align 1
  %460 = getelementptr inbounds i8, i8* %454, i64 8
  %461 = bitcast i8* %460 to i64*
  %462 = load i64, i64* %461, align 1
  %463 = bitcast i8* %455 to i64*
  %464 = load i64, i64* %463, align 1
  %465 = getelementptr inbounds i8, i8* %455, i64 8
  %466 = bitcast i8* %465 to i64*
  %467 = load i64, i64* %466, align 1
  %468 = xor i64 %464, %459
  %469 = xor i64 %467, %462
  %470 = trunc i64 %468 to i32
  %471 = lshr i64 %468, 32
  %472 = trunc i64 %471 to i32
  %473 = bitcast i8* %453 to i32*
  store i32 %470, i32* %473, align 1
  %474 = getelementptr inbounds i8, i8* %453, i64 4
  %475 = bitcast i8* %474 to i32*
  store i32 %472, i32* %475, align 1
  %476 = trunc i64 %469 to i32
  %477 = getelementptr inbounds i8, i8* %453, i64 8
  %478 = bitcast i8* %477 to i32*
  store i32 %476, i32* %478, align 1
  %479 = lshr i64 %469, 32
  %480 = trunc i64 %479 to i32
  %481 = getelementptr inbounds i8, i8* %453, i64 12
  %482 = bitcast i8* %481 to i32*
  store i32 %480, i32* %482, align 1
  store %struct.Memory* %loadMem_4005e0, %struct.Memory** %MEMORY
  %loadMem_4005e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 11
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RDI.i337 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i338
  %493 = sub i64 %492, 56
  %494 = load i64, i64* %PC.i336
  %495 = add i64 %494, 8
  store i64 %495, i64* %PC.i336
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496
  %498 = sext i64 %497 to i128
  %499 = and i128 %498, -18446744073709551616
  %500 = zext i64 %497 to i128
  %501 = or i128 %499, %500
  %502 = mul i128 %501, 10000
  %503 = trunc i128 %502 to i64
  store i64 %503, i64* %RDI.i337, align 8
  %504 = sext i64 %503 to i128
  %505 = icmp ne i128 %504, %502
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %506, i8* %507, align 1
  %508 = trunc i128 %502 to i32
  %509 = and i32 %508, 255
  %510 = call i32 @llvm.ctpop.i32(i32 %509)
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = xor i8 %512, 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %513, i8* %514, align 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %515, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %516, align 1
  %517 = lshr i64 %503, 63
  %518 = trunc i64 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %518, i8* %519, align 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %506, i8* %520, align 1
  store %struct.Memory* %loadMem_4005e3, %struct.Memory** %MEMORY
  %loadMem_4005eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 11
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RDI.i334 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i335
  %531 = sub i64 %530, 80
  %532 = load i64, i64* %RDI.i334
  %533 = load i64, i64* %PC.i333
  %534 = add i64 %533, 4
  store i64 %534, i64* %PC.i333
  %535 = inttoptr i64 %531 to i64*
  store i64 %532, i64* %535
  store %struct.Memory* %loadMem_4005eb, %struct.Memory** %MEMORY
  %loadMem_4005ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %539, i64 0, i64 1
  %YMM1.i332 = bitcast %union.VectorReg* %540 to %"class.std::bitset"*
  %541 = bitcast %"class.std::bitset"* %YMM1.i332 to i8*
  %542 = load i64, i64* %PC.i331
  %543 = add i64 %542, 9
  store i64 %543, i64* %PC.i331
  %544 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %545 = bitcast i8* %541 to double*
  store double %544, double* %545, align 1
  %546 = getelementptr inbounds i8, i8* %541, i64 8
  %547 = bitcast i8* %546 to double*
  store double 0.000000e+00, double* %547, align 1
  store %struct.Memory* %loadMem_4005ef, %struct.Memory** %MEMORY
  %loadMem_4005f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %551, i64 0, i64 2
  %YMM2.i330 = bitcast %union.VectorReg* %552 to %"class.std::bitset"*
  %553 = bitcast %"class.std::bitset"* %YMM2.i330 to i8*
  %554 = load i64, i64* %PC.i329
  %555 = add i64 %554, 9
  store i64 %555, i64* %PC.i329
  %556 = load double, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  %557 = bitcast i8* %553 to double*
  store double %556, double* %557, align 1
  %558 = getelementptr inbounds i8, i8* %553, i64 8
  %559 = bitcast i8* %558 to double*
  store double 0.000000e+00, double* %559, align 1
  store %struct.Memory* %loadMem_4005f8, %struct.Memory** %MEMORY
  %loadMem_400601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 11
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RDI.i327 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 15
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %RBP.i328
  %570 = sub i64 %569, 80
  %571 = load i64, i64* %PC.i326
  %572 = add i64 %571, 4
  store i64 %572, i64* %PC.i326
  %573 = inttoptr i64 %570 to i64*
  %574 = load i64, i64* %573
  store i64 %574, i64* %RDI.i327, align 8
  store %struct.Memory* %loadMem_400601, %struct.Memory** %MEMORY
  %loadMem_400605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 11
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RDI.i324 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %581, i64 0, i64 3
  %YMM3.i325 = bitcast %union.VectorReg* %582 to %"class.std::bitset"*
  %583 = bitcast %"class.std::bitset"* %YMM3.i325 to i8*
  %584 = load i64, i64* %RDI.i324
  %585 = load i64, i64* %PC.i323
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC.i323
  %587 = sitofp i64 %584 to double
  %588 = bitcast i8* %583 to double*
  store double %587, double* %588, align 1
  store %struct.Memory* %loadMem_400605, %struct.Memory** %MEMORY
  %loadMem_40060a = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %592, i64 0, i64 2
  %YMM2.i321 = bitcast %union.VectorReg* %593 to %"class.std::bitset"*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %594, i64 0, i64 3
  %XMM3.i322 = bitcast %union.VectorReg* %595 to %union.vec128_t*
  %596 = bitcast %"class.std::bitset"* %YMM2.i321 to i8*
  %597 = bitcast %"class.std::bitset"* %YMM2.i321 to i8*
  %598 = bitcast %union.vec128_t* %XMM3.i322 to i8*
  %599 = load i64, i64* %PC.i320
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC.i320
  %601 = bitcast i8* %597 to double*
  %602 = load double, double* %601, align 1
  %603 = getelementptr inbounds i8, i8* %597, i64 8
  %604 = bitcast i8* %603 to i64*
  %605 = load i64, i64* %604, align 1
  %606 = bitcast i8* %598 to double*
  %607 = load double, double* %606, align 1
  %608 = fmul double %602, %607
  %609 = bitcast i8* %596 to double*
  store double %608, double* %609, align 1
  %610 = getelementptr inbounds i8, i8* %596, i64 8
  %611 = bitcast i8* %610 to i64*
  store i64 %605, i64* %611, align 1
  store %struct.Memory* %loadMem_40060a, %struct.Memory** %MEMORY
  %loadMem_40060e = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %615, i64 0, i64 1
  %YMM1.i318 = bitcast %union.VectorReg* %616 to %"class.std::bitset"*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %617, i64 0, i64 2
  %XMM2.i319 = bitcast %union.VectorReg* %618 to %union.vec128_t*
  %619 = bitcast %"class.std::bitset"* %YMM1.i318 to i8*
  %620 = bitcast %"class.std::bitset"* %YMM1.i318 to i8*
  %621 = bitcast %union.vec128_t* %XMM2.i319 to i8*
  %622 = load i64, i64* %PC.i317
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC.i317
  %624 = bitcast i8* %620 to double*
  %625 = load double, double* %624, align 1
  %626 = getelementptr inbounds i8, i8* %620, i64 8
  %627 = bitcast i8* %626 to i64*
  %628 = load i64, i64* %627, align 1
  %629 = bitcast i8* %621 to double*
  %630 = load double, double* %629, align 1
  %631 = fdiv double %625, %630
  %632 = bitcast i8* %619 to double*
  store double %631, double* %632, align 1
  %633 = getelementptr inbounds i8, i8* %619, i64 8
  %634 = bitcast i8* %633 to i64*
  store i64 %628, i64* %634, align 1
  store %struct.Memory* %loadMem_40060e, %struct.Memory** %MEMORY
  %loadMem_400612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 15
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %641, i64 0, i64 1
  %XMM1.i316 = bitcast %union.VectorReg* %642 to %union.vec128_t*
  %643 = load i64, i64* %RBP.i315
  %644 = sub i64 %643, 48
  %645 = bitcast %union.vec128_t* %XMM1.i316 to i8*
  %646 = load i64, i64* %PC.i314
  %647 = add i64 %646, 5
  store i64 %647, i64* %PC.i314
  %648 = bitcast i8* %645 to double*
  %649 = load double, double* %648, align 1
  %650 = inttoptr i64 %644 to double*
  store double %649, double* %650
  store %struct.Memory* %loadMem_400612, %struct.Memory** %MEMORY
  %loadMem_400617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 15
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %657, i64 0, i64 0
  %XMM0.i313 = bitcast %union.VectorReg* %658 to %union.vec128_t*
  %659 = load i64, i64* %RBP.i312
  %660 = sub i64 %659, 16
  %661 = bitcast %union.vec128_t* %XMM0.i313 to i8*
  %662 = load i64, i64* %PC.i311
  %663 = add i64 %662, 5
  store i64 %663, i64* %PC.i311
  %664 = bitcast i8* %661 to double*
  %665 = load double, double* %664, align 1
  %666 = inttoptr i64 %660 to double*
  store double %665, double* %666
  store %struct.Memory* %loadMem_400617, %struct.Memory** %MEMORY
  %loadMem_40061c = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 15
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %673, i64 0, i64 0
  %XMM0.i310 = bitcast %union.VectorReg* %674 to %union.vec128_t*
  %675 = load i64, i64* %RBP.i309
  %676 = sub i64 %675, 32
  %677 = bitcast %union.vec128_t* %XMM0.i310 to i8*
  %678 = load i64, i64* %PC.i308
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC.i308
  %680 = bitcast i8* %677 to double*
  %681 = load double, double* %680, align 1
  %682 = inttoptr i64 %676 to double*
  store double %681, double* %682
  store %struct.Memory* %loadMem_40061c, %struct.Memory** %MEMORY
  %loadMem_400621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 15
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %RBP.i307
  %690 = sub i64 %689, 72
  %691 = load i64, i64* %PC.i306
  %692 = add i64 %691, 8
  store i64 %692, i64* %PC.i306
  %693 = inttoptr i64 %690 to i64*
  store i64 1, i64* %693
  store %struct.Memory* %loadMem_400621, %struct.Memory** %MEMORY
  %loadMem_400629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %EAX.i304 = bitcast %union.anon* %699 to i32*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 15
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RBP.i305
  %704 = sub i64 %703, 104
  %705 = load i32, i32* %EAX.i304
  %706 = zext i32 %705 to i64
  %707 = load i64, i64* %PC.i303
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC.i303
  %709 = inttoptr i64 %704 to i32*
  store i32 %705, i32* %709
  store %struct.Memory* %loadMem_400629, %struct.Memory** %MEMORY
  br label %block_.L_40062c

block_.L_40062c:                                  ; preds = %block_400641, %entry
  %loadMem_40062c = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i302
  %720 = sub i64 %719, 72
  %721 = load i64, i64* %PC.i300
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC.i300
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723
  store i64 %724, i64* %RAX.i301, align 8
  store %struct.Memory* %loadMem_40062c, %struct.Memory** %MEMORY
  %loadMem_400630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 5
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %RBP.i299
  %735 = sub i64 %734, 80
  %736 = load i64, i64* %PC.i297
  %737 = add i64 %736, 4
  store i64 %737, i64* %PC.i297
  %738 = inttoptr i64 %735 to i64*
  %739 = load i64, i64* %738
  store i64 %739, i64* %RCX.i298, align 8
  store %struct.Memory* %loadMem_400630, %struct.Memory** %MEMORY
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 5
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RCX.i296
  %747 = load i64, i64* %PC.i295
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC.i295
  %749 = sub i64 %746, 1
  store i64 %749, i64* %RCX.i296, align 8
  %750 = icmp ult i64 %746, 1
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %751, i8* %752, align 1
  %753 = trunc i64 %749 to i32
  %754 = and i32 %753, 255
  %755 = call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %758, i8* %759, align 1
  %760 = xor i64 1, %746
  %761 = xor i64 %760, %749
  %762 = lshr i64 %761, 4
  %763 = trunc i64 %762 to i8
  %764 = and i8 %763, 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %764, i8* %765, align 1
  %766 = icmp eq i64 %749, 0
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %767, i8* %768, align 1
  %769 = lshr i64 %749, 63
  %770 = trunc i64 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %770, i8* %771, align 1
  %772 = lshr i64 %746, 63
  %773 = xor i64 %769, %772
  %774 = add i64 %773, %772
  %775 = icmp eq i64 %774, 2
  %776 = zext i1 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %776, i8* %777, align 1
  store %struct.Memory* %loadMem_400634, %struct.Memory** %MEMORY
  %loadMem_400638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 5
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RAX.i293
  %788 = load i64, i64* %RCX.i294
  %789 = load i64, i64* %PC.i292
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC.i292
  %791 = sub i64 %787, %788
  %792 = icmp ult i64 %787, %788
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %793, i8* %794, align 1
  %795 = trunc i64 %791 to i32
  %796 = and i32 %795, 255
  %797 = call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %800, i8* %801, align 1
  %802 = xor i64 %788, %787
  %803 = xor i64 %802, %791
  %804 = lshr i64 %803, 4
  %805 = trunc i64 %804 to i8
  %806 = and i8 %805, 1
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %806, i8* %807, align 1
  %808 = icmp eq i64 %791, 0
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %809, i8* %810, align 1
  %811 = lshr i64 %791, 63
  %812 = trunc i64 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %812, i8* %813, align 1
  %814 = lshr i64 %787, 63
  %815 = lshr i64 %788, 63
  %816 = xor i64 %815, %814
  %817 = xor i64 %811, %814
  %818 = add i64 %817, %816
  %819 = icmp eq i64 %818, 2
  %820 = zext i1 %819 to i8
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %820, i8* %821, align 1
  store %struct.Memory* %loadMem_400638, %struct.Memory** %MEMORY
  %loadMem_40063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %PC.i291
  %826 = add i64 %825, 300
  %827 = load i64, i64* %PC.i291
  %828 = add i64 %827, 6
  %829 = load i64, i64* %PC.i291
  %830 = add i64 %829, 6
  store i64 %830, i64* %PC.i291
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %832 = load i8, i8* %831, align 1
  %833 = icmp eq i8 %832, 0
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %835 = load i8, i8* %834, align 1
  %836 = icmp ne i8 %835, 0
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %838 = load i8, i8* %837, align 1
  %839 = icmp ne i8 %838, 0
  %840 = xor i1 %836, %839
  %841 = xor i1 %840, true
  %842 = and i1 %833, %841
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %BRANCH_TAKEN, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %845 = select i1 %842, i64 %826, i64 %828
  store i64 %845, i64* %844, align 8
  store %struct.Memory* %loadMem_40063b, %struct.Memory** %MEMORY
  %loadBr_40063b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40063b = icmp eq i8 %loadBr_40063b, 1
  br i1 %cmpBr_40063b, label %block_.L_400767, label %block_400641

block_400641:                                     ; preds = %block_.L_40062c
  %loadMem_400641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 1
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 15
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %854 to i64*
  %855 = load i64, i64* %RBP.i290
  %856 = sub i64 %855, 72
  %857 = load i64, i64* %PC.i288
  %858 = add i64 %857, 4
  store i64 %858, i64* %PC.i288
  %859 = inttoptr i64 %856 to i64*
  %860 = load i64, i64* %859
  store i64 %860, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_400641, %struct.Memory** %MEMORY
  %loadMem_400645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 1
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %867, i64 0, i64 0
  %YMM0.i287 = bitcast %union.VectorReg* %868 to %"class.std::bitset"*
  %869 = bitcast %"class.std::bitset"* %YMM0.i287 to i8*
  %870 = load i64, i64* %RAX.i286
  %871 = load i64, i64* %PC.i285
  %872 = add i64 %871, 5
  store i64 %872, i64* %PC.i285
  %873 = sitofp i64 %870 to double
  %874 = bitcast i8* %869 to double*
  store double %873, double* %874, align 1
  store %struct.Memory* %loadMem_400645, %struct.Memory** %MEMORY
  %loadMem_40064a = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 15
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %881, i64 0, i64 0
  %YMM0.i284 = bitcast %union.VectorReg* %882 to %"class.std::bitset"*
  %883 = bitcast %"class.std::bitset"* %YMM0.i284 to i8*
  %884 = bitcast %"class.std::bitset"* %YMM0.i284 to i8*
  %885 = load i64, i64* %RBP.i283
  %886 = sub i64 %885, 48
  %887 = load i64, i64* %PC.i282
  %888 = add i64 %887, 5
  store i64 %888, i64* %PC.i282
  %889 = bitcast i8* %884 to double*
  %890 = load double, double* %889, align 1
  %891 = getelementptr inbounds i8, i8* %884, i64 8
  %892 = bitcast i8* %891 to i64*
  %893 = load i64, i64* %892, align 1
  %894 = inttoptr i64 %886 to double*
  %895 = load double, double* %894
  %896 = fmul double %890, %895
  %897 = bitcast i8* %883 to double*
  store double %896, double* %897, align 1
  %898 = getelementptr inbounds i8, i8* %883, i64 8
  %899 = bitcast i8* %898 to i64*
  store i64 %893, i64* %899, align 1
  store %struct.Memory* %loadMem_40064a, %struct.Memory** %MEMORY
  %loadMem_40064f = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %906, i64 0, i64 0
  %XMM0.i281 = bitcast %union.VectorReg* %907 to %union.vec128_t*
  %908 = load i64, i64* %RBP.i280
  %909 = sub i64 %908, 24
  %910 = bitcast %union.vec128_t* %XMM0.i281 to i8*
  %911 = load i64, i64* %PC.i279
  %912 = add i64 %911, 5
  store i64 %912, i64* %PC.i279
  %913 = bitcast i8* %910 to double*
  %914 = load double, double* %913, align 1
  %915 = inttoptr i64 %909 to double*
  store double %914, double* %915
  store %struct.Memory* %loadMem_40064f, %struct.Memory** %MEMORY
  %loadMem_400654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 15
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %922, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %923 to %"class.std::bitset"*
  %924 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %925 = load i64, i64* %RBP.i277
  %926 = sub i64 %925, 24
  %927 = load i64, i64* %PC.i276
  %928 = add i64 %927, 5
  store i64 %928, i64* %PC.i276
  %929 = inttoptr i64 %926 to double*
  %930 = load double, double* %929
  %931 = bitcast i8* %924 to double*
  store double %930, double* %931, align 1
  %932 = getelementptr inbounds i8, i8* %924, i64 8
  %933 = bitcast i8* %932 to double*
  store double 0.000000e+00, double* %933, align 1
  store %struct.Memory* %loadMem_400654, %struct.Memory** %MEMORY
  %loadMem_400659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %940, i64 0, i64 0
  %YMM0.i275 = bitcast %union.VectorReg* %941 to %"class.std::bitset"*
  %942 = bitcast %"class.std::bitset"* %YMM0.i275 to i8*
  %943 = bitcast %"class.std::bitset"* %YMM0.i275 to i8*
  %944 = load i64, i64* %RBP.i274
  %945 = sub i64 %944, 24
  %946 = load i64, i64* %PC.i273
  %947 = add i64 %946, 5
  store i64 %947, i64* %PC.i273
  %948 = bitcast i8* %943 to double*
  %949 = load double, double* %948, align 1
  %950 = getelementptr inbounds i8, i8* %943, i64 8
  %951 = bitcast i8* %950 to i64*
  %952 = load i64, i64* %951, align 1
  %953 = inttoptr i64 %945 to double*
  %954 = load double, double* %953
  %955 = fmul double %949, %954
  %956 = bitcast i8* %942 to double*
  store double %955, double* %956, align 1
  %957 = getelementptr inbounds i8, i8* %942, i64 8
  %958 = bitcast i8* %957 to i64*
  store i64 %952, i64* %958, align 1
  store %struct.Memory* %loadMem_400659, %struct.Memory** %MEMORY
  %loadMem_40065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 15
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %965, i64 0, i64 0
  %XMM0.i272 = bitcast %union.VectorReg* %966 to %union.vec128_t*
  %967 = load i64, i64* %RBP.i271
  %968 = sub i64 %967, 40
  %969 = bitcast %union.vec128_t* %XMM0.i272 to i8*
  %970 = load i64, i64* %PC.i270
  %971 = add i64 %970, 5
  store i64 %971, i64* %PC.i270
  %972 = bitcast i8* %969 to double*
  %973 = load double, double* %972, align 1
  %974 = inttoptr i64 %968 to double*
  store double %973, double* %974
  store %struct.Memory* %loadMem_40065e, %struct.Memory** %MEMORY
  %loadMem_400663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 15
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %981, i64 0, i64 0
  %YMM0.i269 = bitcast %union.VectorReg* %982 to %"class.std::bitset"*
  %983 = bitcast %"class.std::bitset"* %YMM0.i269 to i8*
  %984 = load i64, i64* %RBP.i268
  %985 = sub i64 %984, 24
  %986 = load i64, i64* %PC.i267
  %987 = add i64 %986, 5
  store i64 %987, i64* %PC.i267
  %988 = inttoptr i64 %985 to double*
  %989 = load double, double* %988
  %990 = bitcast i8* %983 to double*
  store double %989, double* %990, align 1
  %991 = getelementptr inbounds i8, i8* %983, i64 8
  %992 = bitcast i8* %991 to double*
  store double 0.000000e+00, double* %992, align 1
  store %struct.Memory* %loadMem_400663, %struct.Memory** %MEMORY
  %loadMem_400668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %996, i64 0, i64 1
  %YMM1.i266 = bitcast %union.VectorReg* %997 to %"class.std::bitset"*
  %998 = bitcast %"class.std::bitset"* %YMM1.i266 to i8*
  %999 = load i64, i64* %PC.i265
  %1000 = add i64 %999, 9
  store i64 %1000, i64* %PC.i265
  %1001 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %1002 = bitcast i8* %998 to double*
  store double %1001, double* %1002, align 1
  %1003 = getelementptr inbounds i8, i8* %998, i64 8
  %1004 = bitcast i8* %1003 to double*
  store double 0.000000e+00, double* %1004, align 1
  store %struct.Memory* %loadMem_400668, %struct.Memory** %MEMORY
  %loadMem_400671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 15
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1011, i64 0, i64 1
  %YMM1.i264 = bitcast %union.VectorReg* %1012 to %"class.std::bitset"*
  %1013 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %1014 = bitcast %"class.std::bitset"* %YMM1.i264 to i8*
  %1015 = load i64, i64* %RBP.i263
  %1016 = sub i64 %1015, 40
  %1017 = load i64, i64* %PC.i262
  %1018 = add i64 %1017, 5
  store i64 %1018, i64* %PC.i262
  %1019 = bitcast i8* %1014 to double*
  %1020 = load double, double* %1019, align 1
  %1021 = getelementptr inbounds i8, i8* %1014, i64 8
  %1022 = bitcast i8* %1021 to i64*
  %1023 = load i64, i64* %1022, align 1
  %1024 = inttoptr i64 %1016 to double*
  %1025 = load double, double* %1024
  %1026 = fmul double %1020, %1025
  %1027 = bitcast i8* %1013 to double*
  store double %1026, double* %1027, align 1
  %1028 = getelementptr inbounds i8, i8* %1013, i64 8
  %1029 = bitcast i8* %1028 to i64*
  store i64 %1023, i64* %1029, align 1
  store %struct.Memory* %loadMem_400671, %struct.Memory** %MEMORY
  %loadMem_400676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 33
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1032 to i64*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1033, i64 0, i64 1
  %YMM1.i261 = bitcast %union.VectorReg* %1034 to %"class.std::bitset"*
  %1035 = bitcast %"class.std::bitset"* %YMM1.i261 to i8*
  %1036 = bitcast %"class.std::bitset"* %YMM1.i261 to i8*
  %1037 = load i64, i64* %PC.i260
  %1038 = add i64 %1037, 9
  store i64 %1038, i64* %PC.i260
  %1039 = bitcast i8* %1036 to double*
  %1040 = load double, double* %1039, align 1
  %1041 = getelementptr inbounds i8, i8* %1036, i64 8
  %1042 = bitcast i8* %1041 to i64*
  %1043 = load i64, i64* %1042, align 1
  %1044 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %1045 = fadd double %1040, %1044
  %1046 = bitcast i8* %1035 to double*
  store double %1045, double* %1046, align 1
  %1047 = getelementptr inbounds i8, i8* %1035, i64 8
  %1048 = bitcast i8* %1047 to i64*
  store i64 %1043, i64* %1048, align 1
  store %struct.Memory* %loadMem_400676, %struct.Memory** %MEMORY
  %loadMem_40067f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 15
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1055, i64 0, i64 1
  %YMM1.i259 = bitcast %union.VectorReg* %1056 to %"class.std::bitset"*
  %1057 = bitcast %"class.std::bitset"* %YMM1.i259 to i8*
  %1058 = bitcast %"class.std::bitset"* %YMM1.i259 to i8*
  %1059 = load i64, i64* %RBP.i258
  %1060 = sub i64 %1059, 40
  %1061 = load i64, i64* %PC.i257
  %1062 = add i64 %1061, 5
  store i64 %1062, i64* %PC.i257
  %1063 = bitcast i8* %1058 to double*
  %1064 = load double, double* %1063, align 1
  %1065 = getelementptr inbounds i8, i8* %1058, i64 8
  %1066 = bitcast i8* %1065 to i64*
  %1067 = load i64, i64* %1066, align 1
  %1068 = inttoptr i64 %1060 to double*
  %1069 = load double, double* %1068
  %1070 = fmul double %1064, %1069
  %1071 = bitcast i8* %1057 to double*
  store double %1070, double* %1071, align 1
  %1072 = getelementptr inbounds i8, i8* %1057, i64 8
  %1073 = bitcast i8* %1072 to i64*
  store i64 %1067, i64* %1073, align 1
  store %struct.Memory* %loadMem_40067f, %struct.Memory** %MEMORY
  %loadMem_400684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 33
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1076 to i64*
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1078 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1077, i64 0, i64 1
  %YMM1.i256 = bitcast %union.VectorReg* %1078 to %"class.std::bitset"*
  %1079 = bitcast %"class.std::bitset"* %YMM1.i256 to i8*
  %1080 = bitcast %"class.std::bitset"* %YMM1.i256 to i8*
  %1081 = load i64, i64* %PC.i255
  %1082 = add i64 %1081, 9
  store i64 %1082, i64* %PC.i255
  %1083 = bitcast i8* %1080 to double*
  %1084 = load double, double* %1083, align 1
  %1085 = getelementptr inbounds i8, i8* %1080, i64 8
  %1086 = bitcast i8* %1085 to i64*
  %1087 = load i64, i64* %1086, align 1
  %1088 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %1089 = fadd double %1084, %1088
  %1090 = bitcast i8* %1079 to double*
  store double %1089, double* %1090, align 1
  %1091 = getelementptr inbounds i8, i8* %1079, i64 8
  %1092 = bitcast i8* %1091 to i64*
  store i64 %1087, i64* %1092, align 1
  store %struct.Memory* %loadMem_400684, %struct.Memory** %MEMORY
  %loadMem_40068d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 15
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1100 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1099, i64 0, i64 1
  %YMM1.i254 = bitcast %union.VectorReg* %1100 to %"class.std::bitset"*
  %1101 = bitcast %"class.std::bitset"* %YMM1.i254 to i8*
  %1102 = bitcast %"class.std::bitset"* %YMM1.i254 to i8*
  %1103 = load i64, i64* %RBP.i253
  %1104 = sub i64 %1103, 40
  %1105 = load i64, i64* %PC.i252
  %1106 = add i64 %1105, 5
  store i64 %1106, i64* %PC.i252
  %1107 = bitcast i8* %1102 to double*
  %1108 = load double, double* %1107, align 1
  %1109 = getelementptr inbounds i8, i8* %1102, i64 8
  %1110 = bitcast i8* %1109 to i64*
  %1111 = load i64, i64* %1110, align 1
  %1112 = inttoptr i64 %1104 to double*
  %1113 = load double, double* %1112
  %1114 = fmul double %1108, %1113
  %1115 = bitcast i8* %1101 to double*
  store double %1114, double* %1115, align 1
  %1116 = getelementptr inbounds i8, i8* %1101, i64 8
  %1117 = bitcast i8* %1116 to i64*
  store i64 %1111, i64* %1117, align 1
  store %struct.Memory* %loadMem_40068d, %struct.Memory** %MEMORY
  %loadMem_400692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1121, i64 0, i64 1
  %YMM1.i251 = bitcast %union.VectorReg* %1122 to %"class.std::bitset"*
  %1123 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1124 = bitcast %"class.std::bitset"* %YMM1.i251 to i8*
  %1125 = load i64, i64* %PC.i250
  %1126 = add i64 %1125, 9
  store i64 %1126, i64* %PC.i250
  %1127 = bitcast i8* %1124 to double*
  %1128 = load double, double* %1127, align 1
  %1129 = getelementptr inbounds i8, i8* %1124, i64 8
  %1130 = bitcast i8* %1129 to i64*
  %1131 = load i64, i64* %1130, align 1
  %1132 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %1133 = fadd double %1128, %1132
  %1134 = bitcast i8* %1123 to double*
  store double %1133, double* %1134, align 1
  %1135 = getelementptr inbounds i8, i8* %1123, i64 8
  %1136 = bitcast i8* %1135 to i64*
  store i64 %1131, i64* %1136, align 1
  store %struct.Memory* %loadMem_400692, %struct.Memory** %MEMORY
  %loadMem_40069b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 15
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1143, i64 0, i64 1
  %YMM1.i249 = bitcast %union.VectorReg* %1144 to %"class.std::bitset"*
  %1145 = bitcast %"class.std::bitset"* %YMM1.i249 to i8*
  %1146 = bitcast %"class.std::bitset"* %YMM1.i249 to i8*
  %1147 = load i64, i64* %RBP.i248
  %1148 = sub i64 %1147, 40
  %1149 = load i64, i64* %PC.i247
  %1150 = add i64 %1149, 5
  store i64 %1150, i64* %PC.i247
  %1151 = bitcast i8* %1146 to double*
  %1152 = load double, double* %1151, align 1
  %1153 = getelementptr inbounds i8, i8* %1146, i64 8
  %1154 = bitcast i8* %1153 to i64*
  %1155 = load i64, i64* %1154, align 1
  %1156 = inttoptr i64 %1148 to double*
  %1157 = load double, double* %1156
  %1158 = fmul double %1152, %1157
  %1159 = bitcast i8* %1145 to double*
  store double %1158, double* %1159, align 1
  %1160 = getelementptr inbounds i8, i8* %1145, i64 8
  %1161 = bitcast i8* %1160 to i64*
  store i64 %1155, i64* %1161, align 1
  store %struct.Memory* %loadMem_40069b, %struct.Memory** %MEMORY
  %loadMem_4006a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 33
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1165, i64 0, i64 1
  %YMM1.i246 = bitcast %union.VectorReg* %1166 to %"class.std::bitset"*
  %1167 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %1168 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %1169 = load i64, i64* %PC.i245
  %1170 = add i64 %1169, 9
  store i64 %1170, i64* %PC.i245
  %1171 = bitcast i8* %1168 to double*
  %1172 = load double, double* %1171, align 1
  %1173 = getelementptr inbounds i8, i8* %1168, i64 8
  %1174 = bitcast i8* %1173 to i64*
  %1175 = load i64, i64* %1174, align 1
  %1176 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %1177 = fadd double %1172, %1176
  %1178 = bitcast i8* %1167 to double*
  store double %1177, double* %1178, align 1
  %1179 = getelementptr inbounds i8, i8* %1167, i64 8
  %1180 = bitcast i8* %1179 to i64*
  store i64 %1175, i64* %1180, align 1
  store %struct.Memory* %loadMem_4006a0, %struct.Memory** %MEMORY
  %loadMem_4006a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %1186 to i64*
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1187, i64 0, i64 1
  %YMM1.i244 = bitcast %union.VectorReg* %1188 to %"class.std::bitset"*
  %1189 = bitcast %"class.std::bitset"* %YMM1.i244 to i8*
  %1190 = bitcast %"class.std::bitset"* %YMM1.i244 to i8*
  %1191 = load i64, i64* %RBP.i243
  %1192 = sub i64 %1191, 40
  %1193 = load i64, i64* %PC.i242
  %1194 = add i64 %1193, 5
  store i64 %1194, i64* %PC.i242
  %1195 = bitcast i8* %1190 to double*
  %1196 = load double, double* %1195, align 1
  %1197 = getelementptr inbounds i8, i8* %1190, i64 8
  %1198 = bitcast i8* %1197 to i64*
  %1199 = load i64, i64* %1198, align 1
  %1200 = inttoptr i64 %1192 to double*
  %1201 = load double, double* %1200
  %1202 = fmul double %1196, %1201
  %1203 = bitcast i8* %1189 to double*
  store double %1202, double* %1203, align 1
  %1204 = getelementptr inbounds i8, i8* %1189, i64 8
  %1205 = bitcast i8* %1204 to i64*
  store i64 %1199, i64* %1205, align 1
  store %struct.Memory* %loadMem_4006a9, %struct.Memory** %MEMORY
  %loadMem_4006ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1209, i64 0, i64 1
  %YMM1.i241 = bitcast %union.VectorReg* %1210 to %"class.std::bitset"*
  %1211 = bitcast %"class.std::bitset"* %YMM1.i241 to i8*
  %1212 = bitcast %"class.std::bitset"* %YMM1.i241 to i8*
  %1213 = load i64, i64* %PC.i240
  %1214 = add i64 %1213, 9
  store i64 %1214, i64* %PC.i240
  %1215 = bitcast i8* %1212 to double*
  %1216 = load double, double* %1215, align 1
  %1217 = getelementptr inbounds i8, i8* %1212, i64 8
  %1218 = bitcast i8* %1217 to i64*
  %1219 = load i64, i64* %1218, align 1
  %1220 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %1221 = fadd double %1216, %1220
  %1222 = bitcast i8* %1211 to double*
  store double %1221, double* %1222, align 1
  %1223 = getelementptr inbounds i8, i8* %1211, i64 8
  %1224 = bitcast i8* %1223 to i64*
  store i64 %1219, i64* %1224, align 1
  store %struct.Memory* %loadMem_4006ae, %struct.Memory** %MEMORY
  %loadMem_4006b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 15
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1232 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1231, i64 0, i64 1
  %YMM1.i239 = bitcast %union.VectorReg* %1232 to %"class.std::bitset"*
  %1233 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %1234 = bitcast %"class.std::bitset"* %YMM1.i239 to i8*
  %1235 = load i64, i64* %RBP.i238
  %1236 = sub i64 %1235, 40
  %1237 = load i64, i64* %PC.i237
  %1238 = add i64 %1237, 5
  store i64 %1238, i64* %PC.i237
  %1239 = bitcast i8* %1234 to double*
  %1240 = load double, double* %1239, align 1
  %1241 = getelementptr inbounds i8, i8* %1234, i64 8
  %1242 = bitcast i8* %1241 to i64*
  %1243 = load i64, i64* %1242, align 1
  %1244 = inttoptr i64 %1236 to double*
  %1245 = load double, double* %1244
  %1246 = fmul double %1240, %1245
  %1247 = bitcast i8* %1233 to double*
  store double %1246, double* %1247, align 1
  %1248 = getelementptr inbounds i8, i8* %1233, i64 8
  %1249 = bitcast i8* %1248 to i64*
  store i64 %1243, i64* %1249, align 1
  store %struct.Memory* %loadMem_4006b7, %struct.Memory** %MEMORY
  %loadMem_4006bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1253, i64 0, i64 1
  %YMM1.i236 = bitcast %union.VectorReg* %1254 to %"class.std::bitset"*
  %1255 = bitcast %"class.std::bitset"* %YMM1.i236 to i8*
  %1256 = bitcast %"class.std::bitset"* %YMM1.i236 to i8*
  %1257 = load i64, i64* %PC.i235
  %1258 = add i64 %1257, 9
  store i64 %1258, i64* %PC.i235
  %1259 = bitcast i8* %1256 to double*
  %1260 = load double, double* %1259, align 1
  %1261 = getelementptr inbounds i8, i8* %1256, i64 8
  %1262 = bitcast i8* %1261 to i64*
  %1263 = load i64, i64* %1262, align 1
  %1264 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %1265 = fadd double %1260, %1264
  %1266 = bitcast i8* %1255 to double*
  store double %1265, double* %1266, align 1
  %1267 = getelementptr inbounds i8, i8* %1255, i64 8
  %1268 = bitcast i8* %1267 to i64*
  store i64 %1263, i64* %1268, align 1
  store %struct.Memory* %loadMem_4006bc, %struct.Memory** %MEMORY
  %loadMem_4006c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1272, i64 0, i64 0
  %YMM0.i233 = bitcast %union.VectorReg* %1273 to %"class.std::bitset"*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1274, i64 0, i64 1
  %XMM1.i234 = bitcast %union.VectorReg* %1275 to %union.vec128_t*
  %1276 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %1277 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %1278 = bitcast %union.vec128_t* %XMM1.i234 to i8*
  %1279 = load i64, i64* %PC.i232
  %1280 = add i64 %1279, 4
  store i64 %1280, i64* %PC.i232
  %1281 = bitcast i8* %1277 to double*
  %1282 = load double, double* %1281, align 1
  %1283 = getelementptr inbounds i8, i8* %1277, i64 8
  %1284 = bitcast i8* %1283 to i64*
  %1285 = load i64, i64* %1284, align 1
  %1286 = bitcast i8* %1278 to double*
  %1287 = load double, double* %1286, align 1
  %1288 = fmul double %1282, %1287
  %1289 = bitcast i8* %1276 to double*
  store double %1288, double* %1289, align 1
  %1290 = getelementptr inbounds i8, i8* %1276, i64 8
  %1291 = bitcast i8* %1290 to i64*
  store i64 %1285, i64* %1291, align 1
  store %struct.Memory* %loadMem_4006c5, %struct.Memory** %MEMORY
  %loadMem_4006c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 15
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1298, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %1299 to %union.vec128_t*
  %1300 = load i64, i64* %RBP.i230
  %1301 = sub i64 %1300, 32
  %1302 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %1303 = load i64, i64* %PC.i229
  %1304 = add i64 %1303, 5
  store i64 %1304, i64* %PC.i229
  %1305 = bitcast i8* %1302 to double*
  %1306 = load double, double* %1305, align 1
  %1307 = inttoptr i64 %1301 to double*
  store double %1306, double* %1307
  store %struct.Memory* %loadMem_4006c9, %struct.Memory** %MEMORY
  %loadMem_4006ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 15
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1314, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %1315 to %"class.std::bitset"*
  %1316 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1317 = load i64, i64* %RBP.i227
  %1318 = sub i64 %1317, 16
  %1319 = load i64, i64* %PC.i226
  %1320 = add i64 %1319, 5
  store i64 %1320, i64* %PC.i226
  %1321 = inttoptr i64 %1318 to double*
  %1322 = load double, double* %1321
  %1323 = bitcast i8* %1316 to double*
  store double %1322, double* %1323, align 1
  %1324 = getelementptr inbounds i8, i8* %1316, i64 8
  %1325 = bitcast i8* %1324 to double*
  store double 0.000000e+00, double* %1325, align 1
  store %struct.Memory* %loadMem_4006ce, %struct.Memory** %MEMORY
  %loadMem_4006d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 15
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1332, i64 0, i64 1
  %YMM1.i225 = bitcast %union.VectorReg* %1333 to %"class.std::bitset"*
  %1334 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %1335 = load i64, i64* %RBP.i224
  %1336 = sub i64 %1335, 32
  %1337 = load i64, i64* %PC.i223
  %1338 = add i64 %1337, 5
  store i64 %1338, i64* %PC.i223
  %1339 = inttoptr i64 %1336 to double*
  %1340 = load double, double* %1339
  %1341 = bitcast i8* %1334 to double*
  store double %1340, double* %1341, align 1
  %1342 = getelementptr inbounds i8, i8* %1334, i64 8
  %1343 = bitcast i8* %1342 to double*
  store double 0.000000e+00, double* %1343, align 1
  store %struct.Memory* %loadMem_4006d3, %struct.Memory** %MEMORY
  %loadMem_4006d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 15
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1350, i64 0, i64 2
  %YMM2.i222 = bitcast %union.VectorReg* %1351 to %"class.std::bitset"*
  %1352 = bitcast %"class.std::bitset"* %YMM2.i222 to i8*
  %1353 = load i64, i64* %RBP.i221
  %1354 = sub i64 %1353, 40
  %1355 = load i64, i64* %PC.i220
  %1356 = add i64 %1355, 5
  store i64 %1356, i64* %PC.i220
  %1357 = inttoptr i64 %1354 to double*
  %1358 = load double, double* %1357
  %1359 = bitcast i8* %1352 to double*
  store double %1358, double* %1359, align 1
  %1360 = getelementptr inbounds i8, i8* %1352, i64 8
  %1361 = bitcast i8* %1360 to double*
  store double 0.000000e+00, double* %1361, align 1
  store %struct.Memory* %loadMem_4006d8, %struct.Memory** %MEMORY
  %loadMem_4006dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1368, i64 0, i64 3
  %YMM3.i219 = bitcast %union.VectorReg* %1369 to %"class.std::bitset"*
  %1370 = bitcast %"class.std::bitset"* %YMM3.i219 to i8*
  %1371 = load i64, i64* %RBP.i218
  %1372 = sub i64 %1371, 40
  %1373 = load i64, i64* %PC.i217
  %1374 = add i64 %1373, 5
  store i64 %1374, i64* %PC.i217
  %1375 = inttoptr i64 %1372 to double*
  %1376 = load double, double* %1375
  %1377 = bitcast i8* %1370 to double*
  store double %1376, double* %1377, align 1
  %1378 = getelementptr inbounds i8, i8* %1370, i64 8
  %1379 = bitcast i8* %1378 to double*
  store double 0.000000e+00, double* %1379, align 1
  store %struct.Memory* %loadMem_4006dd, %struct.Memory** %MEMORY
  %loadMem_4006e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 15
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1386, i64 0, i64 4
  %YMM4.i216 = bitcast %union.VectorReg* %1387 to %"class.std::bitset"*
  %1388 = bitcast %"class.std::bitset"* %YMM4.i216 to i8*
  %1389 = load i64, i64* %RBP.i215
  %1390 = sub i64 %1389, 40
  %1391 = load i64, i64* %PC.i214
  %1392 = add i64 %1391, 5
  store i64 %1392, i64* %PC.i214
  %1393 = inttoptr i64 %1390 to double*
  %1394 = load double, double* %1393
  %1395 = bitcast i8* %1388 to double*
  store double %1394, double* %1395, align 1
  %1396 = getelementptr inbounds i8, i8* %1388, i64 8
  %1397 = bitcast i8* %1396 to double*
  store double 0.000000e+00, double* %1397, align 1
  store %struct.Memory* %loadMem_4006e2, %struct.Memory** %MEMORY
  %loadMem_4006e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 15
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1404, i64 0, i64 5
  %YMM5.i213 = bitcast %union.VectorReg* %1405 to %"class.std::bitset"*
  %1406 = bitcast %"class.std::bitset"* %YMM5.i213 to i8*
  %1407 = load i64, i64* %RBP.i212
  %1408 = sub i64 %1407, 40
  %1409 = load i64, i64* %PC.i211
  %1410 = add i64 %1409, 5
  store i64 %1410, i64* %PC.i211
  %1411 = inttoptr i64 %1408 to double*
  %1412 = load double, double* %1411
  %1413 = bitcast i8* %1406 to double*
  store double %1412, double* %1413, align 1
  %1414 = getelementptr inbounds i8, i8* %1406, i64 8
  %1415 = bitcast i8* %1414 to double*
  store double 0.000000e+00, double* %1415, align 1
  store %struct.Memory* %loadMem_4006e7, %struct.Memory** %MEMORY
  %loadMem_4006ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 15
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1422, i64 0, i64 6
  %YMM6.i210 = bitcast %union.VectorReg* %1423 to %"class.std::bitset"*
  %1424 = bitcast %"class.std::bitset"* %YMM6.i210 to i8*
  %1425 = load i64, i64* %RBP.i209
  %1426 = sub i64 %1425, 40
  %1427 = load i64, i64* %PC.i208
  %1428 = add i64 %1427, 5
  store i64 %1428, i64* %PC.i208
  %1429 = inttoptr i64 %1426 to double*
  %1430 = load double, double* %1429
  %1431 = bitcast i8* %1424 to double*
  store double %1430, double* %1431, align 1
  %1432 = getelementptr inbounds i8, i8* %1424, i64 8
  %1433 = bitcast i8* %1432 to double*
  store double 0.000000e+00, double* %1433, align 1
  store %struct.Memory* %loadMem_4006ec, %struct.Memory** %MEMORY
  %loadMem_4006f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1438 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1437, i64 0, i64 7
  %YMM7.i207 = bitcast %union.VectorReg* %1438 to %"class.std::bitset"*
  %1439 = bitcast %"class.std::bitset"* %YMM7.i207 to i8*
  %1440 = load i64, i64* %PC.i206
  %1441 = add i64 %1440, 9
  store i64 %1441, i64* %PC.i206
  %1442 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %1443 = bitcast i8* %1439 to double*
  store double %1442, double* %1443, align 1
  %1444 = getelementptr inbounds i8, i8* %1439, i64 8
  %1445 = bitcast i8* %1444 to double*
  store double 0.000000e+00, double* %1445, align 1
  store %struct.Memory* %loadMem_4006f1, %struct.Memory** %MEMORY
  %loadMem_4006fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 15
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1452, i64 0, i64 7
  %YMM7.i205 = bitcast %union.VectorReg* %1453 to %"class.std::bitset"*
  %1454 = bitcast %"class.std::bitset"* %YMM7.i205 to i8*
  %1455 = bitcast %"class.std::bitset"* %YMM7.i205 to i8*
  %1456 = load i64, i64* %RBP.i204
  %1457 = sub i64 %1456, 40
  %1458 = load i64, i64* %PC.i203
  %1459 = add i64 %1458, 5
  store i64 %1459, i64* %PC.i203
  %1460 = bitcast i8* %1455 to double*
  %1461 = load double, double* %1460, align 1
  %1462 = getelementptr inbounds i8, i8* %1455, i64 8
  %1463 = bitcast i8* %1462 to i64*
  %1464 = load i64, i64* %1463, align 1
  %1465 = inttoptr i64 %1457 to double*
  %1466 = load double, double* %1465
  %1467 = fmul double %1461, %1466
  %1468 = bitcast i8* %1454 to double*
  store double %1467, double* %1468, align 1
  %1469 = getelementptr inbounds i8, i8* %1454, i64 8
  %1470 = bitcast i8* %1469 to i64*
  store i64 %1464, i64* %1470, align 1
  store %struct.Memory* %loadMem_4006fa, %struct.Memory** %MEMORY
  %loadMem_4006ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1474, i64 0, i64 7
  %YMM7.i202 = bitcast %union.VectorReg* %1475 to %"class.std::bitset"*
  %1476 = bitcast %"class.std::bitset"* %YMM7.i202 to i8*
  %1477 = bitcast %"class.std::bitset"* %YMM7.i202 to i8*
  %1478 = load i64, i64* %PC.i201
  %1479 = add i64 %1478, 9
  store i64 %1479, i64* %PC.i201
  %1480 = bitcast i8* %1477 to double*
  %1481 = load double, double* %1480, align 1
  %1482 = getelementptr inbounds i8, i8* %1477, i64 8
  %1483 = bitcast i8* %1482 to i64*
  %1484 = load i64, i64* %1483, align 1
  %1485 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %1486 = fadd double %1481, %1485
  %1487 = bitcast i8* %1476 to double*
  store double %1486, double* %1487, align 1
  %1488 = getelementptr inbounds i8, i8* %1476, i64 8
  %1489 = bitcast i8* %1488 to i64*
  store i64 %1484, i64* %1489, align 1
  store %struct.Memory* %loadMem_4006ff, %struct.Memory** %MEMORY
  %loadMem_400708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1493, i64 0, i64 6
  %YMM6.i199 = bitcast %union.VectorReg* %1494 to %"class.std::bitset"*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1495, i64 0, i64 7
  %XMM7.i200 = bitcast %union.VectorReg* %1496 to %union.vec128_t*
  %1497 = bitcast %"class.std::bitset"* %YMM6.i199 to i8*
  %1498 = bitcast %"class.std::bitset"* %YMM6.i199 to i8*
  %1499 = bitcast %union.vec128_t* %XMM7.i200 to i8*
  %1500 = load i64, i64* %PC.i198
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC.i198
  %1502 = bitcast i8* %1498 to double*
  %1503 = load double, double* %1502, align 1
  %1504 = getelementptr inbounds i8, i8* %1498, i64 8
  %1505 = bitcast i8* %1504 to i64*
  %1506 = load i64, i64* %1505, align 1
  %1507 = bitcast i8* %1499 to double*
  %1508 = load double, double* %1507, align 1
  %1509 = fmul double %1503, %1508
  %1510 = bitcast i8* %1497 to double*
  store double %1509, double* %1510, align 1
  %1511 = getelementptr inbounds i8, i8* %1497, i64 8
  %1512 = bitcast i8* %1511 to i64*
  store i64 %1506, i64* %1512, align 1
  store %struct.Memory* %loadMem_400708, %struct.Memory** %MEMORY
  %loadMem_40070c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 33
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1516, i64 0, i64 6
  %YMM6.i197 = bitcast %union.VectorReg* %1517 to %"class.std::bitset"*
  %1518 = bitcast %"class.std::bitset"* %YMM6.i197 to i8*
  %1519 = bitcast %"class.std::bitset"* %YMM6.i197 to i8*
  %1520 = load i64, i64* %PC.i196
  %1521 = add i64 %1520, 9
  store i64 %1521, i64* %PC.i196
  %1522 = bitcast i8* %1519 to double*
  %1523 = load double, double* %1522, align 1
  %1524 = getelementptr inbounds i8, i8* %1519, i64 8
  %1525 = bitcast i8* %1524 to i64*
  %1526 = load i64, i64* %1525, align 1
  %1527 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %1528 = fadd double %1523, %1527
  %1529 = bitcast i8* %1518 to double*
  store double %1528, double* %1529, align 1
  %1530 = getelementptr inbounds i8, i8* %1518, i64 8
  %1531 = bitcast i8* %1530 to i64*
  store i64 %1526, i64* %1531, align 1
  store %struct.Memory* %loadMem_40070c, %struct.Memory** %MEMORY
  %loadMem_400715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1535, i64 0, i64 5
  %YMM5.i194 = bitcast %union.VectorReg* %1536 to %"class.std::bitset"*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1537, i64 0, i64 6
  %XMM6.i195 = bitcast %union.VectorReg* %1538 to %union.vec128_t*
  %1539 = bitcast %"class.std::bitset"* %YMM5.i194 to i8*
  %1540 = bitcast %"class.std::bitset"* %YMM5.i194 to i8*
  %1541 = bitcast %union.vec128_t* %XMM6.i195 to i8*
  %1542 = load i64, i64* %PC.i193
  %1543 = add i64 %1542, 4
  store i64 %1543, i64* %PC.i193
  %1544 = bitcast i8* %1540 to double*
  %1545 = load double, double* %1544, align 1
  %1546 = getelementptr inbounds i8, i8* %1540, i64 8
  %1547 = bitcast i8* %1546 to i64*
  %1548 = load i64, i64* %1547, align 1
  %1549 = bitcast i8* %1541 to double*
  %1550 = load double, double* %1549, align 1
  %1551 = fmul double %1545, %1550
  %1552 = bitcast i8* %1539 to double*
  store double %1551, double* %1552, align 1
  %1553 = getelementptr inbounds i8, i8* %1539, i64 8
  %1554 = bitcast i8* %1553 to i64*
  store i64 %1548, i64* %1554, align 1
  store %struct.Memory* %loadMem_400715, %struct.Memory** %MEMORY
  %loadMem_400719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1558, i64 0, i64 5
  %YMM5.i192 = bitcast %union.VectorReg* %1559 to %"class.std::bitset"*
  %1560 = bitcast %"class.std::bitset"* %YMM5.i192 to i8*
  %1561 = bitcast %"class.std::bitset"* %YMM5.i192 to i8*
  %1562 = load i64, i64* %PC.i191
  %1563 = add i64 %1562, 9
  store i64 %1563, i64* %PC.i191
  %1564 = bitcast i8* %1561 to double*
  %1565 = load double, double* %1564, align 1
  %1566 = getelementptr inbounds i8, i8* %1561, i64 8
  %1567 = bitcast i8* %1566 to i64*
  %1568 = load i64, i64* %1567, align 1
  %1569 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %1570 = fadd double %1565, %1569
  %1571 = bitcast i8* %1560 to double*
  store double %1570, double* %1571, align 1
  %1572 = getelementptr inbounds i8, i8* %1560, i64 8
  %1573 = bitcast i8* %1572 to i64*
  store i64 %1568, i64* %1573, align 1
  store %struct.Memory* %loadMem_400719, %struct.Memory** %MEMORY
  %loadMem_400722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1577, i64 0, i64 4
  %YMM4.i189 = bitcast %union.VectorReg* %1578 to %"class.std::bitset"*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1579, i64 0, i64 5
  %XMM5.i190 = bitcast %union.VectorReg* %1580 to %union.vec128_t*
  %1581 = bitcast %"class.std::bitset"* %YMM4.i189 to i8*
  %1582 = bitcast %"class.std::bitset"* %YMM4.i189 to i8*
  %1583 = bitcast %union.vec128_t* %XMM5.i190 to i8*
  %1584 = load i64, i64* %PC.i188
  %1585 = add i64 %1584, 4
  store i64 %1585, i64* %PC.i188
  %1586 = bitcast i8* %1582 to double*
  %1587 = load double, double* %1586, align 1
  %1588 = getelementptr inbounds i8, i8* %1582, i64 8
  %1589 = bitcast i8* %1588 to i64*
  %1590 = load i64, i64* %1589, align 1
  %1591 = bitcast i8* %1583 to double*
  %1592 = load double, double* %1591, align 1
  %1593 = fmul double %1587, %1592
  %1594 = bitcast i8* %1581 to double*
  store double %1593, double* %1594, align 1
  %1595 = getelementptr inbounds i8, i8* %1581, i64 8
  %1596 = bitcast i8* %1595 to i64*
  store i64 %1590, i64* %1596, align 1
  store %struct.Memory* %loadMem_400722, %struct.Memory** %MEMORY
  %loadMem_400726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1600, i64 0, i64 4
  %YMM4.i187 = bitcast %union.VectorReg* %1601 to %"class.std::bitset"*
  %1602 = bitcast %"class.std::bitset"* %YMM4.i187 to i8*
  %1603 = bitcast %"class.std::bitset"* %YMM4.i187 to i8*
  %1604 = load i64, i64* %PC.i186
  %1605 = add i64 %1604, 9
  store i64 %1605, i64* %PC.i186
  %1606 = bitcast i8* %1603 to double*
  %1607 = load double, double* %1606, align 1
  %1608 = getelementptr inbounds i8, i8* %1603, i64 8
  %1609 = bitcast i8* %1608 to i64*
  %1610 = load i64, i64* %1609, align 1
  %1611 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %1612 = fadd double %1607, %1611
  %1613 = bitcast i8* %1602 to double*
  store double %1612, double* %1613, align 1
  %1614 = getelementptr inbounds i8, i8* %1602, i64 8
  %1615 = bitcast i8* %1614 to i64*
  store i64 %1610, i64* %1615, align 1
  store %struct.Memory* %loadMem_400726, %struct.Memory** %MEMORY
  %loadMem_40072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1619, i64 0, i64 3
  %YMM3.i184 = bitcast %union.VectorReg* %1620 to %"class.std::bitset"*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1621, i64 0, i64 4
  %XMM4.i185 = bitcast %union.VectorReg* %1622 to %union.vec128_t*
  %1623 = bitcast %"class.std::bitset"* %YMM3.i184 to i8*
  %1624 = bitcast %"class.std::bitset"* %YMM3.i184 to i8*
  %1625 = bitcast %union.vec128_t* %XMM4.i185 to i8*
  %1626 = load i64, i64* %PC.i183
  %1627 = add i64 %1626, 4
  store i64 %1627, i64* %PC.i183
  %1628 = bitcast i8* %1624 to double*
  %1629 = load double, double* %1628, align 1
  %1630 = getelementptr inbounds i8, i8* %1624, i64 8
  %1631 = bitcast i8* %1630 to i64*
  %1632 = load i64, i64* %1631, align 1
  %1633 = bitcast i8* %1625 to double*
  %1634 = load double, double* %1633, align 1
  %1635 = fmul double %1629, %1634
  %1636 = bitcast i8* %1623 to double*
  store double %1635, double* %1636, align 1
  %1637 = getelementptr inbounds i8, i8* %1623, i64 8
  %1638 = bitcast i8* %1637 to i64*
  store i64 %1632, i64* %1638, align 1
  store %struct.Memory* %loadMem_40072f, %struct.Memory** %MEMORY
  %loadMem_400733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1642, i64 0, i64 3
  %YMM3.i182 = bitcast %union.VectorReg* %1643 to %"class.std::bitset"*
  %1644 = bitcast %"class.std::bitset"* %YMM3.i182 to i8*
  %1645 = bitcast %"class.std::bitset"* %YMM3.i182 to i8*
  %1646 = load i64, i64* %PC.i181
  %1647 = add i64 %1646, 9
  store i64 %1647, i64* %PC.i181
  %1648 = bitcast i8* %1645 to double*
  %1649 = load double, double* %1648, align 1
  %1650 = getelementptr inbounds i8, i8* %1645, i64 8
  %1651 = bitcast i8* %1650 to i64*
  %1652 = load i64, i64* %1651, align 1
  %1653 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %1654 = fadd double %1649, %1653
  %1655 = bitcast i8* %1644 to double*
  store double %1654, double* %1655, align 1
  %1656 = getelementptr inbounds i8, i8* %1644, i64 8
  %1657 = bitcast i8* %1656 to i64*
  store i64 %1652, i64* %1657, align 1
  store %struct.Memory* %loadMem_400733, %struct.Memory** %MEMORY
  %loadMem_40073c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1662 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1661, i64 0, i64 2
  %YMM2.i179 = bitcast %union.VectorReg* %1662 to %"class.std::bitset"*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1663, i64 0, i64 3
  %XMM3.i180 = bitcast %union.VectorReg* %1664 to %union.vec128_t*
  %1665 = bitcast %"class.std::bitset"* %YMM2.i179 to i8*
  %1666 = bitcast %"class.std::bitset"* %YMM2.i179 to i8*
  %1667 = bitcast %union.vec128_t* %XMM3.i180 to i8*
  %1668 = load i64, i64* %PC.i178
  %1669 = add i64 %1668, 4
  store i64 %1669, i64* %PC.i178
  %1670 = bitcast i8* %1666 to double*
  %1671 = load double, double* %1670, align 1
  %1672 = getelementptr inbounds i8, i8* %1666, i64 8
  %1673 = bitcast i8* %1672 to i64*
  %1674 = load i64, i64* %1673, align 1
  %1675 = bitcast i8* %1667 to double*
  %1676 = load double, double* %1675, align 1
  %1677 = fmul double %1671, %1676
  %1678 = bitcast i8* %1665 to double*
  store double %1677, double* %1678, align 1
  %1679 = getelementptr inbounds i8, i8* %1665, i64 8
  %1680 = bitcast i8* %1679 to i64*
  store i64 %1674, i64* %1680, align 1
  store %struct.Memory* %loadMem_40073c, %struct.Memory** %MEMORY
  %loadMem_400740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1684, i64 0, i64 2
  %YMM2.i177 = bitcast %union.VectorReg* %1685 to %"class.std::bitset"*
  %1686 = bitcast %"class.std::bitset"* %YMM2.i177 to i8*
  %1687 = bitcast %"class.std::bitset"* %YMM2.i177 to i8*
  %1688 = load i64, i64* %PC.i176
  %1689 = add i64 %1688, 9
  store i64 %1689, i64* %PC.i176
  %1690 = bitcast i8* %1687 to double*
  %1691 = load double, double* %1690, align 1
  %1692 = getelementptr inbounds i8, i8* %1687, i64 8
  %1693 = bitcast i8* %1692 to i64*
  %1694 = load i64, i64* %1693, align 1
  %1695 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %1696 = fadd double %1691, %1695
  %1697 = bitcast i8* %1686 to double*
  store double %1696, double* %1697, align 1
  %1698 = getelementptr inbounds i8, i8* %1686, i64 8
  %1699 = bitcast i8* %1698 to i64*
  store i64 %1694, i64* %1699, align 1
  store %struct.Memory* %loadMem_400740, %struct.Memory** %MEMORY
  %loadMem_400749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1704 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1703, i64 0, i64 1
  %YMM1.i174 = bitcast %union.VectorReg* %1704 to %"class.std::bitset"*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1705, i64 0, i64 2
  %XMM2.i175 = bitcast %union.VectorReg* %1706 to %union.vec128_t*
  %1707 = bitcast %"class.std::bitset"* %YMM1.i174 to i8*
  %1708 = bitcast %"class.std::bitset"* %YMM1.i174 to i8*
  %1709 = bitcast %union.vec128_t* %XMM2.i175 to i8*
  %1710 = load i64, i64* %PC.i173
  %1711 = add i64 %1710, 4
  store i64 %1711, i64* %PC.i173
  %1712 = bitcast i8* %1708 to double*
  %1713 = load double, double* %1712, align 1
  %1714 = getelementptr inbounds i8, i8* %1708, i64 8
  %1715 = bitcast i8* %1714 to i64*
  %1716 = load i64, i64* %1715, align 1
  %1717 = bitcast i8* %1709 to double*
  %1718 = load double, double* %1717, align 1
  %1719 = fmul double %1713, %1718
  %1720 = bitcast i8* %1707 to double*
  store double %1719, double* %1720, align 1
  %1721 = getelementptr inbounds i8, i8* %1707, i64 8
  %1722 = bitcast i8* %1721 to i64*
  store i64 %1716, i64* %1722, align 1
  store %struct.Memory* %loadMem_400749, %struct.Memory** %MEMORY
  %loadMem_40074d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1726, i64 0, i64 0
  %YMM0.i171 = bitcast %union.VectorReg* %1727 to %"class.std::bitset"*
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1728, i64 0, i64 1
  %XMM1.i172 = bitcast %union.VectorReg* %1729 to %union.vec128_t*
  %1730 = bitcast %"class.std::bitset"* %YMM0.i171 to i8*
  %1731 = bitcast %"class.std::bitset"* %YMM0.i171 to i8*
  %1732 = bitcast %union.vec128_t* %XMM1.i172 to i8*
  %1733 = load i64, i64* %PC.i170
  %1734 = add i64 %1733, 4
  store i64 %1734, i64* %PC.i170
  %1735 = bitcast i8* %1731 to double*
  %1736 = load double, double* %1735, align 1
  %1737 = getelementptr inbounds i8, i8* %1731, i64 8
  %1738 = bitcast i8* %1737 to i64*
  %1739 = load i64, i64* %1738, align 1
  %1740 = bitcast i8* %1732 to double*
  %1741 = load double, double* %1740, align 1
  %1742 = fadd double %1736, %1741
  %1743 = bitcast i8* %1730 to double*
  store double %1742, double* %1743, align 1
  %1744 = getelementptr inbounds i8, i8* %1730, i64 8
  %1745 = bitcast i8* %1744 to i64*
  store i64 %1739, i64* %1745, align 1
  store %struct.Memory* %loadMem_40074d, %struct.Memory** %MEMORY
  %loadMem_400751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 15
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1752, i64 0, i64 0
  %XMM0.i169 = bitcast %union.VectorReg* %1753 to %union.vec128_t*
  %1754 = load i64, i64* %RBP.i168
  %1755 = sub i64 %1754, 16
  %1756 = bitcast %union.vec128_t* %XMM0.i169 to i8*
  %1757 = load i64, i64* %PC.i167
  %1758 = add i64 %1757, 5
  store i64 %1758, i64* %PC.i167
  %1759 = bitcast i8* %1756 to double*
  %1760 = load double, double* %1759, align 1
  %1761 = inttoptr i64 %1755 to double*
  store double %1760, double* %1761
  store %struct.Memory* %loadMem_400751, %struct.Memory** %MEMORY
  %loadMem_400756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 1
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 15
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %1770 to i64*
  %1771 = load i64, i64* %RBP.i166
  %1772 = sub i64 %1771, 72
  %1773 = load i64, i64* %PC.i164
  %1774 = add i64 %1773, 4
  store i64 %1774, i64* %PC.i164
  %1775 = inttoptr i64 %1772 to i64*
  %1776 = load i64, i64* %1775
  store i64 %1776, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_400756, %struct.Memory** %MEMORY
  %loadMem_40075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 33
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1779 to i64*
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 1
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %1782 to i64*
  %1783 = load i64, i64* %RAX.i163
  %1784 = load i64, i64* %PC.i162
  %1785 = add i64 %1784, 4
  store i64 %1785, i64* %PC.i162
  %1786 = add i64 1, %1783
  store i64 %1786, i64* %RAX.i163, align 8
  %1787 = icmp ult i64 %1786, %1783
  %1788 = icmp ult i64 %1786, 1
  %1789 = or i1 %1787, %1788
  %1790 = zext i1 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1790, i8* %1791, align 1
  %1792 = trunc i64 %1786 to i32
  %1793 = and i32 %1792, 255
  %1794 = call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1797, i8* %1798, align 1
  %1799 = xor i64 1, %1783
  %1800 = xor i64 %1799, %1786
  %1801 = lshr i64 %1800, 4
  %1802 = trunc i64 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1803, i8* %1804, align 1
  %1805 = icmp eq i64 %1786, 0
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i64 %1786, 63
  %1809 = trunc i64 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i64 %1783, 63
  %1812 = xor i64 %1808, %1811
  %1813 = add i64 %1812, %1808
  %1814 = icmp eq i64 %1813, 2
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1815, i8* %1816, align 1
  store %struct.Memory* %loadMem_40075a, %struct.Memory** %MEMORY
  %loadMem_40075e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 1
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 15
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %RBP.i161
  %1827 = sub i64 %1826, 72
  %1828 = load i64, i64* %RAX.i160
  %1829 = load i64, i64* %PC.i159
  %1830 = add i64 %1829, 4
  store i64 %1830, i64* %PC.i159
  %1831 = inttoptr i64 %1827 to i64*
  store i64 %1828, i64* %1831
  store %struct.Memory* %loadMem_40075e, %struct.Memory** %MEMORY
  %loadMem_400762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 33
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1834 to i64*
  %1835 = load i64, i64* %PC.i158
  %1836 = add i64 %1835, -310
  %1837 = load i64, i64* %PC.i158
  %1838 = add i64 %1837, 5
  store i64 %1838, i64* %PC.i158
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1836, i64* %1839, align 8
  store %struct.Memory* %loadMem_400762, %struct.Memory** %MEMORY
  br label %block_.L_40062c

block_.L_400767:                                  ; preds = %block_.L_40062c
  %loadMem_400767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 11
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %PC.i157
  %1847 = add i64 %1846, 10
  store i64 %1847, i64* %PC.i157
  store i64 ptrtoint (%G__0x400a96_type* @G__0x400a96 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400767, %struct.Memory** %MEMORY
  %loadMem_400771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1851, i64 0, i64 0
  %YMM0.i155 = bitcast %union.VectorReg* %1852 to %"class.std::bitset"*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1853, i64 0, i64 0
  %XMM0.i156 = bitcast %union.VectorReg* %1854 to %union.vec128_t*
  %1855 = bitcast %"class.std::bitset"* %YMM0.i155 to i8*
  %1856 = bitcast %"class.std::bitset"* %YMM0.i155 to i8*
  %1857 = bitcast %union.vec128_t* %XMM0.i156 to i8*
  %1858 = load i64, i64* %PC.i154
  %1859 = add i64 %1858, 3
  store i64 %1859, i64* %PC.i154
  %1860 = bitcast i8* %1856 to i64*
  %1861 = load i64, i64* %1860, align 1
  %1862 = getelementptr inbounds i8, i8* %1856, i64 8
  %1863 = bitcast i8* %1862 to i64*
  %1864 = load i64, i64* %1863, align 1
  %1865 = bitcast i8* %1857 to i64*
  %1866 = load i64, i64* %1865, align 1
  %1867 = getelementptr inbounds i8, i8* %1857, i64 8
  %1868 = bitcast i8* %1867 to i64*
  %1869 = load i64, i64* %1868, align 1
  %1870 = xor i64 %1866, %1861
  %1871 = xor i64 %1869, %1864
  %1872 = trunc i64 %1870 to i32
  %1873 = lshr i64 %1870, 32
  %1874 = trunc i64 %1873 to i32
  %1875 = bitcast i8* %1855 to i32*
  store i32 %1872, i32* %1875, align 1
  %1876 = getelementptr inbounds i8, i8* %1855, i64 4
  %1877 = bitcast i8* %1876 to i32*
  store i32 %1874, i32* %1877, align 1
  %1878 = trunc i64 %1871 to i32
  %1879 = getelementptr inbounds i8, i8* %1855, i64 8
  %1880 = bitcast i8* %1879 to i32*
  store i32 %1878, i32* %1880, align 1
  %1881 = lshr i64 %1871, 32
  %1882 = trunc i64 %1881 to i32
  %1883 = getelementptr inbounds i8, i8* %1855, i64 12
  %1884 = bitcast i8* %1883 to i32*
  store i32 %1882, i32* %1884, align 1
  store %struct.Memory* %loadMem_400771, %struct.Memory** %MEMORY
  %loadMem_400774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1889 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1888, i64 0, i64 1
  %YMM1.i153 = bitcast %union.VectorReg* %1889 to %"class.std::bitset"*
  %1890 = bitcast %"class.std::bitset"* %YMM1.i153 to i8*
  %1891 = load i64, i64* %PC.i152
  %1892 = load i64, i64* %PC.i152
  %1893 = add i64 %1892, 8
  store i64 %1893, i64* %PC.i152
  %1894 = load double, double* bitcast (%G_0x27c__rip__type* @G_0x27c__rip_ to double*)
  %1895 = bitcast i8* %1890 to double*
  store double %1894, double* %1895, align 1
  %1896 = getelementptr inbounds i8, i8* %1890, i64 8
  %1897 = bitcast i8* %1896 to double*
  store double 0.000000e+00, double* %1897, align 1
  store %struct.Memory* %loadMem_400774, %struct.Memory** %MEMORY
  %loadMem_40077c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1901, i64 0, i64 2
  %YMM2.i151 = bitcast %union.VectorReg* %1902 to %"class.std::bitset"*
  %1903 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1904 = load i64, i64* %PC.i150
  %1905 = load i64, i64* %PC.i150
  %1906 = add i64 %1905, 8
  store i64 %1906, i64* %PC.i150
  %1907 = load double, double* bitcast (%G_0x27c__rip__type* @G_0x27c__rip_ to double*)
  %1908 = bitcast i8* %1903 to double*
  store double %1907, double* %1908, align 1
  %1909 = getelementptr inbounds i8, i8* %1903, i64 8
  %1910 = bitcast i8* %1909 to double*
  store double 0.000000e+00, double* %1910, align 1
  store %struct.Memory* %loadMem_40077c, %struct.Memory** %MEMORY
  %loadMem_400784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1913 to i64*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1915 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1914, i64 0, i64 3
  %YMM3.i149 = bitcast %union.VectorReg* %1915 to %"class.std::bitset"*
  %1916 = bitcast %"class.std::bitset"* %YMM3.i149 to i8*
  %1917 = load i64, i64* %PC.i148
  %1918 = add i64 %1917, 9
  store i64 %1918, i64* %PC.i148
  %1919 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %1920 = bitcast i8* %1916 to double*
  store double %1919, double* %1920, align 1
  %1921 = getelementptr inbounds i8, i8* %1916, i64 8
  %1922 = bitcast i8* %1921 to double*
  store double 0.000000e+00, double* %1922, align 1
  store %struct.Memory* %loadMem_400784, %struct.Memory** %MEMORY
  %loadMem_40078d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1926, i64 0, i64 3
  %YMM3.i147 = bitcast %union.VectorReg* %1927 to %"class.std::bitset"*
  %1928 = bitcast %"class.std::bitset"* %YMM3.i147 to i8*
  %1929 = bitcast %"class.std::bitset"* %YMM3.i147 to i8*
  %1930 = load i64, i64* %PC.i146
  %1931 = add i64 %1930, 9
  store i64 %1931, i64* %PC.i146
  %1932 = bitcast i8* %1929 to double*
  %1933 = load double, double* %1932, align 1
  %1934 = getelementptr inbounds i8, i8* %1929, i64 8
  %1935 = bitcast i8* %1934 to i64*
  %1936 = load i64, i64* %1935, align 1
  %1937 = load double, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  %1938 = fdiv double %1933, %1937
  %1939 = bitcast i8* %1928 to double*
  store double %1938, double* %1939, align 1
  %1940 = getelementptr inbounds i8, i8* %1928, i64 8
  %1941 = bitcast i8* %1940 to i64*
  store i64 %1936, i64* %1941, align 1
  store %struct.Memory* %loadMem_40078d, %struct.Memory** %MEMORY
  %loadMem_400796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 33
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %1947 to i64*
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1949 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1948, i64 0, i64 3
  %XMM3.i145 = bitcast %union.VectorReg* %1949 to %union.vec128_t*
  %1950 = load i64, i64* %RBP.i144
  %1951 = sub i64 %1950, 24
  %1952 = bitcast %union.vec128_t* %XMM3.i145 to i8*
  %1953 = load i64, i64* %PC.i143
  %1954 = add i64 %1953, 5
  store i64 %1954, i64* %PC.i143
  %1955 = bitcast i8* %1952 to double*
  %1956 = load double, double* %1955, align 1
  %1957 = inttoptr i64 %1951 to double*
  store double %1956, double* %1957
  store %struct.Memory* %loadMem_400796, %struct.Memory** %MEMORY
  %loadMem_40079b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 15
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %1963 to i64*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1965 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1964, i64 0, i64 3
  %YMM3.i142 = bitcast %union.VectorReg* %1965 to %"class.std::bitset"*
  %1966 = bitcast %"class.std::bitset"* %YMM3.i142 to i8*
  %1967 = load i64, i64* %RBP.i141
  %1968 = sub i64 %1967, 24
  %1969 = load i64, i64* %PC.i140
  %1970 = add i64 %1969, 5
  store i64 %1970, i64* %PC.i140
  %1971 = inttoptr i64 %1968 to double*
  %1972 = load double, double* %1971
  %1973 = bitcast i8* %1966 to double*
  store double %1972, double* %1973, align 1
  %1974 = getelementptr inbounds i8, i8* %1966, i64 8
  %1975 = bitcast i8* %1974 to double*
  store double 0.000000e+00, double* %1975, align 1
  store %struct.Memory* %loadMem_40079b, %struct.Memory** %MEMORY
  %loadMem_4007a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 15
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1982, i64 0, i64 3
  %YMM3.i139 = bitcast %union.VectorReg* %1983 to %"class.std::bitset"*
  %1984 = bitcast %"class.std::bitset"* %YMM3.i139 to i8*
  %1985 = bitcast %"class.std::bitset"* %YMM3.i139 to i8*
  %1986 = load i64, i64* %RBP.i138
  %1987 = sub i64 %1986, 24
  %1988 = load i64, i64* %PC.i137
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %PC.i137
  %1990 = bitcast i8* %1985 to double*
  %1991 = load double, double* %1990, align 1
  %1992 = getelementptr inbounds i8, i8* %1985, i64 8
  %1993 = bitcast i8* %1992 to i64*
  %1994 = load i64, i64* %1993, align 1
  %1995 = inttoptr i64 %1987 to double*
  %1996 = load double, double* %1995
  %1997 = fmul double %1991, %1996
  %1998 = bitcast i8* %1984 to double*
  store double %1997, double* %1998, align 1
  %1999 = getelementptr inbounds i8, i8* %1984, i64 8
  %2000 = bitcast i8* %1999 to i64*
  store i64 %1994, i64* %2000, align 1
  store %struct.Memory* %loadMem_4007a0, %struct.Memory** %MEMORY
  %loadMem_4007a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 15
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2007, i64 0, i64 3
  %XMM3.i136 = bitcast %union.VectorReg* %2008 to %union.vec128_t*
  %2009 = load i64, i64* %RBP.i135
  %2010 = sub i64 %2009, 40
  %2011 = bitcast %union.vec128_t* %XMM3.i136 to i8*
  %2012 = load i64, i64* %PC.i134
  %2013 = add i64 %2012, 5
  store i64 %2013, i64* %PC.i134
  %2014 = bitcast i8* %2011 to double*
  %2015 = load double, double* %2014, align 1
  %2016 = inttoptr i64 %2010 to double*
  store double %2015, double* %2016
  store %struct.Memory* %loadMem_4007a5, %struct.Memory** %MEMORY
  %loadMem_4007aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 15
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2023, i64 0, i64 3
  %YMM3.i133 = bitcast %union.VectorReg* %2024 to %"class.std::bitset"*
  %2025 = bitcast %"class.std::bitset"* %YMM3.i133 to i8*
  %2026 = load i64, i64* %RBP.i132
  %2027 = sub i64 %2026, 24
  %2028 = load i64, i64* %PC.i131
  %2029 = add i64 %2028, 5
  store i64 %2029, i64* %PC.i131
  %2030 = inttoptr i64 %2027 to double*
  %2031 = load double, double* %2030
  %2032 = bitcast i8* %2025 to double*
  store double %2031, double* %2032, align 1
  %2033 = getelementptr inbounds i8, i8* %2025, i64 8
  %2034 = bitcast i8* %2033 to double*
  store double 0.000000e+00, double* %2034, align 1
  store %struct.Memory* %loadMem_4007aa, %struct.Memory** %MEMORY
  %loadMem_4007af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 33
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2039 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2038, i64 0, i64 4
  %YMM4.i130 = bitcast %union.VectorReg* %2039 to %"class.std::bitset"*
  %2040 = bitcast %"class.std::bitset"* %YMM4.i130 to i8*
  %2041 = load i64, i64* %PC.i129
  %2042 = add i64 %2041, 9
  store i64 %2042, i64* %PC.i129
  %2043 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %2044 = bitcast i8* %2040 to double*
  store double %2043, double* %2044, align 1
  %2045 = getelementptr inbounds i8, i8* %2040, i64 8
  %2046 = bitcast i8* %2045 to double*
  store double 0.000000e+00, double* %2046, align 1
  store %struct.Memory* %loadMem_4007af, %struct.Memory** %MEMORY
  %loadMem_4007b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 15
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2054 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2053, i64 0, i64 4
  %YMM4.i128 = bitcast %union.VectorReg* %2054 to %"class.std::bitset"*
  %2055 = bitcast %"class.std::bitset"* %YMM4.i128 to i8*
  %2056 = bitcast %"class.std::bitset"* %YMM4.i128 to i8*
  %2057 = load i64, i64* %RBP.i127
  %2058 = sub i64 %2057, 40
  %2059 = load i64, i64* %PC.i126
  %2060 = add i64 %2059, 5
  store i64 %2060, i64* %PC.i126
  %2061 = bitcast i8* %2056 to double*
  %2062 = load double, double* %2061, align 1
  %2063 = getelementptr inbounds i8, i8* %2056, i64 8
  %2064 = bitcast i8* %2063 to i64*
  %2065 = load i64, i64* %2064, align 1
  %2066 = inttoptr i64 %2058 to double*
  %2067 = load double, double* %2066
  %2068 = fmul double %2062, %2067
  %2069 = bitcast i8* %2055 to double*
  store double %2068, double* %2069, align 1
  %2070 = getelementptr inbounds i8, i8* %2055, i64 8
  %2071 = bitcast i8* %2070 to i64*
  store i64 %2065, i64* %2071, align 1
  store %struct.Memory* %loadMem_4007b8, %struct.Memory** %MEMORY
  %loadMem_4007bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2075, i64 0, i64 4
  %YMM4.i125 = bitcast %union.VectorReg* %2076 to %"class.std::bitset"*
  %2077 = bitcast %"class.std::bitset"* %YMM4.i125 to i8*
  %2078 = bitcast %"class.std::bitset"* %YMM4.i125 to i8*
  %2079 = load i64, i64* %PC.i124
  %2080 = add i64 %2079, 9
  store i64 %2080, i64* %PC.i124
  %2081 = bitcast i8* %2078 to double*
  %2082 = load double, double* %2081, align 1
  %2083 = getelementptr inbounds i8, i8* %2078, i64 8
  %2084 = bitcast i8* %2083 to i64*
  %2085 = load i64, i64* %2084, align 1
  %2086 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %2087 = fadd double %2082, %2086
  %2088 = bitcast i8* %2077 to double*
  store double %2087, double* %2088, align 1
  %2089 = getelementptr inbounds i8, i8* %2077, i64 8
  %2090 = bitcast i8* %2089 to i64*
  store i64 %2085, i64* %2090, align 1
  store %struct.Memory* %loadMem_4007bd, %struct.Memory** %MEMORY
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2093 to i64*
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 15
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2098 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2097, i64 0, i64 4
  %YMM4.i123 = bitcast %union.VectorReg* %2098 to %"class.std::bitset"*
  %2099 = bitcast %"class.std::bitset"* %YMM4.i123 to i8*
  %2100 = bitcast %"class.std::bitset"* %YMM4.i123 to i8*
  %2101 = load i64, i64* %RBP.i122
  %2102 = sub i64 %2101, 40
  %2103 = load i64, i64* %PC.i121
  %2104 = add i64 %2103, 5
  store i64 %2104, i64* %PC.i121
  %2105 = bitcast i8* %2100 to double*
  %2106 = load double, double* %2105, align 1
  %2107 = getelementptr inbounds i8, i8* %2100, i64 8
  %2108 = bitcast i8* %2107 to i64*
  %2109 = load i64, i64* %2108, align 1
  %2110 = inttoptr i64 %2102 to double*
  %2111 = load double, double* %2110
  %2112 = fmul double %2106, %2111
  %2113 = bitcast i8* %2099 to double*
  store double %2112, double* %2113, align 1
  %2114 = getelementptr inbounds i8, i8* %2099, i64 8
  %2115 = bitcast i8* %2114 to i64*
  store i64 %2109, i64* %2115, align 1
  store %struct.Memory* %loadMem_4007c6, %struct.Memory** %MEMORY
  %loadMem_4007cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2119, i64 0, i64 4
  %YMM4.i120 = bitcast %union.VectorReg* %2120 to %"class.std::bitset"*
  %2121 = bitcast %"class.std::bitset"* %YMM4.i120 to i8*
  %2122 = bitcast %"class.std::bitset"* %YMM4.i120 to i8*
  %2123 = load i64, i64* %PC.i119
  %2124 = add i64 %2123, 9
  store i64 %2124, i64* %PC.i119
  %2125 = bitcast i8* %2122 to double*
  %2126 = load double, double* %2125, align 1
  %2127 = getelementptr inbounds i8, i8* %2122, i64 8
  %2128 = bitcast i8* %2127 to i64*
  %2129 = load i64, i64* %2128, align 1
  %2130 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %2131 = fadd double %2126, %2130
  %2132 = bitcast i8* %2121 to double*
  store double %2131, double* %2132, align 1
  %2133 = getelementptr inbounds i8, i8* %2121, i64 8
  %2134 = bitcast i8* %2133 to i64*
  store i64 %2129, i64* %2134, align 1
  store %struct.Memory* %loadMem_4007cb, %struct.Memory** %MEMORY
  %loadMem_4007d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 15
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2140 to i64*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2141, i64 0, i64 4
  %YMM4.i118 = bitcast %union.VectorReg* %2142 to %"class.std::bitset"*
  %2143 = bitcast %"class.std::bitset"* %YMM4.i118 to i8*
  %2144 = bitcast %"class.std::bitset"* %YMM4.i118 to i8*
  %2145 = load i64, i64* %RBP.i117
  %2146 = sub i64 %2145, 40
  %2147 = load i64, i64* %PC.i116
  %2148 = add i64 %2147, 5
  store i64 %2148, i64* %PC.i116
  %2149 = bitcast i8* %2144 to double*
  %2150 = load double, double* %2149, align 1
  %2151 = getelementptr inbounds i8, i8* %2144, i64 8
  %2152 = bitcast i8* %2151 to i64*
  %2153 = load i64, i64* %2152, align 1
  %2154 = inttoptr i64 %2146 to double*
  %2155 = load double, double* %2154
  %2156 = fmul double %2150, %2155
  %2157 = bitcast i8* %2143 to double*
  store double %2156, double* %2157, align 1
  %2158 = getelementptr inbounds i8, i8* %2143, i64 8
  %2159 = bitcast i8* %2158 to i64*
  store i64 %2153, i64* %2159, align 1
  store %struct.Memory* %loadMem_4007d4, %struct.Memory** %MEMORY
  %loadMem_4007d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2164 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2163, i64 0, i64 4
  %YMM4.i115 = bitcast %union.VectorReg* %2164 to %"class.std::bitset"*
  %2165 = bitcast %"class.std::bitset"* %YMM4.i115 to i8*
  %2166 = bitcast %"class.std::bitset"* %YMM4.i115 to i8*
  %2167 = load i64, i64* %PC.i114
  %2168 = add i64 %2167, 9
  store i64 %2168, i64* %PC.i114
  %2169 = bitcast i8* %2166 to double*
  %2170 = load double, double* %2169, align 1
  %2171 = getelementptr inbounds i8, i8* %2166, i64 8
  %2172 = bitcast i8* %2171 to i64*
  %2173 = load i64, i64* %2172, align 1
  %2174 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %2175 = fadd double %2170, %2174
  %2176 = bitcast i8* %2165 to double*
  store double %2175, double* %2176, align 1
  %2177 = getelementptr inbounds i8, i8* %2165, i64 8
  %2178 = bitcast i8* %2177 to i64*
  store i64 %2173, i64* %2178, align 1
  store %struct.Memory* %loadMem_4007d9, %struct.Memory** %MEMORY
  %loadMem_4007e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 33
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 15
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2184 to i64*
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2186 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2185, i64 0, i64 4
  %YMM4.i113 = bitcast %union.VectorReg* %2186 to %"class.std::bitset"*
  %2187 = bitcast %"class.std::bitset"* %YMM4.i113 to i8*
  %2188 = bitcast %"class.std::bitset"* %YMM4.i113 to i8*
  %2189 = load i64, i64* %RBP.i112
  %2190 = sub i64 %2189, 40
  %2191 = load i64, i64* %PC.i111
  %2192 = add i64 %2191, 5
  store i64 %2192, i64* %PC.i111
  %2193 = bitcast i8* %2188 to double*
  %2194 = load double, double* %2193, align 1
  %2195 = getelementptr inbounds i8, i8* %2188, i64 8
  %2196 = bitcast i8* %2195 to i64*
  %2197 = load i64, i64* %2196, align 1
  %2198 = inttoptr i64 %2190 to double*
  %2199 = load double, double* %2198
  %2200 = fmul double %2194, %2199
  %2201 = bitcast i8* %2187 to double*
  store double %2200, double* %2201, align 1
  %2202 = getelementptr inbounds i8, i8* %2187, i64 8
  %2203 = bitcast i8* %2202 to i64*
  store i64 %2197, i64* %2203, align 1
  store %struct.Memory* %loadMem_4007e2, %struct.Memory** %MEMORY
  %loadMem_4007e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2207, i64 0, i64 4
  %YMM4.i110 = bitcast %union.VectorReg* %2208 to %"class.std::bitset"*
  %2209 = bitcast %"class.std::bitset"* %YMM4.i110 to i8*
  %2210 = bitcast %"class.std::bitset"* %YMM4.i110 to i8*
  %2211 = load i64, i64* %PC.i109
  %2212 = add i64 %2211, 9
  store i64 %2212, i64* %PC.i109
  %2213 = bitcast i8* %2210 to double*
  %2214 = load double, double* %2213, align 1
  %2215 = getelementptr inbounds i8, i8* %2210, i64 8
  %2216 = bitcast i8* %2215 to i64*
  %2217 = load i64, i64* %2216, align 1
  %2218 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %2219 = fadd double %2214, %2218
  %2220 = bitcast i8* %2209 to double*
  store double %2219, double* %2220, align 1
  %2221 = getelementptr inbounds i8, i8* %2209, i64 8
  %2222 = bitcast i8* %2221 to i64*
  store i64 %2217, i64* %2222, align 1
  store %struct.Memory* %loadMem_4007e7, %struct.Memory** %MEMORY
  %loadMem_4007f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 15
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2229, i64 0, i64 4
  %YMM4.i108 = bitcast %union.VectorReg* %2230 to %"class.std::bitset"*
  %2231 = bitcast %"class.std::bitset"* %YMM4.i108 to i8*
  %2232 = bitcast %"class.std::bitset"* %YMM4.i108 to i8*
  %2233 = load i64, i64* %RBP.i107
  %2234 = sub i64 %2233, 40
  %2235 = load i64, i64* %PC.i106
  %2236 = add i64 %2235, 5
  store i64 %2236, i64* %PC.i106
  %2237 = bitcast i8* %2232 to double*
  %2238 = load double, double* %2237, align 1
  %2239 = getelementptr inbounds i8, i8* %2232, i64 8
  %2240 = bitcast i8* %2239 to i64*
  %2241 = load i64, i64* %2240, align 1
  %2242 = inttoptr i64 %2234 to double*
  %2243 = load double, double* %2242
  %2244 = fmul double %2238, %2243
  %2245 = bitcast i8* %2231 to double*
  store double %2244, double* %2245, align 1
  %2246 = getelementptr inbounds i8, i8* %2231, i64 8
  %2247 = bitcast i8* %2246 to i64*
  store i64 %2241, i64* %2247, align 1
  store %struct.Memory* %loadMem_4007f0, %struct.Memory** %MEMORY
  %loadMem_4007f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2251, i64 0, i64 4
  %YMM4.i105 = bitcast %union.VectorReg* %2252 to %"class.std::bitset"*
  %2253 = bitcast %"class.std::bitset"* %YMM4.i105 to i8*
  %2254 = bitcast %"class.std::bitset"* %YMM4.i105 to i8*
  %2255 = load i64, i64* %PC.i104
  %2256 = add i64 %2255, 9
  store i64 %2256, i64* %PC.i104
  %2257 = bitcast i8* %2254 to double*
  %2258 = load double, double* %2257, align 1
  %2259 = getelementptr inbounds i8, i8* %2254, i64 8
  %2260 = bitcast i8* %2259 to i64*
  %2261 = load i64, i64* %2260, align 1
  %2262 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %2263 = fadd double %2258, %2262
  %2264 = bitcast i8* %2253 to double*
  store double %2263, double* %2264, align 1
  %2265 = getelementptr inbounds i8, i8* %2253, i64 8
  %2266 = bitcast i8* %2265 to i64*
  store i64 %2261, i64* %2266, align 1
  store %struct.Memory* %loadMem_4007f5, %struct.Memory** %MEMORY
  %loadMem_4007fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 15
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2273, i64 0, i64 4
  %YMM4.i103 = bitcast %union.VectorReg* %2274 to %"class.std::bitset"*
  %2275 = bitcast %"class.std::bitset"* %YMM4.i103 to i8*
  %2276 = bitcast %"class.std::bitset"* %YMM4.i103 to i8*
  %2277 = load i64, i64* %RBP.i102
  %2278 = sub i64 %2277, 40
  %2279 = load i64, i64* %PC.i101
  %2280 = add i64 %2279, 5
  store i64 %2280, i64* %PC.i101
  %2281 = bitcast i8* %2276 to double*
  %2282 = load double, double* %2281, align 1
  %2283 = getelementptr inbounds i8, i8* %2276, i64 8
  %2284 = bitcast i8* %2283 to i64*
  %2285 = load i64, i64* %2284, align 1
  %2286 = inttoptr i64 %2278 to double*
  %2287 = load double, double* %2286
  %2288 = fmul double %2282, %2287
  %2289 = bitcast i8* %2275 to double*
  store double %2288, double* %2289, align 1
  %2290 = getelementptr inbounds i8, i8* %2275, i64 8
  %2291 = bitcast i8* %2290 to i64*
  store i64 %2285, i64* %2291, align 1
  store %struct.Memory* %loadMem_4007fe, %struct.Memory** %MEMORY
  %loadMem_400803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 33
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2295, i64 0, i64 4
  %YMM4.i100 = bitcast %union.VectorReg* %2296 to %"class.std::bitset"*
  %2297 = bitcast %"class.std::bitset"* %YMM4.i100 to i8*
  %2298 = bitcast %"class.std::bitset"* %YMM4.i100 to i8*
  %2299 = load i64, i64* %PC.i99
  %2300 = add i64 %2299, 9
  store i64 %2300, i64* %PC.i99
  %2301 = bitcast i8* %2298 to double*
  %2302 = load double, double* %2301, align 1
  %2303 = getelementptr inbounds i8, i8* %2298, i64 8
  %2304 = bitcast i8* %2303 to i64*
  %2305 = load i64, i64* %2304, align 1
  %2306 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %2307 = fadd double %2302, %2306
  %2308 = bitcast i8* %2297 to double*
  store double %2307, double* %2308, align 1
  %2309 = getelementptr inbounds i8, i8* %2297, i64 8
  %2310 = bitcast i8* %2309 to i64*
  store i64 %2305, i64* %2310, align 1
  store %struct.Memory* %loadMem_400803, %struct.Memory** %MEMORY
  %loadMem_40080c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 33
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2314, i64 0, i64 3
  %YMM3.i97 = bitcast %union.VectorReg* %2315 to %"class.std::bitset"*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2316, i64 0, i64 4
  %XMM4.i98 = bitcast %union.VectorReg* %2317 to %union.vec128_t*
  %2318 = bitcast %"class.std::bitset"* %YMM3.i97 to i8*
  %2319 = bitcast %"class.std::bitset"* %YMM3.i97 to i8*
  %2320 = bitcast %union.vec128_t* %XMM4.i98 to i8*
  %2321 = load i64, i64* %PC.i96
  %2322 = add i64 %2321, 4
  store i64 %2322, i64* %PC.i96
  %2323 = bitcast i8* %2319 to double*
  %2324 = load double, double* %2323, align 1
  %2325 = getelementptr inbounds i8, i8* %2319, i64 8
  %2326 = bitcast i8* %2325 to i64*
  %2327 = load i64, i64* %2326, align 1
  %2328 = bitcast i8* %2320 to double*
  %2329 = load double, double* %2328, align 1
  %2330 = fmul double %2324, %2329
  %2331 = bitcast i8* %2318 to double*
  store double %2330, double* %2331, align 1
  %2332 = getelementptr inbounds i8, i8* %2318, i64 8
  %2333 = bitcast i8* %2332 to i64*
  store i64 %2327, i64* %2333, align 1
  store %struct.Memory* %loadMem_40080c, %struct.Memory** %MEMORY
  %loadMem_400810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2337, i64 0, i64 3
  %XMM3.i95 = bitcast %union.VectorReg* %2338 to %union.vec128_t*
  %2339 = bitcast %union.vec128_t* %XMM3.i95 to i8*
  %2340 = load i64, i64* %PC.i94
  %2341 = add i64 %2340, 9
  store i64 %2341, i64* %PC.i94
  %2342 = bitcast i8* %2339 to double*
  %2343 = load double, double* %2342, align 1
  store double %2343, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_400810, %struct.Memory** %MEMORY
  %loadMem_400819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 33
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 15
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2350, i64 0, i64 3
  %YMM3.i93 = bitcast %union.VectorReg* %2351 to %"class.std::bitset"*
  %2352 = bitcast %"class.std::bitset"* %YMM3.i93 to i8*
  %2353 = load i64, i64* %RBP.i92
  %2354 = sub i64 %2353, 40
  %2355 = load i64, i64* %PC.i91
  %2356 = add i64 %2355, 5
  store i64 %2356, i64* %PC.i91
  %2357 = inttoptr i64 %2354 to double*
  %2358 = load double, double* %2357
  %2359 = bitcast i8* %2352 to double*
  store double %2358, double* %2359, align 1
  %2360 = getelementptr inbounds i8, i8* %2352, i64 8
  %2361 = bitcast i8* %2360 to double*
  store double 0.000000e+00, double* %2361, align 1
  store %struct.Memory* %loadMem_400819, %struct.Memory** %MEMORY
  %loadMem_40081e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2368, i64 0, i64 4
  %YMM4.i90 = bitcast %union.VectorReg* %2369 to %"class.std::bitset"*
  %2370 = bitcast %"class.std::bitset"* %YMM4.i90 to i8*
  %2371 = load i64, i64* %RBP.i89
  %2372 = sub i64 %2371, 40
  %2373 = load i64, i64* %PC.i88
  %2374 = add i64 %2373, 5
  store i64 %2374, i64* %PC.i88
  %2375 = inttoptr i64 %2372 to double*
  %2376 = load double, double* %2375
  %2377 = bitcast i8* %2370 to double*
  store double %2376, double* %2377, align 1
  %2378 = getelementptr inbounds i8, i8* %2370, i64 8
  %2379 = bitcast i8* %2378 to double*
  store double 0.000000e+00, double* %2379, align 1
  store %struct.Memory* %loadMem_40081e, %struct.Memory** %MEMORY
  %loadMem_400823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2386, i64 0, i64 5
  %YMM5.i87 = bitcast %union.VectorReg* %2387 to %"class.std::bitset"*
  %2388 = bitcast %"class.std::bitset"* %YMM5.i87 to i8*
  %2389 = load i64, i64* %RBP.i86
  %2390 = sub i64 %2389, 40
  %2391 = load i64, i64* %PC.i85
  %2392 = add i64 %2391, 5
  store i64 %2392, i64* %PC.i85
  %2393 = inttoptr i64 %2390 to double*
  %2394 = load double, double* %2393
  %2395 = bitcast i8* %2388 to double*
  store double %2394, double* %2395, align 1
  %2396 = getelementptr inbounds i8, i8* %2388, i64 8
  %2397 = bitcast i8* %2396 to double*
  store double 0.000000e+00, double* %2397, align 1
  store %struct.Memory* %loadMem_400823, %struct.Memory** %MEMORY
  %loadMem_400828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 33
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 15
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2404, i64 0, i64 6
  %YMM6.i84 = bitcast %union.VectorReg* %2405 to %"class.std::bitset"*
  %2406 = bitcast %"class.std::bitset"* %YMM6.i84 to i8*
  %2407 = load i64, i64* %RBP.i83
  %2408 = sub i64 %2407, 40
  %2409 = load i64, i64* %PC.i82
  %2410 = add i64 %2409, 5
  store i64 %2410, i64* %PC.i82
  %2411 = inttoptr i64 %2408 to double*
  %2412 = load double, double* %2411
  %2413 = bitcast i8* %2406 to double*
  store double %2412, double* %2413, align 1
  %2414 = getelementptr inbounds i8, i8* %2406, i64 8
  %2415 = bitcast i8* %2414 to double*
  store double 0.000000e+00, double* %2415, align 1
  store %struct.Memory* %loadMem_400828, %struct.Memory** %MEMORY
  %loadMem_40082d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 15
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2422, i64 0, i64 7
  %YMM7.i81 = bitcast %union.VectorReg* %2423 to %"class.std::bitset"*
  %2424 = bitcast %"class.std::bitset"* %YMM7.i81 to i8*
  %2425 = load i64, i64* %RBP.i80
  %2426 = sub i64 %2425, 40
  %2427 = load i64, i64* %PC.i79
  %2428 = add i64 %2427, 5
  store i64 %2428, i64* %PC.i79
  %2429 = inttoptr i64 %2426 to double*
  %2430 = load double, double* %2429
  %2431 = bitcast i8* %2424 to double*
  store double %2430, double* %2431, align 1
  %2432 = getelementptr inbounds i8, i8* %2424, i64 8
  %2433 = bitcast i8* %2432 to double*
  store double 0.000000e+00, double* %2433, align 1
  store %struct.Memory* %loadMem_40082d, %struct.Memory** %MEMORY
  %loadMem_400832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2438 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2437, i64 0, i64 8
  %YMM8.i78 = bitcast %union.VectorReg* %2438 to %"class.std::bitset"*
  %2439 = bitcast %"class.std::bitset"* %YMM8.i78 to i8*
  %2440 = load i64, i64* %PC.i77
  %2441 = add i64 %2440, 10
  store i64 %2441, i64* %PC.i77
  %2442 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %2443 = bitcast i8* %2439 to double*
  store double %2442, double* %2443, align 1
  %2444 = getelementptr inbounds i8, i8* %2439, i64 8
  %2445 = bitcast i8* %2444 to double*
  store double 0.000000e+00, double* %2445, align 1
  store %struct.Memory* %loadMem_400832, %struct.Memory** %MEMORY
  %loadMem_40083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 15
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %2451 to i64*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2453 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2452, i64 0, i64 8
  %YMM8.i76 = bitcast %union.VectorReg* %2453 to %"class.std::bitset"*
  %2454 = bitcast %"class.std::bitset"* %YMM8.i76 to i8*
  %2455 = bitcast %"class.std::bitset"* %YMM8.i76 to i8*
  %2456 = load i64, i64* %RBP.i75
  %2457 = sub i64 %2456, 40
  %2458 = load i64, i64* %PC.i74
  %2459 = add i64 %2458, 6
  store i64 %2459, i64* %PC.i74
  %2460 = bitcast i8* %2455 to double*
  %2461 = load double, double* %2460, align 1
  %2462 = getelementptr inbounds i8, i8* %2455, i64 8
  %2463 = bitcast i8* %2462 to i64*
  %2464 = load i64, i64* %2463, align 1
  %2465 = inttoptr i64 %2457 to double*
  %2466 = load double, double* %2465
  %2467 = fmul double %2461, %2466
  %2468 = bitcast i8* %2454 to double*
  store double %2467, double* %2468, align 1
  %2469 = getelementptr inbounds i8, i8* %2454, i64 8
  %2470 = bitcast i8* %2469 to i64*
  store i64 %2464, i64* %2470, align 1
  store %struct.Memory* %loadMem_40083c, %struct.Memory** %MEMORY
  %loadMem_400842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 33
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2474, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %2475 to %"class.std::bitset"*
  %2476 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %2477 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %2478 = load i64, i64* %PC.i73
  %2479 = add i64 %2478, 10
  store i64 %2479, i64* %PC.i73
  %2480 = bitcast i8* %2477 to double*
  %2481 = load double, double* %2480, align 1
  %2482 = getelementptr inbounds i8, i8* %2477, i64 8
  %2483 = bitcast i8* %2482 to i64*
  %2484 = load i64, i64* %2483, align 1
  %2485 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %2486 = fadd double %2481, %2485
  %2487 = bitcast i8* %2476 to double*
  store double %2486, double* %2487, align 1
  %2488 = getelementptr inbounds i8, i8* %2476, i64 8
  %2489 = bitcast i8* %2488 to i64*
  store i64 %2484, i64* %2489, align 1
  store %struct.Memory* %loadMem_400842, %struct.Memory** %MEMORY
  %loadMem_40084c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2493, i64 0, i64 7
  %YMM7.i72 = bitcast %union.VectorReg* %2494 to %"class.std::bitset"*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2495, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %2496 to %union.vec128_t*
  %2497 = bitcast %"class.std::bitset"* %YMM7.i72 to i8*
  %2498 = bitcast %"class.std::bitset"* %YMM7.i72 to i8*
  %2499 = bitcast %union.vec128_t* %XMM8.i to i8*
  %2500 = load i64, i64* %PC.i71
  %2501 = add i64 %2500, 5
  store i64 %2501, i64* %PC.i71
  %2502 = bitcast i8* %2498 to double*
  %2503 = load double, double* %2502, align 1
  %2504 = getelementptr inbounds i8, i8* %2498, i64 8
  %2505 = bitcast i8* %2504 to i64*
  %2506 = load i64, i64* %2505, align 1
  %2507 = bitcast i8* %2499 to double*
  %2508 = load double, double* %2507, align 1
  %2509 = fmul double %2503, %2508
  %2510 = bitcast i8* %2497 to double*
  store double %2509, double* %2510, align 1
  %2511 = getelementptr inbounds i8, i8* %2497, i64 8
  %2512 = bitcast i8* %2511 to i64*
  store i64 %2506, i64* %2512, align 1
  store %struct.Memory* %loadMem_40084c, %struct.Memory** %MEMORY
  %loadMem_400851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2516, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %2517 to %"class.std::bitset"*
  %2518 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %2519 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %2520 = load i64, i64* %PC.i70
  %2521 = add i64 %2520, 9
  store i64 %2521, i64* %PC.i70
  %2522 = bitcast i8* %2519 to double*
  %2523 = load double, double* %2522, align 1
  %2524 = getelementptr inbounds i8, i8* %2519, i64 8
  %2525 = bitcast i8* %2524 to i64*
  %2526 = load i64, i64* %2525, align 1
  %2527 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %2528 = fadd double %2523, %2527
  %2529 = bitcast i8* %2518 to double*
  store double %2528, double* %2529, align 1
  %2530 = getelementptr inbounds i8, i8* %2518, i64 8
  %2531 = bitcast i8* %2530 to i64*
  store i64 %2526, i64* %2531, align 1
  store %struct.Memory* %loadMem_400851, %struct.Memory** %MEMORY
  %loadMem_40085a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2535, i64 0, i64 6
  %YMM6.i69 = bitcast %union.VectorReg* %2536 to %"class.std::bitset"*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2538 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2537, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %2538 to %union.vec128_t*
  %2539 = bitcast %"class.std::bitset"* %YMM6.i69 to i8*
  %2540 = bitcast %"class.std::bitset"* %YMM6.i69 to i8*
  %2541 = bitcast %union.vec128_t* %XMM7.i to i8*
  %2542 = load i64, i64* %PC.i68
  %2543 = add i64 %2542, 4
  store i64 %2543, i64* %PC.i68
  %2544 = bitcast i8* %2540 to double*
  %2545 = load double, double* %2544, align 1
  %2546 = getelementptr inbounds i8, i8* %2540, i64 8
  %2547 = bitcast i8* %2546 to i64*
  %2548 = load i64, i64* %2547, align 1
  %2549 = bitcast i8* %2541 to double*
  %2550 = load double, double* %2549, align 1
  %2551 = fmul double %2545, %2550
  %2552 = bitcast i8* %2539 to double*
  store double %2551, double* %2552, align 1
  %2553 = getelementptr inbounds i8, i8* %2539, i64 8
  %2554 = bitcast i8* %2553 to i64*
  store i64 %2548, i64* %2554, align 1
  store %struct.Memory* %loadMem_40085a, %struct.Memory** %MEMORY
  %loadMem_40085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 33
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2557 to i64*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2558, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %2559 to %"class.std::bitset"*
  %2560 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %2561 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %2562 = load i64, i64* %PC.i67
  %2563 = add i64 %2562, 9
  store i64 %2563, i64* %PC.i67
  %2564 = bitcast i8* %2561 to double*
  %2565 = load double, double* %2564, align 1
  %2566 = getelementptr inbounds i8, i8* %2561, i64 8
  %2567 = bitcast i8* %2566 to i64*
  %2568 = load i64, i64* %2567, align 1
  %2569 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %2570 = fadd double %2565, %2569
  %2571 = bitcast i8* %2560 to double*
  store double %2570, double* %2571, align 1
  %2572 = getelementptr inbounds i8, i8* %2560, i64 8
  %2573 = bitcast i8* %2572 to i64*
  store i64 %2568, i64* %2573, align 1
  store %struct.Memory* %loadMem_40085e, %struct.Memory** %MEMORY
  %loadMem_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2577, i64 0, i64 5
  %YMM5.i66 = bitcast %union.VectorReg* %2578 to %"class.std::bitset"*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2579, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %2580 to %union.vec128_t*
  %2581 = bitcast %"class.std::bitset"* %YMM5.i66 to i8*
  %2582 = bitcast %"class.std::bitset"* %YMM5.i66 to i8*
  %2583 = bitcast %union.vec128_t* %XMM6.i to i8*
  %2584 = load i64, i64* %PC.i65
  %2585 = add i64 %2584, 4
  store i64 %2585, i64* %PC.i65
  %2586 = bitcast i8* %2582 to double*
  %2587 = load double, double* %2586, align 1
  %2588 = getelementptr inbounds i8, i8* %2582, i64 8
  %2589 = bitcast i8* %2588 to i64*
  %2590 = load i64, i64* %2589, align 1
  %2591 = bitcast i8* %2583 to double*
  %2592 = load double, double* %2591, align 1
  %2593 = fmul double %2587, %2592
  %2594 = bitcast i8* %2581 to double*
  store double %2593, double* %2594, align 1
  %2595 = getelementptr inbounds i8, i8* %2581, i64 8
  %2596 = bitcast i8* %2595 to i64*
  store i64 %2590, i64* %2596, align 1
  store %struct.Memory* %loadMem_400867, %struct.Memory** %MEMORY
  %loadMem_40086b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2601 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2600, i64 0, i64 5
  %YMM5.i64 = bitcast %union.VectorReg* %2601 to %"class.std::bitset"*
  %2602 = bitcast %"class.std::bitset"* %YMM5.i64 to i8*
  %2603 = bitcast %"class.std::bitset"* %YMM5.i64 to i8*
  %2604 = load i64, i64* %PC.i63
  %2605 = add i64 %2604, 9
  store i64 %2605, i64* %PC.i63
  %2606 = bitcast i8* %2603 to double*
  %2607 = load double, double* %2606, align 1
  %2608 = getelementptr inbounds i8, i8* %2603, i64 8
  %2609 = bitcast i8* %2608 to i64*
  %2610 = load i64, i64* %2609, align 1
  %2611 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %2612 = fadd double %2607, %2611
  %2613 = bitcast i8* %2602 to double*
  store double %2612, double* %2613, align 1
  %2614 = getelementptr inbounds i8, i8* %2602, i64 8
  %2615 = bitcast i8* %2614 to i64*
  store i64 %2610, i64* %2615, align 1
  store %struct.Memory* %loadMem_40086b, %struct.Memory** %MEMORY
  %loadMem_400874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2619, i64 0, i64 4
  %YMM4.i61 = bitcast %union.VectorReg* %2620 to %"class.std::bitset"*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2621, i64 0, i64 5
  %XMM5.i62 = bitcast %union.VectorReg* %2622 to %union.vec128_t*
  %2623 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %2624 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %2625 = bitcast %union.vec128_t* %XMM5.i62 to i8*
  %2626 = load i64, i64* %PC.i60
  %2627 = add i64 %2626, 4
  store i64 %2627, i64* %PC.i60
  %2628 = bitcast i8* %2624 to double*
  %2629 = load double, double* %2628, align 1
  %2630 = getelementptr inbounds i8, i8* %2624, i64 8
  %2631 = bitcast i8* %2630 to i64*
  %2632 = load i64, i64* %2631, align 1
  %2633 = bitcast i8* %2625 to double*
  %2634 = load double, double* %2633, align 1
  %2635 = fmul double %2629, %2634
  %2636 = bitcast i8* %2623 to double*
  store double %2635, double* %2636, align 1
  %2637 = getelementptr inbounds i8, i8* %2623, i64 8
  %2638 = bitcast i8* %2637 to i64*
  store i64 %2632, i64* %2638, align 1
  store %struct.Memory* %loadMem_400874, %struct.Memory** %MEMORY
  %loadMem_400878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2642, i64 0, i64 4
  %YMM4.i59 = bitcast %union.VectorReg* %2643 to %"class.std::bitset"*
  %2644 = bitcast %"class.std::bitset"* %YMM4.i59 to i8*
  %2645 = bitcast %"class.std::bitset"* %YMM4.i59 to i8*
  %2646 = load i64, i64* %PC.i58
  %2647 = add i64 %2646, 9
  store i64 %2647, i64* %PC.i58
  %2648 = bitcast i8* %2645 to double*
  %2649 = load double, double* %2648, align 1
  %2650 = getelementptr inbounds i8, i8* %2645, i64 8
  %2651 = bitcast i8* %2650 to i64*
  %2652 = load i64, i64* %2651, align 1
  %2653 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %2654 = fadd double %2649, %2653
  %2655 = bitcast i8* %2644 to double*
  store double %2654, double* %2655, align 1
  %2656 = getelementptr inbounds i8, i8* %2644, i64 8
  %2657 = bitcast i8* %2656 to i64*
  store i64 %2652, i64* %2657, align 1
  store %struct.Memory* %loadMem_400878, %struct.Memory** %MEMORY
  %loadMem_400881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 33
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2662 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2661, i64 0, i64 3
  %YMM3.i56 = bitcast %union.VectorReg* %2662 to %"class.std::bitset"*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2663, i64 0, i64 4
  %XMM4.i57 = bitcast %union.VectorReg* %2664 to %union.vec128_t*
  %2665 = bitcast %"class.std::bitset"* %YMM3.i56 to i8*
  %2666 = bitcast %"class.std::bitset"* %YMM3.i56 to i8*
  %2667 = bitcast %union.vec128_t* %XMM4.i57 to i8*
  %2668 = load i64, i64* %PC.i55
  %2669 = add i64 %2668, 4
  store i64 %2669, i64* %PC.i55
  %2670 = bitcast i8* %2666 to double*
  %2671 = load double, double* %2670, align 1
  %2672 = getelementptr inbounds i8, i8* %2666, i64 8
  %2673 = bitcast i8* %2672 to i64*
  %2674 = load i64, i64* %2673, align 1
  %2675 = bitcast i8* %2667 to double*
  %2676 = load double, double* %2675, align 1
  %2677 = fmul double %2671, %2676
  %2678 = bitcast i8* %2665 to double*
  store double %2677, double* %2678, align 1
  %2679 = getelementptr inbounds i8, i8* %2665, i64 8
  %2680 = bitcast i8* %2679 to i64*
  store i64 %2674, i64* %2680, align 1
  store %struct.Memory* %loadMem_400881, %struct.Memory** %MEMORY
  %loadMem_400885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2685 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2684, i64 0, i64 3
  %YMM3.i54 = bitcast %union.VectorReg* %2685 to %"class.std::bitset"*
  %2686 = bitcast %"class.std::bitset"* %YMM3.i54 to i8*
  %2687 = bitcast %"class.std::bitset"* %YMM3.i54 to i8*
  %2688 = load i64, i64* %PC.i53
  %2689 = add i64 %2688, 9
  store i64 %2689, i64* %PC.i53
  %2690 = bitcast i8* %2687 to double*
  %2691 = load double, double* %2690, align 1
  %2692 = getelementptr inbounds i8, i8* %2687, i64 8
  %2693 = bitcast i8* %2692 to i64*
  %2694 = load i64, i64* %2693, align 1
  %2695 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %2696 = fadd double %2691, %2695
  %2697 = bitcast i8* %2686 to double*
  store double %2696, double* %2697, align 1
  %2698 = getelementptr inbounds i8, i8* %2686, i64 8
  %2699 = bitcast i8* %2698 to i64*
  store i64 %2694, i64* %2699, align 1
  store %struct.Memory* %loadMem_400885, %struct.Memory** %MEMORY
  %loadMem_40088e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2701 = getelementptr inbounds %struct.GPR, %struct.GPR* %2700, i32 0, i32 33
  %2702 = getelementptr inbounds %struct.Reg, %struct.Reg* %2701, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2702 to i64*
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2704 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2703, i64 0, i64 3
  %XMM3.i52 = bitcast %union.VectorReg* %2704 to %union.vec128_t*
  %2705 = bitcast %union.vec128_t* %XMM3.i52 to i8*
  %2706 = load i64, i64* %PC.i51
  %2707 = add i64 %2706, 9
  store i64 %2707, i64* %PC.i51
  %2708 = bitcast i8* %2705 to double*
  %2709 = load double, double* %2708, align 1
  store double %2709, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  store %struct.Memory* %loadMem_40088e, %struct.Memory** %MEMORY
  %loadMem_400897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 33
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2712 to i64*
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2714 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2713, i64 0, i64 3
  %YMM3.i50 = bitcast %union.VectorReg* %2714 to %"class.std::bitset"*
  %2715 = bitcast %"class.std::bitset"* %YMM3.i50 to i8*
  %2716 = load i64, i64* %PC.i49
  %2717 = add i64 %2716, 9
  store i64 %2717, i64* %PC.i49
  %2718 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2719 = bitcast i8* %2715 to double*
  store double %2718, double* %2719, align 1
  %2720 = getelementptr inbounds i8, i8* %2715, i64 8
  %2721 = bitcast i8* %2720 to double*
  store double 0.000000e+00, double* %2721, align 1
  store %struct.Memory* %loadMem_400897, %struct.Memory** %MEMORY
  %loadMem_4008a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2726 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2725, i64 0, i64 3
  %YMM3.i48 = bitcast %union.VectorReg* %2726 to %"class.std::bitset"*
  %2727 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2728 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2729 = load i64, i64* %PC.i47
  %2730 = add i64 %2729, 9
  store i64 %2730, i64* %PC.i47
  %2731 = bitcast i8* %2728 to double*
  %2732 = load double, double* %2731, align 1
  %2733 = getelementptr inbounds i8, i8* %2728, i64 8
  %2734 = bitcast i8* %2733 to i64*
  %2735 = load i64, i64* %2734, align 1
  %2736 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %2737 = fmul double %2732, %2736
  %2738 = bitcast i8* %2727 to double*
  store double %2737, double* %2738, align 1
  %2739 = getelementptr inbounds i8, i8* %2727, i64 8
  %2740 = bitcast i8* %2739 to i64*
  store i64 %2735, i64* %2740, align 1
  store %struct.Memory* %loadMem_4008a0, %struct.Memory** %MEMORY
  %loadMem_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 33
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2744, i64 0, i64 3
  %XMM3.i46 = bitcast %union.VectorReg* %2745 to %union.vec128_t*
  %2746 = bitcast %union.vec128_t* %XMM3.i46 to i8*
  %2747 = load i64, i64* %PC.i45
  %2748 = add i64 %2747, 9
  store i64 %2748, i64* %PC.i45
  %2749 = bitcast i8* %2746 to double*
  %2750 = load double, double* %2749, align 1
  store double %2750, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_4008a9, %struct.Memory** %MEMORY
  %loadMem_4008b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 15
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2758 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2757, i64 0, i64 3
  %YMM3.i44 = bitcast %union.VectorReg* %2758 to %"class.std::bitset"*
  %2759 = bitcast %"class.std::bitset"* %YMM3.i44 to i8*
  %2760 = load i64, i64* %RBP.i43
  %2761 = sub i64 %2760, 48
  %2762 = load i64, i64* %PC.i42
  %2763 = add i64 %2762, 5
  store i64 %2763, i64* %PC.i42
  %2764 = inttoptr i64 %2761 to double*
  %2765 = load double, double* %2764
  %2766 = bitcast i8* %2759 to double*
  store double %2765, double* %2766, align 1
  %2767 = getelementptr inbounds i8, i8* %2759, i64 8
  %2768 = bitcast i8* %2767 to double*
  store double 0.000000e+00, double* %2768, align 1
  store %struct.Memory* %loadMem_4008b2, %struct.Memory** %MEMORY
  %loadMem_4008b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2773 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2772, i64 0, i64 4
  %YMM4.i41 = bitcast %union.VectorReg* %2773 to %"class.std::bitset"*
  %2774 = bitcast %"class.std::bitset"* %YMM4.i41 to i8*
  %2775 = load i64, i64* %PC.i40
  %2776 = add i64 %2775, 9
  store i64 %2776, i64* %PC.i40
  %2777 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2778 = bitcast i8* %2774 to double*
  store double %2777, double* %2778, align 1
  %2779 = getelementptr inbounds i8, i8* %2774, i64 8
  %2780 = bitcast i8* %2779 to double*
  store double 0.000000e+00, double* %2780, align 1
  store %struct.Memory* %loadMem_4008b7, %struct.Memory** %MEMORY
  %loadMem_4008c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2784, i64 0, i64 5
  %YMM5.i39 = bitcast %union.VectorReg* %2785 to %"class.std::bitset"*
  %2786 = bitcast %"class.std::bitset"* %YMM5.i39 to i8*
  %2787 = load i64, i64* %PC.i38
  %2788 = add i64 %2787, 9
  store i64 %2788, i64* %PC.i38
  %2789 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2790 = bitcast i8* %2786 to double*
  store double %2789, double* %2790, align 1
  %2791 = getelementptr inbounds i8, i8* %2786, i64 8
  %2792 = bitcast i8* %2791 to double*
  store double 0.000000e+00, double* %2792, align 1
  store %struct.Memory* %loadMem_4008c0, %struct.Memory** %MEMORY
  %loadMem_4008c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 33
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 15
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2800 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2799, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2800 to %"class.std::bitset"*
  %2801 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2802 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2803 = load i64, i64* %RBP.i37
  %2804 = sub i64 %2803, 16
  %2805 = load i64, i64* %PC.i36
  %2806 = add i64 %2805, 5
  store i64 %2806, i64* %PC.i36
  %2807 = bitcast i8* %2802 to double*
  %2808 = load double, double* %2807, align 1
  %2809 = getelementptr inbounds i8, i8* %2802, i64 8
  %2810 = bitcast i8* %2809 to i64*
  %2811 = load i64, i64* %2810, align 1
  %2812 = inttoptr i64 %2804 to double*
  %2813 = load double, double* %2812
  %2814 = fmul double %2808, %2813
  %2815 = bitcast i8* %2801 to double*
  store double %2814, double* %2815, align 1
  %2816 = getelementptr inbounds i8, i8* %2801, i64 8
  %2817 = bitcast i8* %2816 to i64*
  store i64 %2811, i64* %2817, align 1
  store %struct.Memory* %loadMem_4008c9, %struct.Memory** %MEMORY
  %loadMem_4008ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2822 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2821, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2822 to %"class.std::bitset"*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2823, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2824 to %union.vec128_t*
  %2825 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2826 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2827 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2828 = load i64, i64* %PC.i35
  %2829 = add i64 %2828, 4
  store i64 %2829, i64* %PC.i35
  %2830 = bitcast i8* %2826 to double*
  %2831 = load double, double* %2830, align 1
  %2832 = getelementptr inbounds i8, i8* %2826, i64 8
  %2833 = bitcast i8* %2832 to i64*
  %2834 = load i64, i64* %2833, align 1
  %2835 = bitcast i8* %2827 to double*
  %2836 = load double, double* %2835, align 1
  %2837 = fadd double %2831, %2836
  %2838 = bitcast i8* %2825 to double*
  store double %2837, double* %2838, align 1
  %2839 = getelementptr inbounds i8, i8* %2825, i64 8
  %2840 = bitcast i8* %2839 to i64*
  store i64 %2834, i64* %2840, align 1
  store %struct.Memory* %loadMem_4008ce, %struct.Memory** %MEMORY
  %loadMem_4008d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2844, i64 0, i64 3
  %YMM3.i34 = bitcast %union.VectorReg* %2845 to %"class.std::bitset"*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2847 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2846, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2847 to %union.vec128_t*
  %2848 = bitcast %"class.std::bitset"* %YMM3.i34 to i8*
  %2849 = bitcast %"class.std::bitset"* %YMM3.i34 to i8*
  %2850 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2851 = load i64, i64* %PC.i33
  %2852 = add i64 %2851, 4
  store i64 %2852, i64* %PC.i33
  %2853 = bitcast i8* %2849 to double*
  %2854 = load double, double* %2853, align 1
  %2855 = getelementptr inbounds i8, i8* %2849, i64 8
  %2856 = bitcast i8* %2855 to i64*
  %2857 = load i64, i64* %2856, align 1
  %2858 = bitcast i8* %2850 to double*
  %2859 = load double, double* %2858, align 1
  %2860 = fmul double %2854, %2859
  %2861 = bitcast i8* %2848 to double*
  store double %2860, double* %2861, align 1
  %2862 = getelementptr inbounds i8, i8* %2848, i64 8
  %2863 = bitcast i8* %2862 to i64*
  store i64 %2857, i64* %2863, align 1
  store %struct.Memory* %loadMem_4008d2, %struct.Memory** %MEMORY
  %loadMem_4008d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2867, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2868 to %"class.std::bitset"*
  %2869 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2870 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2871 = load i64, i64* %PC.i32
  %2872 = add i64 %2871, 9
  store i64 %2872, i64* %PC.i32
  %2873 = bitcast i8* %2870 to double*
  %2874 = load double, double* %2873, align 1
  %2875 = getelementptr inbounds i8, i8* %2870, i64 8
  %2876 = bitcast i8* %2875 to i64*
  %2877 = load i64, i64* %2876, align 1
  %2878 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2879 = fdiv double %2874, %2878
  %2880 = bitcast i8* %2869 to double*
  store double %2879, double* %2880, align 1
  %2881 = getelementptr inbounds i8, i8* %2869, i64 8
  %2882 = bitcast i8* %2881 to i64*
  store i64 %2877, i64* %2882, align 1
  store %struct.Memory* %loadMem_4008d6, %struct.Memory** %MEMORY
  %loadMem_4008df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2886, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2887 to %union.vec128_t*
  %2888 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2889 = load i64, i64* %PC.i31
  %2890 = add i64 %2889, 9
  store i64 %2890, i64* %PC.i31
  %2891 = bitcast i8* %2888 to double*
  %2892 = load double, double* %2891, align 1
  store double %2892, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_4008df, %struct.Memory** %MEMORY
  %loadMem_4008e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 33
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2896, i64 0, i64 2
  %XMM2.i30 = bitcast %union.VectorReg* %2897 to %union.vec128_t*
  %2898 = bitcast %union.vec128_t* %XMM2.i30 to i8*
  %2899 = load i64, i64* %PC.i29
  %2900 = add i64 %2899, 9
  store i64 %2900, i64* %PC.i29
  %2901 = bitcast i8* %2898 to double*
  %2902 = load double, double* %2901, align 1
  store double %2902, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  store %struct.Memory* %loadMem_4008e8, %struct.Memory** %MEMORY
  %loadMem_4008f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2906, i64 0, i64 2
  %YMM2.i28 = bitcast %union.VectorReg* %2907 to %"class.std::bitset"*
  %2908 = bitcast %"class.std::bitset"* %YMM2.i28 to i8*
  %2909 = load i64, i64* %PC.i27
  %2910 = add i64 %2909, 9
  store i64 %2910, i64* %PC.i27
  %2911 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2912 = bitcast i8* %2908 to double*
  store double %2911, double* %2912, align 1
  %2913 = getelementptr inbounds i8, i8* %2908, i64 8
  %2914 = bitcast i8* %2913 to double*
  store double 0.000000e+00, double* %2914, align 1
  store %struct.Memory* %loadMem_4008f1, %struct.Memory** %MEMORY
  %loadMem_4008fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2919 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2918, i64 0, i64 2
  %YMM2.i26 = bitcast %union.VectorReg* %2919 to %"class.std::bitset"*
  %2920 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2921 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2922 = load i64, i64* %PC.i25
  %2923 = add i64 %2922, 9
  store i64 %2923, i64* %PC.i25
  %2924 = bitcast i8* %2921 to double*
  %2925 = load double, double* %2924, align 1
  %2926 = getelementptr inbounds i8, i8* %2921, i64 8
  %2927 = bitcast i8* %2926 to i64*
  %2928 = load i64, i64* %2927, align 1
  %2929 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %2930 = fsub double %2925, %2929
  %2931 = bitcast i8* %2920 to double*
  store double %2930, double* %2931, align 1
  %2932 = getelementptr inbounds i8, i8* %2920, i64 8
  %2933 = bitcast i8* %2932 to i64*
  store i64 %2928, i64* %2933, align 1
  store %struct.Memory* %loadMem_4008fa, %struct.Memory** %MEMORY
  %loadMem_400903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 33
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2937, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2938 to %union.vec128_t*
  %2939 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2940 = load i64, i64* %PC.i24
  %2941 = add i64 %2940, 9
  store i64 %2941, i64* %PC.i24
  %2942 = bitcast i8* %2939 to double*
  %2943 = load double, double* %2942, align 1
  store double %2943, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  store %struct.Memory* %loadMem_400903, %struct.Memory** %MEMORY
  %loadMem_40090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2945 = getelementptr inbounds %struct.GPR, %struct.GPR* %2944, i32 0, i32 33
  %2946 = getelementptr inbounds %struct.Reg, %struct.Reg* %2945, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2946 to i64*
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2947, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %2948 to %"class.std::bitset"*
  %2949 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2950 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2951 = load i64, i64* %PC.i22
  %2952 = add i64 %2951, 9
  store i64 %2952, i64* %PC.i22
  %2953 = bitcast i8* %2950 to double*
  %2954 = load double, double* %2953, align 1
  %2955 = getelementptr inbounds i8, i8* %2950, i64 8
  %2956 = bitcast i8* %2955 to i64*
  %2957 = load i64, i64* %2956, align 1
  %2958 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  %2959 = fmul double %2954, %2958
  %2960 = bitcast i8* %2949 to double*
  store double %2959, double* %2960, align 1
  %2961 = getelementptr inbounds i8, i8* %2949, i64 8
  %2962 = bitcast i8* %2961 to i64*
  store i64 %2957, i64* %2962, align 1
  store %struct.Memory* %loadMem_40090c, %struct.Memory** %MEMORY
  %loadMem_400915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 33
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2965 to i64*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 15
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2969, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2970 to %union.vec128_t*
  %2971 = load i64, i64* %RBP.i21
  %2972 = sub i64 %2971, 112
  %2973 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2974 = load i64, i64* %PC.i20
  %2975 = add i64 %2974, 5
  store i64 %2975, i64* %PC.i20
  %2976 = bitcast i8* %2973 to double*
  %2977 = load double, double* %2976, align 1
  %2978 = inttoptr i64 %2972 to double*
  store double %2977, double* %2978
  store %struct.Memory* %loadMem_400915, %struct.Memory** %MEMORY
  %loadMem_40091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2980 = getelementptr inbounds %struct.GPR, %struct.GPR* %2979, i32 0, i32 33
  %2981 = getelementptr inbounds %struct.Reg, %struct.Reg* %2980, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2981 to i64*
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2982, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2983 to %"class.std::bitset"*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2985 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2984, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2985 to %union.vec128_t*
  %2986 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2987 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2988 = load i64, i64* %PC.i19
  %2989 = add i64 %2988, 3
  store i64 %2989, i64* %PC.i19
  %2990 = bitcast i8* %2987 to <2 x i32>*
  %2991 = load <2 x i32>, <2 x i32>* %2990, align 1
  %2992 = getelementptr inbounds i8, i8* %2987, i64 8
  %2993 = bitcast i8* %2992 to <2 x i32>*
  %2994 = load <2 x i32>, <2 x i32>* %2993, align 1
  %2995 = extractelement <2 x i32> %2991, i32 0
  %2996 = bitcast i8* %2986 to i32*
  store i32 %2995, i32* %2996, align 1
  %2997 = extractelement <2 x i32> %2991, i32 1
  %2998 = getelementptr inbounds i8, i8* %2986, i64 4
  %2999 = bitcast i8* %2998 to i32*
  store i32 %2997, i32* %2999, align 1
  %3000 = extractelement <2 x i32> %2994, i32 0
  %3001 = getelementptr inbounds i8, i8* %2986, i64 8
  %3002 = bitcast i8* %3001 to i32*
  store i32 %3000, i32* %3002, align 1
  %3003 = extractelement <2 x i32> %2994, i32 1
  %3004 = getelementptr inbounds i8, i8* %2986, i64 12
  %3005 = bitcast i8* %3004 to i32*
  store i32 %3003, i32* %3005, align 1
  store %struct.Memory* %loadMem_40091a, %struct.Memory** %MEMORY
  %loadMem_40091d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 15
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %3011 to i64*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3013 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3012, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3013 to %"class.std::bitset"*
  %3014 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3015 = load i64, i64* %RBP.i18
  %3016 = sub i64 %3015, 112
  %3017 = load i64, i64* %PC.i17
  %3018 = add i64 %3017, 5
  store i64 %3018, i64* %PC.i17
  %3019 = inttoptr i64 %3016 to double*
  %3020 = load double, double* %3019
  %3021 = bitcast i8* %3014 to double*
  store double %3020, double* %3021, align 1
  %3022 = getelementptr inbounds i8, i8* %3014, i64 8
  %3023 = bitcast i8* %3022 to double*
  store double 0.000000e+00, double* %3023, align 1
  store %struct.Memory* %loadMem_40091d, %struct.Memory** %MEMORY
  %loadMem_400922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 15
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3030, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3031 to %"class.std::bitset"*
  %3032 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3033 = load i64, i64* %RBP.i16
  %3034 = sub i64 %3033, 112
  %3035 = load i64, i64* %PC.i15
  %3036 = add i64 %3035, 5
  store i64 %3036, i64* %PC.i15
  %3037 = inttoptr i64 %3034 to double*
  %3038 = load double, double* %3037
  %3039 = bitcast i8* %3032 to double*
  store double %3038, double* %3039, align 1
  %3040 = getelementptr inbounds i8, i8* %3032, i64 8
  %3041 = bitcast i8* %3040 to double*
  store double 0.000000e+00, double* %3041, align 1
  store %struct.Memory* %loadMem_400922, %struct.Memory** %MEMORY
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %3048 = bitcast %union.anon* %3047 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3048, i32 0, i32 0
  %3049 = load i64, i64* %PC.i14
  %3050 = add i64 %3049, 2
  store i64 %3050, i64* %PC.i14
  store i8 3, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400927, %struct.Memory** %MEMORY
  %loadMem1_400929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %PC.i13
  %3055 = add i64 %3054, -1337
  %3056 = load i64, i64* %PC.i13
  %3057 = add i64 %3056, 5
  %3058 = load i64, i64* %PC.i13
  %3059 = add i64 %3058, 5
  store i64 %3059, i64* %PC.i13
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3061 = load i64, i64* %3060, align 8
  %3062 = add i64 %3061, -8
  %3063 = inttoptr i64 %3062 to i64*
  store i64 %3057, i64* %3063
  store i64 %3062, i64* %3060, align 8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3055, i64* %3064, align 8
  store %struct.Memory* %loadMem1_400929, %struct.Memory** %MEMORY
  %loadMem2_400929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400929 = load i64, i64* %3
  %3065 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400929)
  store %struct.Memory* %3065, %struct.Memory** %MEMORY
  %loadMem_40092e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 33
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3068 to i64*
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3070 = getelementptr inbounds %struct.GPR, %struct.GPR* %3069, i32 0, i32 5
  %3071 = getelementptr inbounds %struct.Reg, %struct.Reg* %3070, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %3071 to i32*
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 5
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %RCX.i
  %3076 = load i32, i32* %ECX.i9
  %3077 = zext i32 %3076 to i64
  %3078 = load i64, i64* %PC.i8
  %3079 = add i64 %3078, 2
  store i64 %3079, i64* %PC.i8
  %3080 = xor i64 %3077, %3075
  %3081 = trunc i64 %3080 to i32
  %3082 = and i64 %3080, 4294967295
  store i64 %3082, i64* %RCX.i, align 8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3083, align 1
  %3084 = and i32 %3081, 255
  %3085 = call i32 @llvm.ctpop.i32(i32 %3084)
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = xor i8 %3087, 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3088, i8* %3089, align 1
  %3090 = icmp eq i32 %3081, 0
  %3091 = zext i1 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3091, i8* %3092, align 1
  %3093 = lshr i32 %3081, 31
  %3094 = trunc i32 %3093 to i8
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3094, i8* %3095, align 1
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3096, align 1
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3097, align 1
  store %struct.Memory* %loadMem_40092e, %struct.Memory** %MEMORY
  %loadMem_400930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 33
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 1
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3103 to i32*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 15
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3106 to i64*
  %3107 = load i64, i64* %RBP.i7
  %3108 = sub i64 %3107, 116
  %3109 = load i32, i32* %EAX.i
  %3110 = zext i32 %3109 to i64
  %3111 = load i64, i64* %PC.i6
  %3112 = add i64 %3111, 3
  store i64 %3112, i64* %PC.i6
  %3113 = inttoptr i64 %3108 to i32*
  store i32 %3109, i32* %3113
  store %struct.Memory* %loadMem_400930, %struct.Memory** %MEMORY
  %loadMem_400933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 33
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3116 to i64*
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 5
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3119 to i32*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 1
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3122 to i64*
  %3123 = load i32, i32* %ECX.i
  %3124 = zext i32 %3123 to i64
  %3125 = load i64, i64* %PC.i5
  %3126 = add i64 %3125, 2
  store i64 %3126, i64* %PC.i5
  %3127 = and i64 %3124, 4294967295
  store i64 %3127, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400933, %struct.Memory** %MEMORY
  %loadMem_400935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 33
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 13
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %RSP.i
  %3135 = load i64, i64* %PC.i4
  %3136 = add i64 %3135, 7
  store i64 %3136, i64* %PC.i4
  %3137 = add i64 128, %3134
  store i64 %3137, i64* %RSP.i, align 8
  %3138 = icmp ult i64 %3137, %3134
  %3139 = icmp ult i64 %3137, 128
  %3140 = or i1 %3138, %3139
  %3141 = zext i1 %3140 to i8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3141, i8* %3142, align 1
  %3143 = trunc i64 %3137 to i32
  %3144 = and i32 %3143, 255
  %3145 = call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3148, i8* %3149, align 1
  %3150 = xor i64 128, %3134
  %3151 = xor i64 %3150, %3137
  %3152 = lshr i64 %3151, 4
  %3153 = trunc i64 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3154, i8* %3155, align 1
  %3156 = icmp eq i64 %3137, 0
  %3157 = zext i1 %3156 to i8
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3157, i8* %3158, align 1
  %3159 = lshr i64 %3137, 63
  %3160 = trunc i64 %3159 to i8
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3160, i8* %3161, align 1
  %3162 = lshr i64 %3134, 63
  %3163 = xor i64 %3159, %3162
  %3164 = add i64 %3163, %3159
  %3165 = icmp eq i64 %3164, 2
  %3166 = zext i1 %3165 to i8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3166, i8* %3167, align 1
  store %struct.Memory* %loadMem_400935, %struct.Memory** %MEMORY
  %loadMem_40093c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 15
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3173 to i64*
  %3174 = load i64, i64* %PC.i2
  %3175 = add i64 %3174, 1
  store i64 %3175, i64* %PC.i2
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3177 = load i64, i64* %3176, align 8
  %3178 = add i64 %3177, 8
  %3179 = inttoptr i64 %3177 to i64*
  %3180 = load i64, i64* %3179
  store i64 %3180, i64* %RBP.i3, align 8
  store i64 %3178, i64* %3176, align 8
  store %struct.Memory* %loadMem_40093c, %struct.Memory** %MEMORY
  %loadMem_40093d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 33
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3183 to i64*
  %3184 = load i64, i64* %PC.i1
  %3185 = add i64 %3184, 1
  store i64 %3185, i64* %PC.i1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3188 = load i64, i64* %3187, align 8
  %3189 = inttoptr i64 %3188 to i64*
  %3190 = load i64, i64* %3189
  store i64 %3190, i64* %3186, align 8
  %3191 = add i64 %3188, 8
  store i64 %3191, i64* %3187, align 8
  store %struct.Memory* %loadMem_40093d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40093d
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
block_400478:
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_movq__0x400a40___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400a40_type* @G__0x400a40 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x400a08___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400a08_type* @G__0x400a08 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movq__0x400a42___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400a42_type* @G__0x400a42 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x48f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x48f__rip__type* @G_0x48f__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x48f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x48f__rip__type* @G_0x48f__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x48f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x48f__rip__type* @G_0x48f__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x48f__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x48f__rip__type* @G_0x48f__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x48f__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x48f__rip__type* @G_0x48f__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x48f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x48f__rip__type* @G_0x48f__rip_ to i64
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

define %struct.Memory* @routine_movq__0x3d09__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 15625, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm4__0x6012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6012d0_type* @G_0x6012d0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x1e848000__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 512000000, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__0x601260(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm4__0x601288(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x601120(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x6012a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x601278(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x601128(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601128_type* @G_0x601128 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601288___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x601280(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601280_type* @G_0x601280 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movq__0x400a72___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400a72_type* @G__0x400a72 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_imulq__0x2710__MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sext i64 %17 to i128
  %19 = and i128 %18, -18446744073709551616
  %20 = zext i64 %17 to i128
  %21 = or i128 %19, %20
  %22 = mul i128 %21, 10000
  %23 = trunc i128 %22 to i64
  store i64 %23, i64* %RDI, align 8
  %24 = sext i64 %23 to i128
  %25 = icmp ne i128 %24, %22
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = trunc i128 %22 to i32
  %29 = and i32 %28, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i64 %23, 63
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %26, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601260___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601278___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = load double, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdq__rdi___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = sitofp i64 %12 to double
  %16 = bitcast i8* %11 to double*
  store double %15, double* %16, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_movq__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBP
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 1, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %9, 1
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %9, 1
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
  %23 = xor i64 1, %9
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

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = sub i64 %12, %13
  %17 = icmp ult i64 %12, %13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %12
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %12, 63
  %40 = lshr i64 %13, 63
  %41 = xor i64 %40, %39
  %42 = xor i64 %36, %39
  %43 = add i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400767(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cvtsi2sdq__rax___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = sitofp i64 %12 to double
  %16 = bitcast i8* %11 to double*
  store double %15, double* %16, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_movsd_0x601060___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601058___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601048___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601038___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601288___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 32
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movsd_0x601098___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601090___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm7___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = bitcast %union.vec128_t* %XMM7 to i8*
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

define %struct.Memory* @routine_addsd_0x601088___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = bitcast %union.vec128_t* %XMM6 to i8*
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

define %struct.Memory* @routine_addsd_0x601080___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_addsd_0x601078___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
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

define %struct.Memory* @routine_addsd_0x601070___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601288___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40062c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400478:
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

define %struct.Memory* @routine_movq__0x400a96___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400a96_type* @G__0x400a96 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x27c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x27c__rip__type* @G_0x27c__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x27c__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = ptrtoint %G_0x27c__rip__type* @G_0x27c__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x601260___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x601278___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM3 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601060___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601058___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601048___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601038___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601288___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x601298(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movsd_0x601098___xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601090___xmm8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM8 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 10
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm8___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %12 = bitcast %union.vec128_t* %XMM8 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
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

define %struct.Memory* @routine_addsd_0x601088___xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM7 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601080___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601078___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601070___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601288___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm3__0x601258(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601298___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x601258___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movsd_0x601298___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601120___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm5___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %union.vec128_t* %XMM5 to i8*
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

define %struct.Memory* @routine_divsd_0x601120___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x601258(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601298___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %11 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x601258___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %18 = fsub double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x601290(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x601290___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = bitcast i8* %9 to double*
  %13 = load double, double* %12, align 1
  %14 = getelementptr inbounds i8, i8* %9, i64 8
  %15 = bitcast i8* %14 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  %18 = fmul double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = sub i64 %11, 112
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

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_movb__0x3___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i8 3, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %13 = sub i64 %12, 116
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
block_400478:
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
block_400478:
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
block_400478:
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
