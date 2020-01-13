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
%G_0x1ec__rip__4196108__type = type <{ [16 x i8] }>
%G_0x1ec__rip__4196116__type = type <{ [16 x i8] }>
%G_0x38f__rip__4195641__type = type <{ [16 x i8] }>
%G_0x38f__rip__4195649__type = type <{ [16 x i8] }>
%G_0x38f__rip__4195657__type = type <{ [16 x i8] }>
%G_0x38f__rip__4195665__type = type <{ [16 x i8] }>
%G_0x38f__rip__4195673__type = type <{ [16 x i8] }>
%G_0x38f__rip__4195681__type = type <{ [16 x i8] }>
%G_0x601038_type = type <{ [16 x i8] }>
%G_0x601040_type = type <{ [16 x i8] }>
%G_0x601048_type = type <{ [16 x i8] }>
%G_0x601050_type = type <{ [16 x i8] }>
%G_0x601058_type = type <{ [16 x i8] }>
%G_0x601060_type = type <{ [16 x i8] }>
%G_0x601120_type = type <{ [16 x i8] }>
%G_0x601128_type = type <{ [8 x i8] }>
%G_0x601258_type = type <{ [16 x i8] }>
%G_0x601260_type = type <{ [16 x i8] }>
%G_0x601278_type = type <{ [8 x i8] }>
%G_0x601280_type = type <{ [8 x i8] }>
%G_0x601288_type = type <{ [16 x i8] }>
%G_0x601290_type = type <{ [16 x i8] }>
%G_0x601298_type = type <{ [16 x i8] }>
%G_0x6012a0_type = type <{ [16 x i8] }>
%G_0x6012d0_type = type <{ [8 x i8] }>
%G__0x400908_type = type <{ [8 x i8] }>
%G__0x400940_type = type <{ [8 x i8] }>
%G__0x400942_type = type <{ [8 x i8] }>
%G__0x400972_type = type <{ [8 x i8] }>
%G__0x400996_type = type <{ [8 x i8] }>
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
@G_0x1ec__rip__4196108_ = global %G_0x1ec__rip__4196108__type zeroinitializer
@G_0x1ec__rip__4196116_ = global %G_0x1ec__rip__4196116__type zeroinitializer
@G_0x38f__rip__4195641_ = global %G_0x38f__rip__4195641__type zeroinitializer
@G_0x38f__rip__4195649_ = global %G_0x38f__rip__4195649__type zeroinitializer
@G_0x38f__rip__4195657_ = global %G_0x38f__rip__4195657__type zeroinitializer
@G_0x38f__rip__4195665_ = global %G_0x38f__rip__4195665__type zeroinitializer
@G_0x38f__rip__4195673_ = global %G_0x38f__rip__4195673__type zeroinitializer
@G_0x38f__rip__4195681_ = global %G_0x38f__rip__4195681__type zeroinitializer
@G_0x601038 = global %G_0x601038_type zeroinitializer
@G_0x601040 = global %G_0x601040_type zeroinitializer
@G_0x601048 = global %G_0x601048_type zeroinitializer
@G_0x601050 = global %G_0x601050_type zeroinitializer
@G_0x601058 = global %G_0x601058_type zeroinitializer
@G_0x601060 = global %G_0x601060_type zeroinitializer
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
@G__0x400908 = global %G__0x400908_type zeroinitializer
@G__0x400940 = global %G__0x400940_type zeroinitializer
@G__0x400942 = global %G__0x400942_type zeroinitializer
@G__0x400972 = global %G__0x400972_type zeroinitializer
@G__0x400996 = global %G__0x400996_type zeroinitializer

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
  %PC.i242 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i243 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i243
  %36 = load i64, i64* %PC.i242
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i242
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i243, align 8
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
  %PC.i252 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i253 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i252
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i252
  store i64 ptrtoint (%G__0x400940_type* @G__0x400940 to i64), i64* %RDI.i253, align 8
  store %struct.Memory* %loadMem_4004fb, %struct.Memory** %MEMORY
  %loadMem_400505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i297
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i296
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i296
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400505, %struct.Memory** %MEMORY
  %loadMem_40050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.2*
  %AL.i307 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %92, i32 0, i32 0
  %93 = load i64, i64* %PC.i306
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC.i306
  store i8 0, i8* %AL.i307, align 1
  store %struct.Memory* %loadMem_40050c, %struct.Memory** %MEMORY
  %loadMem1_40050e = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i308
  %99 = add i64 %98, -286
  %100 = load i64, i64* %PC.i308
  %101 = add i64 %100, 5
  %102 = load i64, i64* %PC.i308
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC.i308
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
  %PC.i304 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RDI.i305 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %PC.i304
  %117 = add i64 %116, 10
  store i64 %117, i64* %PC.i304
  store i64 ptrtoint (%G__0x400908_type* @G__0x400908 to i64), i64* %RDI.i305, align 8
  store %struct.Memory* %loadMem_400513, %struct.Memory** %MEMORY
  %loadMem_40051d = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %EAX.i302 = bitcast %union.anon* %123 to i32*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %RBP.i303
  %128 = sub i64 %127, 92
  %129 = load i32, i32* %EAX.i302
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %PC.i301
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC.i301
  %133 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %133
  store %struct.Memory* %loadMem_40051d, %struct.Memory** %MEMORY
  %loadMem_400520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %140 = bitcast %union.anon* %139 to %struct.anon.2*
  %AL.i300 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %140, i32 0, i32 0
  %141 = load i64, i64* %PC.i299
  %142 = add i64 %141, 2
  store i64 %142, i64* %PC.i299
  store i8 0, i8* %AL.i300, align 1
  store %struct.Memory* %loadMem_400520, %struct.Memory** %MEMORY
  %loadMem1_400522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i298
  %147 = add i64 %146, -306
  %148 = load i64, i64* %PC.i298
  %149 = add i64 %148, 5
  %150 = load i64, i64* %PC.i298
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC.i298
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
  %PC.i294 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RDI.i295 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %PC.i294
  %165 = add i64 %164, 10
  store i64 %165, i64* %PC.i294
  store i64 ptrtoint (%G__0x400942_type* @G__0x400942 to i64), i64* %RDI.i295, align 8
  store %struct.Memory* %loadMem_400527, %struct.Memory** %MEMORY
  %loadMem_400531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %169, i64 0, i64 0
  %YMM0.i293 = bitcast %union.VectorReg* %170 to %"class.std::bitset"*
  %171 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %172 = load i64, i64* %PC.i292
  %173 = load i64, i64* %PC.i292
  %174 = add i64 %173, 8
  store i64 %174, i64* %PC.i292
  %175 = load double, double* bitcast (%G_0x38f__rip__4195641__type* @G_0x38f__rip__4195641_ to double*)
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
  %PC.i290 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %182, i64 0, i64 1
  %YMM1.i291 = bitcast %union.VectorReg* %183 to %"class.std::bitset"*
  %184 = bitcast %"class.std::bitset"* %YMM1.i291 to i8*
  %185 = load i64, i64* %PC.i290
  %186 = load i64, i64* %PC.i290
  %187 = add i64 %186, 8
  store i64 %187, i64* %PC.i290
  %188 = load double, double* bitcast (%G_0x38f__rip__4195649__type* @G_0x38f__rip__4195649_ to double*)
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
  %PC.i288 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %195, i64 0, i64 2
  %YMM2.i289 = bitcast %union.VectorReg* %196 to %"class.std::bitset"*
  %197 = bitcast %"class.std::bitset"* %YMM2.i289 to i8*
  %198 = load i64, i64* %PC.i288
  %199 = load i64, i64* %PC.i288
  %200 = add i64 %199, 8
  store i64 %200, i64* %PC.i288
  %201 = load double, double* bitcast (%G_0x38f__rip__4195657__type* @G_0x38f__rip__4195657_ to double*)
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
  %PC.i286 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %209 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %208, i64 0, i64 3
  %YMM3.i287 = bitcast %union.VectorReg* %209 to %"class.std::bitset"*
  %210 = bitcast %"class.std::bitset"* %YMM3.i287 to i8*
  %211 = load i64, i64* %PC.i286
  %212 = load i64, i64* %PC.i286
  %213 = add i64 %212, 8
  store i64 %213, i64* %PC.i286
  %214 = load double, double* bitcast (%G_0x38f__rip__4195665__type* @G_0x38f__rip__4195665_ to double*)
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
  %PC.i284 = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %221, i64 0, i64 4
  %YMM4.i285 = bitcast %union.VectorReg* %222 to %"class.std::bitset"*
  %223 = bitcast %"class.std::bitset"* %YMM4.i285 to i8*
  %224 = load i64, i64* %PC.i284
  %225 = load i64, i64* %PC.i284
  %226 = add i64 %225, 8
  store i64 %226, i64* %PC.i284
  %227 = load double, double* bitcast (%G_0x38f__rip__4195673__type* @G_0x38f__rip__4195673_ to double*)
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
  %PC.i282 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %234, i64 0, i64 5
  %YMM5.i283 = bitcast %union.VectorReg* %235 to %"class.std::bitset"*
  %236 = bitcast %"class.std::bitset"* %YMM5.i283 to i8*
  %237 = load i64, i64* %PC.i282
  %238 = load i64, i64* %PC.i282
  %239 = add i64 %238, 8
  store i64 %239, i64* %PC.i282
  %240 = load double, double* bitcast (%G_0x38f__rip__4195681__type* @G_0x38f__rip__4195681_ to double*)
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
  %PC.i280 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RBP.i281
  %251 = sub i64 %250, 56
  %252 = load i64, i64* %PC.i280
  %253 = add i64 %252, 8
  store i64 %253, i64* %PC.i280
  %254 = inttoptr i64 %251 to i64*
  store i64 15625, i64* %254
  store %struct.Memory* %loadMem_400561, %struct.Memory** %MEMORY
  %loadMem_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 4
  %XMM4.i279 = bitcast %union.VectorReg* %259 to %union.vec128_t*
  %260 = bitcast %union.vec128_t* %XMM4.i279 to i8*
  %261 = load i64, i64* %PC.i278
  %262 = add i64 %261, 9
  store i64 %262, i64* %PC.i278
  %263 = bitcast i8* %260 to double*
  %264 = load double, double* %263, align 1
  store double %264, double* bitcast (%G_0x6012d0_type* @G_0x6012d0 to double*)
  store %struct.Memory* %loadMem_400569, %struct.Memory** %MEMORY
  %loadMem_400572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RBP.i277
  %272 = sub i64 %271, 64
  %273 = load i64, i64* %PC.i276
  %274 = add i64 %273, 8
  store i64 %274, i64* %PC.i276
  %275 = inttoptr i64 %272 to i64*
  store i64 512000000, i64* %275
  store %struct.Memory* %loadMem_400572, %struct.Memory** %MEMORY
  %loadMem_40057a = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %280 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %279, i64 0, i64 5
  %XMM5.i275 = bitcast %union.VectorReg* %280 to %union.vec128_t*
  %281 = bitcast %union.vec128_t* %XMM5.i275 to i8*
  %282 = load i64, i64* %PC.i274
  %283 = add i64 %282, 9
  store i64 %283, i64* %PC.i274
  %284 = bitcast i8* %281 to double*
  %285 = load double, double* %284, align 1
  store double %285, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  store %struct.Memory* %loadMem_40057a, %struct.Memory** %MEMORY
  %loadMem_400583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %289, i64 0, i64 4
  %XMM4.i273 = bitcast %union.VectorReg* %290 to %union.vec128_t*
  %291 = bitcast %union.vec128_t* %XMM4.i273 to i8*
  %292 = load i64, i64* %PC.i272
  %293 = add i64 %292, 9
  store i64 %293, i64* %PC.i272
  %294 = bitcast i8* %291 to double*
  %295 = load double, double* %294, align 1
  store double %295, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  store %struct.Memory* %loadMem_400583, %struct.Memory** %MEMORY
  %loadMem_40058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %300 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %299, i64 0, i64 3
  %XMM3.i271 = bitcast %union.VectorReg* %300 to %union.vec128_t*
  %301 = bitcast %union.vec128_t* %XMM3.i271 to i8*
  %302 = load i64, i64* %PC.i270
  %303 = add i64 %302, 9
  store i64 %303, i64* %PC.i270
  %304 = bitcast i8* %301 to double*
  %305 = load double, double* %304, align 1
  store double %305, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  store %struct.Memory* %loadMem_40058c, %struct.Memory** %MEMORY
  %loadMem_400595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %309, i64 0, i64 2
  %XMM2.i269 = bitcast %union.VectorReg* %310 to %union.vec128_t*
  %311 = bitcast %union.vec128_t* %XMM2.i269 to i8*
  %312 = load i64, i64* %PC.i268
  %313 = add i64 %312, 9
  store i64 %313, i64* %PC.i268
  %314 = bitcast i8* %311 to double*
  %315 = load double, double* %314, align 1
  store double %315, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  store %struct.Memory* %loadMem_400595, %struct.Memory** %MEMORY
  %loadMem_40059e = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %319, i64 0, i64 1
  %XMM1.i267 = bitcast %union.VectorReg* %320 to %union.vec128_t*
  %321 = bitcast %union.vec128_t* %XMM1.i267 to i8*
  %322 = load i64, i64* %PC.i266
  %323 = add i64 %322, 9
  store i64 %323, i64* %PC.i266
  %324 = bitcast i8* %321 to double*
  %325 = load double, double* %324, align 1
  store double %325, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  store %struct.Memory* %loadMem_40059e, %struct.Memory** %MEMORY
  %loadMem_4005a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %329, i64 0, i64 0
  %XMM0.i265 = bitcast %union.VectorReg* %330 to %union.vec128_t*
  %331 = bitcast %union.vec128_t* %XMM0.i265 to i8*
  %332 = load i64, i64* %PC.i264
  %333 = add i64 %332, 9
  store i64 %333, i64* %PC.i264
  %334 = bitcast i8* %331 to double*
  %335 = load double, double* %334, align 1
  store double %335, double* bitcast (%G_0x601128_type* @G_0x601128 to double*)
  store %struct.Memory* %loadMem_4005a7, %struct.Memory** %MEMORY
  %loadMem_4005b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %340 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %339, i64 0, i64 0
  %YMM0.i263 = bitcast %union.VectorReg* %340 to %"class.std::bitset"*
  %341 = bitcast %"class.std::bitset"* %YMM0.i263 to i8*
  %342 = load i64, i64* %PC.i262
  %343 = add i64 %342, 9
  store i64 %343, i64* %PC.i262
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
  %PC.i260 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %351, i64 0, i64 0
  %XMM0.i261 = bitcast %union.VectorReg* %352 to %union.vec128_t*
  %353 = bitcast %union.vec128_t* %XMM0.i261 to i8*
  %354 = load i64, i64* %PC.i260
  %355 = add i64 %354, 9
  store i64 %355, i64* %PC.i260
  %356 = bitcast i8* %353 to double*
  %357 = load double, double* %356, align 1
  store double %357, double* bitcast (%G_0x601280_type* @G_0x601280 to double*)
  store %struct.Memory* %loadMem_4005b9, %struct.Memory** %MEMORY
  %loadMem_4005c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %EAX.i258 = bitcast %union.anon* %363 to i32*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i259
  %368 = sub i64 %367, 96
  %369 = load i32, i32* %EAX.i258
  %370 = zext i32 %369 to i64
  %371 = load i64, i64* %PC.i257
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC.i257
  %373 = inttoptr i64 %368 to i32*
  store i32 %369, i32* %373
  store %struct.Memory* %loadMem_4005c2, %struct.Memory** %MEMORY
  %loadMem_4005c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %380 = bitcast %union.anon* %379 to %struct.anon.2*
  %AL.i256 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %380, i32 0, i32 0
  %381 = load i64, i64* %PC.i255
  %382 = add i64 %381, 2
  store i64 %382, i64* %PC.i255
  store i8 0, i8* %AL.i256, align 1
  store %struct.Memory* %loadMem_4005c5, %struct.Memory** %MEMORY
  %loadMem1_4005c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %PC.i254
  %387 = add i64 %386, -471
  %388 = load i64, i64* %PC.i254
  %389 = add i64 %388, 5
  %390 = load i64, i64* %PC.i254
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC.i254
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
  %PC.i250 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 11
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RDI.i251 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i250
  %405 = add i64 %404, 10
  store i64 %405, i64* %PC.i250
  store i64 ptrtoint (%G__0x400972_type* @G__0x400972 to i64), i64* %RDI.i251, align 8
  store %struct.Memory* %loadMem_4005cc, %struct.Memory** %MEMORY
  %loadMem_4005d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %EAX.i248 = bitcast %union.anon* %411 to i32*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i249
  %416 = sub i64 %415, 100
  %417 = load i32, i32* %EAX.i248
  %418 = zext i32 %417 to i64
  %419 = load i64, i64* %PC.i247
  %420 = add i64 %419, 3
  store i64 %420, i64* %PC.i247
  %421 = inttoptr i64 %416 to i32*
  store i32 %417, i32* %421
  store %struct.Memory* %loadMem_4005d6, %struct.Memory** %MEMORY
  %loadMem_4005d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %423 = getelementptr inbounds %struct.GPR, %struct.GPR* %422, i32 0, i32 33
  %424 = getelementptr inbounds %struct.Reg, %struct.Reg* %423, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %424 to i64*
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 1
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %428 = bitcast %union.anon* %427 to %struct.anon.2*
  %AL.i246 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %428, i32 0, i32 0
  %429 = load i64, i64* %PC.i245
  %430 = add i64 %429, 2
  store i64 %430, i64* %PC.i245
  store i8 0, i8* %AL.i246, align 1
  store %struct.Memory* %loadMem_4005d9, %struct.Memory** %MEMORY
  %loadMem1_4005db = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %PC.i244
  %435 = add i64 %434, -491
  %436 = load i64, i64* %PC.i244
  %437 = add i64 %436, 5
  %438 = load i64, i64* %PC.i244
  %439 = add i64 %438, 5
  store i64 %439, i64* %PC.i244
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
  %PC.i239 = bitcast %union.anon* %448 to i64*
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %449, i64 0, i64 0
  %YMM0.i240 = bitcast %union.VectorReg* %450 to %"class.std::bitset"*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %451, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %452 to %union.vec128_t*
  %453 = bitcast %"class.std::bitset"* %YMM0.i240 to i8*
  %454 = bitcast %"class.std::bitset"* %YMM0.i240 to i8*
  %455 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %456 = load i64, i64* %PC.i239
  %457 = add i64 %456, 3
  store i64 %457, i64* %PC.i239
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
  %PC.i236 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 11
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RDI.i237 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i238
  %493 = sub i64 %492, 56
  %494 = load i64, i64* %PC.i236
  %495 = add i64 %494, 8
  store i64 %495, i64* %PC.i236
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496
  %498 = sext i64 %497 to i128
  %499 = and i128 %498, -18446744073709551616
  %500 = zext i64 %497 to i128
  %501 = or i128 %499, %500
  %502 = mul i128 %501, 20000
  %503 = trunc i128 %502 to i64
  store i64 %503, i64* %RDI.i237, align 8
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
  %PC.i233 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 11
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RDI.i234 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i235
  %531 = sub i64 %530, 80
  %532 = load i64, i64* %RDI.i234
  %533 = load i64, i64* %PC.i233
  %534 = add i64 %533, 4
  store i64 %534, i64* %PC.i233
  %535 = inttoptr i64 %531 to i64*
  store i64 %532, i64* %535
  store %struct.Memory* %loadMem_4005eb, %struct.Memory** %MEMORY
  %loadMem_4005ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %539, i64 0, i64 1
  %YMM1.i232 = bitcast %union.VectorReg* %540 to %"class.std::bitset"*
  %541 = bitcast %"class.std::bitset"* %YMM1.i232 to i8*
  %542 = load i64, i64* %PC.i231
  %543 = add i64 %542, 9
  store i64 %543, i64* %PC.i231
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
  %PC.i229 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %551, i64 0, i64 2
  %YMM2.i230 = bitcast %union.VectorReg* %552 to %"class.std::bitset"*
  %553 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %554 = load i64, i64* %PC.i229
  %555 = add i64 %554, 9
  store i64 %555, i64* %PC.i229
  %556 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
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
  %PC.i226 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 11
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RDI.i227 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 15
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %RBP.i228
  %570 = sub i64 %569, 80
  %571 = load i64, i64* %PC.i226
  %572 = add i64 %571, 4
  store i64 %572, i64* %PC.i226
  %573 = inttoptr i64 %570 to i64*
  %574 = load i64, i64* %573
  store i64 %574, i64* %RDI.i227, align 8
  store %struct.Memory* %loadMem_400601, %struct.Memory** %MEMORY
  %loadMem_400605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 11
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RDI.i224 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %581, i64 0, i64 3
  %YMM3.i225 = bitcast %union.VectorReg* %582 to %"class.std::bitset"*
  %583 = bitcast %"class.std::bitset"* %YMM3.i225 to i8*
  %584 = load i64, i64* %RDI.i224
  %585 = load i64, i64* %PC.i223
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC.i223
  %587 = sitofp i64 %584 to double
  %588 = bitcast i8* %583 to double*
  store double %587, double* %588, align 1
  store %struct.Memory* %loadMem_400605, %struct.Memory** %MEMORY
  %loadMem_40060a = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %592, i64 0, i64 2
  %YMM2.i221 = bitcast %union.VectorReg* %593 to %"class.std::bitset"*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %594, i64 0, i64 3
  %XMM3.i222 = bitcast %union.VectorReg* %595 to %union.vec128_t*
  %596 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %597 = bitcast %"class.std::bitset"* %YMM2.i221 to i8*
  %598 = bitcast %union.vec128_t* %XMM3.i222 to i8*
  %599 = load i64, i64* %PC.i220
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC.i220
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
  %PC.i217 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %615, i64 0, i64 1
  %YMM1.i218 = bitcast %union.VectorReg* %616 to %"class.std::bitset"*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %617, i64 0, i64 2
  %XMM2.i219 = bitcast %union.VectorReg* %618 to %union.vec128_t*
  %619 = bitcast %"class.std::bitset"* %YMM1.i218 to i8*
  %620 = bitcast %"class.std::bitset"* %YMM1.i218 to i8*
  %621 = bitcast %union.vec128_t* %XMM2.i219 to i8*
  %622 = load i64, i64* %PC.i217
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC.i217
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
  %PC.i214 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 15
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %641, i64 0, i64 1
  %XMM1.i216 = bitcast %union.VectorReg* %642 to %union.vec128_t*
  %643 = load i64, i64* %RBP.i215
  %644 = sub i64 %643, 48
  %645 = bitcast %union.vec128_t* %XMM1.i216 to i8*
  %646 = load i64, i64* %PC.i214
  %647 = add i64 %646, 5
  store i64 %647, i64* %PC.i214
  %648 = bitcast i8* %645 to double*
  %649 = load double, double* %648, align 1
  %650 = inttoptr i64 %644 to double*
  store double %649, double* %650
  store %struct.Memory* %loadMem_400612, %struct.Memory** %MEMORY
  %loadMem_400617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 15
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %657, i64 0, i64 0
  %XMM0.i213 = bitcast %union.VectorReg* %658 to %union.vec128_t*
  %659 = load i64, i64* %RBP.i212
  %660 = sub i64 %659, 16
  %661 = bitcast %union.vec128_t* %XMM0.i213 to i8*
  %662 = load i64, i64* %PC.i211
  %663 = add i64 %662, 5
  store i64 %663, i64* %PC.i211
  %664 = bitcast i8* %661 to double*
  %665 = load double, double* %664, align 1
  %666 = inttoptr i64 %660 to double*
  store double %665, double* %666
  store %struct.Memory* %loadMem_400617, %struct.Memory** %MEMORY
  %loadMem_40061c = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 15
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %673, i64 0, i64 0
  %XMM0.i210 = bitcast %union.VectorReg* %674 to %union.vec128_t*
  %675 = load i64, i64* %RBP.i209
  %676 = sub i64 %675, 32
  %677 = bitcast %union.vec128_t* %XMM0.i210 to i8*
  %678 = load i64, i64* %PC.i208
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC.i208
  %680 = bitcast i8* %677 to double*
  %681 = load double, double* %680, align 1
  %682 = inttoptr i64 %676 to double*
  store double %681, double* %682
  store %struct.Memory* %loadMem_40061c, %struct.Memory** %MEMORY
  %loadMem_400621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 15
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %RBP.i207
  %690 = sub i64 %689, 72
  %691 = load i64, i64* %PC.i206
  %692 = add i64 %691, 8
  store i64 %692, i64* %PC.i206
  %693 = inttoptr i64 %690 to i64*
  store i64 1, i64* %693
  store %struct.Memory* %loadMem_400621, %struct.Memory** %MEMORY
  %loadMem_400629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %699 to i32*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 15
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RBP.i205
  %704 = sub i64 %703, 104
  %705 = load i32, i32* %EAX.i204
  %706 = zext i32 %705 to i64
  %707 = load i64, i64* %PC.i203
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC.i203
  %709 = inttoptr i64 %704 to i32*
  store i32 %705, i32* %709
  store %struct.Memory* %loadMem_400629, %struct.Memory** %MEMORY
  br label %block_.L_40062c

block_.L_40062c:                                  ; preds = %block_400641, %entry
  %loadMem_40062c = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i202
  %720 = sub i64 %719, 72
  %721 = load i64, i64* %PC.i200
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC.i200
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723
  store i64 %724, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_40062c, %struct.Memory** %MEMORY
  %loadMem_400630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 5
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %RBP.i199
  %735 = sub i64 %734, 80
  %736 = load i64, i64* %PC.i197
  %737 = add i64 %736, 4
  store i64 %737, i64* %PC.i197
  %738 = inttoptr i64 %735 to i64*
  %739 = load i64, i64* %738
  store i64 %739, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_400630, %struct.Memory** %MEMORY
  %loadMem_400634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 5
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RCX.i196
  %747 = load i64, i64* %PC.i195
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC.i195
  %749 = sub i64 %746, 1
  store i64 %749, i64* %RCX.i196, align 8
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
  %PC.i192 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 5
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RAX.i193
  %788 = load i64, i64* %RCX.i194
  %789 = load i64, i64* %PC.i192
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC.i192
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
  %PC.i191 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %PC.i191
  %826 = add i64 %825, 188
  %827 = load i64, i64* %PC.i191
  %828 = add i64 %827, 6
  %829 = load i64, i64* %PC.i191
  %830 = add i64 %829, 6
  store i64 %830, i64* %PC.i191
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
  br i1 %cmpBr_40063b, label %block_.L_4006f7, label %block_400641

block_400641:                                     ; preds = %block_.L_40062c
  %loadMem_400641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 15
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %853 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %852, i64 0, i64 0
  %YMM0.i190 = bitcast %union.VectorReg* %853 to %"class.std::bitset"*
  %854 = bitcast %"class.std::bitset"* %YMM0.i190 to i8*
  %855 = load i64, i64* %RBP.i189
  %856 = sub i64 %855, 32
  %857 = load i64, i64* %PC.i188
  %858 = add i64 %857, 5
  store i64 %858, i64* %PC.i188
  %859 = inttoptr i64 %856 to double*
  %860 = load double, double* %859
  %861 = bitcast i8* %854 to double*
  store double %860, double* %861, align 1
  %862 = getelementptr inbounds i8, i8* %854, i64 8
  %863 = bitcast i8* %862 to double*
  store double 0.000000e+00, double* %863, align 1
  store %struct.Memory* %loadMem_400641, %struct.Memory** %MEMORY
  %loadMem_400646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %868 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %867, i64 0, i64 0
  %YMM0.i187 = bitcast %union.VectorReg* %868 to %"class.std::bitset"*
  %869 = bitcast %"class.std::bitset"* %YMM0.i187 to i8*
  %870 = bitcast %"class.std::bitset"* %YMM0.i187 to i8*
  %871 = load i64, i64* %PC.i186
  %872 = add i64 %871, 9
  store i64 %872, i64* %PC.i186
  %873 = bitcast i8* %870 to double*
  %874 = load double, double* %873, align 1
  %875 = getelementptr inbounds i8, i8* %870, i64 8
  %876 = bitcast i8* %875 to i64*
  %877 = load i64, i64* %876, align 1
  %878 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %879 = fadd double %874, %878
  %880 = bitcast i8* %869 to double*
  store double %879, double* %880, align 1
  %881 = getelementptr inbounds i8, i8* %869, i64 8
  %882 = bitcast i8* %881 to i64*
  store i64 %877, i64* %882, align 1
  store %struct.Memory* %loadMem_400646, %struct.Memory** %MEMORY
  %loadMem_40064f = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 15
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %889, i64 0, i64 0
  %XMM0.i185 = bitcast %union.VectorReg* %890 to %union.vec128_t*
  %891 = load i64, i64* %RBP.i184
  %892 = sub i64 %891, 32
  %893 = bitcast %union.vec128_t* %XMM0.i185 to i8*
  %894 = load i64, i64* %PC.i183
  %895 = add i64 %894, 5
  store i64 %895, i64* %PC.i183
  %896 = bitcast i8* %893 to double*
  %897 = load double, double* %896, align 1
  %898 = inttoptr i64 %892 to double*
  store double %897, double* %898
  store %struct.Memory* %loadMem_40064f, %struct.Memory** %MEMORY
  %loadMem_400654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 15
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %905, i64 0, i64 0
  %YMM0.i182 = bitcast %union.VectorReg* %906 to %"class.std::bitset"*
  %907 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %908 = load i64, i64* %RBP.i181
  %909 = sub i64 %908, 32
  %910 = load i64, i64* %PC.i180
  %911 = add i64 %910, 5
  store i64 %911, i64* %PC.i180
  %912 = inttoptr i64 %909 to double*
  %913 = load double, double* %912
  %914 = bitcast i8* %907 to double*
  store double %913, double* %914, align 1
  %915 = getelementptr inbounds i8, i8* %907, i64 8
  %916 = bitcast i8* %915 to double*
  store double 0.000000e+00, double* %916, align 1
  store %struct.Memory* %loadMem_400654, %struct.Memory** %MEMORY
  %loadMem_400659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 33
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 15
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %923, i64 0, i64 0
  %YMM0.i179 = bitcast %union.VectorReg* %924 to %"class.std::bitset"*
  %925 = bitcast %"class.std::bitset"* %YMM0.i179 to i8*
  %926 = bitcast %"class.std::bitset"* %YMM0.i179 to i8*
  %927 = load i64, i64* %RBP.i178
  %928 = sub i64 %927, 48
  %929 = load i64, i64* %PC.i177
  %930 = add i64 %929, 5
  store i64 %930, i64* %PC.i177
  %931 = bitcast i8* %926 to double*
  %932 = load double, double* %931, align 1
  %933 = getelementptr inbounds i8, i8* %926, i64 8
  %934 = bitcast i8* %933 to i64*
  %935 = load i64, i64* %934, align 1
  %936 = inttoptr i64 %928 to double*
  %937 = load double, double* %936
  %938 = fmul double %932, %937
  %939 = bitcast i8* %925 to double*
  store double %938, double* %939, align 1
  %940 = getelementptr inbounds i8, i8* %925, i64 8
  %941 = bitcast i8* %940 to i64*
  store i64 %935, i64* %941, align 1
  store %struct.Memory* %loadMem_400659, %struct.Memory** %MEMORY
  %loadMem_40065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 33
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %949 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %948, i64 0, i64 0
  %XMM0.i176 = bitcast %union.VectorReg* %949 to %union.vec128_t*
  %950 = load i64, i64* %RBP.i175
  %951 = sub i64 %950, 24
  %952 = bitcast %union.vec128_t* %XMM0.i176 to i8*
  %953 = load i64, i64* %PC.i174
  %954 = add i64 %953, 5
  store i64 %954, i64* %PC.i174
  %955 = bitcast i8* %952 to double*
  %956 = load double, double* %955, align 1
  %957 = inttoptr i64 %951 to double*
  store double %956, double* %957
  store %struct.Memory* %loadMem_40065e, %struct.Memory** %MEMORY
  %loadMem_400663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 15
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %965 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %964, i64 0, i64 0
  %YMM0.i173 = bitcast %union.VectorReg* %965 to %"class.std::bitset"*
  %966 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %967 = load i64, i64* %RBP.i172
  %968 = sub i64 %967, 24
  %969 = load i64, i64* %PC.i171
  %970 = add i64 %969, 5
  store i64 %970, i64* %PC.i171
  %971 = inttoptr i64 %968 to double*
  %972 = load double, double* %971
  %973 = bitcast i8* %966 to double*
  store double %972, double* %973, align 1
  %974 = getelementptr inbounds i8, i8* %966, i64 8
  %975 = bitcast i8* %974 to double*
  store double 0.000000e+00, double* %975, align 1
  store %struct.Memory* %loadMem_400663, %struct.Memory** %MEMORY
  %loadMem_400668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 15
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %982, i64 0, i64 0
  %YMM0.i170 = bitcast %union.VectorReg* %983 to %"class.std::bitset"*
  %984 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %985 = bitcast %"class.std::bitset"* %YMM0.i170 to i8*
  %986 = load i64, i64* %RBP.i169
  %987 = sub i64 %986, 24
  %988 = load i64, i64* %PC.i168
  %989 = add i64 %988, 5
  store i64 %989, i64* %PC.i168
  %990 = bitcast i8* %985 to double*
  %991 = load double, double* %990, align 1
  %992 = getelementptr inbounds i8, i8* %985, i64 8
  %993 = bitcast i8* %992 to i64*
  %994 = load i64, i64* %993, align 1
  %995 = inttoptr i64 %987 to double*
  %996 = load double, double* %995
  %997 = fmul double %991, %996
  %998 = bitcast i8* %984 to double*
  store double %997, double* %998, align 1
  %999 = getelementptr inbounds i8, i8* %984, i64 8
  %1000 = bitcast i8* %999 to i64*
  store i64 %994, i64* %1000, align 1
  store %struct.Memory* %loadMem_400668, %struct.Memory** %MEMORY
  %loadMem_40066d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 15
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1007, i64 0, i64 0
  %XMM0.i167 = bitcast %union.VectorReg* %1008 to %union.vec128_t*
  %1009 = load i64, i64* %RBP.i166
  %1010 = sub i64 %1009, 40
  %1011 = bitcast %union.vec128_t* %XMM0.i167 to i8*
  %1012 = load i64, i64* %PC.i165
  %1013 = add i64 %1012, 5
  store i64 %1013, i64* %PC.i165
  %1014 = bitcast i8* %1011 to double*
  %1015 = load double, double* %1014, align 1
  %1016 = inttoptr i64 %1010 to double*
  store double %1015, double* %1016
  store %struct.Memory* %loadMem_40066d, %struct.Memory** %MEMORY
  %loadMem_400672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1023, i64 0, i64 0
  %YMM0.i164 = bitcast %union.VectorReg* %1024 to %"class.std::bitset"*
  %1025 = bitcast %"class.std::bitset"* %YMM0.i164 to i8*
  %1026 = load i64, i64* %RBP.i163
  %1027 = sub i64 %1026, 16
  %1028 = load i64, i64* %PC.i162
  %1029 = add i64 %1028, 5
  store i64 %1029, i64* %PC.i162
  %1030 = inttoptr i64 %1027 to double*
  %1031 = load double, double* %1030
  %1032 = bitcast i8* %1025 to double*
  store double %1031, double* %1032, align 1
  %1033 = getelementptr inbounds i8, i8* %1025, i64 8
  %1034 = bitcast i8* %1033 to double*
  store double 0.000000e+00, double* %1034, align 1
  store %struct.Memory* %loadMem_400672, %struct.Memory** %MEMORY
  %loadMem_400677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1041, i64 0, i64 1
  %YMM1.i161 = bitcast %union.VectorReg* %1042 to %"class.std::bitset"*
  %1043 = bitcast %"class.std::bitset"* %YMM1.i161 to i8*
  %1044 = load i64, i64* %RBP.i160
  %1045 = sub i64 %1044, 24
  %1046 = load i64, i64* %PC.i159
  %1047 = add i64 %1046, 5
  store i64 %1047, i64* %PC.i159
  %1048 = inttoptr i64 %1045 to double*
  %1049 = load double, double* %1048
  %1050 = bitcast i8* %1043 to double*
  store double %1049, double* %1050, align 1
  %1051 = getelementptr inbounds i8, i8* %1043, i64 8
  %1052 = bitcast i8* %1051 to double*
  store double 0.000000e+00, double* %1052, align 1
  store %struct.Memory* %loadMem_400677, %struct.Memory** %MEMORY
  %loadMem_40067c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1057 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1056, i64 0, i64 2
  %YMM2.i158 = bitcast %union.VectorReg* %1057 to %"class.std::bitset"*
  %1058 = bitcast %"class.std::bitset"* %YMM2.i158 to i8*
  %1059 = load i64, i64* %PC.i157
  %1060 = add i64 %1059, 9
  store i64 %1060, i64* %PC.i157
  %1061 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %1062 = bitcast i8* %1058 to double*
  store double %1061, double* %1062, align 1
  %1063 = getelementptr inbounds i8, i8* %1058, i64 8
  %1064 = bitcast i8* %1063 to double*
  store double 0.000000e+00, double* %1064, align 1
  store %struct.Memory* %loadMem_40067c, %struct.Memory** %MEMORY
  %loadMem_400685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 15
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1072 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1071, i64 0, i64 2
  %YMM2.i156 = bitcast %union.VectorReg* %1072 to %"class.std::bitset"*
  %1073 = bitcast %"class.std::bitset"* %YMM2.i156 to i8*
  %1074 = bitcast %"class.std::bitset"* %YMM2.i156 to i8*
  %1075 = load i64, i64* %RBP.i155
  %1076 = sub i64 %1075, 40
  %1077 = load i64, i64* %PC.i154
  %1078 = add i64 %1077, 5
  store i64 %1078, i64* %PC.i154
  %1079 = bitcast i8* %1074 to double*
  %1080 = load double, double* %1079, align 1
  %1081 = getelementptr inbounds i8, i8* %1074, i64 8
  %1082 = bitcast i8* %1081 to i64*
  %1083 = load i64, i64* %1082, align 1
  %1084 = inttoptr i64 %1076 to double*
  %1085 = load double, double* %1084
  %1086 = fmul double %1080, %1085
  %1087 = bitcast i8* %1073 to double*
  store double %1086, double* %1087, align 1
  %1088 = getelementptr inbounds i8, i8* %1073, i64 8
  %1089 = bitcast i8* %1088 to i64*
  store i64 %1083, i64* %1089, align 1
  store %struct.Memory* %loadMem_400685, %struct.Memory** %MEMORY
  %loadMem_40068a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1094 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1093, i64 0, i64 2
  %YMM2.i153 = bitcast %union.VectorReg* %1094 to %"class.std::bitset"*
  %1095 = bitcast %"class.std::bitset"* %YMM2.i153 to i8*
  %1096 = bitcast %"class.std::bitset"* %YMM2.i153 to i8*
  %1097 = load i64, i64* %PC.i152
  %1098 = add i64 %1097, 9
  store i64 %1098, i64* %PC.i152
  %1099 = bitcast i8* %1096 to double*
  %1100 = load double, double* %1099, align 1
  %1101 = getelementptr inbounds i8, i8* %1096, i64 8
  %1102 = bitcast i8* %1101 to i64*
  %1103 = load i64, i64* %1102, align 1
  %1104 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %1105 = fsub double %1100, %1104
  %1106 = bitcast i8* %1095 to double*
  store double %1105, double* %1106, align 1
  %1107 = getelementptr inbounds i8, i8* %1095, i64 8
  %1108 = bitcast i8* %1107 to i64*
  store i64 %1103, i64* %1108, align 1
  store %struct.Memory* %loadMem_40068a, %struct.Memory** %MEMORY
  %loadMem_400693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 15
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1116 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1115, i64 0, i64 2
  %YMM2.i151 = bitcast %union.VectorReg* %1116 to %"class.std::bitset"*
  %1117 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1118 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1119 = load i64, i64* %RBP.i150
  %1120 = sub i64 %1119, 40
  %1121 = load i64, i64* %PC.i149
  %1122 = add i64 %1121, 5
  store i64 %1122, i64* %PC.i149
  %1123 = bitcast i8* %1118 to double*
  %1124 = load double, double* %1123, align 1
  %1125 = getelementptr inbounds i8, i8* %1118, i64 8
  %1126 = bitcast i8* %1125 to i64*
  %1127 = load i64, i64* %1126, align 1
  %1128 = inttoptr i64 %1120 to double*
  %1129 = load double, double* %1128
  %1130 = fmul double %1124, %1129
  %1131 = bitcast i8* %1117 to double*
  store double %1130, double* %1131, align 1
  %1132 = getelementptr inbounds i8, i8* %1117, i64 8
  %1133 = bitcast i8* %1132 to i64*
  store i64 %1127, i64* %1133, align 1
  store %struct.Memory* %loadMem_400693, %struct.Memory** %MEMORY
  %loadMem_400698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1137, i64 0, i64 2
  %YMM2.i148 = bitcast %union.VectorReg* %1138 to %"class.std::bitset"*
  %1139 = bitcast %"class.std::bitset"* %YMM2.i148 to i8*
  %1140 = bitcast %"class.std::bitset"* %YMM2.i148 to i8*
  %1141 = load i64, i64* %PC.i147
  %1142 = add i64 %1141, 9
  store i64 %1142, i64* %PC.i147
  %1143 = bitcast i8* %1140 to double*
  %1144 = load double, double* %1143, align 1
  %1145 = getelementptr inbounds i8, i8* %1140, i64 8
  %1146 = bitcast i8* %1145 to i64*
  %1147 = load i64, i64* %1146, align 1
  %1148 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %1149 = fadd double %1144, %1148
  %1150 = bitcast i8* %1139 to double*
  store double %1149, double* %1150, align 1
  %1151 = getelementptr inbounds i8, i8* %1139, i64 8
  %1152 = bitcast i8* %1151 to i64*
  store i64 %1147, i64* %1152, align 1
  store %struct.Memory* %loadMem_400698, %struct.Memory** %MEMORY
  %loadMem_4006a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 15
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1159, i64 0, i64 2
  %YMM2.i146 = bitcast %union.VectorReg* %1160 to %"class.std::bitset"*
  %1161 = bitcast %"class.std::bitset"* %YMM2.i146 to i8*
  %1162 = bitcast %"class.std::bitset"* %YMM2.i146 to i8*
  %1163 = load i64, i64* %RBP.i145
  %1164 = sub i64 %1163, 40
  %1165 = load i64, i64* %PC.i144
  %1166 = add i64 %1165, 5
  store i64 %1166, i64* %PC.i144
  %1167 = bitcast i8* %1162 to double*
  %1168 = load double, double* %1167, align 1
  %1169 = getelementptr inbounds i8, i8* %1162, i64 8
  %1170 = bitcast i8* %1169 to i64*
  %1171 = load i64, i64* %1170, align 1
  %1172 = inttoptr i64 %1164 to double*
  %1173 = load double, double* %1172
  %1174 = fmul double %1168, %1173
  %1175 = bitcast i8* %1161 to double*
  store double %1174, double* %1175, align 1
  %1176 = getelementptr inbounds i8, i8* %1161, i64 8
  %1177 = bitcast i8* %1176 to i64*
  store i64 %1171, i64* %1177, align 1
  store %struct.Memory* %loadMem_4006a1, %struct.Memory** %MEMORY
  %loadMem_4006a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1181, i64 0, i64 2
  %YMM2.i143 = bitcast %union.VectorReg* %1182 to %"class.std::bitset"*
  %1183 = bitcast %"class.std::bitset"* %YMM2.i143 to i8*
  %1184 = bitcast %"class.std::bitset"* %YMM2.i143 to i8*
  %1185 = load i64, i64* %PC.i142
  %1186 = add i64 %1185, 9
  store i64 %1186, i64* %PC.i142
  %1187 = bitcast i8* %1184 to double*
  %1188 = load double, double* %1187, align 1
  %1189 = getelementptr inbounds i8, i8* %1184, i64 8
  %1190 = bitcast i8* %1189 to i64*
  %1191 = load i64, i64* %1190, align 1
  %1192 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %1193 = fsub double %1188, %1192
  %1194 = bitcast i8* %1183 to double*
  store double %1193, double* %1194, align 1
  %1195 = getelementptr inbounds i8, i8* %1183, i64 8
  %1196 = bitcast i8* %1195 to i64*
  store i64 %1191, i64* %1196, align 1
  store %struct.Memory* %loadMem_4006a6, %struct.Memory** %MEMORY
  %loadMem_4006af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 15
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1203, i64 0, i64 2
  %YMM2.i141 = bitcast %union.VectorReg* %1204 to %"class.std::bitset"*
  %1205 = bitcast %"class.std::bitset"* %YMM2.i141 to i8*
  %1206 = bitcast %"class.std::bitset"* %YMM2.i141 to i8*
  %1207 = load i64, i64* %RBP.i140
  %1208 = sub i64 %1207, 40
  %1209 = load i64, i64* %PC.i139
  %1210 = add i64 %1209, 5
  store i64 %1210, i64* %PC.i139
  %1211 = bitcast i8* %1206 to double*
  %1212 = load double, double* %1211, align 1
  %1213 = getelementptr inbounds i8, i8* %1206, i64 8
  %1214 = bitcast i8* %1213 to i64*
  %1215 = load i64, i64* %1214, align 1
  %1216 = inttoptr i64 %1208 to double*
  %1217 = load double, double* %1216
  %1218 = fmul double %1212, %1217
  %1219 = bitcast i8* %1205 to double*
  store double %1218, double* %1219, align 1
  %1220 = getelementptr inbounds i8, i8* %1205, i64 8
  %1221 = bitcast i8* %1220 to i64*
  store i64 %1215, i64* %1221, align 1
  store %struct.Memory* %loadMem_4006af, %struct.Memory** %MEMORY
  %loadMem_4006b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1225, i64 0, i64 2
  %YMM2.i138 = bitcast %union.VectorReg* %1226 to %"class.std::bitset"*
  %1227 = bitcast %"class.std::bitset"* %YMM2.i138 to i8*
  %1228 = bitcast %"class.std::bitset"* %YMM2.i138 to i8*
  %1229 = load i64, i64* %PC.i137
  %1230 = add i64 %1229, 9
  store i64 %1230, i64* %PC.i137
  %1231 = bitcast i8* %1228 to double*
  %1232 = load double, double* %1231, align 1
  %1233 = getelementptr inbounds i8, i8* %1228, i64 8
  %1234 = bitcast i8* %1233 to i64*
  %1235 = load i64, i64* %1234, align 1
  %1236 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %1237 = fadd double %1232, %1236
  %1238 = bitcast i8* %1227 to double*
  store double %1237, double* %1238, align 1
  %1239 = getelementptr inbounds i8, i8* %1227, i64 8
  %1240 = bitcast i8* %1239 to i64*
  store i64 %1235, i64* %1240, align 1
  store %struct.Memory* %loadMem_4006b4, %struct.Memory** %MEMORY
  %loadMem_4006bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 15
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1247, i64 0, i64 2
  %YMM2.i136 = bitcast %union.VectorReg* %1248 to %"class.std::bitset"*
  %1249 = bitcast %"class.std::bitset"* %YMM2.i136 to i8*
  %1250 = bitcast %"class.std::bitset"* %YMM2.i136 to i8*
  %1251 = load i64, i64* %RBP.i135
  %1252 = sub i64 %1251, 40
  %1253 = load i64, i64* %PC.i134
  %1254 = add i64 %1253, 5
  store i64 %1254, i64* %PC.i134
  %1255 = bitcast i8* %1250 to double*
  %1256 = load double, double* %1255, align 1
  %1257 = getelementptr inbounds i8, i8* %1250, i64 8
  %1258 = bitcast i8* %1257 to i64*
  %1259 = load i64, i64* %1258, align 1
  %1260 = inttoptr i64 %1252 to double*
  %1261 = load double, double* %1260
  %1262 = fmul double %1256, %1261
  %1263 = bitcast i8* %1249 to double*
  store double %1262, double* %1263, align 1
  %1264 = getelementptr inbounds i8, i8* %1249, i64 8
  %1265 = bitcast i8* %1264 to i64*
  store i64 %1259, i64* %1265, align 1
  store %struct.Memory* %loadMem_4006bd, %struct.Memory** %MEMORY
  %loadMem_4006c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1270 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1269, i64 0, i64 2
  %YMM2.i133 = bitcast %union.VectorReg* %1270 to %"class.std::bitset"*
  %1271 = bitcast %"class.std::bitset"* %YMM2.i133 to i8*
  %1272 = bitcast %"class.std::bitset"* %YMM2.i133 to i8*
  %1273 = load i64, i64* %PC.i132
  %1274 = add i64 %1273, 9
  store i64 %1274, i64* %PC.i132
  %1275 = bitcast i8* %1272 to double*
  %1276 = load double, double* %1275, align 1
  %1277 = getelementptr inbounds i8, i8* %1272, i64 8
  %1278 = bitcast i8* %1277 to i64*
  %1279 = load i64, i64* %1278, align 1
  %1280 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %1281 = fadd double %1276, %1280
  %1282 = bitcast i8* %1271 to double*
  store double %1281, double* %1282, align 1
  %1283 = getelementptr inbounds i8, i8* %1271, i64 8
  %1284 = bitcast i8* %1283 to i64*
  store i64 %1279, i64* %1284, align 1
  store %struct.Memory* %loadMem_4006c2, %struct.Memory** %MEMORY
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 15
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1291, i64 0, i64 2
  %YMM2.i131 = bitcast %union.VectorReg* %1292 to %"class.std::bitset"*
  %1293 = bitcast %"class.std::bitset"* %YMM2.i131 to i8*
  %1294 = bitcast %"class.std::bitset"* %YMM2.i131 to i8*
  %1295 = load i64, i64* %RBP.i130
  %1296 = sub i64 %1295, 40
  %1297 = load i64, i64* %PC.i129
  %1298 = add i64 %1297, 5
  store i64 %1298, i64* %PC.i129
  %1299 = bitcast i8* %1294 to double*
  %1300 = load double, double* %1299, align 1
  %1301 = getelementptr inbounds i8, i8* %1294, i64 8
  %1302 = bitcast i8* %1301 to i64*
  %1303 = load i64, i64* %1302, align 1
  %1304 = inttoptr i64 %1296 to double*
  %1305 = load double, double* %1304
  %1306 = fmul double %1300, %1305
  %1307 = bitcast i8* %1293 to double*
  store double %1306, double* %1307, align 1
  %1308 = getelementptr inbounds i8, i8* %1293, i64 8
  %1309 = bitcast i8* %1308 to i64*
  store i64 %1303, i64* %1309, align 1
  store %struct.Memory* %loadMem_4006cb, %struct.Memory** %MEMORY
  %loadMem_4006d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1314 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1313, i64 0, i64 2
  %YMM2.i128 = bitcast %union.VectorReg* %1314 to %"class.std::bitset"*
  %1315 = bitcast %"class.std::bitset"* %YMM2.i128 to i8*
  %1316 = bitcast %"class.std::bitset"* %YMM2.i128 to i8*
  %1317 = load i64, i64* %PC.i127
  %1318 = add i64 %1317, 9
  store i64 %1318, i64* %PC.i127
  %1319 = bitcast i8* %1316 to double*
  %1320 = load double, double* %1319, align 1
  %1321 = getelementptr inbounds i8, i8* %1316, i64 8
  %1322 = bitcast i8* %1321 to i64*
  %1323 = load i64, i64* %1322, align 1
  %1324 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %1325 = fadd double %1320, %1324
  %1326 = bitcast i8* %1315 to double*
  store double %1325, double* %1326, align 1
  %1327 = getelementptr inbounds i8, i8* %1315, i64 8
  %1328 = bitcast i8* %1327 to i64*
  store i64 %1323, i64* %1328, align 1
  store %struct.Memory* %loadMem_4006d0, %struct.Memory** %MEMORY
  %loadMem_4006d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1332, i64 0, i64 1
  %YMM1.i125 = bitcast %union.VectorReg* %1333 to %"class.std::bitset"*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1334, i64 0, i64 2
  %XMM2.i126 = bitcast %union.VectorReg* %1335 to %union.vec128_t*
  %1336 = bitcast %"class.std::bitset"* %YMM1.i125 to i8*
  %1337 = bitcast %"class.std::bitset"* %YMM1.i125 to i8*
  %1338 = bitcast %union.vec128_t* %XMM2.i126 to i8*
  %1339 = load i64, i64* %PC.i124
  %1340 = add i64 %1339, 4
  store i64 %1340, i64* %PC.i124
  %1341 = bitcast i8* %1337 to double*
  %1342 = load double, double* %1341, align 1
  %1343 = getelementptr inbounds i8, i8* %1337, i64 8
  %1344 = bitcast i8* %1343 to i64*
  %1345 = load i64, i64* %1344, align 1
  %1346 = bitcast i8* %1338 to double*
  %1347 = load double, double* %1346, align 1
  %1348 = fmul double %1342, %1347
  %1349 = bitcast i8* %1336 to double*
  store double %1348, double* %1349, align 1
  %1350 = getelementptr inbounds i8, i8* %1336, i64 8
  %1351 = bitcast i8* %1350 to i64*
  store i64 %1345, i64* %1351, align 1
  store %struct.Memory* %loadMem_4006d9, %struct.Memory** %MEMORY
  %loadMem_4006dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1356 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1355, i64 0, i64 0
  %YMM0.i122 = bitcast %union.VectorReg* %1356 to %"class.std::bitset"*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1357, i64 0, i64 1
  %XMM1.i123 = bitcast %union.VectorReg* %1358 to %union.vec128_t*
  %1359 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %1360 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %1361 = bitcast %union.vec128_t* %XMM1.i123 to i8*
  %1362 = load i64, i64* %PC.i121
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %PC.i121
  %1364 = bitcast i8* %1360 to double*
  %1365 = load double, double* %1364, align 1
  %1366 = getelementptr inbounds i8, i8* %1360, i64 8
  %1367 = bitcast i8* %1366 to i64*
  %1368 = load i64, i64* %1367, align 1
  %1369 = bitcast i8* %1361 to double*
  %1370 = load double, double* %1369, align 1
  %1371 = fadd double %1365, %1370
  %1372 = bitcast i8* %1359 to double*
  store double %1371, double* %1372, align 1
  %1373 = getelementptr inbounds i8, i8* %1359, i64 8
  %1374 = bitcast i8* %1373 to i64*
  store i64 %1368, i64* %1374, align 1
  store %struct.Memory* %loadMem_4006dd, %struct.Memory** %MEMORY
  %loadMem_4006e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 15
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1381, i64 0, i64 0
  %XMM0.i120 = bitcast %union.VectorReg* %1382 to %union.vec128_t*
  %1383 = load i64, i64* %RBP.i119
  %1384 = sub i64 %1383, 16
  %1385 = bitcast %union.vec128_t* %XMM0.i120 to i8*
  %1386 = load i64, i64* %PC.i118
  %1387 = add i64 %1386, 5
  store i64 %1387, i64* %PC.i118
  %1388 = bitcast i8* %1385 to double*
  %1389 = load double, double* %1388, align 1
  %1390 = inttoptr i64 %1384 to double*
  store double %1389, double* %1390
  store %struct.Memory* %loadMem_4006e1, %struct.Memory** %MEMORY
  %loadMem_4006e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 1
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 15
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %RBP.i117
  %1401 = sub i64 %1400, 72
  %1402 = load i64, i64* %PC.i115
  %1403 = add i64 %1402, 4
  store i64 %1403, i64* %PC.i115
  %1404 = inttoptr i64 %1401 to i64*
  %1405 = load i64, i64* %1404
  store i64 %1405, i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_4006e6, %struct.Memory** %MEMORY
  %loadMem_4006ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 1
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %RAX.i114
  %1413 = load i64, i64* %PC.i113
  %1414 = add i64 %1413, 4
  store i64 %1414, i64* %PC.i113
  %1415 = add i64 1, %1412
  store i64 %1415, i64* %RAX.i114, align 8
  %1416 = icmp ult i64 %1415, %1412
  %1417 = icmp ult i64 %1415, 1
  %1418 = or i1 %1416, %1417
  %1419 = zext i1 %1418 to i8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1419, i8* %1420, align 1
  %1421 = trunc i64 %1415 to i32
  %1422 = and i32 %1421, 255
  %1423 = call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1426, i8* %1427, align 1
  %1428 = xor i64 1, %1412
  %1429 = xor i64 %1428, %1415
  %1430 = lshr i64 %1429, 4
  %1431 = trunc i64 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1432, i8* %1433, align 1
  %1434 = icmp eq i64 %1415, 0
  %1435 = zext i1 %1434 to i8
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1435, i8* %1436, align 1
  %1437 = lshr i64 %1415, 63
  %1438 = trunc i64 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1438, i8* %1439, align 1
  %1440 = lshr i64 %1412, 63
  %1441 = xor i64 %1437, %1440
  %1442 = add i64 %1441, %1437
  %1443 = icmp eq i64 %1442, 2
  %1444 = zext i1 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1444, i8* %1445, align 1
  store %struct.Memory* %loadMem_4006ea, %struct.Memory** %MEMORY
  %loadMem_4006ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 1
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 15
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %RBP.i112
  %1456 = sub i64 %1455, 72
  %1457 = load i64, i64* %RAX.i111
  %1458 = load i64, i64* %PC.i110
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %PC.i110
  %1460 = inttoptr i64 %1456 to i64*
  store i64 %1457, i64* %1460
  store %struct.Memory* %loadMem_4006ee, %struct.Memory** %MEMORY
  %loadMem_4006f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i109
  %1465 = add i64 %1464, -198
  %1466 = load i64, i64* %PC.i109
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC.i109
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1465, i64* %1468, align 8
  store %struct.Memory* %loadMem_4006f2, %struct.Memory** %MEMORY
  br label %block_.L_40062c

block_.L_4006f7:                                  ; preds = %block_.L_40062c
  %loadMem_4006f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 33
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 11
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1474 to i64*
  %1475 = load i64, i64* %PC.i108
  %1476 = add i64 %1475, 10
  store i64 %1476, i64* %PC.i108
  store i64 ptrtoint (%G__0x400996_type* @G__0x400996 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4006f7, %struct.Memory** %MEMORY
  %loadMem_400701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1480, i64 0, i64 0
  %YMM0.i106 = bitcast %union.VectorReg* %1481 to %"class.std::bitset"*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1483 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1482, i64 0, i64 0
  %XMM0.i107 = bitcast %union.VectorReg* %1483 to %union.vec128_t*
  %1484 = bitcast %"class.std::bitset"* %YMM0.i106 to i8*
  %1485 = bitcast %"class.std::bitset"* %YMM0.i106 to i8*
  %1486 = bitcast %union.vec128_t* %XMM0.i107 to i8*
  %1487 = load i64, i64* %PC.i105
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %PC.i105
  %1489 = bitcast i8* %1485 to i64*
  %1490 = load i64, i64* %1489, align 1
  %1491 = getelementptr inbounds i8, i8* %1485, i64 8
  %1492 = bitcast i8* %1491 to i64*
  %1493 = load i64, i64* %1492, align 1
  %1494 = bitcast i8* %1486 to i64*
  %1495 = load i64, i64* %1494, align 1
  %1496 = getelementptr inbounds i8, i8* %1486, i64 8
  %1497 = bitcast i8* %1496 to i64*
  %1498 = load i64, i64* %1497, align 1
  %1499 = xor i64 %1495, %1490
  %1500 = xor i64 %1498, %1493
  %1501 = trunc i64 %1499 to i32
  %1502 = lshr i64 %1499, 32
  %1503 = trunc i64 %1502 to i32
  %1504 = bitcast i8* %1484 to i32*
  store i32 %1501, i32* %1504, align 1
  %1505 = getelementptr inbounds i8, i8* %1484, i64 4
  %1506 = bitcast i8* %1505 to i32*
  store i32 %1503, i32* %1506, align 1
  %1507 = trunc i64 %1500 to i32
  %1508 = getelementptr inbounds i8, i8* %1484, i64 8
  %1509 = bitcast i8* %1508 to i32*
  store i32 %1507, i32* %1509, align 1
  %1510 = lshr i64 %1500, 32
  %1511 = trunc i64 %1510 to i32
  %1512 = getelementptr inbounds i8, i8* %1484, i64 12
  %1513 = bitcast i8* %1512 to i32*
  store i32 %1511, i32* %1513, align 1
  store %struct.Memory* %loadMem_400701, %struct.Memory** %MEMORY
  %loadMem_400704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1517, i64 0, i64 1
  %YMM1.i104 = bitcast %union.VectorReg* %1518 to %"class.std::bitset"*
  %1519 = bitcast %"class.std::bitset"* %YMM1.i104 to i8*
  %1520 = load i64, i64* %PC.i103
  %1521 = load i64, i64* %PC.i103
  %1522 = add i64 %1521, 8
  store i64 %1522, i64* %PC.i103
  %1523 = load double, double* bitcast (%G_0x1ec__rip__4196108__type* @G_0x1ec__rip__4196108_ to double*)
  %1524 = bitcast i8* %1519 to double*
  store double %1523, double* %1524, align 1
  %1525 = getelementptr inbounds i8, i8* %1519, i64 8
  %1526 = bitcast i8* %1525 to double*
  store double 0.000000e+00, double* %1526, align 1
  store %struct.Memory* %loadMem_400704, %struct.Memory** %MEMORY
  %loadMem_40070c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1530, i64 0, i64 2
  %YMM2.i102 = bitcast %union.VectorReg* %1531 to %"class.std::bitset"*
  %1532 = bitcast %"class.std::bitset"* %YMM2.i102 to i8*
  %1533 = load i64, i64* %PC.i101
  %1534 = load i64, i64* %PC.i101
  %1535 = add i64 %1534, 8
  store i64 %1535, i64* %PC.i101
  %1536 = load double, double* bitcast (%G_0x1ec__rip__4196116__type* @G_0x1ec__rip__4196116_ to double*)
  %1537 = bitcast i8* %1532 to double*
  store double %1536, double* %1537, align 1
  %1538 = getelementptr inbounds i8, i8* %1532, i64 8
  %1539 = bitcast i8* %1538 to double*
  store double 0.000000e+00, double* %1539, align 1
  store %struct.Memory* %loadMem_40070c, %struct.Memory** %MEMORY
  %loadMem_400714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1543, i64 0, i64 3
  %YMM3.i100 = bitcast %union.VectorReg* %1544 to %"class.std::bitset"*
  %1545 = bitcast %"class.std::bitset"* %YMM3.i100 to i8*
  %1546 = load i64, i64* %PC.i99
  %1547 = add i64 %1546, 9
  store i64 %1547, i64* %PC.i99
  %1548 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %1549 = bitcast i8* %1545 to double*
  store double %1548, double* %1549, align 1
  %1550 = getelementptr inbounds i8, i8* %1545, i64 8
  %1551 = bitcast i8* %1550 to double*
  store double 0.000000e+00, double* %1551, align 1
  store %struct.Memory* %loadMem_400714, %struct.Memory** %MEMORY
  %loadMem_40071d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1555, i64 0, i64 3
  %YMM3.i98 = bitcast %union.VectorReg* %1556 to %"class.std::bitset"*
  %1557 = bitcast %"class.std::bitset"* %YMM3.i98 to i8*
  %1558 = bitcast %"class.std::bitset"* %YMM3.i98 to i8*
  %1559 = load i64, i64* %PC.i97
  %1560 = add i64 %1559, 9
  store i64 %1560, i64* %PC.i97
  %1561 = bitcast i8* %1558 to double*
  %1562 = load double, double* %1561, align 1
  %1563 = getelementptr inbounds i8, i8* %1558, i64 8
  %1564 = bitcast i8* %1563 to i64*
  %1565 = load i64, i64* %1564, align 1
  %1566 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %1567 = fdiv double %1562, %1566
  %1568 = bitcast i8* %1557 to double*
  store double %1567, double* %1568, align 1
  %1569 = getelementptr inbounds i8, i8* %1557, i64 8
  %1570 = bitcast i8* %1569 to i64*
  store i64 %1565, i64* %1570, align 1
  store %struct.Memory* %loadMem_40071d, %struct.Memory** %MEMORY
  %loadMem_400726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 15
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1577, i64 0, i64 3
  %XMM3.i96 = bitcast %union.VectorReg* %1578 to %union.vec128_t*
  %1579 = load i64, i64* %RBP.i95
  %1580 = sub i64 %1579, 24
  %1581 = bitcast %union.vec128_t* %XMM3.i96 to i8*
  %1582 = load i64, i64* %PC.i94
  %1583 = add i64 %1582, 5
  store i64 %1583, i64* %PC.i94
  %1584 = bitcast i8* %1581 to double*
  %1585 = load double, double* %1584, align 1
  %1586 = inttoptr i64 %1580 to double*
  store double %1585, double* %1586
  store %struct.Memory* %loadMem_400726, %struct.Memory** %MEMORY
  %loadMem_40072b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1593, i64 0, i64 3
  %YMM3.i93 = bitcast %union.VectorReg* %1594 to %"class.std::bitset"*
  %1595 = bitcast %"class.std::bitset"* %YMM3.i93 to i8*
  %1596 = load i64, i64* %RBP.i92
  %1597 = sub i64 %1596, 24
  %1598 = load i64, i64* %PC.i91
  %1599 = add i64 %1598, 5
  store i64 %1599, i64* %PC.i91
  %1600 = inttoptr i64 %1597 to double*
  %1601 = load double, double* %1600
  %1602 = bitcast i8* %1595 to double*
  store double %1601, double* %1602, align 1
  %1603 = getelementptr inbounds i8, i8* %1595, i64 8
  %1604 = bitcast i8* %1603 to double*
  store double 0.000000e+00, double* %1604, align 1
  store %struct.Memory* %loadMem_40072b, %struct.Memory** %MEMORY
  %loadMem_400730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1611, i64 0, i64 3
  %YMM3.i90 = bitcast %union.VectorReg* %1612 to %"class.std::bitset"*
  %1613 = bitcast %"class.std::bitset"* %YMM3.i90 to i8*
  %1614 = bitcast %"class.std::bitset"* %YMM3.i90 to i8*
  %1615 = load i64, i64* %RBP.i89
  %1616 = sub i64 %1615, 24
  %1617 = load i64, i64* %PC.i88
  %1618 = add i64 %1617, 5
  store i64 %1618, i64* %PC.i88
  %1619 = bitcast i8* %1614 to double*
  %1620 = load double, double* %1619, align 1
  %1621 = getelementptr inbounds i8, i8* %1614, i64 8
  %1622 = bitcast i8* %1621 to i64*
  %1623 = load i64, i64* %1622, align 1
  %1624 = inttoptr i64 %1616 to double*
  %1625 = load double, double* %1624
  %1626 = fmul double %1620, %1625
  %1627 = bitcast i8* %1613 to double*
  store double %1626, double* %1627, align 1
  %1628 = getelementptr inbounds i8, i8* %1613, i64 8
  %1629 = bitcast i8* %1628 to i64*
  store i64 %1623, i64* %1629, align 1
  store %struct.Memory* %loadMem_400730, %struct.Memory** %MEMORY
  %loadMem_400735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 15
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1637 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1636, i64 0, i64 3
  %XMM3.i87 = bitcast %union.VectorReg* %1637 to %union.vec128_t*
  %1638 = load i64, i64* %RBP.i86
  %1639 = sub i64 %1638, 40
  %1640 = bitcast %union.vec128_t* %XMM3.i87 to i8*
  %1641 = load i64, i64* %PC.i85
  %1642 = add i64 %1641, 5
  store i64 %1642, i64* %PC.i85
  %1643 = bitcast i8* %1640 to double*
  %1644 = load double, double* %1643, align 1
  %1645 = inttoptr i64 %1639 to double*
  store double %1644, double* %1645
  store %struct.Memory* %loadMem_400735, %struct.Memory** %MEMORY
  %loadMem_40073a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 15
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1653 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1652, i64 0, i64 3
  %YMM3.i84 = bitcast %union.VectorReg* %1653 to %"class.std::bitset"*
  %1654 = bitcast %"class.std::bitset"* %YMM3.i84 to i8*
  %1655 = load i64, i64* %RBP.i83
  %1656 = sub i64 %1655, 24
  %1657 = load i64, i64* %PC.i82
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %PC.i82
  %1659 = inttoptr i64 %1656 to double*
  %1660 = load double, double* %1659
  %1661 = bitcast i8* %1654 to double*
  store double %1660, double* %1661, align 1
  %1662 = getelementptr inbounds i8, i8* %1654, i64 8
  %1663 = bitcast i8* %1662 to double*
  store double 0.000000e+00, double* %1663, align 1
  store %struct.Memory* %loadMem_40073a, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %1666 to i64*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1667, i64 0, i64 4
  %YMM4.i81 = bitcast %union.VectorReg* %1668 to %"class.std::bitset"*
  %1669 = bitcast %"class.std::bitset"* %YMM4.i81 to i8*
  %1670 = load i64, i64* %PC.i80
  %1671 = add i64 %1670, 9
  store i64 %1671, i64* %PC.i80
  %1672 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %1673 = bitcast i8* %1669 to double*
  store double %1672, double* %1673, align 1
  %1674 = getelementptr inbounds i8, i8* %1669, i64 8
  %1675 = bitcast i8* %1674 to double*
  store double 0.000000e+00, double* %1675, align 1
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 15
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1682, i64 0, i64 4
  %YMM4.i79 = bitcast %union.VectorReg* %1683 to %"class.std::bitset"*
  %1684 = bitcast %"class.std::bitset"* %YMM4.i79 to i8*
  %1685 = bitcast %"class.std::bitset"* %YMM4.i79 to i8*
  %1686 = load i64, i64* %RBP.i78
  %1687 = sub i64 %1686, 40
  %1688 = load i64, i64* %PC.i77
  %1689 = add i64 %1688, 5
  store i64 %1689, i64* %PC.i77
  %1690 = bitcast i8* %1685 to double*
  %1691 = load double, double* %1690, align 1
  %1692 = getelementptr inbounds i8, i8* %1685, i64 8
  %1693 = bitcast i8* %1692 to i64*
  %1694 = load i64, i64* %1693, align 1
  %1695 = inttoptr i64 %1687 to double*
  %1696 = load double, double* %1695
  %1697 = fmul double %1691, %1696
  %1698 = bitcast i8* %1684 to double*
  store double %1697, double* %1698, align 1
  %1699 = getelementptr inbounds i8, i8* %1684, i64 8
  %1700 = bitcast i8* %1699 to i64*
  store i64 %1694, i64* %1700, align 1
  store %struct.Memory* %loadMem_400748, %struct.Memory** %MEMORY
  %loadMem_40074d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1704, i64 0, i64 4
  %YMM4.i76 = bitcast %union.VectorReg* %1705 to %"class.std::bitset"*
  %1706 = bitcast %"class.std::bitset"* %YMM4.i76 to i8*
  %1707 = bitcast %"class.std::bitset"* %YMM4.i76 to i8*
  %1708 = load i64, i64* %PC.i75
  %1709 = add i64 %1708, 9
  store i64 %1709, i64* %PC.i75
  %1710 = bitcast i8* %1707 to double*
  %1711 = load double, double* %1710, align 1
  %1712 = getelementptr inbounds i8, i8* %1707, i64 8
  %1713 = bitcast i8* %1712 to i64*
  %1714 = load i64, i64* %1713, align 1
  %1715 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %1716 = fsub double %1711, %1715
  %1717 = bitcast i8* %1706 to double*
  store double %1716, double* %1717, align 1
  %1718 = getelementptr inbounds i8, i8* %1706, i64 8
  %1719 = bitcast i8* %1718 to i64*
  store i64 %1714, i64* %1719, align 1
  store %struct.Memory* %loadMem_40074d, %struct.Memory** %MEMORY
  %loadMem_400756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 15
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1726, i64 0, i64 4
  %YMM4.i74 = bitcast %union.VectorReg* %1727 to %"class.std::bitset"*
  %1728 = bitcast %"class.std::bitset"* %YMM4.i74 to i8*
  %1729 = bitcast %"class.std::bitset"* %YMM4.i74 to i8*
  %1730 = load i64, i64* %RBP.i73
  %1731 = sub i64 %1730, 40
  %1732 = load i64, i64* %PC.i72
  %1733 = add i64 %1732, 5
  store i64 %1733, i64* %PC.i72
  %1734 = bitcast i8* %1729 to double*
  %1735 = load double, double* %1734, align 1
  %1736 = getelementptr inbounds i8, i8* %1729, i64 8
  %1737 = bitcast i8* %1736 to i64*
  %1738 = load i64, i64* %1737, align 1
  %1739 = inttoptr i64 %1731 to double*
  %1740 = load double, double* %1739
  %1741 = fmul double %1735, %1740
  %1742 = bitcast i8* %1728 to double*
  store double %1741, double* %1742, align 1
  %1743 = getelementptr inbounds i8, i8* %1728, i64 8
  %1744 = bitcast i8* %1743 to i64*
  store i64 %1738, i64* %1744, align 1
  store %struct.Memory* %loadMem_400756, %struct.Memory** %MEMORY
  %loadMem_40075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1749 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1748, i64 0, i64 4
  %YMM4.i71 = bitcast %union.VectorReg* %1749 to %"class.std::bitset"*
  %1750 = bitcast %"class.std::bitset"* %YMM4.i71 to i8*
  %1751 = bitcast %"class.std::bitset"* %YMM4.i71 to i8*
  %1752 = load i64, i64* %PC.i70
  %1753 = add i64 %1752, 9
  store i64 %1753, i64* %PC.i70
  %1754 = bitcast i8* %1751 to double*
  %1755 = load double, double* %1754, align 1
  %1756 = getelementptr inbounds i8, i8* %1751, i64 8
  %1757 = bitcast i8* %1756 to i64*
  %1758 = load i64, i64* %1757, align 1
  %1759 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %1760 = fadd double %1755, %1759
  %1761 = bitcast i8* %1750 to double*
  store double %1760, double* %1761, align 1
  %1762 = getelementptr inbounds i8, i8* %1750, i64 8
  %1763 = bitcast i8* %1762 to i64*
  store i64 %1758, i64* %1763, align 1
  store %struct.Memory* %loadMem_40075b, %struct.Memory** %MEMORY
  %loadMem_400764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 15
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1770, i64 0, i64 4
  %YMM4.i69 = bitcast %union.VectorReg* %1771 to %"class.std::bitset"*
  %1772 = bitcast %"class.std::bitset"* %YMM4.i69 to i8*
  %1773 = bitcast %"class.std::bitset"* %YMM4.i69 to i8*
  %1774 = load i64, i64* %RBP.i68
  %1775 = sub i64 %1774, 40
  %1776 = load i64, i64* %PC.i67
  %1777 = add i64 %1776, 5
  store i64 %1777, i64* %PC.i67
  %1778 = bitcast i8* %1773 to double*
  %1779 = load double, double* %1778, align 1
  %1780 = getelementptr inbounds i8, i8* %1773, i64 8
  %1781 = bitcast i8* %1780 to i64*
  %1782 = load i64, i64* %1781, align 1
  %1783 = inttoptr i64 %1775 to double*
  %1784 = load double, double* %1783
  %1785 = fmul double %1779, %1784
  %1786 = bitcast i8* %1772 to double*
  store double %1785, double* %1786, align 1
  %1787 = getelementptr inbounds i8, i8* %1772, i64 8
  %1788 = bitcast i8* %1787 to i64*
  store i64 %1782, i64* %1788, align 1
  store %struct.Memory* %loadMem_400764, %struct.Memory** %MEMORY
  %loadMem_400769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1792, i64 0, i64 4
  %YMM4.i66 = bitcast %union.VectorReg* %1793 to %"class.std::bitset"*
  %1794 = bitcast %"class.std::bitset"* %YMM4.i66 to i8*
  %1795 = bitcast %"class.std::bitset"* %YMM4.i66 to i8*
  %1796 = load i64, i64* %PC.i65
  %1797 = add i64 %1796, 9
  store i64 %1797, i64* %PC.i65
  %1798 = bitcast i8* %1795 to double*
  %1799 = load double, double* %1798, align 1
  %1800 = getelementptr inbounds i8, i8* %1795, i64 8
  %1801 = bitcast i8* %1800 to i64*
  %1802 = load i64, i64* %1801, align 1
  %1803 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %1804 = fsub double %1799, %1803
  %1805 = bitcast i8* %1794 to double*
  store double %1804, double* %1805, align 1
  %1806 = getelementptr inbounds i8, i8* %1794, i64 8
  %1807 = bitcast i8* %1806 to i64*
  store i64 %1802, i64* %1807, align 1
  store %struct.Memory* %loadMem_400769, %struct.Memory** %MEMORY
  %loadMem_400772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %1813 to i64*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1814, i64 0, i64 4
  %YMM4.i64 = bitcast %union.VectorReg* %1815 to %"class.std::bitset"*
  %1816 = bitcast %"class.std::bitset"* %YMM4.i64 to i8*
  %1817 = bitcast %"class.std::bitset"* %YMM4.i64 to i8*
  %1818 = load i64, i64* %RBP.i63
  %1819 = sub i64 %1818, 40
  %1820 = load i64, i64* %PC.i62
  %1821 = add i64 %1820, 5
  store i64 %1821, i64* %PC.i62
  %1822 = bitcast i8* %1817 to double*
  %1823 = load double, double* %1822, align 1
  %1824 = getelementptr inbounds i8, i8* %1817, i64 8
  %1825 = bitcast i8* %1824 to i64*
  %1826 = load i64, i64* %1825, align 1
  %1827 = inttoptr i64 %1819 to double*
  %1828 = load double, double* %1827
  %1829 = fmul double %1823, %1828
  %1830 = bitcast i8* %1816 to double*
  store double %1829, double* %1830, align 1
  %1831 = getelementptr inbounds i8, i8* %1816, i64 8
  %1832 = bitcast i8* %1831 to i64*
  store i64 %1826, i64* %1832, align 1
  store %struct.Memory* %loadMem_400772, %struct.Memory** %MEMORY
  %loadMem_400777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1837 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1836, i64 0, i64 4
  %YMM4.i61 = bitcast %union.VectorReg* %1837 to %"class.std::bitset"*
  %1838 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %1839 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %1840 = load i64, i64* %PC.i60
  %1841 = add i64 %1840, 9
  store i64 %1841, i64* %PC.i60
  %1842 = bitcast i8* %1839 to double*
  %1843 = load double, double* %1842, align 1
  %1844 = getelementptr inbounds i8, i8* %1839, i64 8
  %1845 = bitcast i8* %1844 to i64*
  %1846 = load i64, i64* %1845, align 1
  %1847 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %1848 = fadd double %1843, %1847
  %1849 = bitcast i8* %1838 to double*
  store double %1848, double* %1849, align 1
  %1850 = getelementptr inbounds i8, i8* %1838, i64 8
  %1851 = bitcast i8* %1850 to i64*
  store i64 %1846, i64* %1851, align 1
  store %struct.Memory* %loadMem_400777, %struct.Memory** %MEMORY
  %loadMem_400780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 15
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1859 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1858, i64 0, i64 4
  %YMM4.i59 = bitcast %union.VectorReg* %1859 to %"class.std::bitset"*
  %1860 = bitcast %"class.std::bitset"* %YMM4.i59 to i8*
  %1861 = bitcast %"class.std::bitset"* %YMM4.i59 to i8*
  %1862 = load i64, i64* %RBP.i58
  %1863 = sub i64 %1862, 40
  %1864 = load i64, i64* %PC.i57
  %1865 = add i64 %1864, 5
  store i64 %1865, i64* %PC.i57
  %1866 = bitcast i8* %1861 to double*
  %1867 = load double, double* %1866, align 1
  %1868 = getelementptr inbounds i8, i8* %1861, i64 8
  %1869 = bitcast i8* %1868 to i64*
  %1870 = load i64, i64* %1869, align 1
  %1871 = inttoptr i64 %1863 to double*
  %1872 = load double, double* %1871
  %1873 = fmul double %1867, %1872
  %1874 = bitcast i8* %1860 to double*
  store double %1873, double* %1874, align 1
  %1875 = getelementptr inbounds i8, i8* %1860, i64 8
  %1876 = bitcast i8* %1875 to i64*
  store i64 %1870, i64* %1876, align 1
  store %struct.Memory* %loadMem_400780, %struct.Memory** %MEMORY
  %loadMem_400785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 33
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1881 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1880, i64 0, i64 4
  %YMM4.i56 = bitcast %union.VectorReg* %1881 to %"class.std::bitset"*
  %1882 = bitcast %"class.std::bitset"* %YMM4.i56 to i8*
  %1883 = bitcast %"class.std::bitset"* %YMM4.i56 to i8*
  %1884 = load i64, i64* %PC.i55
  %1885 = add i64 %1884, 9
  store i64 %1885, i64* %PC.i55
  %1886 = bitcast i8* %1883 to double*
  %1887 = load double, double* %1886, align 1
  %1888 = getelementptr inbounds i8, i8* %1883, i64 8
  %1889 = bitcast i8* %1888 to i64*
  %1890 = load i64, i64* %1889, align 1
  %1891 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %1892 = fadd double %1887, %1891
  %1893 = bitcast i8* %1882 to double*
  store double %1892, double* %1893, align 1
  %1894 = getelementptr inbounds i8, i8* %1882, i64 8
  %1895 = bitcast i8* %1894 to i64*
  store i64 %1890, i64* %1895, align 1
  store %struct.Memory* %loadMem_400785, %struct.Memory** %MEMORY
  %loadMem_40078e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 15
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1903 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1902, i64 0, i64 4
  %YMM4.i54 = bitcast %union.VectorReg* %1903 to %"class.std::bitset"*
  %1904 = bitcast %"class.std::bitset"* %YMM4.i54 to i8*
  %1905 = bitcast %"class.std::bitset"* %YMM4.i54 to i8*
  %1906 = load i64, i64* %RBP.i53
  %1907 = sub i64 %1906, 40
  %1908 = load i64, i64* %PC.i52
  %1909 = add i64 %1908, 5
  store i64 %1909, i64* %PC.i52
  %1910 = bitcast i8* %1905 to double*
  %1911 = load double, double* %1910, align 1
  %1912 = getelementptr inbounds i8, i8* %1905, i64 8
  %1913 = bitcast i8* %1912 to i64*
  %1914 = load i64, i64* %1913, align 1
  %1915 = inttoptr i64 %1907 to double*
  %1916 = load double, double* %1915
  %1917 = fmul double %1911, %1916
  %1918 = bitcast i8* %1904 to double*
  store double %1917, double* %1918, align 1
  %1919 = getelementptr inbounds i8, i8* %1904, i64 8
  %1920 = bitcast i8* %1919 to i64*
  store i64 %1914, i64* %1920, align 1
  store %struct.Memory* %loadMem_40078e, %struct.Memory** %MEMORY
  %loadMem_400793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1925 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1924, i64 0, i64 4
  %YMM4.i51 = bitcast %union.VectorReg* %1925 to %"class.std::bitset"*
  %1926 = bitcast %"class.std::bitset"* %YMM4.i51 to i8*
  %1927 = bitcast %"class.std::bitset"* %YMM4.i51 to i8*
  %1928 = load i64, i64* %PC.i50
  %1929 = add i64 %1928, 9
  store i64 %1929, i64* %PC.i50
  %1930 = bitcast i8* %1927 to double*
  %1931 = load double, double* %1930, align 1
  %1932 = getelementptr inbounds i8, i8* %1927, i64 8
  %1933 = bitcast i8* %1932 to i64*
  %1934 = load i64, i64* %1933, align 1
  %1935 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %1936 = fadd double %1931, %1935
  %1937 = bitcast i8* %1926 to double*
  store double %1936, double* %1937, align 1
  %1938 = getelementptr inbounds i8, i8* %1926, i64 8
  %1939 = bitcast i8* %1938 to i64*
  store i64 %1934, i64* %1939, align 1
  store %struct.Memory* %loadMem_400793, %struct.Memory** %MEMORY
  %loadMem_40079c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1943, i64 0, i64 3
  %YMM3.i48 = bitcast %union.VectorReg* %1944 to %"class.std::bitset"*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1945, i64 0, i64 4
  %XMM4.i49 = bitcast %union.VectorReg* %1946 to %union.vec128_t*
  %1947 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %1948 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %1949 = bitcast %union.vec128_t* %XMM4.i49 to i8*
  %1950 = load i64, i64* %PC.i47
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i47
  %1952 = bitcast i8* %1948 to double*
  %1953 = load double, double* %1952, align 1
  %1954 = getelementptr inbounds i8, i8* %1948, i64 8
  %1955 = bitcast i8* %1954 to i64*
  %1956 = load i64, i64* %1955, align 1
  %1957 = bitcast i8* %1949 to double*
  %1958 = load double, double* %1957, align 1
  %1959 = fmul double %1953, %1958
  %1960 = bitcast i8* %1947 to double*
  store double %1959, double* %1960, align 1
  %1961 = getelementptr inbounds i8, i8* %1947, i64 8
  %1962 = bitcast i8* %1961 to i64*
  store i64 %1956, i64* %1962, align 1
  store %struct.Memory* %loadMem_40079c, %struct.Memory** %MEMORY
  %loadMem_4007a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1967 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1966, i64 0, i64 3
  %XMM3.i46 = bitcast %union.VectorReg* %1967 to %union.vec128_t*
  %1968 = bitcast %union.vec128_t* %XMM3.i46 to i8*
  %1969 = load i64, i64* %PC.i45
  %1970 = add i64 %1969, 9
  store i64 %1970, i64* %PC.i45
  %1971 = bitcast i8* %1968 to double*
  %1972 = load double, double* %1971, align 1
  store double %1972, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_4007a0, %struct.Memory** %MEMORY
  %loadMem_4007a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 15
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 3
  %YMM3.i44 = bitcast %union.VectorReg* %1980 to %"class.std::bitset"*
  %1981 = bitcast %"class.std::bitset"* %YMM3.i44 to i8*
  %1982 = load i64, i64* %RBP.i43
  %1983 = sub i64 %1982, 48
  %1984 = load i64, i64* %PC.i42
  %1985 = add i64 %1984, 5
  store i64 %1985, i64* %PC.i42
  %1986 = inttoptr i64 %1983 to double*
  %1987 = load double, double* %1986
  %1988 = bitcast i8* %1981 to double*
  store double %1987, double* %1988, align 1
  %1989 = getelementptr inbounds i8, i8* %1981, i64 8
  %1990 = bitcast i8* %1989 to double*
  store double 0.000000e+00, double* %1990, align 1
  store %struct.Memory* %loadMem_4007a9, %struct.Memory** %MEMORY
  %loadMem_4007ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1994, i64 0, i64 4
  %YMM4.i41 = bitcast %union.VectorReg* %1995 to %"class.std::bitset"*
  %1996 = bitcast %"class.std::bitset"* %YMM4.i41 to i8*
  %1997 = load i64, i64* %PC.i40
  %1998 = add i64 %1997, 9
  store i64 %1998, i64* %PC.i40
  %1999 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2000 = bitcast i8* %1996 to double*
  store double %1999, double* %2000, align 1
  %2001 = getelementptr inbounds i8, i8* %1996, i64 8
  %2002 = bitcast i8* %2001 to double*
  store double 0.000000e+00, double* %2002, align 1
  store %struct.Memory* %loadMem_4007ae, %struct.Memory** %MEMORY
  %loadMem_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2007 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2006, i64 0, i64 5
  %YMM5.i39 = bitcast %union.VectorReg* %2007 to %"class.std::bitset"*
  %2008 = bitcast %"class.std::bitset"* %YMM5.i39 to i8*
  %2009 = load i64, i64* %PC.i38
  %2010 = add i64 %2009, 9
  store i64 %2010, i64* %PC.i38
  %2011 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2012 = bitcast i8* %2008 to double*
  store double %2011, double* %2012, align 1
  %2013 = getelementptr inbounds i8, i8* %2008, i64 8
  %2014 = bitcast i8* %2013 to double*
  store double 0.000000e+00, double* %2014, align 1
  store %struct.Memory* %loadMem_4007b7, %struct.Memory** %MEMORY
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 15
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2021, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2022 to %"class.std::bitset"*
  %2023 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2024 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2025 = load i64, i64* %RBP.i37
  %2026 = sub i64 %2025, 16
  %2027 = load i64, i64* %PC.i36
  %2028 = add i64 %2027, 5
  store i64 %2028, i64* %PC.i36
  %2029 = bitcast i8* %2024 to double*
  %2030 = load double, double* %2029, align 1
  %2031 = getelementptr inbounds i8, i8* %2024, i64 8
  %2032 = bitcast i8* %2031 to i64*
  %2033 = load i64, i64* %2032, align 1
  %2034 = inttoptr i64 %2026 to double*
  %2035 = load double, double* %2034
  %2036 = fmul double %2030, %2035
  %2037 = bitcast i8* %2023 to double*
  store double %2036, double* %2037, align 1
  %2038 = getelementptr inbounds i8, i8* %2023, i64 8
  %2039 = bitcast i8* %2038 to i64*
  store i64 %2033, i64* %2039, align 1
  store %struct.Memory* %loadMem_4007c0, %struct.Memory** %MEMORY
  %loadMem_4007c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2043, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2044 to %"class.std::bitset"*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2045, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2046 to %union.vec128_t*
  %2047 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2048 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2049 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2050 = load i64, i64* %PC.i35
  %2051 = add i64 %2050, 4
  store i64 %2051, i64* %PC.i35
  %2052 = bitcast i8* %2048 to double*
  %2053 = load double, double* %2052, align 1
  %2054 = getelementptr inbounds i8, i8* %2048, i64 8
  %2055 = bitcast i8* %2054 to i64*
  %2056 = load i64, i64* %2055, align 1
  %2057 = bitcast i8* %2049 to double*
  %2058 = load double, double* %2057, align 1
  %2059 = fadd double %2053, %2058
  %2060 = bitcast i8* %2047 to double*
  store double %2059, double* %2060, align 1
  %2061 = getelementptr inbounds i8, i8* %2047, i64 8
  %2062 = bitcast i8* %2061 to i64*
  store i64 %2056, i64* %2062, align 1
  store %struct.Memory* %loadMem_4007c5, %struct.Memory** %MEMORY
  %loadMem_4007c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2066, i64 0, i64 3
  %YMM3.i34 = bitcast %union.VectorReg* %2067 to %"class.std::bitset"*
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2068, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2069 to %union.vec128_t*
  %2070 = bitcast %"class.std::bitset"* %YMM3.i34 to i8*
  %2071 = bitcast %"class.std::bitset"* %YMM3.i34 to i8*
  %2072 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2073 = load i64, i64* %PC.i33
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %PC.i33
  %2075 = bitcast i8* %2071 to double*
  %2076 = load double, double* %2075, align 1
  %2077 = getelementptr inbounds i8, i8* %2071, i64 8
  %2078 = bitcast i8* %2077 to i64*
  %2079 = load i64, i64* %2078, align 1
  %2080 = bitcast i8* %2072 to double*
  %2081 = load double, double* %2080, align 1
  %2082 = fmul double %2076, %2081
  %2083 = bitcast i8* %2070 to double*
  store double %2082, double* %2083, align 1
  %2084 = getelementptr inbounds i8, i8* %2070, i64 8
  %2085 = bitcast i8* %2084 to i64*
  store i64 %2079, i64* %2085, align 1
  store %struct.Memory* %loadMem_4007c9, %struct.Memory** %MEMORY
  %loadMem_4007cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2090 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2089, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2090 to %"class.std::bitset"*
  %2091 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2092 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2093 = load i64, i64* %PC.i32
  %2094 = add i64 %2093, 9
  store i64 %2094, i64* %PC.i32
  %2095 = bitcast i8* %2092 to double*
  %2096 = load double, double* %2095, align 1
  %2097 = getelementptr inbounds i8, i8* %2092, i64 8
  %2098 = bitcast i8* %2097 to i64*
  %2099 = load i64, i64* %2098, align 1
  %2100 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2101 = fdiv double %2096, %2100
  %2102 = bitcast i8* %2091 to double*
  store double %2101, double* %2102, align 1
  %2103 = getelementptr inbounds i8, i8* %2091, i64 8
  %2104 = bitcast i8* %2103 to i64*
  store i64 %2099, i64* %2104, align 1
  store %struct.Memory* %loadMem_4007cd, %struct.Memory** %MEMORY
  %loadMem_4007d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2108, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2109 to %union.vec128_t*
  %2110 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2111 = load i64, i64* %PC.i31
  %2112 = add i64 %2111, 9
  store i64 %2112, i64* %PC.i31
  %2113 = bitcast i8* %2110 to double*
  %2114 = load double, double* %2113, align 1
  store double %2114, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_4007d6, %struct.Memory** %MEMORY
  %loadMem_4007df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 33
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2118, i64 0, i64 2
  %XMM2.i30 = bitcast %union.VectorReg* %2119 to %union.vec128_t*
  %2120 = bitcast %union.vec128_t* %XMM2.i30 to i8*
  %2121 = load i64, i64* %PC.i29
  %2122 = add i64 %2121, 9
  store i64 %2122, i64* %PC.i29
  %2123 = bitcast i8* %2120 to double*
  %2124 = load double, double* %2123, align 1
  store double %2124, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  store %struct.Memory* %loadMem_4007df, %struct.Memory** %MEMORY
  %loadMem_4007e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2128, i64 0, i64 2
  %YMM2.i28 = bitcast %union.VectorReg* %2129 to %"class.std::bitset"*
  %2130 = bitcast %"class.std::bitset"* %YMM2.i28 to i8*
  %2131 = load i64, i64* %PC.i27
  %2132 = add i64 %2131, 9
  store i64 %2132, i64* %PC.i27
  %2133 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2134 = bitcast i8* %2130 to double*
  store double %2133, double* %2134, align 1
  %2135 = getelementptr inbounds i8, i8* %2130, i64 8
  %2136 = bitcast i8* %2135 to double*
  store double 0.000000e+00, double* %2136, align 1
  store %struct.Memory* %loadMem_4007e8, %struct.Memory** %MEMORY
  %loadMem_4007f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2140, i64 0, i64 2
  %YMM2.i26 = bitcast %union.VectorReg* %2141 to %"class.std::bitset"*
  %2142 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2143 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2144 = load i64, i64* %PC.i25
  %2145 = add i64 %2144, 9
  store i64 %2145, i64* %PC.i25
  %2146 = bitcast i8* %2143 to double*
  %2147 = load double, double* %2146, align 1
  %2148 = getelementptr inbounds i8, i8* %2143, i64 8
  %2149 = bitcast i8* %2148 to i64*
  %2150 = load i64, i64* %2149, align 1
  %2151 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %2152 = fsub double %2147, %2151
  %2153 = bitcast i8* %2142 to double*
  store double %2152, double* %2153, align 1
  %2154 = getelementptr inbounds i8, i8* %2142, i64 8
  %2155 = bitcast i8* %2154 to i64*
  store i64 %2150, i64* %2155, align 1
  store %struct.Memory* %loadMem_4007f1, %struct.Memory** %MEMORY
  %loadMem_4007fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2158 to i64*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2159, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2160 to %union.vec128_t*
  %2161 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2162 = load i64, i64* %PC.i24
  %2163 = add i64 %2162, 9
  store i64 %2163, i64* %PC.i24
  %2164 = bitcast i8* %2161 to double*
  %2165 = load double, double* %2164, align 1
  store double %2165, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  store %struct.Memory* %loadMem_4007fa, %struct.Memory** %MEMORY
  %loadMem_400803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 33
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2169, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %2170 to %"class.std::bitset"*
  %2171 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2172 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2173 = load i64, i64* %PC.i22
  %2174 = add i64 %2173, 9
  store i64 %2174, i64* %PC.i22
  %2175 = bitcast i8* %2172 to double*
  %2176 = load double, double* %2175, align 1
  %2177 = getelementptr inbounds i8, i8* %2172, i64 8
  %2178 = bitcast i8* %2177 to i64*
  %2179 = load i64, i64* %2178, align 1
  %2180 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  %2181 = fmul double %2176, %2180
  %2182 = bitcast i8* %2171 to double*
  store double %2181, double* %2182, align 1
  %2183 = getelementptr inbounds i8, i8* %2171, i64 8
  %2184 = bitcast i8* %2183 to i64*
  store i64 %2179, i64* %2184, align 1
  store %struct.Memory* %loadMem_400803, %struct.Memory** %MEMORY
  %loadMem_40080c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 15
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2191, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2192 to %union.vec128_t*
  %2193 = load i64, i64* %RBP.i21
  %2194 = sub i64 %2193, 112
  %2195 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2196 = load i64, i64* %PC.i20
  %2197 = add i64 %2196, 5
  store i64 %2197, i64* %PC.i20
  %2198 = bitcast i8* %2195 to double*
  %2199 = load double, double* %2198, align 1
  %2200 = inttoptr i64 %2194 to double*
  store double %2199, double* %2200
  store %struct.Memory* %loadMem_40080c, %struct.Memory** %MEMORY
  %loadMem_400811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2204, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2205 to %"class.std::bitset"*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2207 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2206, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2207 to %union.vec128_t*
  %2208 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2209 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2210 = load i64, i64* %PC.i19
  %2211 = add i64 %2210, 3
  store i64 %2211, i64* %PC.i19
  %2212 = bitcast i8* %2209 to <2 x i32>*
  %2213 = load <2 x i32>, <2 x i32>* %2212, align 1
  %2214 = getelementptr inbounds i8, i8* %2209, i64 8
  %2215 = bitcast i8* %2214 to <2 x i32>*
  %2216 = load <2 x i32>, <2 x i32>* %2215, align 1
  %2217 = extractelement <2 x i32> %2213, i32 0
  %2218 = bitcast i8* %2208 to i32*
  store i32 %2217, i32* %2218, align 1
  %2219 = extractelement <2 x i32> %2213, i32 1
  %2220 = getelementptr inbounds i8, i8* %2208, i64 4
  %2221 = bitcast i8* %2220 to i32*
  store i32 %2219, i32* %2221, align 1
  %2222 = extractelement <2 x i32> %2216, i32 0
  %2223 = getelementptr inbounds i8, i8* %2208, i64 8
  %2224 = bitcast i8* %2223 to i32*
  store i32 %2222, i32* %2224, align 1
  %2225 = extractelement <2 x i32> %2216, i32 1
  %2226 = getelementptr inbounds i8, i8* %2208, i64 12
  %2227 = bitcast i8* %2226 to i32*
  store i32 %2225, i32* %2227, align 1
  store %struct.Memory* %loadMem_400811, %struct.Memory** %MEMORY
  %loadMem_400814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 15
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2234, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2235 to %"class.std::bitset"*
  %2236 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2237 = load i64, i64* %RBP.i18
  %2238 = sub i64 %2237, 112
  %2239 = load i64, i64* %PC.i17
  %2240 = add i64 %2239, 5
  store i64 %2240, i64* %PC.i17
  %2241 = inttoptr i64 %2238 to double*
  %2242 = load double, double* %2241
  %2243 = bitcast i8* %2236 to double*
  store double %2242, double* %2243, align 1
  %2244 = getelementptr inbounds i8, i8* %2236, i64 8
  %2245 = bitcast i8* %2244 to double*
  store double 0.000000e+00, double* %2245, align 1
  store %struct.Memory* %loadMem_400814, %struct.Memory** %MEMORY
  %loadMem_400819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2247 = getelementptr inbounds %struct.GPR, %struct.GPR* %2246, i32 0, i32 33
  %2248 = getelementptr inbounds %struct.Reg, %struct.Reg* %2247, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2248 to i64*
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 15
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2252, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2253 to %"class.std::bitset"*
  %2254 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2255 = load i64, i64* %RBP.i16
  %2256 = sub i64 %2255, 112
  %2257 = load i64, i64* %PC.i15
  %2258 = add i64 %2257, 5
  store i64 %2258, i64* %PC.i15
  %2259 = inttoptr i64 %2256 to double*
  %2260 = load double, double* %2259
  %2261 = bitcast i8* %2254 to double*
  store double %2260, double* %2261, align 1
  %2262 = getelementptr inbounds i8, i8* %2254, i64 8
  %2263 = bitcast i8* %2262 to double*
  store double 0.000000e+00, double* %2263, align 1
  store %struct.Memory* %loadMem_400819, %struct.Memory** %MEMORY
  %loadMem_40081e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 33
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 1
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %2270 = bitcast %union.anon* %2269 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2270, i32 0, i32 0
  %2271 = load i64, i64* %PC.i14
  %2272 = add i64 %2271, 2
  store i64 %2272, i64* %PC.i14
  store i8 3, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_40081e, %struct.Memory** %MEMORY
  %loadMem1_400820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %PC.i13
  %2277 = add i64 %2276, -1072
  %2278 = load i64, i64* %PC.i13
  %2279 = add i64 %2278, 5
  %2280 = load i64, i64* %PC.i13
  %2281 = add i64 %2280, 5
  store i64 %2281, i64* %PC.i13
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2283 = load i64, i64* %2282, align 8
  %2284 = add i64 %2283, -8
  %2285 = inttoptr i64 %2284 to i64*
  store i64 %2279, i64* %2285
  store i64 %2284, i64* %2282, align 8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2277, i64* %2286, align 8
  store %struct.Memory* %loadMem1_400820, %struct.Memory** %MEMORY
  %loadMem2_400820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400820 = load i64, i64* %3
  %2287 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400820)
  store %struct.Memory* %2287, %struct.Memory** %MEMORY
  %loadMem_400825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 33
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 5
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %2293 to i32*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 5
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2296 to i64*
  %2297 = load i64, i64* %RCX.i
  %2298 = load i32, i32* %ECX.i9
  %2299 = zext i32 %2298 to i64
  %2300 = load i64, i64* %PC.i8
  %2301 = add i64 %2300, 2
  store i64 %2301, i64* %PC.i8
  %2302 = xor i64 %2299, %2297
  %2303 = trunc i64 %2302 to i32
  %2304 = and i64 %2302, 4294967295
  store i64 %2304, i64* %RCX.i, align 8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2305, align 1
  %2306 = and i32 %2303, 255
  %2307 = call i32 @llvm.ctpop.i32(i32 %2306)
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = xor i8 %2309, 1
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2310, i8* %2311, align 1
  %2312 = icmp eq i32 %2303, 0
  %2313 = zext i1 %2312 to i8
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2313, i8* %2314, align 1
  %2315 = lshr i32 %2303, 31
  %2316 = trunc i32 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2316, i8* %2317, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2318, align 1
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2319, align 1
  store %struct.Memory* %loadMem_400825, %struct.Memory** %MEMORY
  %loadMem_400827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 1
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2325 to i32*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 15
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %RBP.i7
  %2330 = sub i64 %2329, 116
  %2331 = load i32, i32* %EAX.i
  %2332 = zext i32 %2331 to i64
  %2333 = load i64, i64* %PC.i6
  %2334 = add i64 %2333, 3
  store i64 %2334, i64* %PC.i6
  %2335 = inttoptr i64 %2330 to i32*
  store i32 %2331, i32* %2335
  store %struct.Memory* %loadMem_400827, %struct.Memory** %MEMORY
  %loadMem_40082a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 5
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2341 to i32*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 1
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2344 to i64*
  %2345 = load i32, i32* %ECX.i
  %2346 = zext i32 %2345 to i64
  %2347 = load i64, i64* %PC.i5
  %2348 = add i64 %2347, 2
  store i64 %2348, i64* %PC.i5
  %2349 = and i64 %2346, 4294967295
  store i64 %2349, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_40082a, %struct.Memory** %MEMORY
  %loadMem_40082c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 13
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2355 to i64*
  %2356 = load i64, i64* %RSP.i
  %2357 = load i64, i64* %PC.i4
  %2358 = add i64 %2357, 7
  store i64 %2358, i64* %PC.i4
  %2359 = add i64 128, %2356
  store i64 %2359, i64* %RSP.i, align 8
  %2360 = icmp ult i64 %2359, %2356
  %2361 = icmp ult i64 %2359, 128
  %2362 = or i1 %2360, %2361
  %2363 = zext i1 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2363, i8* %2364, align 1
  %2365 = trunc i64 %2359 to i32
  %2366 = and i32 %2365, 255
  %2367 = call i32 @llvm.ctpop.i32(i32 %2366)
  %2368 = trunc i32 %2367 to i8
  %2369 = and i8 %2368, 1
  %2370 = xor i8 %2369, 1
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2370, i8* %2371, align 1
  %2372 = xor i64 128, %2356
  %2373 = xor i64 %2372, %2359
  %2374 = lshr i64 %2373, 4
  %2375 = trunc i64 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2376, i8* %2377, align 1
  %2378 = icmp eq i64 %2359, 0
  %2379 = zext i1 %2378 to i8
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2379, i8* %2380, align 1
  %2381 = lshr i64 %2359, 63
  %2382 = trunc i64 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i64 %2356, 63
  %2385 = xor i64 %2381, %2384
  %2386 = add i64 %2385, %2381
  %2387 = icmp eq i64 %2386, 2
  %2388 = zext i1 %2387 to i8
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2388, i8* %2389, align 1
  store %struct.Memory* %loadMem_40082c, %struct.Memory** %MEMORY
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 15
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %PC.i2
  %2397 = add i64 %2396, 1
  store i64 %2397, i64* %PC.i2
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2399 = load i64, i64* %2398, align 8
  %2400 = add i64 %2399, 8
  %2401 = inttoptr i64 %2399 to i64*
  %2402 = load i64, i64* %2401
  store i64 %2402, i64* %RBP.i3, align 8
  store i64 %2400, i64* %2398, align 8
  store %struct.Memory* %loadMem_400833, %struct.Memory** %MEMORY
  %loadMem_400834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %PC.i1
  %2407 = add i64 %2406, 1
  store i64 %2407, i64* %PC.i1
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2410 = load i64, i64* %2409, align 8
  %2411 = inttoptr i64 %2410 to i64*
  %2412 = load i64, i64* %2411
  store i64 %2412, i64* %2408, align 8
  %2413 = add i64 %2410, 8
  store i64 %2413, i64* %2409, align 8
  store %struct.Memory* %loadMem_400834, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400834
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

define %struct.Memory* @routine_movq__0x400940___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400940_type* @G__0x400940 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400908___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400908_type* @G__0x400908 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400942___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400942_type* @G__0x400942 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x38f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x38f__rip__4195641__type* @G_0x38f__rip__4195641_ to i64
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x38f__rip__4195649__type* @G_0x38f__rip__4195649_ to i64
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x38f__rip__4195657__type* @G_0x38f__rip__4195657_ to i64
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x38f__rip__4195665__type* @G_0x38f__rip__4195665_ to i64
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x38f__rip__4195673__type* @G_0x38f__rip__4195673_ to i64
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

define %struct.Memory* @routine_movsd_0x38f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x38f__rip__4195681__type* @G_0x38f__rip__4195681_ to i64
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

define %struct.Memory* @routine_movq__0x400972___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400972_type* @G__0x400972 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_imulq__0x4e20__MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = mul i128 %21, 20000
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

define %struct.Memory* @routine_movsd_0x6012a0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
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

define %struct.Memory* @routine_jg_.L_4006f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd_0x601288___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x601060___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_subsd_0x601058___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %18 = fsub double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x601048___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %18 = fsub double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601038___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
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

define %struct.Memory* @routine_movq__0x400996___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400996_type* @G__0x400996 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x1ec__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1ec__rip__4196108__type* @G_0x1ec__rip__4196108_ to i64
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

define %struct.Memory* @routine_movsd_0x1ec__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x1ec__rip__4196116__type* @G_0x1ec__rip__4196116_ to i64
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

define %struct.Memory* @routine_divsd_0x6012a0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
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

define %struct.Memory* @routine_subsd_0x601058___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fsub double %13, %17
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

define %struct.Memory* @routine_subsd_0x601048___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fsub double %13, %17
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
