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
%G_0x601030_type = type <{ [8 x i8] }>
%G_0x601038_type = type <{ [8 x i8] }>
%G_0x601040_type = type <{ [8 x i8] }>
%G_0x601048_type = type <{ [16 x i8] }>
%G_0x601050_type = type <{ [8 x i8] }>
%G_0x601058_type = type <{ [16 x i8] }>
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
%G__0x400a00_type = type <{ [8 x i8] }>
%G__0x400a38_type = type <{ [8 x i8] }>
%G__0x400a3a_type = type <{ [8 x i8] }>
%G__0x400a6a_type = type <{ [8 x i8] }>
%G__0x400a8e_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x601030 = global %G_0x601030_type zeroinitializer
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
@G__0x400a00 = global %G__0x400a00_type zeroinitializer
@G__0x400a38 = global %G__0x400a38_type zeroinitializer
@G__0x400a3a = global %G__0x400a3a_type zeroinitializer
@G__0x400a6a = global %G__0x400a6a_type zeroinitializer
@G__0x400a8e = global %G__0x400a8e_type zeroinitializer

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
  %loadMem_400520 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400520, %struct.Memory** %MEMORY
  %loadMem_400521 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400521, %struct.Memory** %MEMORY
  %loadMem_400524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i328 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i328
  %36 = load i64, i64* %PC.i327
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i327
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i328, align 8
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
  store %struct.Memory* %loadMem_400524, %struct.Memory** %MEMORY
  %loadMem_40052b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i338 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i337
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i337
  store i64 ptrtoint (%G__0x400a38_type* @G__0x400a38 to i64), i64* %RDI.i338, align 8
  store %struct.Memory* %loadMem_40052b, %struct.Memory** %MEMORY
  %loadMem_400535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i382
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i381
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i381
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400535, %struct.Memory** %MEMORY
  %loadMem_40053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.2*
  %AL.i392 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %92, i32 0, i32 0
  %93 = load i64, i64* %PC.i391
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC.i391
  store i8 0, i8* %AL.i392, align 1
  store %struct.Memory* %loadMem_40053c, %struct.Memory** %MEMORY
  %loadMem1_40053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i393
  %99 = add i64 %98, -286
  %100 = load i64, i64* %PC.i393
  %101 = add i64 %100, 5
  %102 = load i64, i64* %PC.i393
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC.i393
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, -8
  %107 = inttoptr i64 %106 to i64*
  store i64 %101, i64* %107
  store i64 %106, i64* %104, align 8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %99, i64* %108, align 8
  store %struct.Memory* %loadMem1_40053e, %struct.Memory** %MEMORY
  %loadMem2_40053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40053e = load i64, i64* %3
  %109 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_40053e)
  store %struct.Memory* %109, %struct.Memory** %MEMORY
  %loadMem_400543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %PC.i389
  %117 = add i64 %116, 10
  store i64 %117, i64* %PC.i389
  store i64 ptrtoint (%G__0x400a00_type* @G__0x400a00 to i64), i64* %RDI.i390, align 8
  store %struct.Memory* %loadMem_400543, %struct.Memory** %MEMORY
  %loadMem_40054d = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %EAX.i387 = bitcast %union.anon* %123 to i32*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %RBP.i388
  %128 = sub i64 %127, 92
  %129 = load i32, i32* %EAX.i387
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %PC.i386
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC.i386
  %133 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %133
  store %struct.Memory* %loadMem_40054d, %struct.Memory** %MEMORY
  %loadMem_400550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %140 = bitcast %union.anon* %139 to %struct.anon.2*
  %AL.i385 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %140, i32 0, i32 0
  %141 = load i64, i64* %PC.i384
  %142 = add i64 %141, 2
  store i64 %142, i64* %PC.i384
  store i8 0, i8* %AL.i385, align 1
  store %struct.Memory* %loadMem_400550, %struct.Memory** %MEMORY
  %loadMem1_400552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i383
  %147 = add i64 %146, -306
  %148 = load i64, i64* %PC.i383
  %149 = add i64 %148, 5
  %150 = load i64, i64* %PC.i383
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC.i383
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %149, i64* %155
  store i64 %154, i64* %152, align 8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %147, i64* %156, align 8
  store %struct.Memory* %loadMem1_400552, %struct.Memory** %MEMORY
  %loadMem2_400552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400552 = load i64, i64* %3
  %157 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400552)
  store %struct.Memory* %157, %struct.Memory** %MEMORY
  %loadMem_400557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RDI.i380 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %PC.i379
  %165 = add i64 %164, 10
  store i64 %165, i64* %PC.i379
  store i64 ptrtoint (%G__0x400a3a_type* @G__0x400a3a to i64), i64* %RDI.i380, align 8
  store %struct.Memory* %loadMem_400557, %struct.Memory** %MEMORY
  %loadMem_400561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %169, i64 0, i64 0
  %YMM0.i378 = bitcast %union.VectorReg* %170 to %"class.std::bitset"*
  %171 = bitcast %"class.std::bitset"* %YMM0.i378 to i8*
  %172 = load i64, i64* %PC.i377
  %173 = add i64 %172, 1127
  %174 = load i64, i64* %PC.i377
  %175 = add i64 %174, 8
  store i64 %175, i64* %PC.i377
  %176 = inttoptr i64 %173 to double*
  %177 = load double, double* %176
  %178 = bitcast i8* %171 to double*
  store double %177, double* %178, align 1
  %179 = getelementptr inbounds i8, i8* %171, i64 8
  %180 = bitcast i8* %179 to double*
  store double 0.000000e+00, double* %180, align 1
  store %struct.Memory* %loadMem_400561, %struct.Memory** %MEMORY
  %loadMem_400569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 33
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %184, i64 0, i64 1
  %YMM1.i376 = bitcast %union.VectorReg* %185 to %"class.std::bitset"*
  %186 = bitcast %"class.std::bitset"* %YMM1.i376 to i8*
  %187 = load i64, i64* %PC.i375
  %188 = add i64 %187, 1127
  %189 = load i64, i64* %PC.i375
  %190 = add i64 %189, 8
  store i64 %190, i64* %PC.i375
  %191 = inttoptr i64 %188 to double*
  %192 = load double, double* %191
  %193 = bitcast i8* %186 to double*
  store double %192, double* %193, align 1
  %194 = getelementptr inbounds i8, i8* %186, i64 8
  %195 = bitcast i8* %194 to double*
  store double 0.000000e+00, double* %195, align 1
  store %struct.Memory* %loadMem_400569, %struct.Memory** %MEMORY
  %loadMem_400571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %199, i64 0, i64 2
  %YMM2.i374 = bitcast %union.VectorReg* %200 to %"class.std::bitset"*
  %201 = bitcast %"class.std::bitset"* %YMM2.i374 to i8*
  %202 = load i64, i64* %PC.i373
  %203 = add i64 %202, 1127
  %204 = load i64, i64* %PC.i373
  %205 = add i64 %204, 8
  store i64 %205, i64* %PC.i373
  %206 = inttoptr i64 %203 to double*
  %207 = load double, double* %206
  %208 = bitcast i8* %201 to double*
  store double %207, double* %208, align 1
  %209 = getelementptr inbounds i8, i8* %201, i64 8
  %210 = bitcast i8* %209 to double*
  store double 0.000000e+00, double* %210, align 1
  store %struct.Memory* %loadMem_400571, %struct.Memory** %MEMORY
  %loadMem_400579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %214, i64 0, i64 3
  %YMM3.i372 = bitcast %union.VectorReg* %215 to %"class.std::bitset"*
  %216 = bitcast %"class.std::bitset"* %YMM3.i372 to i8*
  %217 = load i64, i64* %PC.i371
  %218 = add i64 %217, 1127
  %219 = load i64, i64* %PC.i371
  %220 = add i64 %219, 8
  store i64 %220, i64* %PC.i371
  %221 = inttoptr i64 %218 to double*
  %222 = load double, double* %221
  %223 = bitcast i8* %216 to double*
  store double %222, double* %223, align 1
  %224 = getelementptr inbounds i8, i8* %216, i64 8
  %225 = bitcast i8* %224 to double*
  store double 0.000000e+00, double* %225, align 1
  store %struct.Memory* %loadMem_400579, %struct.Memory** %MEMORY
  %loadMem_400581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %229, i64 0, i64 4
  %YMM4.i370 = bitcast %union.VectorReg* %230 to %"class.std::bitset"*
  %231 = bitcast %"class.std::bitset"* %YMM4.i370 to i8*
  %232 = load i64, i64* %PC.i369
  %233 = add i64 %232, 1127
  %234 = load i64, i64* %PC.i369
  %235 = add i64 %234, 8
  store i64 %235, i64* %PC.i369
  %236 = inttoptr i64 %233 to double*
  %237 = load double, double* %236
  %238 = bitcast i8* %231 to double*
  store double %237, double* %238, align 1
  %239 = getelementptr inbounds i8, i8* %231, i64 8
  %240 = bitcast i8* %239 to double*
  store double 0.000000e+00, double* %240, align 1
  store %struct.Memory* %loadMem_400581, %struct.Memory** %MEMORY
  %loadMem_400589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 33
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %244, i64 0, i64 5
  %YMM5.i368 = bitcast %union.VectorReg* %245 to %"class.std::bitset"*
  %246 = bitcast %"class.std::bitset"* %YMM5.i368 to i8*
  %247 = load i64, i64* %PC.i367
  %248 = add i64 %247, 1127
  %249 = load i64, i64* %PC.i367
  %250 = add i64 %249, 8
  store i64 %250, i64* %PC.i367
  %251 = inttoptr i64 %248 to double*
  %252 = load double, double* %251
  %253 = bitcast i8* %246 to double*
  store double %252, double* %253, align 1
  %254 = getelementptr inbounds i8, i8* %246, i64 8
  %255 = bitcast i8* %254 to double*
  store double 0.000000e+00, double* %255, align 1
  store %struct.Memory* %loadMem_400589, %struct.Memory** %MEMORY
  %loadMem_400591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i366
  %263 = sub i64 %262, 56
  %264 = load i64, i64* %PC.i365
  %265 = add i64 %264, 8
  store i64 %265, i64* %PC.i365
  %266 = inttoptr i64 %263 to i64*
  store i64 15625, i64* %266
  store %struct.Memory* %loadMem_400591, %struct.Memory** %MEMORY
  %loadMem_400599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 4
  %XMM4.i364 = bitcast %union.VectorReg* %271 to %union.vec128_t*
  %272 = bitcast %union.vec128_t* %XMM4.i364 to i8*
  %273 = load i64, i64* %PC.i363
  %274 = add i64 %273, 9
  store i64 %274, i64* %PC.i363
  %275 = bitcast i8* %272 to double*
  %276 = load double, double* %275, align 1
  store double %276, double* bitcast (%G_0x6012d0_type* @G_0x6012d0 to double*)
  store %struct.Memory* %loadMem_400599, %struct.Memory** %MEMORY
  %loadMem_4005a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 15
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %RBP.i362
  %284 = sub i64 %283, 64
  %285 = load i64, i64* %PC.i361
  %286 = add i64 %285, 8
  store i64 %286, i64* %PC.i361
  %287 = inttoptr i64 %284 to i64*
  store i64 512000000, i64* %287
  store %struct.Memory* %loadMem_4005a2, %struct.Memory** %MEMORY
  %loadMem_4005aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %291, i64 0, i64 5
  %XMM5.i360 = bitcast %union.VectorReg* %292 to %union.vec128_t*
  %293 = bitcast %union.vec128_t* %XMM5.i360 to i8*
  %294 = load i64, i64* %PC.i359
  %295 = add i64 %294, 9
  store i64 %295, i64* %PC.i359
  %296 = bitcast i8* %293 to double*
  %297 = load double, double* %296, align 1
  store double %297, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  store %struct.Memory* %loadMem_4005aa, %struct.Memory** %MEMORY
  %loadMem_4005b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %301, i64 0, i64 4
  %XMM4.i358 = bitcast %union.VectorReg* %302 to %union.vec128_t*
  %303 = bitcast %union.vec128_t* %XMM4.i358 to i8*
  %304 = load i64, i64* %PC.i357
  %305 = add i64 %304, 9
  store i64 %305, i64* %PC.i357
  %306 = bitcast i8* %303 to double*
  %307 = load double, double* %306, align 1
  store double %307, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  store %struct.Memory* %loadMem_4005b3, %struct.Memory** %MEMORY
  %loadMem_4005bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %311, i64 0, i64 3
  %XMM3.i356 = bitcast %union.VectorReg* %312 to %union.vec128_t*
  %313 = bitcast %union.vec128_t* %XMM3.i356 to i8*
  %314 = load i64, i64* %PC.i355
  %315 = add i64 %314, 9
  store i64 %315, i64* %PC.i355
  %316 = bitcast i8* %313 to double*
  %317 = load double, double* %316, align 1
  store double %317, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  store %struct.Memory* %loadMem_4005bc, %struct.Memory** %MEMORY
  %loadMem_4005c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %321, i64 0, i64 2
  %XMM2.i354 = bitcast %union.VectorReg* %322 to %union.vec128_t*
  %323 = bitcast %union.vec128_t* %XMM2.i354 to i8*
  %324 = load i64, i64* %PC.i353
  %325 = add i64 %324, 9
  store i64 %325, i64* %PC.i353
  %326 = bitcast i8* %323 to double*
  %327 = load double, double* %326, align 1
  store double %327, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  store %struct.Memory* %loadMem_4005c5, %struct.Memory** %MEMORY
  %loadMem_4005ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %331, i64 0, i64 1
  %XMM1.i352 = bitcast %union.VectorReg* %332 to %union.vec128_t*
  %333 = bitcast %union.vec128_t* %XMM1.i352 to i8*
  %334 = load i64, i64* %PC.i351
  %335 = add i64 %334, 9
  store i64 %335, i64* %PC.i351
  %336 = bitcast i8* %333 to double*
  %337 = load double, double* %336, align 1
  store double %337, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  store %struct.Memory* %loadMem_4005ce, %struct.Memory** %MEMORY
  %loadMem_4005d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %341, i64 0, i64 0
  %XMM0.i350 = bitcast %union.VectorReg* %342 to %union.vec128_t*
  %343 = bitcast %union.vec128_t* %XMM0.i350 to i8*
  %344 = load i64, i64* %PC.i349
  %345 = add i64 %344, 9
  store i64 %345, i64* %PC.i349
  %346 = bitcast i8* %343 to double*
  %347 = load double, double* %346, align 1
  store double %347, double* bitcast (%G_0x601128_type* @G_0x601128 to double*)
  store %struct.Memory* %loadMem_4005d7, %struct.Memory** %MEMORY
  %loadMem_4005e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %351, i64 0, i64 0
  %YMM0.i348 = bitcast %union.VectorReg* %352 to %"class.std::bitset"*
  %353 = bitcast %"class.std::bitset"* %YMM0.i348 to i8*
  %354 = load i64, i64* %PC.i347
  %355 = add i64 %354, 9
  store i64 %355, i64* %PC.i347
  %356 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %357 = bitcast i8* %353 to double*
  store double %356, double* %357, align 1
  %358 = getelementptr inbounds i8, i8* %353, i64 8
  %359 = bitcast i8* %358 to double*
  store double 0.000000e+00, double* %359, align 1
  store %struct.Memory* %loadMem_4005e0, %struct.Memory** %MEMORY
  %loadMem_4005e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %363, i64 0, i64 0
  %XMM0.i346 = bitcast %union.VectorReg* %364 to %union.vec128_t*
  %365 = bitcast %union.vec128_t* %XMM0.i346 to i8*
  %366 = load i64, i64* %PC.i345
  %367 = add i64 %366, 9
  store i64 %367, i64* %PC.i345
  %368 = bitcast i8* %365 to double*
  %369 = load double, double* %368, align 1
  store double %369, double* bitcast (%G_0x601280_type* @G_0x601280 to double*)
  store %struct.Memory* %loadMem_4005e9, %struct.Memory** %MEMORY
  %loadMem_4005f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %EAX.i343 = bitcast %union.anon* %375 to i32*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RBP.i344
  %380 = sub i64 %379, 96
  %381 = load i32, i32* %EAX.i343
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC.i342
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC.i342
  %385 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %385
  store %struct.Memory* %loadMem_4005f2, %struct.Memory** %MEMORY
  %loadMem_4005f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %392 = bitcast %union.anon* %391 to %struct.anon.2*
  %AL.i341 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %392, i32 0, i32 0
  %393 = load i64, i64* %PC.i340
  %394 = add i64 %393, 2
  store i64 %394, i64* %PC.i340
  store i8 0, i8* %AL.i341, align 1
  store %struct.Memory* %loadMem_4005f5, %struct.Memory** %MEMORY
  %loadMem1_4005f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %PC.i339
  %399 = add i64 %398, -471
  %400 = load i64, i64* %PC.i339
  %401 = add i64 %400, 5
  %402 = load i64, i64* %PC.i339
  %403 = add i64 %402, 5
  store i64 %403, i64* %PC.i339
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %401, i64* %407
  store i64 %406, i64* %404, align 8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %399, i64* %408, align 8
  store %struct.Memory* %loadMem1_4005f7, %struct.Memory** %MEMORY
  %loadMem2_4005f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4005f7 = load i64, i64* %3
  %409 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4005f7)
  store %struct.Memory* %409, %struct.Memory** %MEMORY
  %loadMem_4005fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 11
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RDI.i336 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %PC.i335
  %417 = add i64 %416, 10
  store i64 %417, i64* %PC.i335
  store i64 ptrtoint (%G__0x400a6a_type* @G__0x400a6a to i64), i64* %RDI.i336, align 8
  store %struct.Memory* %loadMem_4005fc, %struct.Memory** %MEMORY
  %loadMem_400606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %EAX.i333 = bitcast %union.anon* %423 to i32*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %RBP.i334
  %428 = sub i64 %427, 100
  %429 = load i32, i32* %EAX.i333
  %430 = zext i32 %429 to i64
  %431 = load i64, i64* %PC.i332
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC.i332
  %433 = inttoptr i64 %428 to i32*
  store i32 %429, i32* %433
  store %struct.Memory* %loadMem_400606, %struct.Memory** %MEMORY
  %loadMem_400609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %440 = bitcast %union.anon* %439 to %struct.anon.2*
  %AL.i331 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %440, i32 0, i32 0
  %441 = load i64, i64* %PC.i330
  %442 = add i64 %441, 2
  store i64 %442, i64* %PC.i330
  store i8 0, i8* %AL.i331, align 1
  store %struct.Memory* %loadMem_400609, %struct.Memory** %MEMORY
  %loadMem1_40060b = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %PC.i329
  %447 = add i64 %446, -491
  %448 = load i64, i64* %PC.i329
  %449 = add i64 %448, 5
  %450 = load i64, i64* %PC.i329
  %451 = add i64 %450, 5
  store i64 %451, i64* %PC.i329
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = add i64 %453, -8
  %455 = inttoptr i64 %454 to i64*
  store i64 %449, i64* %455
  store i64 %454, i64* %452, align 8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %447, i64* %456, align 8
  store %struct.Memory* %loadMem1_40060b, %struct.Memory** %MEMORY
  %loadMem2_40060b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40060b = load i64, i64* %3
  %457 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_40060b)
  store %struct.Memory* %457, %struct.Memory** %MEMORY
  %loadMem_400610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %461, i64 0, i64 0
  %YMM0.i325 = bitcast %union.VectorReg* %462 to %"class.std::bitset"*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %464 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %463, i64 0, i64 0
  %XMM0.i326 = bitcast %union.VectorReg* %464 to %union.vec128_t*
  %465 = bitcast %"class.std::bitset"* %YMM0.i325 to i8*
  %466 = bitcast %"class.std::bitset"* %YMM0.i325 to i8*
  %467 = bitcast %union.vec128_t* %XMM0.i326 to i8*
  %468 = load i64, i64* %PC.i324
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i324
  %470 = bitcast i8* %466 to i64*
  %471 = load i64, i64* %470, align 1
  %472 = getelementptr inbounds i8, i8* %466, i64 8
  %473 = bitcast i8* %472 to i64*
  %474 = load i64, i64* %473, align 1
  %475 = bitcast i8* %467 to i64*
  %476 = load i64, i64* %475, align 1
  %477 = getelementptr inbounds i8, i8* %467, i64 8
  %478 = bitcast i8* %477 to i64*
  %479 = load i64, i64* %478, align 1
  %480 = xor i64 %476, %471
  %481 = xor i64 %479, %474
  %482 = trunc i64 %480 to i32
  %483 = lshr i64 %480, 32
  %484 = trunc i64 %483 to i32
  %485 = bitcast i8* %465 to i32*
  store i32 %482, i32* %485, align 1
  %486 = getelementptr inbounds i8, i8* %465, i64 4
  %487 = bitcast i8* %486 to i32*
  store i32 %484, i32* %487, align 1
  %488 = trunc i64 %481 to i32
  %489 = getelementptr inbounds i8, i8* %465, i64 8
  %490 = bitcast i8* %489 to i32*
  store i32 %488, i32* %490, align 1
  %491 = lshr i64 %481, 32
  %492 = trunc i64 %491 to i32
  %493 = getelementptr inbounds i8, i8* %465, i64 12
  %494 = bitcast i8* %493 to i32*
  store i32 %492, i32* %494, align 1
  store %struct.Memory* %loadMem_400610, %struct.Memory** %MEMORY
  %loadMem_400613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 11
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RDI.i323 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %PC.i322
  %502 = add i64 %501, 10
  store i64 %502, i64* %PC.i322
  store i64 -9223372036854775808, i64* %RDI.i323, align 8
  store %struct.Memory* %loadMem_400613, %struct.Memory** %MEMORY
  %loadMem_40061d = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 5
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 15
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RBP.i321
  %513 = sub i64 %512, 56
  %514 = load i64, i64* %PC.i319
  %515 = add i64 %514, 8
  store i64 %515, i64* %PC.i319
  %516 = inttoptr i64 %513 to i64*
  %517 = load i64, i64* %516
  %518 = sext i64 %517 to i128
  %519 = and i128 %518, -18446744073709551616
  %520 = zext i64 %517 to i128
  %521 = or i128 %519, %520
  %522 = mul i128 %521, 10000
  %523 = trunc i128 %522 to i64
  store i64 %523, i64* %RCX.i320, align 8
  %524 = sext i64 %523 to i128
  %525 = icmp ne i128 %524, %522
  %526 = zext i1 %525 to i8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %526, i8* %527, align 1
  %528 = trunc i128 %522 to i32
  %529 = and i32 %528, 255
  %530 = call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %533, i8* %534, align 1
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %535, align 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %536, align 1
  %537 = lshr i64 %523, 63
  %538 = trunc i64 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %526, i8* %540, align 1
  store %struct.Memory* %loadMem_40061d, %struct.Memory** %MEMORY
  %loadMem_400625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 5
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RBP.i318
  %551 = sub i64 %550, 80
  %552 = load i64, i64* %RCX.i317
  %553 = load i64, i64* %PC.i316
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC.i316
  %555 = inttoptr i64 %551 to i64*
  store i64 %552, i64* %555
  store %struct.Memory* %loadMem_400625, %struct.Memory** %MEMORY
  %loadMem_400629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %559, i64 0, i64 1
  %YMM1.i315 = bitcast %union.VectorReg* %560 to %"class.std::bitset"*
  %561 = bitcast %"class.std::bitset"* %YMM1.i315 to i8*
  %562 = load i64, i64* %PC.i314
  %563 = add i64 %562, 9
  store i64 %563, i64* %PC.i314
  %564 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %565 = bitcast i8* %561 to double*
  store double %564, double* %565, align 1
  %566 = getelementptr inbounds i8, i8* %561, i64 8
  %567 = bitcast i8* %566 to double*
  store double 0.000000e+00, double* %567, align 1
  store %struct.Memory* %loadMem_400629, %struct.Memory** %MEMORY
  %loadMem_400632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 5
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %574, i64 0, i64 1
  %XMM1.i313 = bitcast %union.VectorReg* %575 to %union.vec128_t*
  %576 = bitcast %union.vec128_t* %XMM1.i313 to i8*
  %577 = load i64, i64* %PC.i311
  %578 = add i64 %577, 5
  store i64 %578, i64* %PC.i311
  %579 = bitcast i8* %576 to i64*
  %580 = load i64, i64* %579, align 1
  store i64 %580, i64* %RCX.i312, align 1
  store %struct.Memory* %loadMem_400632, %struct.Memory** %MEMORY
  %loadMem_400637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 11
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RDI.i310 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RCX.i309
  %591 = load i64, i64* %RDI.i310
  %592 = load i64, i64* %PC.i308
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC.i308
  %594 = xor i64 %591, %590
  store i64 %594, i64* %RCX.i309, align 8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %595, align 1
  %596 = trunc i64 %594 to i32
  %597 = and i32 %596, 255
  %598 = call i32 @llvm.ctpop.i32(i32 %597)
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  %601 = xor i8 %600, 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %601, i8* %602, align 1
  %603 = icmp eq i64 %594, 0
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %604, i8* %605, align 1
  %606 = lshr i64 %594, 63
  %607 = trunc i64 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %607, i8* %608, align 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %609, align 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %610, align 1
  store %struct.Memory* %loadMem_400637, %struct.Memory** %MEMORY
  %loadMem_40063a = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 5
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %616 to i64*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %617, i64 0, i64 1
  %YMM1.i307 = bitcast %union.VectorReg* %618 to %"class.std::bitset"*
  %619 = bitcast %"class.std::bitset"* %YMM1.i307 to i8*
  %620 = load i64, i64* %RCX.i306
  %621 = load i64, i64* %PC.i305
  %622 = add i64 %621, 5
  store i64 %622, i64* %PC.i305
  %623 = bitcast i8* %619 to i64*
  store i64 %620, i64* %623, align 1
  %624 = getelementptr inbounds i8, i8* %619, i64 8
  %625 = bitcast i8* %624 to i64*
  store i64 0, i64* %625, align 1
  store %struct.Memory* %loadMem_40063a, %struct.Memory** %MEMORY
  %loadMem_40063f = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %629, i64 0, i64 1
  %XMM1.i304 = bitcast %union.VectorReg* %630 to %union.vec128_t*
  %631 = bitcast %union.vec128_t* %XMM1.i304 to i8*
  %632 = load i64, i64* %PC.i303
  %633 = add i64 %632, 9
  store i64 %633, i64* %PC.i303
  %634 = bitcast i8* %631 to double*
  %635 = load double, double* %634, align 1
  store double %635, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  store %struct.Memory* %loadMem_40063f, %struct.Memory** %MEMORY
  %loadMem_400648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %639, i64 0, i64 1
  %YMM1.i302 = bitcast %union.VectorReg* %640 to %"class.std::bitset"*
  %641 = bitcast %"class.std::bitset"* %YMM1.i302 to i8*
  %642 = load i64, i64* %PC.i301
  %643 = add i64 %642, 9
  store i64 %643, i64* %PC.i301
  %644 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %645 = bitcast i8* %641 to double*
  store double %644, double* %645, align 1
  %646 = getelementptr inbounds i8, i8* %641, i64 8
  %647 = bitcast i8* %646 to double*
  store double 0.000000e+00, double* %647, align 1
  store %struct.Memory* %loadMem_400648, %struct.Memory** %MEMORY
  %loadMem_400651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 5
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %654, i64 0, i64 1
  %XMM1.i300 = bitcast %union.VectorReg* %655 to %union.vec128_t*
  %656 = bitcast %union.vec128_t* %XMM1.i300 to i8*
  %657 = load i64, i64* %PC.i298
  %658 = add i64 %657, 5
  store i64 %658, i64* %PC.i298
  %659 = bitcast i8* %656 to i64*
  %660 = load i64, i64* %659, align 1
  store i64 %660, i64* %RCX.i299, align 1
  store %struct.Memory* %loadMem_400651, %struct.Memory** %MEMORY
  %loadMem_400656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 5
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %666 to i64*
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 11
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %RDI.i297 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %RCX.i296
  %671 = load i64, i64* %RDI.i297
  %672 = load i64, i64* %PC.i295
  %673 = add i64 %672, 3
  store i64 %673, i64* %PC.i295
  %674 = xor i64 %671, %670
  store i64 %674, i64* %RCX.i296, align 8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %675, align 1
  %676 = trunc i64 %674 to i32
  %677 = and i32 %676, 255
  %678 = call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %681, i8* %682, align 1
  %683 = icmp eq i64 %674, 0
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %684, i8* %685, align 1
  %686 = lshr i64 %674, 63
  %687 = trunc i64 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %687, i8* %688, align 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %689, align 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %690, align 1
  store %struct.Memory* %loadMem_400656, %struct.Memory** %MEMORY
  %loadMem_400659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 33
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 5
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %698 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %697, i64 0, i64 1
  %YMM1.i294 = bitcast %union.VectorReg* %698 to %"class.std::bitset"*
  %699 = bitcast %"class.std::bitset"* %YMM1.i294 to i8*
  %700 = load i64, i64* %RCX.i293
  %701 = load i64, i64* %PC.i292
  %702 = add i64 %701, 5
  store i64 %702, i64* %PC.i292
  %703 = bitcast i8* %699 to i64*
  store i64 %700, i64* %703, align 1
  %704 = getelementptr inbounds i8, i8* %699, i64 8
  %705 = bitcast i8* %704 to i64*
  store i64 0, i64* %705, align 1
  store %struct.Memory* %loadMem_400659, %struct.Memory** %MEMORY
  %loadMem_40065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 33
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %709, i64 0, i64 1
  %XMM1.i291 = bitcast %union.VectorReg* %710 to %union.vec128_t*
  %711 = bitcast %union.vec128_t* %XMM1.i291 to i8*
  %712 = load i64, i64* %PC.i290
  %713 = add i64 %712, 9
  store i64 %713, i64* %PC.i290
  %714 = bitcast i8* %711 to double*
  %715 = load double, double* %714, align 1
  store double %715, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  store %struct.Memory* %loadMem_40065e, %struct.Memory** %MEMORY
  %loadMem_400667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %719, i64 0, i64 1
  %YMM1.i289 = bitcast %union.VectorReg* %720 to %"class.std::bitset"*
  %721 = bitcast %"class.std::bitset"* %YMM1.i289 to i8*
  %722 = load i64, i64* %PC.i288
  %723 = add i64 %722, 9
  store i64 %723, i64* %PC.i288
  %724 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %725 = bitcast i8* %721 to double*
  store double %724, double* %725, align 1
  %726 = getelementptr inbounds i8, i8* %721, i64 8
  %727 = bitcast i8* %726 to double*
  store double 0.000000e+00, double* %727, align 1
  store %struct.Memory* %loadMem_400667, %struct.Memory** %MEMORY
  %loadMem_400670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %731, i64 0, i64 2
  %YMM2.i287 = bitcast %union.VectorReg* %732 to %"class.std::bitset"*
  %733 = bitcast %"class.std::bitset"* %YMM2.i287 to i8*
  %734 = load i64, i64* %PC.i286
  %735 = add i64 %734, 9
  store i64 %735, i64* %PC.i286
  %736 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %737 = bitcast i8* %733 to double*
  store double %736, double* %737, align 1
  %738 = getelementptr inbounds i8, i8* %733, i64 8
  %739 = bitcast i8* %738 to double*
  store double 0.000000e+00, double* %739, align 1
  store %struct.Memory* %loadMem_400670, %struct.Memory** %MEMORY
  %loadMem_400679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 15
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %747 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %746, i64 0, i64 3
  %YMM3.i285 = bitcast %union.VectorReg* %747 to %"class.std::bitset"*
  %748 = bitcast %"class.std::bitset"* %YMM3.i285 to i8*
  %749 = load i64, i64* %RBP.i284
  %750 = sub i64 %749, 80
  %751 = load i64, i64* %PC.i283
  %752 = add i64 %751, 6
  store i64 %752, i64* %PC.i283
  %753 = inttoptr i64 %750 to i64*
  %754 = load i64, i64* %753
  %755 = sitofp i64 %754 to double
  %756 = bitcast i8* %748 to double*
  store double %755, double* %756, align 1
  store %struct.Memory* %loadMem_400679, %struct.Memory** %MEMORY
  %loadMem_40067f = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %760, i64 0, i64 2
  %YMM2.i281 = bitcast %union.VectorReg* %761 to %"class.std::bitset"*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %763 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %762, i64 0, i64 3
  %XMM3.i282 = bitcast %union.VectorReg* %763 to %union.vec128_t*
  %764 = bitcast %"class.std::bitset"* %YMM2.i281 to i8*
  %765 = bitcast %"class.std::bitset"* %YMM2.i281 to i8*
  %766 = bitcast %union.vec128_t* %XMM3.i282 to i8*
  %767 = load i64, i64* %PC.i280
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC.i280
  %769 = bitcast i8* %765 to double*
  %770 = load double, double* %769, align 1
  %771 = getelementptr inbounds i8, i8* %765, i64 8
  %772 = bitcast i8* %771 to i64*
  %773 = load i64, i64* %772, align 1
  %774 = bitcast i8* %766 to double*
  %775 = load double, double* %774, align 1
  %776 = fmul double %770, %775
  %777 = bitcast i8* %764 to double*
  store double %776, double* %777, align 1
  %778 = getelementptr inbounds i8, i8* %764, i64 8
  %779 = bitcast i8* %778 to i64*
  store i64 %773, i64* %779, align 1
  store %struct.Memory* %loadMem_40067f, %struct.Memory** %MEMORY
  %loadMem_400683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %784 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %783, i64 0, i64 1
  %YMM1.i278 = bitcast %union.VectorReg* %784 to %"class.std::bitset"*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %785, i64 0, i64 2
  %XMM2.i279 = bitcast %union.VectorReg* %786 to %union.vec128_t*
  %787 = bitcast %"class.std::bitset"* %YMM1.i278 to i8*
  %788 = bitcast %"class.std::bitset"* %YMM1.i278 to i8*
  %789 = bitcast %union.vec128_t* %XMM2.i279 to i8*
  %790 = load i64, i64* %PC.i277
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC.i277
  %792 = bitcast i8* %788 to double*
  %793 = load double, double* %792, align 1
  %794 = getelementptr inbounds i8, i8* %788, i64 8
  %795 = bitcast i8* %794 to i64*
  %796 = load i64, i64* %795, align 1
  %797 = bitcast i8* %789 to double*
  %798 = load double, double* %797, align 1
  %799 = fdiv double %793, %798
  %800 = bitcast i8* %787 to double*
  store double %799, double* %800, align 1
  %801 = getelementptr inbounds i8, i8* %787, i64 8
  %802 = bitcast i8* %801 to i64*
  store i64 %796, i64* %802, align 1
  store %struct.Memory* %loadMem_400683, %struct.Memory** %MEMORY
  %loadMem_400687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %810 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %809, i64 0, i64 1
  %XMM1.i276 = bitcast %union.VectorReg* %810 to %union.vec128_t*
  %811 = load i64, i64* %RBP.i275
  %812 = sub i64 %811, 48
  %813 = bitcast %union.vec128_t* %XMM1.i276 to i8*
  %814 = load i64, i64* %PC.i274
  %815 = add i64 %814, 5
  store i64 %815, i64* %PC.i274
  %816 = bitcast i8* %813 to double*
  %817 = load double, double* %816, align 1
  %818 = inttoptr i64 %812 to double*
  store double %817, double* %818
  store %struct.Memory* %loadMem_400687, %struct.Memory** %MEMORY
  %loadMem_40068c = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 15
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %825, i64 0, i64 0
  %XMM0.i273 = bitcast %union.VectorReg* %826 to %union.vec128_t*
  %827 = load i64, i64* %RBP.i272
  %828 = sub i64 %827, 16
  %829 = bitcast %union.vec128_t* %XMM0.i273 to i8*
  %830 = load i64, i64* %PC.i271
  %831 = add i64 %830, 5
  store i64 %831, i64* %PC.i271
  %832 = bitcast i8* %829 to double*
  %833 = load double, double* %832, align 1
  %834 = inttoptr i64 %828 to double*
  store double %833, double* %834
  store %struct.Memory* %loadMem_40068c, %struct.Memory** %MEMORY
  %loadMem_400691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 33
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 15
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %841, i64 0, i64 0
  %XMM0.i270 = bitcast %union.VectorReg* %842 to %union.vec128_t*
  %843 = load i64, i64* %RBP.i269
  %844 = sub i64 %843, 32
  %845 = bitcast %union.vec128_t* %XMM0.i270 to i8*
  %846 = load i64, i64* %PC.i268
  %847 = add i64 %846, 5
  store i64 %847, i64* %PC.i268
  %848 = bitcast i8* %845 to double*
  %849 = load double, double* %848, align 1
  %850 = inttoptr i64 %844 to double*
  store double %849, double* %850
  store %struct.Memory* %loadMem_400691, %struct.Memory** %MEMORY
  %loadMem_400696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 15
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %856 to i64*
  %857 = load i64, i64* %RBP.i267
  %858 = sub i64 %857, 72
  %859 = load i64, i64* %PC.i266
  %860 = add i64 %859, 8
  store i64 %860, i64* %PC.i266
  %861 = inttoptr i64 %858 to i64*
  store i64 1, i64* %861
  store %struct.Memory* %loadMem_400696, %struct.Memory** %MEMORY
  %loadMem_40069e = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %EAX.i264 = bitcast %union.anon* %867 to i32*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 15
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %870 to i64*
  %871 = load i64, i64* %RBP.i265
  %872 = sub i64 %871, 104
  %873 = load i32, i32* %EAX.i264
  %874 = zext i32 %873 to i64
  %875 = load i64, i64* %PC.i263
  %876 = add i64 %875, 3
  store i64 %876, i64* %PC.i263
  %877 = inttoptr i64 %872 to i32*
  store i32 %873, i32* %877
  store %struct.Memory* %loadMem_40069e, %struct.Memory** %MEMORY
  br label %block_.L_4006a1

block_.L_4006a1:                                  ; preds = %block_4006b6, %entry
  %loadMem_4006a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 1
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 15
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %886 to i64*
  %887 = load i64, i64* %RBP.i262
  %888 = sub i64 %887, 72
  %889 = load i64, i64* %PC.i260
  %890 = add i64 %889, 4
  store i64 %890, i64* %PC.i260
  %891 = inttoptr i64 %888 to i64*
  %892 = load i64, i64* %891
  store i64 %892, i64* %RAX.i261, align 8
  store %struct.Memory* %loadMem_4006a1, %struct.Memory** %MEMORY
  %loadMem_4006a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 33
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 5
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 15
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %RBP.i259
  %903 = sub i64 %902, 80
  %904 = load i64, i64* %PC.i257
  %905 = add i64 %904, 4
  store i64 %905, i64* %PC.i257
  %906 = inttoptr i64 %903 to i64*
  %907 = load i64, i64* %906
  store i64 %907, i64* %RCX.i258, align 8
  store %struct.Memory* %loadMem_4006a5, %struct.Memory** %MEMORY
  %loadMem_4006a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 33
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 5
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RCX.i256
  %915 = load i64, i64* %PC.i255
  %916 = add i64 %915, 4
  store i64 %916, i64* %PC.i255
  %917 = sub i64 %914, 1
  store i64 %917, i64* %RCX.i256, align 8
  %918 = icmp ult i64 %914, 1
  %919 = zext i1 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %919, i8* %920, align 1
  %921 = trunc i64 %917 to i32
  %922 = and i32 %921, 255
  %923 = call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %926, i8* %927, align 1
  %928 = xor i64 1, %914
  %929 = xor i64 %928, %917
  %930 = lshr i64 %929, 4
  %931 = trunc i64 %930 to i8
  %932 = and i8 %931, 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %932, i8* %933, align 1
  %934 = icmp eq i64 %917, 0
  %935 = zext i1 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %935, i8* %936, align 1
  %937 = lshr i64 %917, 63
  %938 = trunc i64 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %938, i8* %939, align 1
  %940 = lshr i64 %914, 63
  %941 = xor i64 %937, %940
  %942 = add i64 %941, %940
  %943 = icmp eq i64 %942, 2
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %944, i8* %945, align 1
  store %struct.Memory* %loadMem_4006a9, %struct.Memory** %MEMORY
  %loadMem_4006ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 1
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 5
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %954 to i64*
  %955 = load i64, i64* %RAX.i253
  %956 = load i64, i64* %RCX.i254
  %957 = load i64, i64* %PC.i252
  %958 = add i64 %957, 3
  store i64 %958, i64* %PC.i252
  %959 = sub i64 %955, %956
  %960 = icmp ult i64 %955, %956
  %961 = zext i1 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %961, i8* %962, align 1
  %963 = trunc i64 %959 to i32
  %964 = and i32 %963, 255
  %965 = call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %968, i8* %969, align 1
  %970 = xor i64 %956, %955
  %971 = xor i64 %970, %959
  %972 = lshr i64 %971, 4
  %973 = trunc i64 %972 to i8
  %974 = and i8 %973, 1
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %974, i8* %975, align 1
  %976 = icmp eq i64 %959, 0
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %977, i8* %978, align 1
  %979 = lshr i64 %959, 63
  %980 = trunc i64 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %980, i8* %981, align 1
  %982 = lshr i64 %955, 63
  %983 = lshr i64 %956, 63
  %984 = xor i64 %983, %982
  %985 = xor i64 %979, %982
  %986 = add i64 %985, %984
  %987 = icmp eq i64 %986, 2
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %988, i8* %989, align 1
  store %struct.Memory* %loadMem_4006ad, %struct.Memory** %MEMORY
  %loadMem_4006b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %PC.i251
  %994 = add i64 %993, 181
  %995 = load i64, i64* %PC.i251
  %996 = add i64 %995, 6
  %997 = load i64, i64* %PC.i251
  %998 = add i64 %997, 6
  store i64 %998, i64* %PC.i251
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1000 = load i8, i8* %999, align 1
  %1001 = icmp eq i8 %1000, 0
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1003 = load i8, i8* %1002, align 1
  %1004 = icmp ne i8 %1003, 0
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1006 = load i8, i8* %1005, align 1
  %1007 = icmp ne i8 %1006, 0
  %1008 = xor i1 %1004, %1007
  %1009 = xor i1 %1008, true
  %1010 = and i1 %1001, %1009
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %BRANCH_TAKEN, align 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1013 = select i1 %1010, i64 %994, i64 %996
  store i64 %1013, i64* %1012, align 8
  store %struct.Memory* %loadMem_4006b0, %struct.Memory** %MEMORY
  %loadBr_4006b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4006b0 = icmp eq i8 %loadBr_4006b0, 1
  br i1 %cmpBr_4006b0, label %block_.L_400765, label %block_4006b6

block_4006b6:                                     ; preds = %block_.L_4006a1
  %loadMem_4006b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 15
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1020, i64 0, i64 0
  %YMM0.i250 = bitcast %union.VectorReg* %1021 to %"class.std::bitset"*
  %1022 = bitcast %"class.std::bitset"* %YMM0.i250 to i8*
  %1023 = load i64, i64* %RBP.i249
  %1024 = sub i64 %1023, 72
  %1025 = load i64, i64* %PC.i248
  %1026 = add i64 %1025, 6
  store i64 %1026, i64* %PC.i248
  %1027 = inttoptr i64 %1024 to i64*
  %1028 = load i64, i64* %1027
  %1029 = sitofp i64 %1028 to double
  %1030 = bitcast i8* %1022 to double*
  store double %1029, double* %1030, align 1
  store %struct.Memory* %loadMem_4006b6, %struct.Memory** %MEMORY
  %loadMem_4006bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 15
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1037, i64 0, i64 0
  %YMM0.i247 = bitcast %union.VectorReg* %1038 to %"class.std::bitset"*
  %1039 = bitcast %"class.std::bitset"* %YMM0.i247 to i8*
  %1040 = bitcast %"class.std::bitset"* %YMM0.i247 to i8*
  %1041 = load i64, i64* %RBP.i246
  %1042 = sub i64 %1041, 48
  %1043 = load i64, i64* %PC.i245
  %1044 = add i64 %1043, 5
  store i64 %1044, i64* %PC.i245
  %1045 = bitcast i8* %1040 to double*
  %1046 = load double, double* %1045, align 1
  %1047 = getelementptr inbounds i8, i8* %1040, i64 8
  %1048 = bitcast i8* %1047 to i64*
  %1049 = load i64, i64* %1048, align 1
  %1050 = inttoptr i64 %1042 to double*
  %1051 = load double, double* %1050
  %1052 = fmul double %1046, %1051
  %1053 = bitcast i8* %1039 to double*
  store double %1052, double* %1053, align 1
  %1054 = getelementptr inbounds i8, i8* %1039, i64 8
  %1055 = bitcast i8* %1054 to i64*
  store i64 %1049, i64* %1055, align 1
  store %struct.Memory* %loadMem_4006bc, %struct.Memory** %MEMORY
  %loadMem_4006c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1062, i64 0, i64 0
  %XMM0.i244 = bitcast %union.VectorReg* %1063 to %union.vec128_t*
  %1064 = load i64, i64* %RBP.i243
  %1065 = sub i64 %1064, 24
  %1066 = bitcast %union.vec128_t* %XMM0.i244 to i8*
  %1067 = load i64, i64* %PC.i242
  %1068 = add i64 %1067, 5
  store i64 %1068, i64* %PC.i242
  %1069 = bitcast i8* %1066 to double*
  %1070 = load double, double* %1069, align 1
  %1071 = inttoptr i64 %1065 to double*
  store double %1070, double* %1071
  store %struct.Memory* %loadMem_4006c1, %struct.Memory** %MEMORY
  %loadMem_4006c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 15
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1078, i64 0, i64 0
  %YMM0.i241 = bitcast %union.VectorReg* %1079 to %"class.std::bitset"*
  %1080 = bitcast %"class.std::bitset"* %YMM0.i241 to i8*
  %1081 = load i64, i64* %RBP.i240
  %1082 = sub i64 %1081, 24
  %1083 = load i64, i64* %PC.i239
  %1084 = add i64 %1083, 5
  store i64 %1084, i64* %PC.i239
  %1085 = inttoptr i64 %1082 to double*
  %1086 = load double, double* %1085
  %1087 = bitcast i8* %1080 to double*
  store double %1086, double* %1087, align 1
  %1088 = getelementptr inbounds i8, i8* %1080, i64 8
  %1089 = bitcast i8* %1088 to double*
  store double 0.000000e+00, double* %1089, align 1
  store %struct.Memory* %loadMem_4006c6, %struct.Memory** %MEMORY
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 15
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1096, i64 0, i64 0
  %YMM0.i238 = bitcast %union.VectorReg* %1097 to %"class.std::bitset"*
  %1098 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %1099 = bitcast %"class.std::bitset"* %YMM0.i238 to i8*
  %1100 = load i64, i64* %RBP.i237
  %1101 = sub i64 %1100, 24
  %1102 = load i64, i64* %PC.i236
  %1103 = add i64 %1102, 5
  store i64 %1103, i64* %PC.i236
  %1104 = bitcast i8* %1099 to double*
  %1105 = load double, double* %1104, align 1
  %1106 = getelementptr inbounds i8, i8* %1099, i64 8
  %1107 = bitcast i8* %1106 to i64*
  %1108 = load i64, i64* %1107, align 1
  %1109 = inttoptr i64 %1101 to double*
  %1110 = load double, double* %1109
  %1111 = fmul double %1105, %1110
  %1112 = bitcast i8* %1098 to double*
  store double %1111, double* %1112, align 1
  %1113 = getelementptr inbounds i8, i8* %1098, i64 8
  %1114 = bitcast i8* %1113 to i64*
  store i64 %1108, i64* %1114, align 1
  store %struct.Memory* %loadMem_4006cb, %struct.Memory** %MEMORY
  %loadMem_4006d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 15
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1121, i64 0, i64 0
  %XMM0.i235 = bitcast %union.VectorReg* %1122 to %union.vec128_t*
  %1123 = load i64, i64* %RBP.i234
  %1124 = sub i64 %1123, 40
  %1125 = bitcast %union.vec128_t* %XMM0.i235 to i8*
  %1126 = load i64, i64* %PC.i233
  %1127 = add i64 %1126, 5
  store i64 %1127, i64* %PC.i233
  %1128 = bitcast i8* %1125 to double*
  %1129 = load double, double* %1128, align 1
  %1130 = inttoptr i64 %1124 to double*
  store double %1129, double* %1130
  store %struct.Memory* %loadMem_4006d0, %struct.Memory** %MEMORY
  %loadMem_4006d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 15
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1137, i64 0, i64 0
  %YMM0.i232 = bitcast %union.VectorReg* %1138 to %"class.std::bitset"*
  %1139 = bitcast %"class.std::bitset"* %YMM0.i232 to i8*
  %1140 = load i64, i64* %RBP.i231
  %1141 = sub i64 %1140, 16
  %1142 = load i64, i64* %PC.i230
  %1143 = add i64 %1142, 5
  store i64 %1143, i64* %PC.i230
  %1144 = inttoptr i64 %1141 to double*
  %1145 = load double, double* %1144
  %1146 = bitcast i8* %1139 to double*
  store double %1145, double* %1146, align 1
  %1147 = getelementptr inbounds i8, i8* %1139, i64 8
  %1148 = bitcast i8* %1147 to double*
  store double 0.000000e+00, double* %1148, align 1
  store %struct.Memory* %loadMem_4006d5, %struct.Memory** %MEMORY
  %loadMem_4006da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 15
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RBP.i228 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1156 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1155, i64 0, i64 1
  %YMM1.i229 = bitcast %union.VectorReg* %1156 to %"class.std::bitset"*
  %1157 = bitcast %"class.std::bitset"* %YMM1.i229 to i8*
  %1158 = load i64, i64* %RBP.i228
  %1159 = sub i64 %1158, 40
  %1160 = load i64, i64* %PC.i227
  %1161 = add i64 %1160, 5
  store i64 %1161, i64* %PC.i227
  %1162 = inttoptr i64 %1159 to double*
  %1163 = load double, double* %1162
  %1164 = bitcast i8* %1157 to double*
  store double %1163, double* %1164, align 1
  %1165 = getelementptr inbounds i8, i8* %1157, i64 8
  %1166 = bitcast i8* %1165 to double*
  store double 0.000000e+00, double* %1166, align 1
  store %struct.Memory* %loadMem_4006da, %struct.Memory** %MEMORY
  %loadMem_4006df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 33
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1169 to i64*
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 15
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1174 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1173, i64 0, i64 2
  %YMM2.i226 = bitcast %union.VectorReg* %1174 to %"class.std::bitset"*
  %1175 = bitcast %"class.std::bitset"* %YMM2.i226 to i8*
  %1176 = load i64, i64* %RBP.i225
  %1177 = sub i64 %1176, 40
  %1178 = load i64, i64* %PC.i224
  %1179 = add i64 %1178, 5
  store i64 %1179, i64* %PC.i224
  %1180 = inttoptr i64 %1177 to double*
  %1181 = load double, double* %1180
  %1182 = bitcast i8* %1175 to double*
  store double %1181, double* %1182, align 1
  %1183 = getelementptr inbounds i8, i8* %1175, i64 8
  %1184 = bitcast i8* %1183 to double*
  store double 0.000000e+00, double* %1184, align 1
  store %struct.Memory* %loadMem_4006df, %struct.Memory** %MEMORY
  %loadMem_4006e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 15
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1191, i64 0, i64 3
  %YMM3.i223 = bitcast %union.VectorReg* %1192 to %"class.std::bitset"*
  %1193 = bitcast %"class.std::bitset"* %YMM3.i223 to i8*
  %1194 = load i64, i64* %RBP.i222
  %1195 = sub i64 %1194, 40
  %1196 = load i64, i64* %PC.i221
  %1197 = add i64 %1196, 5
  store i64 %1197, i64* %PC.i221
  %1198 = inttoptr i64 %1195 to double*
  %1199 = load double, double* %1198
  %1200 = bitcast i8* %1193 to double*
  store double %1199, double* %1200, align 1
  %1201 = getelementptr inbounds i8, i8* %1193, i64 8
  %1202 = bitcast i8* %1201 to double*
  store double 0.000000e+00, double* %1202, align 1
  store %struct.Memory* %loadMem_4006e4, %struct.Memory** %MEMORY
  %loadMem_4006e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 15
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1209, i64 0, i64 4
  %YMM4.i220 = bitcast %union.VectorReg* %1210 to %"class.std::bitset"*
  %1211 = bitcast %"class.std::bitset"* %YMM4.i220 to i8*
  %1212 = load i64, i64* %RBP.i219
  %1213 = sub i64 %1212, 40
  %1214 = load i64, i64* %PC.i218
  %1215 = add i64 %1214, 5
  store i64 %1215, i64* %PC.i218
  %1216 = inttoptr i64 %1213 to double*
  %1217 = load double, double* %1216
  %1218 = bitcast i8* %1211 to double*
  store double %1217, double* %1218, align 1
  %1219 = getelementptr inbounds i8, i8* %1211, i64 8
  %1220 = bitcast i8* %1219 to double*
  store double 0.000000e+00, double* %1220, align 1
  store %struct.Memory* %loadMem_4006e9, %struct.Memory** %MEMORY
  %loadMem_4006ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 15
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1227, i64 0, i64 5
  %YMM5.i217 = bitcast %union.VectorReg* %1228 to %"class.std::bitset"*
  %1229 = bitcast %"class.std::bitset"* %YMM5.i217 to i8*
  %1230 = load i64, i64* %RBP.i216
  %1231 = sub i64 %1230, 40
  %1232 = load i64, i64* %PC.i215
  %1233 = add i64 %1232, 5
  store i64 %1233, i64* %PC.i215
  %1234 = inttoptr i64 %1231 to double*
  %1235 = load double, double* %1234
  %1236 = bitcast i8* %1229 to double*
  store double %1235, double* %1236, align 1
  %1237 = getelementptr inbounds i8, i8* %1229, i64 8
  %1238 = bitcast i8* %1237 to double*
  store double 0.000000e+00, double* %1238, align 1
  store %struct.Memory* %loadMem_4006ee, %struct.Memory** %MEMORY
  %loadMem_4006f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1242, i64 0, i64 6
  %YMM6.i214 = bitcast %union.VectorReg* %1243 to %"class.std::bitset"*
  %1244 = bitcast %"class.std::bitset"* %YMM6.i214 to i8*
  %1245 = load i64, i64* %PC.i213
  %1246 = add i64 %1245, 9
  store i64 %1246, i64* %PC.i213
  %1247 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %1248 = bitcast i8* %1244 to double*
  store double %1247, double* %1248, align 1
  %1249 = getelementptr inbounds i8, i8* %1244, i64 8
  %1250 = bitcast i8* %1249 to double*
  store double 0.000000e+00, double* %1250, align 1
  store %struct.Memory* %loadMem_4006f3, %struct.Memory** %MEMORY
  %loadMem_4006fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 33
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 15
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1257, i64 0, i64 6
  %YMM6.i212 = bitcast %union.VectorReg* %1258 to %"class.std::bitset"*
  %1259 = bitcast %"class.std::bitset"* %YMM6.i212 to i8*
  %1260 = bitcast %"class.std::bitset"* %YMM6.i212 to i8*
  %1261 = load i64, i64* %RBP.i211
  %1262 = sub i64 %1261, 40
  %1263 = load i64, i64* %PC.i210
  %1264 = add i64 %1263, 5
  store i64 %1264, i64* %PC.i210
  %1265 = bitcast i8* %1260 to double*
  %1266 = load double, double* %1265, align 1
  %1267 = getelementptr inbounds i8, i8* %1260, i64 8
  %1268 = bitcast i8* %1267 to i64*
  %1269 = load i64, i64* %1268, align 1
  %1270 = inttoptr i64 %1262 to double*
  %1271 = load double, double* %1270
  %1272 = fmul double %1266, %1271
  %1273 = bitcast i8* %1259 to double*
  store double %1272, double* %1273, align 1
  %1274 = getelementptr inbounds i8, i8* %1259, i64 8
  %1275 = bitcast i8* %1274 to i64*
  store i64 %1269, i64* %1275, align 1
  store %struct.Memory* %loadMem_4006fc, %struct.Memory** %MEMORY
  %loadMem_400701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1280 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1279, i64 0, i64 6
  %YMM6.i209 = bitcast %union.VectorReg* %1280 to %"class.std::bitset"*
  %1281 = bitcast %"class.std::bitset"* %YMM6.i209 to i8*
  %1282 = bitcast %"class.std::bitset"* %YMM6.i209 to i8*
  %1283 = load i64, i64* %PC.i208
  %1284 = add i64 %1283, 9
  store i64 %1284, i64* %PC.i208
  %1285 = bitcast i8* %1282 to double*
  %1286 = load double, double* %1285, align 1
  %1287 = getelementptr inbounds i8, i8* %1282, i64 8
  %1288 = bitcast i8* %1287 to i64*
  %1289 = load i64, i64* %1288, align 1
  %1290 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %1291 = fadd double %1286, %1290
  %1292 = bitcast i8* %1281 to double*
  store double %1291, double* %1292, align 1
  %1293 = getelementptr inbounds i8, i8* %1281, i64 8
  %1294 = bitcast i8* %1293 to i64*
  store i64 %1289, i64* %1294, align 1
  store %struct.Memory* %loadMem_400701, %struct.Memory** %MEMORY
  %loadMem_40070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 33
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1298, i64 0, i64 5
  %YMM5.i206 = bitcast %union.VectorReg* %1299 to %"class.std::bitset"*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1300, i64 0, i64 6
  %XMM6.i207 = bitcast %union.VectorReg* %1301 to %union.vec128_t*
  %1302 = bitcast %"class.std::bitset"* %YMM5.i206 to i8*
  %1303 = bitcast %"class.std::bitset"* %YMM5.i206 to i8*
  %1304 = bitcast %union.vec128_t* %XMM6.i207 to i8*
  %1305 = load i64, i64* %PC.i205
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC.i205
  %1307 = bitcast i8* %1303 to double*
  %1308 = load double, double* %1307, align 1
  %1309 = getelementptr inbounds i8, i8* %1303, i64 8
  %1310 = bitcast i8* %1309 to i64*
  %1311 = load i64, i64* %1310, align 1
  %1312 = bitcast i8* %1304 to double*
  %1313 = load double, double* %1312, align 1
  %1314 = fmul double %1308, %1313
  %1315 = bitcast i8* %1302 to double*
  store double %1314, double* %1315, align 1
  %1316 = getelementptr inbounds i8, i8* %1302, i64 8
  %1317 = bitcast i8* %1316 to i64*
  store i64 %1311, i64* %1317, align 1
  store %struct.Memory* %loadMem_40070a, %struct.Memory** %MEMORY
  %loadMem_40070e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1321, i64 0, i64 5
  %YMM5.i204 = bitcast %union.VectorReg* %1322 to %"class.std::bitset"*
  %1323 = bitcast %"class.std::bitset"* %YMM5.i204 to i8*
  %1324 = bitcast %"class.std::bitset"* %YMM5.i204 to i8*
  %1325 = load i64, i64* %PC.i203
  %1326 = add i64 %1325, 9
  store i64 %1326, i64* %PC.i203
  %1327 = bitcast i8* %1324 to double*
  %1328 = load double, double* %1327, align 1
  %1329 = getelementptr inbounds i8, i8* %1324, i64 8
  %1330 = bitcast i8* %1329 to i64*
  %1331 = load i64, i64* %1330, align 1
  %1332 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %1333 = fadd double %1328, %1332
  %1334 = bitcast i8* %1323 to double*
  store double %1333, double* %1334, align 1
  %1335 = getelementptr inbounds i8, i8* %1323, i64 8
  %1336 = bitcast i8* %1335 to i64*
  store i64 %1331, i64* %1336, align 1
  store %struct.Memory* %loadMem_40070e, %struct.Memory** %MEMORY
  %loadMem_400717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 33
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1339 to i64*
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1341 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1340, i64 0, i64 4
  %YMM4.i201 = bitcast %union.VectorReg* %1341 to %"class.std::bitset"*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1342, i64 0, i64 5
  %XMM5.i202 = bitcast %union.VectorReg* %1343 to %union.vec128_t*
  %1344 = bitcast %"class.std::bitset"* %YMM4.i201 to i8*
  %1345 = bitcast %"class.std::bitset"* %YMM4.i201 to i8*
  %1346 = bitcast %union.vec128_t* %XMM5.i202 to i8*
  %1347 = load i64, i64* %PC.i200
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %PC.i200
  %1349 = bitcast i8* %1345 to double*
  %1350 = load double, double* %1349, align 1
  %1351 = getelementptr inbounds i8, i8* %1345, i64 8
  %1352 = bitcast i8* %1351 to i64*
  %1353 = load i64, i64* %1352, align 1
  %1354 = bitcast i8* %1346 to double*
  %1355 = load double, double* %1354, align 1
  %1356 = fmul double %1350, %1355
  %1357 = bitcast i8* %1344 to double*
  store double %1356, double* %1357, align 1
  %1358 = getelementptr inbounds i8, i8* %1344, i64 8
  %1359 = bitcast i8* %1358 to i64*
  store i64 %1353, i64* %1359, align 1
  store %struct.Memory* %loadMem_400717, %struct.Memory** %MEMORY
  %loadMem_40071b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 33
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1362 to i64*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1363, i64 0, i64 4
  %YMM4.i199 = bitcast %union.VectorReg* %1364 to %"class.std::bitset"*
  %1365 = bitcast %"class.std::bitset"* %YMM4.i199 to i8*
  %1366 = bitcast %"class.std::bitset"* %YMM4.i199 to i8*
  %1367 = load i64, i64* %PC.i198
  %1368 = add i64 %1367, 9
  store i64 %1368, i64* %PC.i198
  %1369 = bitcast i8* %1366 to double*
  %1370 = load double, double* %1369, align 1
  %1371 = getelementptr inbounds i8, i8* %1366, i64 8
  %1372 = bitcast i8* %1371 to i64*
  %1373 = load i64, i64* %1372, align 1
  %1374 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %1375 = fadd double %1370, %1374
  %1376 = bitcast i8* %1365 to double*
  store double %1375, double* %1376, align 1
  %1377 = getelementptr inbounds i8, i8* %1365, i64 8
  %1378 = bitcast i8* %1377 to i64*
  store i64 %1373, i64* %1378, align 1
  store %struct.Memory* %loadMem_40071b, %struct.Memory** %MEMORY
  %loadMem_400724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 33
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1382, i64 0, i64 3
  %YMM3.i196 = bitcast %union.VectorReg* %1383 to %"class.std::bitset"*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1384, i64 0, i64 4
  %XMM4.i197 = bitcast %union.VectorReg* %1385 to %union.vec128_t*
  %1386 = bitcast %"class.std::bitset"* %YMM3.i196 to i8*
  %1387 = bitcast %"class.std::bitset"* %YMM3.i196 to i8*
  %1388 = bitcast %union.vec128_t* %XMM4.i197 to i8*
  %1389 = load i64, i64* %PC.i195
  %1390 = add i64 %1389, 4
  store i64 %1390, i64* %PC.i195
  %1391 = bitcast i8* %1387 to double*
  %1392 = load double, double* %1391, align 1
  %1393 = getelementptr inbounds i8, i8* %1387, i64 8
  %1394 = bitcast i8* %1393 to i64*
  %1395 = load i64, i64* %1394, align 1
  %1396 = bitcast i8* %1388 to double*
  %1397 = load double, double* %1396, align 1
  %1398 = fmul double %1392, %1397
  %1399 = bitcast i8* %1386 to double*
  store double %1398, double* %1399, align 1
  %1400 = getelementptr inbounds i8, i8* %1386, i64 8
  %1401 = bitcast i8* %1400 to i64*
  store i64 %1395, i64* %1401, align 1
  store %struct.Memory* %loadMem_400724, %struct.Memory** %MEMORY
  %loadMem_400728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1405, i64 0, i64 3
  %YMM3.i194 = bitcast %union.VectorReg* %1406 to %"class.std::bitset"*
  %1407 = bitcast %"class.std::bitset"* %YMM3.i194 to i8*
  %1408 = bitcast %"class.std::bitset"* %YMM3.i194 to i8*
  %1409 = load i64, i64* %PC.i193
  %1410 = add i64 %1409, 9
  store i64 %1410, i64* %PC.i193
  %1411 = bitcast i8* %1408 to double*
  %1412 = load double, double* %1411, align 1
  %1413 = getelementptr inbounds i8, i8* %1408, i64 8
  %1414 = bitcast i8* %1413 to i64*
  %1415 = load i64, i64* %1414, align 1
  %1416 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %1417 = fadd double %1412, %1416
  %1418 = bitcast i8* %1407 to double*
  store double %1417, double* %1418, align 1
  %1419 = getelementptr inbounds i8, i8* %1407, i64 8
  %1420 = bitcast i8* %1419 to i64*
  store i64 %1415, i64* %1420, align 1
  store %struct.Memory* %loadMem_400728, %struct.Memory** %MEMORY
  %loadMem_400731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1424, i64 0, i64 2
  %YMM2.i191 = bitcast %union.VectorReg* %1425 to %"class.std::bitset"*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1426, i64 0, i64 3
  %XMM3.i192 = bitcast %union.VectorReg* %1427 to %union.vec128_t*
  %1428 = bitcast %"class.std::bitset"* %YMM2.i191 to i8*
  %1429 = bitcast %"class.std::bitset"* %YMM2.i191 to i8*
  %1430 = bitcast %union.vec128_t* %XMM3.i192 to i8*
  %1431 = load i64, i64* %PC.i190
  %1432 = add i64 %1431, 4
  store i64 %1432, i64* %PC.i190
  %1433 = bitcast i8* %1429 to double*
  %1434 = load double, double* %1433, align 1
  %1435 = getelementptr inbounds i8, i8* %1429, i64 8
  %1436 = bitcast i8* %1435 to i64*
  %1437 = load i64, i64* %1436, align 1
  %1438 = bitcast i8* %1430 to double*
  %1439 = load double, double* %1438, align 1
  %1440 = fmul double %1434, %1439
  %1441 = bitcast i8* %1428 to double*
  store double %1440, double* %1441, align 1
  %1442 = getelementptr inbounds i8, i8* %1428, i64 8
  %1443 = bitcast i8* %1442 to i64*
  store i64 %1437, i64* %1443, align 1
  store %struct.Memory* %loadMem_400731, %struct.Memory** %MEMORY
  %loadMem_400735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 33
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1447, i64 0, i64 2
  %YMM2.i189 = bitcast %union.VectorReg* %1448 to %"class.std::bitset"*
  %1449 = bitcast %"class.std::bitset"* %YMM2.i189 to i8*
  %1450 = bitcast %"class.std::bitset"* %YMM2.i189 to i8*
  %1451 = load i64, i64* %PC.i188
  %1452 = add i64 %1451, 9
  store i64 %1452, i64* %PC.i188
  %1453 = bitcast i8* %1450 to double*
  %1454 = load double, double* %1453, align 1
  %1455 = getelementptr inbounds i8, i8* %1450, i64 8
  %1456 = bitcast i8* %1455 to i64*
  %1457 = load i64, i64* %1456, align 1
  %1458 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %1459 = fadd double %1454, %1458
  %1460 = bitcast i8* %1449 to double*
  store double %1459, double* %1460, align 1
  %1461 = getelementptr inbounds i8, i8* %1449, i64 8
  %1462 = bitcast i8* %1461 to i64*
  store i64 %1457, i64* %1462, align 1
  store %struct.Memory* %loadMem_400735, %struct.Memory** %MEMORY
  %loadMem_40073e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 33
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1467 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1466, i64 0, i64 1
  %YMM1.i186 = bitcast %union.VectorReg* %1467 to %"class.std::bitset"*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1469 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1468, i64 0, i64 2
  %XMM2.i187 = bitcast %union.VectorReg* %1469 to %union.vec128_t*
  %1470 = bitcast %"class.std::bitset"* %YMM1.i186 to i8*
  %1471 = bitcast %"class.std::bitset"* %YMM1.i186 to i8*
  %1472 = bitcast %union.vec128_t* %XMM2.i187 to i8*
  %1473 = load i64, i64* %PC.i185
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %PC.i185
  %1475 = bitcast i8* %1471 to double*
  %1476 = load double, double* %1475, align 1
  %1477 = getelementptr inbounds i8, i8* %1471, i64 8
  %1478 = bitcast i8* %1477 to i64*
  %1479 = load i64, i64* %1478, align 1
  %1480 = bitcast i8* %1472 to double*
  %1481 = load double, double* %1480, align 1
  %1482 = fmul double %1476, %1481
  %1483 = bitcast i8* %1470 to double*
  store double %1482, double* %1483, align 1
  %1484 = getelementptr inbounds i8, i8* %1470, i64 8
  %1485 = bitcast i8* %1484 to i64*
  store i64 %1479, i64* %1485, align 1
  store %struct.Memory* %loadMem_40073e, %struct.Memory** %MEMORY
  %loadMem_400742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1490 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1489, i64 0, i64 0
  %YMM0.i183 = bitcast %union.VectorReg* %1490 to %"class.std::bitset"*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1491, i64 0, i64 1
  %XMM1.i184 = bitcast %union.VectorReg* %1492 to %union.vec128_t*
  %1493 = bitcast %"class.std::bitset"* %YMM0.i183 to i8*
  %1494 = bitcast %"class.std::bitset"* %YMM0.i183 to i8*
  %1495 = bitcast %union.vec128_t* %XMM1.i184 to i8*
  %1496 = load i64, i64* %PC.i182
  %1497 = add i64 %1496, 4
  store i64 %1497, i64* %PC.i182
  %1498 = bitcast i8* %1494 to double*
  %1499 = load double, double* %1498, align 1
  %1500 = getelementptr inbounds i8, i8* %1494, i64 8
  %1501 = bitcast i8* %1500 to i64*
  %1502 = load i64, i64* %1501, align 1
  %1503 = bitcast i8* %1495 to double*
  %1504 = load double, double* %1503, align 1
  %1505 = fadd double %1499, %1504
  %1506 = bitcast i8* %1493 to double*
  store double %1505, double* %1506, align 1
  %1507 = getelementptr inbounds i8, i8* %1493, i64 8
  %1508 = bitcast i8* %1507 to i64*
  store i64 %1502, i64* %1508, align 1
  store %struct.Memory* %loadMem_400742, %struct.Memory** %MEMORY
  %loadMem_400746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1513 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1512, i64 0, i64 0
  %YMM0.i181 = bitcast %union.VectorReg* %1513 to %"class.std::bitset"*
  %1514 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %1515 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %1516 = load i64, i64* %PC.i180
  %1517 = add i64 %1516, 9
  store i64 %1517, i64* %PC.i180
  %1518 = bitcast i8* %1515 to double*
  %1519 = load double, double* %1518, align 1
  %1520 = getelementptr inbounds i8, i8* %1515, i64 8
  %1521 = bitcast i8* %1520 to i64*
  %1522 = load i64, i64* %1521, align 1
  %1523 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %1524 = fadd double %1519, %1523
  %1525 = bitcast i8* %1514 to double*
  store double %1524, double* %1525, align 1
  %1526 = getelementptr inbounds i8, i8* %1514, i64 8
  %1527 = bitcast i8* %1526 to i64*
  store i64 %1522, i64* %1527, align 1
  store %struct.Memory* %loadMem_400746, %struct.Memory** %MEMORY
  %loadMem_40074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 15
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1534, i64 0, i64 0
  %XMM0.i179 = bitcast %union.VectorReg* %1535 to %union.vec128_t*
  %1536 = load i64, i64* %RBP.i178
  %1537 = sub i64 %1536, 16
  %1538 = bitcast %union.vec128_t* %XMM0.i179 to i8*
  %1539 = load i64, i64* %PC.i177
  %1540 = add i64 %1539, 5
  store i64 %1540, i64* %PC.i177
  %1541 = bitcast i8* %1538 to double*
  %1542 = load double, double* %1541, align 1
  %1543 = inttoptr i64 %1537 to double*
  store double %1542, double* %1543
  store %struct.Memory* %loadMem_40074f, %struct.Memory** %MEMORY
  %loadMem_400754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 15
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RBP.i176
  %1554 = sub i64 %1553, 72
  %1555 = load i64, i64* %PC.i174
  %1556 = add i64 %1555, 4
  store i64 %1556, i64* %PC.i174
  %1557 = inttoptr i64 %1554 to i64*
  %1558 = load i64, i64* %1557
  store i64 %1558, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_400754, %struct.Memory** %MEMORY
  %loadMem_400758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 33
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 1
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RAX.i173
  %1566 = load i64, i64* %PC.i172
  %1567 = add i64 %1566, 4
  store i64 %1567, i64* %PC.i172
  %1568 = add i64 1, %1565
  store i64 %1568, i64* %RAX.i173, align 8
  %1569 = icmp ult i64 %1568, %1565
  %1570 = icmp ult i64 %1568, 1
  %1571 = or i1 %1569, %1570
  %1572 = zext i1 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1572, i8* %1573, align 1
  %1574 = trunc i64 %1568 to i32
  %1575 = and i32 %1574, 255
  %1576 = call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1579, i8* %1580, align 1
  %1581 = xor i64 1, %1565
  %1582 = xor i64 %1581, %1568
  %1583 = lshr i64 %1582, 4
  %1584 = trunc i64 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1585, i8* %1586, align 1
  %1587 = icmp eq i64 %1568, 0
  %1588 = zext i1 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1588, i8* %1589, align 1
  %1590 = lshr i64 %1568, 63
  %1591 = trunc i64 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1591, i8* %1592, align 1
  %1593 = lshr i64 %1565, 63
  %1594 = xor i64 %1590, %1593
  %1595 = add i64 %1594, %1590
  %1596 = icmp eq i64 %1595, 2
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1597, i8* %1598, align 1
  store %struct.Memory* %loadMem_400758, %struct.Memory** %MEMORY
  %loadMem_40075c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 15
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RBP.i171
  %1609 = sub i64 %1608, 72
  %1610 = load i64, i64* %RAX.i170
  %1611 = load i64, i64* %PC.i169
  %1612 = add i64 %1611, 4
  store i64 %1612, i64* %PC.i169
  %1613 = inttoptr i64 %1609 to i64*
  store i64 %1610, i64* %1613
  store %struct.Memory* %loadMem_40075c, %struct.Memory** %MEMORY
  %loadMem_400760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1616 to i64*
  %1617 = load i64, i64* %PC.i168
  %1618 = add i64 %1617, -191
  %1619 = load i64, i64* %PC.i168
  %1620 = add i64 %1619, 5
  store i64 %1620, i64* %PC.i168
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1618, i64* %1621, align 8
  store %struct.Memory* %loadMem_400760, %struct.Memory** %MEMORY
  br label %block_.L_4006a1

block_.L_400765:                                  ; preds = %block_.L_4006a1
  %loadMem_400765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 11
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1627 to i64*
  %1628 = load i64, i64* %PC.i167
  %1629 = add i64 %1628, 10
  store i64 %1629, i64* %PC.i167
  store i64 ptrtoint (%G__0x400a8e_type* @G__0x400a8e to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400765, %struct.Memory** %MEMORY
  %loadMem_40076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 0
  %YMM0.i165 = bitcast %union.VectorReg* %1634 to %"class.std::bitset"*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 0
  %XMM0.i166 = bitcast %union.VectorReg* %1636 to %union.vec128_t*
  %1637 = bitcast %"class.std::bitset"* %YMM0.i165 to i8*
  %1638 = bitcast %"class.std::bitset"* %YMM0.i165 to i8*
  %1639 = bitcast %union.vec128_t* %XMM0.i166 to i8*
  %1640 = load i64, i64* %PC.i164
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC.i164
  %1642 = bitcast i8* %1638 to i64*
  %1643 = load i64, i64* %1642, align 1
  %1644 = getelementptr inbounds i8, i8* %1638, i64 8
  %1645 = bitcast i8* %1644 to i64*
  %1646 = load i64, i64* %1645, align 1
  %1647 = bitcast i8* %1639 to i64*
  %1648 = load i64, i64* %1647, align 1
  %1649 = getelementptr inbounds i8, i8* %1639, i64 8
  %1650 = bitcast i8* %1649 to i64*
  %1651 = load i64, i64* %1650, align 1
  %1652 = xor i64 %1648, %1643
  %1653 = xor i64 %1651, %1646
  %1654 = trunc i64 %1652 to i32
  %1655 = lshr i64 %1652, 32
  %1656 = trunc i64 %1655 to i32
  %1657 = bitcast i8* %1637 to i32*
  store i32 %1654, i32* %1657, align 1
  %1658 = getelementptr inbounds i8, i8* %1637, i64 4
  %1659 = bitcast i8* %1658 to i32*
  store i32 %1656, i32* %1659, align 1
  %1660 = trunc i64 %1653 to i32
  %1661 = getelementptr inbounds i8, i8* %1637, i64 8
  %1662 = bitcast i8* %1661 to i32*
  store i32 %1660, i32* %1662, align 1
  %1663 = lshr i64 %1653, 32
  %1664 = trunc i64 %1663 to i32
  %1665 = getelementptr inbounds i8, i8* %1637, i64 12
  %1666 = bitcast i8* %1665 to i32*
  store i32 %1664, i32* %1666, align 1
  store %struct.Memory* %loadMem_40076f, %struct.Memory** %MEMORY
  %loadMem_400772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1670, i64 0, i64 1
  %YMM1.i163 = bitcast %union.VectorReg* %1671 to %"class.std::bitset"*
  %1672 = bitcast %"class.std::bitset"* %YMM1.i163 to i8*
  %1673 = load i64, i64* %PC.i162
  %1674 = add i64 %1673, 646
  %1675 = load i64, i64* %PC.i162
  %1676 = add i64 %1675, 8
  store i64 %1676, i64* %PC.i162
  %1677 = inttoptr i64 %1674 to double*
  %1678 = load double, double* %1677
  %1679 = bitcast i8* %1672 to double*
  store double %1678, double* %1679, align 1
  %1680 = getelementptr inbounds i8, i8* %1672, i64 8
  %1681 = bitcast i8* %1680 to double*
  store double 0.000000e+00, double* %1681, align 1
  store %struct.Memory* %loadMem_400772, %struct.Memory** %MEMORY
  %loadMem_40077a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1686 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1685, i64 0, i64 2
  %YMM2.i161 = bitcast %union.VectorReg* %1686 to %"class.std::bitset"*
  %1687 = bitcast %"class.std::bitset"* %YMM2.i161 to i8*
  %1688 = load i64, i64* %PC.i160
  %1689 = add i64 %1688, 9
  store i64 %1689, i64* %PC.i160
  %1690 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %1691 = bitcast i8* %1687 to double*
  store double %1690, double* %1691, align 1
  %1692 = getelementptr inbounds i8, i8* %1687, i64 8
  %1693 = bitcast i8* %1692 to double*
  store double 0.000000e+00, double* %1693, align 1
  store %struct.Memory* %loadMem_40077a, %struct.Memory** %MEMORY
  %loadMem_400783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1698 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1697, i64 0, i64 2
  %YMM2.i159 = bitcast %union.VectorReg* %1698 to %"class.std::bitset"*
  %1699 = bitcast %"class.std::bitset"* %YMM2.i159 to i8*
  %1700 = bitcast %"class.std::bitset"* %YMM2.i159 to i8*
  %1701 = load i64, i64* %PC.i158
  %1702 = add i64 %1701, 9
  store i64 %1702, i64* %PC.i158
  %1703 = bitcast i8* %1700 to double*
  %1704 = load double, double* %1703, align 1
  %1705 = getelementptr inbounds i8, i8* %1700, i64 8
  %1706 = bitcast i8* %1705 to i64*
  %1707 = load i64, i64* %1706, align 1
  %1708 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %1709 = fdiv double %1704, %1708
  %1710 = bitcast i8* %1699 to double*
  store double %1709, double* %1710, align 1
  %1711 = getelementptr inbounds i8, i8* %1699, i64 8
  %1712 = bitcast i8* %1711 to i64*
  store i64 %1707, i64* %1712, align 1
  store %struct.Memory* %loadMem_400783, %struct.Memory** %MEMORY
  %loadMem_40078c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 15
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1719, i64 0, i64 2
  %XMM2.i157 = bitcast %union.VectorReg* %1720 to %union.vec128_t*
  %1721 = load i64, i64* %RBP.i156
  %1722 = sub i64 %1721, 24
  %1723 = bitcast %union.vec128_t* %XMM2.i157 to i8*
  %1724 = load i64, i64* %PC.i155
  %1725 = add i64 %1724, 5
  store i64 %1725, i64* %PC.i155
  %1726 = bitcast i8* %1723 to double*
  %1727 = load double, double* %1726, align 1
  %1728 = inttoptr i64 %1722 to double*
  store double %1727, double* %1728
  store %struct.Memory* %loadMem_40078c, %struct.Memory** %MEMORY
  %loadMem_400791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 15
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1736 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1735, i64 0, i64 2
  %YMM2.i154 = bitcast %union.VectorReg* %1736 to %"class.std::bitset"*
  %1737 = bitcast %"class.std::bitset"* %YMM2.i154 to i8*
  %1738 = load i64, i64* %RBP.i153
  %1739 = sub i64 %1738, 24
  %1740 = load i64, i64* %PC.i152
  %1741 = add i64 %1740, 5
  store i64 %1741, i64* %PC.i152
  %1742 = inttoptr i64 %1739 to double*
  %1743 = load double, double* %1742
  %1744 = bitcast i8* %1737 to double*
  store double %1743, double* %1744, align 1
  %1745 = getelementptr inbounds i8, i8* %1737, i64 8
  %1746 = bitcast i8* %1745 to double*
  store double 0.000000e+00, double* %1746, align 1
  store %struct.Memory* %loadMem_400791, %struct.Memory** %MEMORY
  %loadMem_400796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 15
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1754 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1753, i64 0, i64 2
  %YMM2.i151 = bitcast %union.VectorReg* %1754 to %"class.std::bitset"*
  %1755 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1756 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1757 = load i64, i64* %RBP.i150
  %1758 = sub i64 %1757, 24
  %1759 = load i64, i64* %PC.i149
  %1760 = add i64 %1759, 5
  store i64 %1760, i64* %PC.i149
  %1761 = bitcast i8* %1756 to double*
  %1762 = load double, double* %1761, align 1
  %1763 = getelementptr inbounds i8, i8* %1756, i64 8
  %1764 = bitcast i8* %1763 to i64*
  %1765 = load i64, i64* %1764, align 1
  %1766 = inttoptr i64 %1758 to double*
  %1767 = load double, double* %1766
  %1768 = fmul double %1762, %1767
  %1769 = bitcast i8* %1755 to double*
  store double %1768, double* %1769, align 1
  %1770 = getelementptr inbounds i8, i8* %1755, i64 8
  %1771 = bitcast i8* %1770 to i64*
  store i64 %1765, i64* %1771, align 1
  store %struct.Memory* %loadMem_400796, %struct.Memory** %MEMORY
  %loadMem_40079b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 15
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1779 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1778, i64 0, i64 2
  %XMM2.i148 = bitcast %union.VectorReg* %1779 to %union.vec128_t*
  %1780 = load i64, i64* %RBP.i147
  %1781 = sub i64 %1780, 40
  %1782 = bitcast %union.vec128_t* %XMM2.i148 to i8*
  %1783 = load i64, i64* %PC.i146
  %1784 = add i64 %1783, 5
  store i64 %1784, i64* %PC.i146
  %1785 = bitcast i8* %1782 to double*
  %1786 = load double, double* %1785, align 1
  %1787 = inttoptr i64 %1781 to double*
  store double %1786, double* %1787
  store %struct.Memory* %loadMem_40079b, %struct.Memory** %MEMORY
  %loadMem_4007a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 15
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1795 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1794, i64 0, i64 2
  %YMM2.i145 = bitcast %union.VectorReg* %1795 to %"class.std::bitset"*
  %1796 = bitcast %"class.std::bitset"* %YMM2.i145 to i8*
  %1797 = load i64, i64* %RBP.i144
  %1798 = sub i64 %1797, 40
  %1799 = load i64, i64* %PC.i143
  %1800 = add i64 %1799, 5
  store i64 %1800, i64* %PC.i143
  %1801 = inttoptr i64 %1798 to double*
  %1802 = load double, double* %1801
  %1803 = bitcast i8* %1796 to double*
  store double %1802, double* %1803, align 1
  %1804 = getelementptr inbounds i8, i8* %1796, i64 8
  %1805 = bitcast i8* %1804 to double*
  store double 0.000000e+00, double* %1805, align 1
  store %struct.Memory* %loadMem_4007a0, %struct.Memory** %MEMORY
  %loadMem_4007a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 15
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1812, i64 0, i64 3
  %YMM3.i142 = bitcast %union.VectorReg* %1813 to %"class.std::bitset"*
  %1814 = bitcast %"class.std::bitset"* %YMM3.i142 to i8*
  %1815 = load i64, i64* %RBP.i141
  %1816 = sub i64 %1815, 40
  %1817 = load i64, i64* %PC.i140
  %1818 = add i64 %1817, 5
  store i64 %1818, i64* %PC.i140
  %1819 = inttoptr i64 %1816 to double*
  %1820 = load double, double* %1819
  %1821 = bitcast i8* %1814 to double*
  store double %1820, double* %1821, align 1
  %1822 = getelementptr inbounds i8, i8* %1814, i64 8
  %1823 = bitcast i8* %1822 to double*
  store double 0.000000e+00, double* %1823, align 1
  store %struct.Memory* %loadMem_4007a5, %struct.Memory** %MEMORY
  %loadMem_4007aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1831 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1830, i64 0, i64 4
  %YMM4.i139 = bitcast %union.VectorReg* %1831 to %"class.std::bitset"*
  %1832 = bitcast %"class.std::bitset"* %YMM4.i139 to i8*
  %1833 = load i64, i64* %RBP.i138
  %1834 = sub i64 %1833, 40
  %1835 = load i64, i64* %PC.i137
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i137
  %1837 = inttoptr i64 %1834 to double*
  %1838 = load double, double* %1837
  %1839 = bitcast i8* %1832 to double*
  store double %1838, double* %1839, align 1
  %1840 = getelementptr inbounds i8, i8* %1832, i64 8
  %1841 = bitcast i8* %1840 to double*
  store double 0.000000e+00, double* %1841, align 1
  store %struct.Memory* %loadMem_4007aa, %struct.Memory** %MEMORY
  %loadMem_4007af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 33
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 15
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1848, i64 0, i64 5
  %YMM5.i136 = bitcast %union.VectorReg* %1849 to %"class.std::bitset"*
  %1850 = bitcast %"class.std::bitset"* %YMM5.i136 to i8*
  %1851 = load i64, i64* %RBP.i135
  %1852 = sub i64 %1851, 40
  %1853 = load i64, i64* %PC.i134
  %1854 = add i64 %1853, 5
  store i64 %1854, i64* %PC.i134
  %1855 = inttoptr i64 %1852 to double*
  %1856 = load double, double* %1855
  %1857 = bitcast i8* %1850 to double*
  store double %1856, double* %1857, align 1
  %1858 = getelementptr inbounds i8, i8* %1850, i64 8
  %1859 = bitcast i8* %1858 to double*
  store double 0.000000e+00, double* %1859, align 1
  store %struct.Memory* %loadMem_4007af, %struct.Memory** %MEMORY
  %loadMem_4007b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 15
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1866, i64 0, i64 6
  %YMM6.i133 = bitcast %union.VectorReg* %1867 to %"class.std::bitset"*
  %1868 = bitcast %"class.std::bitset"* %YMM6.i133 to i8*
  %1869 = load i64, i64* %RBP.i132
  %1870 = sub i64 %1869, 40
  %1871 = load i64, i64* %PC.i131
  %1872 = add i64 %1871, 5
  store i64 %1872, i64* %PC.i131
  %1873 = inttoptr i64 %1870 to double*
  %1874 = load double, double* %1873
  %1875 = bitcast i8* %1868 to double*
  store double %1874, double* %1875, align 1
  %1876 = getelementptr inbounds i8, i8* %1868, i64 8
  %1877 = bitcast i8* %1876 to double*
  store double 0.000000e+00, double* %1877, align 1
  store %struct.Memory* %loadMem_4007b4, %struct.Memory** %MEMORY
  %loadMem_4007b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1880 to i64*
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1882 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1881, i64 0, i64 7
  %YMM7.i130 = bitcast %union.VectorReg* %1882 to %"class.std::bitset"*
  %1883 = bitcast %"class.std::bitset"* %YMM7.i130 to i8*
  %1884 = load i64, i64* %PC.i129
  %1885 = add i64 %1884, 9
  store i64 %1885, i64* %PC.i129
  %1886 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %1887 = bitcast i8* %1883 to double*
  store double %1886, double* %1887, align 1
  %1888 = getelementptr inbounds i8, i8* %1883, i64 8
  %1889 = bitcast i8* %1888 to double*
  store double 0.000000e+00, double* %1889, align 1
  store %struct.Memory* %loadMem_4007b9, %struct.Memory** %MEMORY
  %loadMem_4007c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 15
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1896, i64 0, i64 7
  %YMM7.i128 = bitcast %union.VectorReg* %1897 to %"class.std::bitset"*
  %1898 = bitcast %"class.std::bitset"* %YMM7.i128 to i8*
  %1899 = bitcast %"class.std::bitset"* %YMM7.i128 to i8*
  %1900 = load i64, i64* %RBP.i127
  %1901 = sub i64 %1900, 40
  %1902 = load i64, i64* %PC.i126
  %1903 = add i64 %1902, 5
  store i64 %1903, i64* %PC.i126
  %1904 = bitcast i8* %1899 to double*
  %1905 = load double, double* %1904, align 1
  %1906 = getelementptr inbounds i8, i8* %1899, i64 8
  %1907 = bitcast i8* %1906 to i64*
  %1908 = load i64, i64* %1907, align 1
  %1909 = inttoptr i64 %1901 to double*
  %1910 = load double, double* %1909
  %1911 = fmul double %1905, %1910
  %1912 = bitcast i8* %1898 to double*
  store double %1911, double* %1912, align 1
  %1913 = getelementptr inbounds i8, i8* %1898, i64 8
  %1914 = bitcast i8* %1913 to i64*
  store i64 %1908, i64* %1914, align 1
  store %struct.Memory* %loadMem_4007c2, %struct.Memory** %MEMORY
  %loadMem_4007c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1919 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1918, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %1919 to %"class.std::bitset"*
  %1920 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %1921 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %1922 = load i64, i64* %PC.i125
  %1923 = add i64 %1922, 9
  store i64 %1923, i64* %PC.i125
  %1924 = bitcast i8* %1921 to double*
  %1925 = load double, double* %1924, align 1
  %1926 = getelementptr inbounds i8, i8* %1921, i64 8
  %1927 = bitcast i8* %1926 to i64*
  %1928 = load i64, i64* %1927, align 1
  %1929 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %1930 = fadd double %1925, %1929
  %1931 = bitcast i8* %1920 to double*
  store double %1930, double* %1931, align 1
  %1932 = getelementptr inbounds i8, i8* %1920, i64 8
  %1933 = bitcast i8* %1932 to i64*
  store i64 %1928, i64* %1933, align 1
  store %struct.Memory* %loadMem_4007c7, %struct.Memory** %MEMORY
  %loadMem_4007d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1937, i64 0, i64 6
  %YMM6.i124 = bitcast %union.VectorReg* %1938 to %"class.std::bitset"*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1940 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1939, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %1940 to %union.vec128_t*
  %1941 = bitcast %"class.std::bitset"* %YMM6.i124 to i8*
  %1942 = bitcast %"class.std::bitset"* %YMM6.i124 to i8*
  %1943 = bitcast %union.vec128_t* %XMM7.i to i8*
  %1944 = load i64, i64* %PC.i123
  %1945 = add i64 %1944, 4
  store i64 %1945, i64* %PC.i123
  %1946 = bitcast i8* %1942 to double*
  %1947 = load double, double* %1946, align 1
  %1948 = getelementptr inbounds i8, i8* %1942, i64 8
  %1949 = bitcast i8* %1948 to i64*
  %1950 = load i64, i64* %1949, align 1
  %1951 = bitcast i8* %1943 to double*
  %1952 = load double, double* %1951, align 1
  %1953 = fmul double %1947, %1952
  %1954 = bitcast i8* %1941 to double*
  store double %1953, double* %1954, align 1
  %1955 = getelementptr inbounds i8, i8* %1941, i64 8
  %1956 = bitcast i8* %1955 to i64*
  store i64 %1950, i64* %1956, align 1
  store %struct.Memory* %loadMem_4007d0, %struct.Memory** %MEMORY
  %loadMem_4007d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1960, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %1961 to %"class.std::bitset"*
  %1962 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %1963 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %1964 = load i64, i64* %PC.i122
  %1965 = add i64 %1964, 9
  store i64 %1965, i64* %PC.i122
  %1966 = bitcast i8* %1963 to double*
  %1967 = load double, double* %1966, align 1
  %1968 = getelementptr inbounds i8, i8* %1963, i64 8
  %1969 = bitcast i8* %1968 to i64*
  %1970 = load i64, i64* %1969, align 1
  %1971 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %1972 = fadd double %1967, %1971
  %1973 = bitcast i8* %1962 to double*
  store double %1972, double* %1973, align 1
  %1974 = getelementptr inbounds i8, i8* %1962, i64 8
  %1975 = bitcast i8* %1974 to i64*
  store i64 %1970, i64* %1975, align 1
  store %struct.Memory* %loadMem_4007d4, %struct.Memory** %MEMORY
  %loadMem_4007dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1980 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1979, i64 0, i64 5
  %YMM5.i121 = bitcast %union.VectorReg* %1980 to %"class.std::bitset"*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1981, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %1982 to %union.vec128_t*
  %1983 = bitcast %"class.std::bitset"* %YMM5.i121 to i8*
  %1984 = bitcast %"class.std::bitset"* %YMM5.i121 to i8*
  %1985 = bitcast %union.vec128_t* %XMM6.i to i8*
  %1986 = load i64, i64* %PC.i120
  %1987 = add i64 %1986, 4
  store i64 %1987, i64* %PC.i120
  %1988 = bitcast i8* %1984 to double*
  %1989 = load double, double* %1988, align 1
  %1990 = getelementptr inbounds i8, i8* %1984, i64 8
  %1991 = bitcast i8* %1990 to i64*
  %1992 = load i64, i64* %1991, align 1
  %1993 = bitcast i8* %1985 to double*
  %1994 = load double, double* %1993, align 1
  %1995 = fmul double %1989, %1994
  %1996 = bitcast i8* %1983 to double*
  store double %1995, double* %1996, align 1
  %1997 = getelementptr inbounds i8, i8* %1983, i64 8
  %1998 = bitcast i8* %1997 to i64*
  store i64 %1992, i64* %1998, align 1
  store %struct.Memory* %loadMem_4007dd, %struct.Memory** %MEMORY
  %loadMem_4007e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2002, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2003 to %"class.std::bitset"*
  %2004 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2005 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2006 = load i64, i64* %PC.i119
  %2007 = add i64 %2006, 9
  store i64 %2007, i64* %PC.i119
  %2008 = bitcast i8* %2005 to double*
  %2009 = load double, double* %2008, align 1
  %2010 = getelementptr inbounds i8, i8* %2005, i64 8
  %2011 = bitcast i8* %2010 to i64*
  %2012 = load i64, i64* %2011, align 1
  %2013 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %2014 = fadd double %2009, %2013
  %2015 = bitcast i8* %2004 to double*
  store double %2014, double* %2015, align 1
  %2016 = getelementptr inbounds i8, i8* %2004, i64 8
  %2017 = bitcast i8* %2016 to i64*
  store i64 %2012, i64* %2017, align 1
  store %struct.Memory* %loadMem_4007e1, %struct.Memory** %MEMORY
  %loadMem_4007ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 33
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2021, i64 0, i64 4
  %YMM4.i118 = bitcast %union.VectorReg* %2022 to %"class.std::bitset"*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2023, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2024 to %union.vec128_t*
  %2025 = bitcast %"class.std::bitset"* %YMM4.i118 to i8*
  %2026 = bitcast %"class.std::bitset"* %YMM4.i118 to i8*
  %2027 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2028 = load i64, i64* %PC.i117
  %2029 = add i64 %2028, 4
  store i64 %2029, i64* %PC.i117
  %2030 = bitcast i8* %2026 to double*
  %2031 = load double, double* %2030, align 1
  %2032 = getelementptr inbounds i8, i8* %2026, i64 8
  %2033 = bitcast i8* %2032 to i64*
  %2034 = load i64, i64* %2033, align 1
  %2035 = bitcast i8* %2027 to double*
  %2036 = load double, double* %2035, align 1
  %2037 = fmul double %2031, %2036
  %2038 = bitcast i8* %2025 to double*
  store double %2037, double* %2038, align 1
  %2039 = getelementptr inbounds i8, i8* %2025, i64 8
  %2040 = bitcast i8* %2039 to i64*
  store i64 %2034, i64* %2040, align 1
  store %struct.Memory* %loadMem_4007ea, %struct.Memory** %MEMORY
  %loadMem_4007ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2045 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2044, i64 0, i64 4
  %YMM4.i116 = bitcast %union.VectorReg* %2045 to %"class.std::bitset"*
  %2046 = bitcast %"class.std::bitset"* %YMM4.i116 to i8*
  %2047 = bitcast %"class.std::bitset"* %YMM4.i116 to i8*
  %2048 = load i64, i64* %PC.i115
  %2049 = add i64 %2048, 9
  store i64 %2049, i64* %PC.i115
  %2050 = bitcast i8* %2047 to double*
  %2051 = load double, double* %2050, align 1
  %2052 = getelementptr inbounds i8, i8* %2047, i64 8
  %2053 = bitcast i8* %2052 to i64*
  %2054 = load i64, i64* %2053, align 1
  %2055 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %2056 = fadd double %2051, %2055
  %2057 = bitcast i8* %2046 to double*
  store double %2056, double* %2057, align 1
  %2058 = getelementptr inbounds i8, i8* %2046, i64 8
  %2059 = bitcast i8* %2058 to i64*
  store i64 %2054, i64* %2059, align 1
  store %struct.Memory* %loadMem_4007ee, %struct.Memory** %MEMORY
  %loadMem_4007f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 33
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2064 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2063, i64 0, i64 3
  %YMM3.i113 = bitcast %union.VectorReg* %2064 to %"class.std::bitset"*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2066 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2065, i64 0, i64 4
  %XMM4.i114 = bitcast %union.VectorReg* %2066 to %union.vec128_t*
  %2067 = bitcast %"class.std::bitset"* %YMM3.i113 to i8*
  %2068 = bitcast %"class.std::bitset"* %YMM3.i113 to i8*
  %2069 = bitcast %union.vec128_t* %XMM4.i114 to i8*
  %2070 = load i64, i64* %PC.i112
  %2071 = add i64 %2070, 4
  store i64 %2071, i64* %PC.i112
  %2072 = bitcast i8* %2068 to double*
  %2073 = load double, double* %2072, align 1
  %2074 = getelementptr inbounds i8, i8* %2068, i64 8
  %2075 = bitcast i8* %2074 to i64*
  %2076 = load i64, i64* %2075, align 1
  %2077 = bitcast i8* %2069 to double*
  %2078 = load double, double* %2077, align 1
  %2079 = fmul double %2073, %2078
  %2080 = bitcast i8* %2067 to double*
  store double %2079, double* %2080, align 1
  %2081 = getelementptr inbounds i8, i8* %2067, i64 8
  %2082 = bitcast i8* %2081 to i64*
  store i64 %2076, i64* %2082, align 1
  store %struct.Memory* %loadMem_4007f7, %struct.Memory** %MEMORY
  %loadMem_4007fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2086, i64 0, i64 3
  %YMM3.i111 = bitcast %union.VectorReg* %2087 to %"class.std::bitset"*
  %2088 = bitcast %"class.std::bitset"* %YMM3.i111 to i8*
  %2089 = bitcast %"class.std::bitset"* %YMM3.i111 to i8*
  %2090 = load i64, i64* %PC.i110
  %2091 = add i64 %2090, 9
  store i64 %2091, i64* %PC.i110
  %2092 = bitcast i8* %2089 to double*
  %2093 = load double, double* %2092, align 1
  %2094 = getelementptr inbounds i8, i8* %2089, i64 8
  %2095 = bitcast i8* %2094 to i64*
  %2096 = load i64, i64* %2095, align 1
  %2097 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %2098 = fadd double %2093, %2097
  %2099 = bitcast i8* %2088 to double*
  store double %2098, double* %2099, align 1
  %2100 = getelementptr inbounds i8, i8* %2088, i64 8
  %2101 = bitcast i8* %2100 to i64*
  store i64 %2096, i64* %2101, align 1
  store %struct.Memory* %loadMem_4007fb, %struct.Memory** %MEMORY
  %loadMem_400804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2105, i64 0, i64 2
  %YMM2.i108 = bitcast %union.VectorReg* %2106 to %"class.std::bitset"*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2107, i64 0, i64 3
  %XMM3.i109 = bitcast %union.VectorReg* %2108 to %union.vec128_t*
  %2109 = bitcast %"class.std::bitset"* %YMM2.i108 to i8*
  %2110 = bitcast %"class.std::bitset"* %YMM2.i108 to i8*
  %2111 = bitcast %union.vec128_t* %XMM3.i109 to i8*
  %2112 = load i64, i64* %PC.i107
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %PC.i107
  %2114 = bitcast i8* %2110 to double*
  %2115 = load double, double* %2114, align 1
  %2116 = getelementptr inbounds i8, i8* %2110, i64 8
  %2117 = bitcast i8* %2116 to i64*
  %2118 = load i64, i64* %2117, align 1
  %2119 = bitcast i8* %2111 to double*
  %2120 = load double, double* %2119, align 1
  %2121 = fmul double %2115, %2120
  %2122 = bitcast i8* %2109 to double*
  store double %2121, double* %2122, align 1
  %2123 = getelementptr inbounds i8, i8* %2109, i64 8
  %2124 = bitcast i8* %2123 to i64*
  store i64 %2118, i64* %2124, align 1
  store %struct.Memory* %loadMem_400804, %struct.Memory** %MEMORY
  %loadMem_400808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 33
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2127 to i64*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2128, i64 0, i64 2
  %YMM2.i106 = bitcast %union.VectorReg* %2129 to %"class.std::bitset"*
  %2130 = bitcast %"class.std::bitset"* %YMM2.i106 to i8*
  %2131 = bitcast %"class.std::bitset"* %YMM2.i106 to i8*
  %2132 = load i64, i64* %PC.i105
  %2133 = add i64 %2132, 9
  store i64 %2133, i64* %PC.i105
  %2134 = bitcast i8* %2131 to double*
  %2135 = load double, double* %2134, align 1
  %2136 = getelementptr inbounds i8, i8* %2131, i64 8
  %2137 = bitcast i8* %2136 to i64*
  %2138 = load i64, i64* %2137, align 1
  %2139 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %2140 = fadd double %2135, %2139
  %2141 = bitcast i8* %2130 to double*
  store double %2140, double* %2141, align 1
  %2142 = getelementptr inbounds i8, i8* %2130, i64 8
  %2143 = bitcast i8* %2142 to i64*
  store i64 %2138, i64* %2143, align 1
  store %struct.Memory* %loadMem_400808, %struct.Memory** %MEMORY
  %loadMem_400811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2148 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2147, i64 0, i64 2
  %XMM2.i104 = bitcast %union.VectorReg* %2148 to %union.vec128_t*
  %2149 = bitcast %union.vec128_t* %XMM2.i104 to i8*
  %2150 = load i64, i64* %PC.i103
  %2151 = add i64 %2150, 9
  store i64 %2151, i64* %PC.i103
  %2152 = bitcast i8* %2149 to double*
  %2153 = load double, double* %2152, align 1
  store double %2153, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_400811, %struct.Memory** %MEMORY
  %loadMem_40081a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 15
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2160, i64 0, i64 2
  %YMM2.i102 = bitcast %union.VectorReg* %2161 to %"class.std::bitset"*
  %2162 = bitcast %"class.std::bitset"* %YMM2.i102 to i8*
  %2163 = load i64, i64* %RBP.i101
  %2164 = sub i64 %2163, 48
  %2165 = load i64, i64* %PC.i100
  %2166 = add i64 %2165, 5
  store i64 %2166, i64* %PC.i100
  %2167 = inttoptr i64 %2164 to double*
  %2168 = load double, double* %2167
  %2169 = bitcast i8* %2162 to double*
  store double %2168, double* %2169, align 1
  %2170 = getelementptr inbounds i8, i8* %2162, i64 8
  %2171 = bitcast i8* %2170 to double*
  store double 0.000000e+00, double* %2171, align 1
  store %struct.Memory* %loadMem_40081a, %struct.Memory** %MEMORY
  %loadMem_40081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2175, i64 0, i64 3
  %YMM3.i99 = bitcast %union.VectorReg* %2176 to %"class.std::bitset"*
  %2177 = bitcast %"class.std::bitset"* %YMM3.i99 to i8*
  %2178 = load i64, i64* %PC.i98
  %2179 = add i64 %2178, 9
  store i64 %2179, i64* %PC.i98
  %2180 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2181 = bitcast i8* %2177 to double*
  store double %2180, double* %2181, align 1
  %2182 = getelementptr inbounds i8, i8* %2177, i64 8
  %2183 = bitcast i8* %2182 to double*
  store double 0.000000e+00, double* %2183, align 1
  store %struct.Memory* %loadMem_40081f, %struct.Memory** %MEMORY
  %loadMem_400828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 33
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2187, i64 0, i64 3
  %YMM3.i97 = bitcast %union.VectorReg* %2188 to %"class.std::bitset"*
  %2189 = bitcast %"class.std::bitset"* %YMM3.i97 to i8*
  %2190 = bitcast %"class.std::bitset"* %YMM3.i97 to i8*
  %2191 = load i64, i64* %PC.i96
  %2192 = add i64 %2191, 9
  store i64 %2192, i64* %PC.i96
  %2193 = bitcast i8* %2190 to double*
  %2194 = load double, double* %2193, align 1
  %2195 = getelementptr inbounds i8, i8* %2190, i64 8
  %2196 = bitcast i8* %2195 to i64*
  %2197 = load i64, i64* %2196, align 1
  %2198 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %2199 = fadd double %2194, %2198
  %2200 = bitcast i8* %2189 to double*
  store double %2199, double* %2200, align 1
  %2201 = getelementptr inbounds i8, i8* %2189, i64 8
  %2202 = bitcast i8* %2201 to i64*
  store i64 %2197, i64* %2202, align 1
  store %struct.Memory* %loadMem_400828, %struct.Memory** %MEMORY
  %loadMem_400831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 33
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2205 to i64*
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2207 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2206, i64 0, i64 4
  %YMM4.i95 = bitcast %union.VectorReg* %2207 to %"class.std::bitset"*
  %2208 = bitcast %"class.std::bitset"* %YMM4.i95 to i8*
  %2209 = load i64, i64* %PC.i94
  %2210 = add i64 %2209, 9
  store i64 %2210, i64* %PC.i94
  %2211 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2212 = bitcast i8* %2208 to double*
  store double %2211, double* %2212, align 1
  %2213 = getelementptr inbounds i8, i8* %2208, i64 8
  %2214 = bitcast i8* %2213 to double*
  store double 0.000000e+00, double* %2214, align 1
  store %struct.Memory* %loadMem_400831, %struct.Memory** %MEMORY
  %loadMem_40083a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2221, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2222 to %"class.std::bitset"*
  %2223 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2224 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2225 = load i64, i64* %RBP.i93
  %2226 = sub i64 %2225, 16
  %2227 = load i64, i64* %PC.i92
  %2228 = add i64 %2227, 5
  store i64 %2228, i64* %PC.i92
  %2229 = bitcast i8* %2224 to double*
  %2230 = load double, double* %2229, align 1
  %2231 = getelementptr inbounds i8, i8* %2224, i64 8
  %2232 = bitcast i8* %2231 to i64*
  %2233 = load i64, i64* %2232, align 1
  %2234 = inttoptr i64 %2226 to double*
  %2235 = load double, double* %2234
  %2236 = fmul double %2230, %2235
  %2237 = bitcast i8* %2223 to double*
  store double %2236, double* %2237, align 1
  %2238 = getelementptr inbounds i8, i8* %2223, i64 8
  %2239 = bitcast i8* %2238 to i64*
  store i64 %2233, i64* %2239, align 1
  store %struct.Memory* %loadMem_40083a, %struct.Memory** %MEMORY
  %loadMem_40083f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 33
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2243, i64 0, i64 3
  %YMM3.i91 = bitcast %union.VectorReg* %2244 to %"class.std::bitset"*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2246 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2245, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2246 to %union.vec128_t*
  %2247 = bitcast %"class.std::bitset"* %YMM3.i91 to i8*
  %2248 = bitcast %"class.std::bitset"* %YMM3.i91 to i8*
  %2249 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2250 = load i64, i64* %PC.i90
  %2251 = add i64 %2250, 4
  store i64 %2251, i64* %PC.i90
  %2252 = bitcast i8* %2248 to double*
  %2253 = load double, double* %2252, align 1
  %2254 = getelementptr inbounds i8, i8* %2248, i64 8
  %2255 = bitcast i8* %2254 to i64*
  %2256 = load i64, i64* %2255, align 1
  %2257 = bitcast i8* %2249 to double*
  %2258 = load double, double* %2257, align 1
  %2259 = fadd double %2253, %2258
  %2260 = bitcast i8* %2247 to double*
  store double %2259, double* %2260, align 1
  %2261 = getelementptr inbounds i8, i8* %2247, i64 8
  %2262 = bitcast i8* %2261 to i64*
  store i64 %2256, i64* %2262, align 1
  store %struct.Memory* %loadMem_40083f, %struct.Memory** %MEMORY
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2266, i64 0, i64 2
  %YMM2.i88 = bitcast %union.VectorReg* %2267 to %"class.std::bitset"*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2268, i64 0, i64 3
  %XMM3.i89 = bitcast %union.VectorReg* %2269 to %union.vec128_t*
  %2270 = bitcast %"class.std::bitset"* %YMM2.i88 to i8*
  %2271 = bitcast %"class.std::bitset"* %YMM2.i88 to i8*
  %2272 = bitcast %union.vec128_t* %XMM3.i89 to i8*
  %2273 = load i64, i64* %PC.i87
  %2274 = add i64 %2273, 4
  store i64 %2274, i64* %PC.i87
  %2275 = bitcast i8* %2271 to double*
  %2276 = load double, double* %2275, align 1
  %2277 = getelementptr inbounds i8, i8* %2271, i64 8
  %2278 = bitcast i8* %2277 to i64*
  %2279 = load i64, i64* %2278, align 1
  %2280 = bitcast i8* %2272 to double*
  %2281 = load double, double* %2280, align 1
  %2282 = fmul double %2276, %2281
  %2283 = bitcast i8* %2270 to double*
  store double %2282, double* %2283, align 1
  %2284 = getelementptr inbounds i8, i8* %2270, i64 8
  %2285 = bitcast i8* %2284 to i64*
  store i64 %2279, i64* %2285, align 1
  store %struct.Memory* %loadMem_400843, %struct.Memory** %MEMORY
  %loadMem_400847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2290 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2289, i64 0, i64 2
  %YMM2.i86 = bitcast %union.VectorReg* %2290 to %"class.std::bitset"*
  %2291 = bitcast %"class.std::bitset"* %YMM2.i86 to i8*
  %2292 = bitcast %"class.std::bitset"* %YMM2.i86 to i8*
  %2293 = load i64, i64* %PC.i85
  %2294 = add i64 %2293, 9
  store i64 %2294, i64* %PC.i85
  %2295 = bitcast i8* %2292 to double*
  %2296 = load double, double* %2295, align 1
  %2297 = getelementptr inbounds i8, i8* %2292, i64 8
  %2298 = bitcast i8* %2297 to i64*
  %2299 = load i64, i64* %2298, align 1
  %2300 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2301 = fdiv double %2296, %2300
  %2302 = bitcast i8* %2291 to double*
  store double %2301, double* %2302, align 1
  %2303 = getelementptr inbounds i8, i8* %2291, i64 8
  %2304 = bitcast i8* %2303 to i64*
  store i64 %2299, i64* %2304, align 1
  store %struct.Memory* %loadMem_400847, %struct.Memory** %MEMORY
  %loadMem_400850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2307 to i64*
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2308, i64 0, i64 2
  %XMM2.i84 = bitcast %union.VectorReg* %2309 to %union.vec128_t*
  %2310 = bitcast %union.vec128_t* %XMM2.i84 to i8*
  %2311 = load i64, i64* %PC.i83
  %2312 = add i64 %2311, 9
  store i64 %2312, i64* %PC.i83
  %2313 = bitcast i8* %2310 to double*
  %2314 = load double, double* %2313, align 1
  store double %2314, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_400850, %struct.Memory** %MEMORY
  %loadMem_400859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2318, i64 0, i64 2
  %YMM2.i82 = bitcast %union.VectorReg* %2319 to %"class.std::bitset"*
  %2320 = bitcast %"class.std::bitset"* %YMM2.i82 to i8*
  %2321 = load i64, i64* %PC.i81
  %2322 = add i64 %2321, 9
  store i64 %2322, i64* %PC.i81
  %2323 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %2324 = bitcast i8* %2320 to double*
  store double %2323, double* %2324, align 1
  %2325 = getelementptr inbounds i8, i8* %2320, i64 8
  %2326 = bitcast i8* %2325 to double*
  store double 0.000000e+00, double* %2326, align 1
  store %struct.Memory* %loadMem_400859, %struct.Memory** %MEMORY
  %loadMem_400862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2331 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2330, i64 0, i64 2
  %YMM2.i80 = bitcast %union.VectorReg* %2331 to %"class.std::bitset"*
  %2332 = bitcast %"class.std::bitset"* %YMM2.i80 to i8*
  %2333 = bitcast %"class.std::bitset"* %YMM2.i80 to i8*
  %2334 = load i64, i64* %PC.i79
  %2335 = add i64 %2334, 9
  store i64 %2335, i64* %PC.i79
  %2336 = bitcast i8* %2333 to double*
  %2337 = load double, double* %2336, align 1
  %2338 = getelementptr inbounds i8, i8* %2333, i64 8
  %2339 = bitcast i8* %2338 to i64*
  %2340 = load i64, i64* %2339, align 1
  %2341 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %2342 = fdiv double %2337, %2341
  %2343 = bitcast i8* %2332 to double*
  store double %2342, double* %2343, align 1
  %2344 = getelementptr inbounds i8, i8* %2332, i64 8
  %2345 = bitcast i8* %2344 to i64*
  store i64 %2340, i64* %2345, align 1
  store %struct.Memory* %loadMem_400862, %struct.Memory** %MEMORY
  %loadMem_40086b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2348 to i64*
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 15
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2353 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2352, i64 0, i64 2
  %XMM2.i78 = bitcast %union.VectorReg* %2353 to %union.vec128_t*
  %2354 = load i64, i64* %RBP.i77
  %2355 = sub i64 %2354, 24
  %2356 = bitcast %union.vec128_t* %XMM2.i78 to i8*
  %2357 = load i64, i64* %PC.i76
  %2358 = add i64 %2357, 5
  store i64 %2358, i64* %PC.i76
  %2359 = bitcast i8* %2356 to double*
  %2360 = load double, double* %2359, align 1
  %2361 = inttoptr i64 %2355 to double*
  store double %2360, double* %2361
  store %struct.Memory* %loadMem_40086b, %struct.Memory** %MEMORY
  %loadMem_400870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2364 to i64*
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 15
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2368, i64 0, i64 2
  %YMM2.i75 = bitcast %union.VectorReg* %2369 to %"class.std::bitset"*
  %2370 = bitcast %"class.std::bitset"* %YMM2.i75 to i8*
  %2371 = load i64, i64* %RBP.i74
  %2372 = sub i64 %2371, 24
  %2373 = load i64, i64* %PC.i73
  %2374 = add i64 %2373, 5
  store i64 %2374, i64* %PC.i73
  %2375 = inttoptr i64 %2372 to double*
  %2376 = load double, double* %2375
  %2377 = bitcast i8* %2370 to double*
  store double %2376, double* %2377, align 1
  %2378 = getelementptr inbounds i8, i8* %2370, i64 8
  %2379 = bitcast i8* %2378 to double*
  store double 0.000000e+00, double* %2379, align 1
  store %struct.Memory* %loadMem_400870, %struct.Memory** %MEMORY
  %loadMem_400875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2386, i64 0, i64 2
  %YMM2.i72 = bitcast %union.VectorReg* %2387 to %"class.std::bitset"*
  %2388 = bitcast %"class.std::bitset"* %YMM2.i72 to i8*
  %2389 = bitcast %"class.std::bitset"* %YMM2.i72 to i8*
  %2390 = load i64, i64* %RBP.i71
  %2391 = sub i64 %2390, 24
  %2392 = load i64, i64* %PC.i70
  %2393 = add i64 %2392, 5
  store i64 %2393, i64* %PC.i70
  %2394 = bitcast i8* %2389 to double*
  %2395 = load double, double* %2394, align 1
  %2396 = getelementptr inbounds i8, i8* %2389, i64 8
  %2397 = bitcast i8* %2396 to i64*
  %2398 = load i64, i64* %2397, align 1
  %2399 = inttoptr i64 %2391 to double*
  %2400 = load double, double* %2399
  %2401 = fmul double %2395, %2400
  %2402 = bitcast i8* %2388 to double*
  store double %2401, double* %2402, align 1
  %2403 = getelementptr inbounds i8, i8* %2388, i64 8
  %2404 = bitcast i8* %2403 to i64*
  store i64 %2398, i64* %2404, align 1
  store %struct.Memory* %loadMem_400875, %struct.Memory** %MEMORY
  %loadMem_40087a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 15
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2411, i64 0, i64 2
  %XMM2.i69 = bitcast %union.VectorReg* %2412 to %union.vec128_t*
  %2413 = load i64, i64* %RBP.i68
  %2414 = sub i64 %2413, 40
  %2415 = bitcast %union.vec128_t* %XMM2.i69 to i8*
  %2416 = load i64, i64* %PC.i67
  %2417 = add i64 %2416, 5
  store i64 %2417, i64* %PC.i67
  %2418 = bitcast i8* %2415 to double*
  %2419 = load double, double* %2418, align 1
  %2420 = inttoptr i64 %2414 to double*
  store double %2419, double* %2420
  store %struct.Memory* %loadMem_40087a, %struct.Memory** %MEMORY
  %loadMem_40087f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 33
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 15
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2427, i64 0, i64 2
  %YMM2.i66 = bitcast %union.VectorReg* %2428 to %"class.std::bitset"*
  %2429 = bitcast %"class.std::bitset"* %YMM2.i66 to i8*
  %2430 = load i64, i64* %RBP.i65
  %2431 = sub i64 %2430, 24
  %2432 = load i64, i64* %PC.i64
  %2433 = add i64 %2432, 5
  store i64 %2433, i64* %PC.i64
  %2434 = inttoptr i64 %2431 to double*
  %2435 = load double, double* %2434
  %2436 = bitcast i8* %2429 to double*
  store double %2435, double* %2436, align 1
  %2437 = getelementptr inbounds i8, i8* %2429, i64 8
  %2438 = bitcast i8* %2437 to double*
  store double 0.000000e+00, double* %2438, align 1
  store %struct.Memory* %loadMem_40087f, %struct.Memory** %MEMORY
  %loadMem_400884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 33
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2441 to i64*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2442, i64 0, i64 3
  %YMM3.i63 = bitcast %union.VectorReg* %2443 to %"class.std::bitset"*
  %2444 = bitcast %"class.std::bitset"* %YMM3.i63 to i8*
  %2445 = load i64, i64* %PC.i62
  %2446 = add i64 %2445, 9
  store i64 %2446, i64* %PC.i62
  %2447 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %2448 = bitcast i8* %2444 to double*
  store double %2447, double* %2448, align 1
  %2449 = getelementptr inbounds i8, i8* %2444, i64 8
  %2450 = bitcast i8* %2449 to double*
  store double 0.000000e+00, double* %2450, align 1
  store %struct.Memory* %loadMem_400884, %struct.Memory** %MEMORY
  %loadMem_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 15
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2457, i64 0, i64 3
  %YMM3.i61 = bitcast %union.VectorReg* %2458 to %"class.std::bitset"*
  %2459 = bitcast %"class.std::bitset"* %YMM3.i61 to i8*
  %2460 = bitcast %"class.std::bitset"* %YMM3.i61 to i8*
  %2461 = load i64, i64* %RBP.i60
  %2462 = sub i64 %2461, 40
  %2463 = load i64, i64* %PC.i59
  %2464 = add i64 %2463, 5
  store i64 %2464, i64* %PC.i59
  %2465 = bitcast i8* %2460 to double*
  %2466 = load double, double* %2465, align 1
  %2467 = getelementptr inbounds i8, i8* %2460, i64 8
  %2468 = bitcast i8* %2467 to i64*
  %2469 = load i64, i64* %2468, align 1
  %2470 = inttoptr i64 %2462 to double*
  %2471 = load double, double* %2470
  %2472 = fmul double %2466, %2471
  %2473 = bitcast i8* %2459 to double*
  store double %2472, double* %2473, align 1
  %2474 = getelementptr inbounds i8, i8* %2459, i64 8
  %2475 = bitcast i8* %2474 to i64*
  store i64 %2469, i64* %2475, align 1
  store %struct.Memory* %loadMem_40088d, %struct.Memory** %MEMORY
  %loadMem_400892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2480 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2479, i64 0, i64 3
  %YMM3.i58 = bitcast %union.VectorReg* %2480 to %"class.std::bitset"*
  %2481 = bitcast %"class.std::bitset"* %YMM3.i58 to i8*
  %2482 = bitcast %"class.std::bitset"* %YMM3.i58 to i8*
  %2483 = load i64, i64* %PC.i57
  %2484 = add i64 %2483, 9
  store i64 %2484, i64* %PC.i57
  %2485 = bitcast i8* %2482 to double*
  %2486 = load double, double* %2485, align 1
  %2487 = getelementptr inbounds i8, i8* %2482, i64 8
  %2488 = bitcast i8* %2487 to i64*
  %2489 = load i64, i64* %2488, align 1
  %2490 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %2491 = fadd double %2486, %2490
  %2492 = bitcast i8* %2481 to double*
  store double %2491, double* %2492, align 1
  %2493 = getelementptr inbounds i8, i8* %2481, i64 8
  %2494 = bitcast i8* %2493 to i64*
  store i64 %2489, i64* %2494, align 1
  store %struct.Memory* %loadMem_400892, %struct.Memory** %MEMORY
  %loadMem_40089b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 15
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2502 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2501, i64 0, i64 3
  %YMM3.i56 = bitcast %union.VectorReg* %2502 to %"class.std::bitset"*
  %2503 = bitcast %"class.std::bitset"* %YMM3.i56 to i8*
  %2504 = bitcast %"class.std::bitset"* %YMM3.i56 to i8*
  %2505 = load i64, i64* %RBP.i55
  %2506 = sub i64 %2505, 40
  %2507 = load i64, i64* %PC.i54
  %2508 = add i64 %2507, 5
  store i64 %2508, i64* %PC.i54
  %2509 = bitcast i8* %2504 to double*
  %2510 = load double, double* %2509, align 1
  %2511 = getelementptr inbounds i8, i8* %2504, i64 8
  %2512 = bitcast i8* %2511 to i64*
  %2513 = load i64, i64* %2512, align 1
  %2514 = inttoptr i64 %2506 to double*
  %2515 = load double, double* %2514
  %2516 = fmul double %2510, %2515
  %2517 = bitcast i8* %2503 to double*
  store double %2516, double* %2517, align 1
  %2518 = getelementptr inbounds i8, i8* %2503, i64 8
  %2519 = bitcast i8* %2518 to i64*
  store i64 %2513, i64* %2519, align 1
  store %struct.Memory* %loadMem_40089b, %struct.Memory** %MEMORY
  %loadMem_4008a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 33
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2522 to i64*
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2523, i64 0, i64 3
  %YMM3.i53 = bitcast %union.VectorReg* %2524 to %"class.std::bitset"*
  %2525 = bitcast %"class.std::bitset"* %YMM3.i53 to i8*
  %2526 = bitcast %"class.std::bitset"* %YMM3.i53 to i8*
  %2527 = load i64, i64* %PC.i52
  %2528 = add i64 %2527, 9
  store i64 %2528, i64* %PC.i52
  %2529 = bitcast i8* %2526 to double*
  %2530 = load double, double* %2529, align 1
  %2531 = getelementptr inbounds i8, i8* %2526, i64 8
  %2532 = bitcast i8* %2531 to i64*
  %2533 = load i64, i64* %2532, align 1
  %2534 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %2535 = fadd double %2530, %2534
  %2536 = bitcast i8* %2525 to double*
  store double %2535, double* %2536, align 1
  %2537 = getelementptr inbounds i8, i8* %2525, i64 8
  %2538 = bitcast i8* %2537 to i64*
  store i64 %2533, i64* %2538, align 1
  store %struct.Memory* %loadMem_4008a0, %struct.Memory** %MEMORY
  %loadMem_4008a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 15
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2546 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2545, i64 0, i64 3
  %YMM3.i51 = bitcast %union.VectorReg* %2546 to %"class.std::bitset"*
  %2547 = bitcast %"class.std::bitset"* %YMM3.i51 to i8*
  %2548 = bitcast %"class.std::bitset"* %YMM3.i51 to i8*
  %2549 = load i64, i64* %RBP.i50
  %2550 = sub i64 %2549, 40
  %2551 = load i64, i64* %PC.i49
  %2552 = add i64 %2551, 5
  store i64 %2552, i64* %PC.i49
  %2553 = bitcast i8* %2548 to double*
  %2554 = load double, double* %2553, align 1
  %2555 = getelementptr inbounds i8, i8* %2548, i64 8
  %2556 = bitcast i8* %2555 to i64*
  %2557 = load i64, i64* %2556, align 1
  %2558 = inttoptr i64 %2550 to double*
  %2559 = load double, double* %2558
  %2560 = fmul double %2554, %2559
  %2561 = bitcast i8* %2547 to double*
  store double %2560, double* %2561, align 1
  %2562 = getelementptr inbounds i8, i8* %2547, i64 8
  %2563 = bitcast i8* %2562 to i64*
  store i64 %2557, i64* %2563, align 1
  store %struct.Memory* %loadMem_4008a9, %struct.Memory** %MEMORY
  %loadMem_4008ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2568 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2567, i64 0, i64 3
  %YMM3.i48 = bitcast %union.VectorReg* %2568 to %"class.std::bitset"*
  %2569 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2570 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2571 = load i64, i64* %PC.i47
  %2572 = add i64 %2571, 9
  store i64 %2572, i64* %PC.i47
  %2573 = bitcast i8* %2570 to double*
  %2574 = load double, double* %2573, align 1
  %2575 = getelementptr inbounds i8, i8* %2570, i64 8
  %2576 = bitcast i8* %2575 to i64*
  %2577 = load i64, i64* %2576, align 1
  %2578 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %2579 = fadd double %2574, %2578
  %2580 = bitcast i8* %2569 to double*
  store double %2579, double* %2580, align 1
  %2581 = getelementptr inbounds i8, i8* %2569, i64 8
  %2582 = bitcast i8* %2581 to i64*
  store i64 %2577, i64* %2582, align 1
  store %struct.Memory* %loadMem_4008ae, %struct.Memory** %MEMORY
  %loadMem_4008b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 33
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 15
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2589, i64 0, i64 3
  %YMM3.i46 = bitcast %union.VectorReg* %2590 to %"class.std::bitset"*
  %2591 = bitcast %"class.std::bitset"* %YMM3.i46 to i8*
  %2592 = bitcast %"class.std::bitset"* %YMM3.i46 to i8*
  %2593 = load i64, i64* %RBP.i45
  %2594 = sub i64 %2593, 40
  %2595 = load i64, i64* %PC.i44
  %2596 = add i64 %2595, 5
  store i64 %2596, i64* %PC.i44
  %2597 = bitcast i8* %2592 to double*
  %2598 = load double, double* %2597, align 1
  %2599 = getelementptr inbounds i8, i8* %2592, i64 8
  %2600 = bitcast i8* %2599 to i64*
  %2601 = load i64, i64* %2600, align 1
  %2602 = inttoptr i64 %2594 to double*
  %2603 = load double, double* %2602
  %2604 = fmul double %2598, %2603
  %2605 = bitcast i8* %2591 to double*
  store double %2604, double* %2605, align 1
  %2606 = getelementptr inbounds i8, i8* %2591, i64 8
  %2607 = bitcast i8* %2606 to i64*
  store i64 %2601, i64* %2607, align 1
  store %struct.Memory* %loadMem_4008b7, %struct.Memory** %MEMORY
  %loadMem_4008bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2611, i64 0, i64 3
  %YMM3.i43 = bitcast %union.VectorReg* %2612 to %"class.std::bitset"*
  %2613 = bitcast %"class.std::bitset"* %YMM3.i43 to i8*
  %2614 = bitcast %"class.std::bitset"* %YMM3.i43 to i8*
  %2615 = load i64, i64* %PC.i42
  %2616 = add i64 %2615, 9
  store i64 %2616, i64* %PC.i42
  %2617 = bitcast i8* %2614 to double*
  %2618 = load double, double* %2617, align 1
  %2619 = getelementptr inbounds i8, i8* %2614, i64 8
  %2620 = bitcast i8* %2619 to i64*
  %2621 = load i64, i64* %2620, align 1
  %2622 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %2623 = fadd double %2618, %2622
  %2624 = bitcast i8* %2613 to double*
  store double %2623, double* %2624, align 1
  %2625 = getelementptr inbounds i8, i8* %2613, i64 8
  %2626 = bitcast i8* %2625 to i64*
  store i64 %2621, i64* %2626, align 1
  store %struct.Memory* %loadMem_4008bc, %struct.Memory** %MEMORY
  %loadMem_4008c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2628 = getelementptr inbounds %struct.GPR, %struct.GPR* %2627, i32 0, i32 33
  %2629 = getelementptr inbounds %struct.Reg, %struct.Reg* %2628, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2629 to i64*
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2631 = getelementptr inbounds %struct.GPR, %struct.GPR* %2630, i32 0, i32 15
  %2632 = getelementptr inbounds %struct.Reg, %struct.Reg* %2631, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %2632 to i64*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2633, i64 0, i64 3
  %YMM3.i41 = bitcast %union.VectorReg* %2634 to %"class.std::bitset"*
  %2635 = bitcast %"class.std::bitset"* %YMM3.i41 to i8*
  %2636 = bitcast %"class.std::bitset"* %YMM3.i41 to i8*
  %2637 = load i64, i64* %RBP.i40
  %2638 = sub i64 %2637, 40
  %2639 = load i64, i64* %PC.i39
  %2640 = add i64 %2639, 5
  store i64 %2640, i64* %PC.i39
  %2641 = bitcast i8* %2636 to double*
  %2642 = load double, double* %2641, align 1
  %2643 = getelementptr inbounds i8, i8* %2636, i64 8
  %2644 = bitcast i8* %2643 to i64*
  %2645 = load i64, i64* %2644, align 1
  %2646 = inttoptr i64 %2638 to double*
  %2647 = load double, double* %2646
  %2648 = fmul double %2642, %2647
  %2649 = bitcast i8* %2635 to double*
  store double %2648, double* %2649, align 1
  %2650 = getelementptr inbounds i8, i8* %2635, i64 8
  %2651 = bitcast i8* %2650 to i64*
  store i64 %2645, i64* %2651, align 1
  store %struct.Memory* %loadMem_4008c5, %struct.Memory** %MEMORY
  %loadMem_4008ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2655, i64 0, i64 3
  %YMM3.i38 = bitcast %union.VectorReg* %2656 to %"class.std::bitset"*
  %2657 = bitcast %"class.std::bitset"* %YMM3.i38 to i8*
  %2658 = bitcast %"class.std::bitset"* %YMM3.i38 to i8*
  %2659 = load i64, i64* %PC.i37
  %2660 = add i64 %2659, 9
  store i64 %2660, i64* %PC.i37
  %2661 = bitcast i8* %2658 to double*
  %2662 = load double, double* %2661, align 1
  %2663 = getelementptr inbounds i8, i8* %2658, i64 8
  %2664 = bitcast i8* %2663 to i64*
  %2665 = load i64, i64* %2664, align 1
  %2666 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %2667 = fadd double %2662, %2666
  %2668 = bitcast i8* %2657 to double*
  store double %2667, double* %2668, align 1
  %2669 = getelementptr inbounds i8, i8* %2657, i64 8
  %2670 = bitcast i8* %2669 to i64*
  store i64 %2665, i64* %2670, align 1
  store %struct.Memory* %loadMem_4008ca, %struct.Memory** %MEMORY
  %loadMem_4008d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 15
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2678 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2677, i64 0, i64 3
  %YMM3.i36 = bitcast %union.VectorReg* %2678 to %"class.std::bitset"*
  %2679 = bitcast %"class.std::bitset"* %YMM3.i36 to i8*
  %2680 = bitcast %"class.std::bitset"* %YMM3.i36 to i8*
  %2681 = load i64, i64* %RBP.i35
  %2682 = sub i64 %2681, 40
  %2683 = load i64, i64* %PC.i34
  %2684 = add i64 %2683, 5
  store i64 %2684, i64* %PC.i34
  %2685 = bitcast i8* %2680 to double*
  %2686 = load double, double* %2685, align 1
  %2687 = getelementptr inbounds i8, i8* %2680, i64 8
  %2688 = bitcast i8* %2687 to i64*
  %2689 = load i64, i64* %2688, align 1
  %2690 = inttoptr i64 %2682 to double*
  %2691 = load double, double* %2690
  %2692 = fmul double %2686, %2691
  %2693 = bitcast i8* %2679 to double*
  store double %2692, double* %2693, align 1
  %2694 = getelementptr inbounds i8, i8* %2679, i64 8
  %2695 = bitcast i8* %2694 to i64*
  store i64 %2689, i64* %2695, align 1
  store %struct.Memory* %loadMem_4008d3, %struct.Memory** %MEMORY
  %loadMem_4008d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 33
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2700 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2699, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2700 to %"class.std::bitset"*
  %2701 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2702 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2703 = load i64, i64* %PC.i33
  %2704 = add i64 %2703, 9
  store i64 %2704, i64* %PC.i33
  %2705 = bitcast i8* %2702 to double*
  %2706 = load double, double* %2705, align 1
  %2707 = getelementptr inbounds i8, i8* %2702, i64 8
  %2708 = bitcast i8* %2707 to i64*
  %2709 = load i64, i64* %2708, align 1
  %2710 = load double, double* bitcast (%G_0x601030_type* @G_0x601030 to double*)
  %2711 = fadd double %2706, %2710
  %2712 = bitcast i8* %2701 to double*
  store double %2711, double* %2712, align 1
  %2713 = getelementptr inbounds i8, i8* %2701, i64 8
  %2714 = bitcast i8* %2713 to i64*
  store i64 %2709, i64* %2714, align 1
  store %struct.Memory* %loadMem_4008d8, %struct.Memory** %MEMORY
  %loadMem_4008e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2718, i64 0, i64 2
  %YMM2.i32 = bitcast %union.VectorReg* %2719 to %"class.std::bitset"*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2720, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2721 to %union.vec128_t*
  %2722 = bitcast %"class.std::bitset"* %YMM2.i32 to i8*
  %2723 = bitcast %"class.std::bitset"* %YMM2.i32 to i8*
  %2724 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2725 = load i64, i64* %PC.i31
  %2726 = add i64 %2725, 4
  store i64 %2726, i64* %PC.i31
  %2727 = bitcast i8* %2723 to double*
  %2728 = load double, double* %2727, align 1
  %2729 = getelementptr inbounds i8, i8* %2723, i64 8
  %2730 = bitcast i8* %2729 to i64*
  %2731 = load i64, i64* %2730, align 1
  %2732 = bitcast i8* %2724 to double*
  %2733 = load double, double* %2732, align 1
  %2734 = fmul double %2728, %2733
  %2735 = bitcast i8* %2722 to double*
  store double %2734, double* %2735, align 1
  %2736 = getelementptr inbounds i8, i8* %2722, i64 8
  %2737 = bitcast i8* %2736 to i64*
  store i64 %2731, i64* %2737, align 1
  store %struct.Memory* %loadMem_4008e1, %struct.Memory** %MEMORY
  %loadMem_4008e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2741, i64 0, i64 2
  %XMM2.i30 = bitcast %union.VectorReg* %2742 to %union.vec128_t*
  %2743 = bitcast %union.vec128_t* %XMM2.i30 to i8*
  %2744 = load i64, i64* %PC.i29
  %2745 = add i64 %2744, 9
  store i64 %2745, i64* %PC.i29
  %2746 = bitcast i8* %2743 to double*
  %2747 = load double, double* %2746, align 1
  store double %2747, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  store %struct.Memory* %loadMem_4008e5, %struct.Memory** %MEMORY
  %loadMem_4008ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2751, i64 0, i64 2
  %YMM2.i28 = bitcast %union.VectorReg* %2752 to %"class.std::bitset"*
  %2753 = bitcast %"class.std::bitset"* %YMM2.i28 to i8*
  %2754 = load i64, i64* %PC.i27
  %2755 = add i64 %2754, 9
  store i64 %2755, i64* %PC.i27
  %2756 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2757 = bitcast i8* %2753 to double*
  store double %2756, double* %2757, align 1
  %2758 = getelementptr inbounds i8, i8* %2753, i64 8
  %2759 = bitcast i8* %2758 to double*
  store double 0.000000e+00, double* %2759, align 1
  store %struct.Memory* %loadMem_4008ee, %struct.Memory** %MEMORY
  %loadMem_4008f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2763, i64 0, i64 2
  %YMM2.i26 = bitcast %union.VectorReg* %2764 to %"class.std::bitset"*
  %2765 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2766 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2767 = load i64, i64* %PC.i25
  %2768 = add i64 %2767, 9
  store i64 %2768, i64* %PC.i25
  %2769 = bitcast i8* %2766 to double*
  %2770 = load double, double* %2769, align 1
  %2771 = getelementptr inbounds i8, i8* %2766, i64 8
  %2772 = bitcast i8* %2771 to i64*
  %2773 = load i64, i64* %2772, align 1
  %2774 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %2775 = fsub double %2770, %2774
  %2776 = bitcast i8* %2765 to double*
  store double %2775, double* %2776, align 1
  %2777 = getelementptr inbounds i8, i8* %2765, i64 8
  %2778 = bitcast i8* %2777 to i64*
  store i64 %2773, i64* %2778, align 1
  store %struct.Memory* %loadMem_4008f7, %struct.Memory** %MEMORY
  %loadMem_400900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2783 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2782, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2783 to %union.vec128_t*
  %2784 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2785 = load i64, i64* %PC.i24
  %2786 = add i64 %2785, 9
  store i64 %2786, i64* %PC.i24
  %2787 = bitcast i8* %2784 to double*
  %2788 = load double, double* %2787, align 1
  store double %2788, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  store %struct.Memory* %loadMem_400900, %struct.Memory** %MEMORY
  %loadMem_400909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2792, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %2793 to %"class.std::bitset"*
  %2794 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2795 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2796 = load i64, i64* %PC.i22
  %2797 = add i64 %2796, 9
  store i64 %2797, i64* %PC.i22
  %2798 = bitcast i8* %2795 to double*
  %2799 = load double, double* %2798, align 1
  %2800 = getelementptr inbounds i8, i8* %2795, i64 8
  %2801 = bitcast i8* %2800 to i64*
  %2802 = load i64, i64* %2801, align 1
  %2803 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  %2804 = fmul double %2799, %2803
  %2805 = bitcast i8* %2794 to double*
  store double %2804, double* %2805, align 1
  %2806 = getelementptr inbounds i8, i8* %2794, i64 8
  %2807 = bitcast i8* %2806 to i64*
  store i64 %2802, i64* %2807, align 1
  store %struct.Memory* %loadMem_400909, %struct.Memory** %MEMORY
  %loadMem_400912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 15
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2815 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2814, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2815 to %union.vec128_t*
  %2816 = load i64, i64* %RBP.i21
  %2817 = sub i64 %2816, 112
  %2818 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2819 = load i64, i64* %PC.i20
  %2820 = add i64 %2819, 5
  store i64 %2820, i64* %PC.i20
  %2821 = bitcast i8* %2818 to double*
  %2822 = load double, double* %2821, align 1
  %2823 = inttoptr i64 %2817 to double*
  store double %2822, double* %2823
  store %struct.Memory* %loadMem_400912, %struct.Memory** %MEMORY
  %loadMem_400917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2827, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2828 to %"class.std::bitset"*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2830 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2829, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2830 to %union.vec128_t*
  %2831 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2832 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2833 = load i64, i64* %PC.i19
  %2834 = add i64 %2833, 3
  store i64 %2834, i64* %PC.i19
  %2835 = bitcast i8* %2832 to <2 x i32>*
  %2836 = load <2 x i32>, <2 x i32>* %2835, align 1
  %2837 = getelementptr inbounds i8, i8* %2832, i64 8
  %2838 = bitcast i8* %2837 to <2 x i32>*
  %2839 = load <2 x i32>, <2 x i32>* %2838, align 1
  %2840 = extractelement <2 x i32> %2836, i32 0
  %2841 = bitcast i8* %2831 to i32*
  store i32 %2840, i32* %2841, align 1
  %2842 = extractelement <2 x i32> %2836, i32 1
  %2843 = getelementptr inbounds i8, i8* %2831, i64 4
  %2844 = bitcast i8* %2843 to i32*
  store i32 %2842, i32* %2844, align 1
  %2845 = extractelement <2 x i32> %2839, i32 0
  %2846 = getelementptr inbounds i8, i8* %2831, i64 8
  %2847 = bitcast i8* %2846 to i32*
  store i32 %2845, i32* %2847, align 1
  %2848 = extractelement <2 x i32> %2839, i32 1
  %2849 = getelementptr inbounds i8, i8* %2831, i64 12
  %2850 = bitcast i8* %2849 to i32*
  store i32 %2848, i32* %2850, align 1
  store %struct.Memory* %loadMem_400917, %struct.Memory** %MEMORY
  %loadMem_40091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 15
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2858 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2857, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2858 to %"class.std::bitset"*
  %2859 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2860 = load i64, i64* %RBP.i18
  %2861 = sub i64 %2860, 112
  %2862 = load i64, i64* %PC.i17
  %2863 = add i64 %2862, 5
  store i64 %2863, i64* %PC.i17
  %2864 = inttoptr i64 %2861 to double*
  %2865 = load double, double* %2864
  %2866 = bitcast i8* %2859 to double*
  store double %2865, double* %2866, align 1
  %2867 = getelementptr inbounds i8, i8* %2859, i64 8
  %2868 = bitcast i8* %2867 to double*
  store double 0.000000e+00, double* %2868, align 1
  store %struct.Memory* %loadMem_40091a, %struct.Memory** %MEMORY
  %loadMem_40091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 15
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %2874 to i64*
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2876 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2875, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2876 to %"class.std::bitset"*
  %2877 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2878 = load i64, i64* %RBP.i16
  %2879 = sub i64 %2878, 112
  %2880 = load i64, i64* %PC.i15
  %2881 = add i64 %2880, 5
  store i64 %2881, i64* %PC.i15
  %2882 = inttoptr i64 %2879 to double*
  %2883 = load double, double* %2882
  %2884 = bitcast i8* %2877 to double*
  store double %2883, double* %2884, align 1
  %2885 = getelementptr inbounds i8, i8* %2877, i64 8
  %2886 = bitcast i8* %2885 to double*
  store double 0.000000e+00, double* %2886, align 1
  store %struct.Memory* %loadMem_40091f, %struct.Memory** %MEMORY
  %loadMem_400924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 1
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %2893 = bitcast %union.anon* %2892 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2893, i32 0, i32 0
  %2894 = load i64, i64* %PC.i14
  %2895 = add i64 %2894, 2
  store i64 %2895, i64* %PC.i14
  store i8 3, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400924, %struct.Memory** %MEMORY
  %loadMem1_400926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %PC.i13
  %2900 = add i64 %2899, -1286
  %2901 = load i64, i64* %PC.i13
  %2902 = add i64 %2901, 5
  %2903 = load i64, i64* %PC.i13
  %2904 = add i64 %2903, 5
  store i64 %2904, i64* %PC.i13
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2906 = load i64, i64* %2905, align 8
  %2907 = add i64 %2906, -8
  %2908 = inttoptr i64 %2907 to i64*
  store i64 %2902, i64* %2908
  store i64 %2907, i64* %2905, align 8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2900, i64* %2909, align 8
  store %struct.Memory* %loadMem1_400926, %struct.Memory** %MEMORY
  %loadMem2_400926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400926 = load i64, i64* %3
  %2910 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400926)
  store %struct.Memory* %2910, %struct.Memory** %MEMORY
  %loadMem_40092b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 5
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %2916 to i32*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 5
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RCX.i
  %2921 = load i32, i32* %ECX.i9
  %2922 = zext i32 %2921 to i64
  %2923 = load i64, i64* %PC.i8
  %2924 = add i64 %2923, 2
  store i64 %2924, i64* %PC.i8
  %2925 = xor i64 %2922, %2920
  %2926 = trunc i64 %2925 to i32
  %2927 = and i64 %2925, 4294967295
  store i64 %2927, i64* %RCX.i, align 8
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2928, align 1
  %2929 = and i32 %2926, 255
  %2930 = call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2933, i8* %2934, align 1
  %2935 = icmp eq i32 %2926, 0
  %2936 = zext i1 %2935 to i8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2936, i8* %2937, align 1
  %2938 = lshr i32 %2926, 31
  %2939 = trunc i32 %2938 to i8
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2939, i8* %2940, align 1
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2941, align 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2942, align 1
  store %struct.Memory* %loadMem_40092b, %struct.Memory** %MEMORY
  %loadMem_40092d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 1
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2948 to i32*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %RBP.i7
  %2953 = sub i64 %2952, 116
  %2954 = load i32, i32* %EAX.i
  %2955 = zext i32 %2954 to i64
  %2956 = load i64, i64* %PC.i6
  %2957 = add i64 %2956, 3
  store i64 %2957, i64* %PC.i6
  %2958 = inttoptr i64 %2953 to i32*
  store i32 %2954, i32* %2958
  store %struct.Memory* %loadMem_40092d, %struct.Memory** %MEMORY
  %loadMem_400930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 33
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 5
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2964 to i32*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 1
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2967 to i64*
  %2968 = load i32, i32* %ECX.i
  %2969 = zext i32 %2968 to i64
  %2970 = load i64, i64* %PC.i5
  %2971 = add i64 %2970, 2
  store i64 %2971, i64* %PC.i5
  %2972 = and i64 %2969, 4294967295
  store i64 %2972, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400930, %struct.Memory** %MEMORY
  %loadMem_400932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 13
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RSP.i
  %2980 = load i64, i64* %PC.i4
  %2981 = add i64 %2980, 7
  store i64 %2981, i64* %PC.i4
  %2982 = add i64 128, %2979
  store i64 %2982, i64* %RSP.i, align 8
  %2983 = icmp ult i64 %2982, %2979
  %2984 = icmp ult i64 %2982, 128
  %2985 = or i1 %2983, %2984
  %2986 = zext i1 %2985 to i8
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2986, i8* %2987, align 1
  %2988 = trunc i64 %2982 to i32
  %2989 = and i32 %2988, 255
  %2990 = call i32 @llvm.ctpop.i32(i32 %2989)
  %2991 = trunc i32 %2990 to i8
  %2992 = and i8 %2991, 1
  %2993 = xor i8 %2992, 1
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2993, i8* %2994, align 1
  %2995 = xor i64 128, %2979
  %2996 = xor i64 %2995, %2982
  %2997 = lshr i64 %2996, 4
  %2998 = trunc i64 %2997 to i8
  %2999 = and i8 %2998, 1
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2999, i8* %3000, align 1
  %3001 = icmp eq i64 %2982, 0
  %3002 = zext i1 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3002, i8* %3003, align 1
  %3004 = lshr i64 %2982, 63
  %3005 = trunc i64 %3004 to i8
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3005, i8* %3006, align 1
  %3007 = lshr i64 %2979, 63
  %3008 = xor i64 %3004, %3007
  %3009 = add i64 %3008, %3004
  %3010 = icmp eq i64 %3009, 2
  %3011 = zext i1 %3010 to i8
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3011, i8* %3012, align 1
  store %struct.Memory* %loadMem_400932, %struct.Memory** %MEMORY
  %loadMem_400939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 15
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %PC.i2
  %3020 = add i64 %3019, 1
  store i64 %3020, i64* %PC.i2
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3022 = load i64, i64* %3021, align 8
  %3023 = add i64 %3022, 8
  %3024 = inttoptr i64 %3022 to i64*
  %3025 = load i64, i64* %3024
  store i64 %3025, i64* %RBP.i3, align 8
  store i64 %3023, i64* %3021, align 8
  store %struct.Memory* %loadMem_400939, %struct.Memory** %MEMORY
  %loadMem_40093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %PC.i1
  %3030 = add i64 %3029, 1
  store i64 %3030, i64* %PC.i1
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3033 = load i64, i64* %3032, align 8
  %3034 = inttoptr i64 %3033 to i64*
  %3035 = load i64, i64* %3034
  store i64 %3035, i64* %3031, align 8
  %3036 = add i64 %3033, 8
  store i64 %3036, i64* %3032, align 8
  store %struct.Memory* %loadMem_40093a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40093a
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__0x400a38___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a38_type* @G__0x400a38 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400a00___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a00_type* @G__0x400a00 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400a3a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a3a_type* @G__0x400a3a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x45f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1127
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

define %struct.Memory* @routine_movsd_0x45f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1127
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
  store i64 15625, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm4__0x6012d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 512000000, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__0x601260(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
block_400488:
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
block_400488:
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
block_400488:
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x601128(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601128_type* @G_0x601128 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601288___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__0x601280(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601280_type* @G_0x601280 to double*)
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

define %struct.Memory* @routine_movq__0x400a6a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a6a_type* @G__0x400a6a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__0x8000000000000000___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x2710__MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %23, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601048___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__xmm1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to i64*
  %15 = load i64, i64* %14, align 1
  store i64 %15, i64* %RCX, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rdi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RCX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %17, align 1
  %18 = trunc i64 %16 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %16, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %16, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  store i64 %12, i64* %15, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to i64*
  store i64 0, i64* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x601048(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601058___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__0x601058(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = bitcast i8* %8 to double*
  %12 = load double, double* %11, align 1
  store double %12, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601260___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6012a0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdq_MINUS0x50__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sitofp i64 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
block_400488:
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 1, i64* %13
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_400765(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cvtsi2sdq_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sitofp i64 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x601098___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM6 to i8*
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

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM6 to i8*
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

define %struct.Memory* @routine_addsd_0x601090___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm6___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_addsd_0x601088___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm5___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_addsd_0x601080___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_addsd_0x601078___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601070___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
block_400488:
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

define %struct.Memory* @routine_addsd_0x601288___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4006a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x400a8e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a8e_type* @G__0x400a8e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x27e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 646
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

define %struct.Memory* @routine_movsd_0x601260___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x6012a0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
block_400488:
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
block_400488:
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
block_400488:
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
block_400488:
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

define %struct.Memory* @routine_addsd_0x601080___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_addsd_0x601078___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_addsd_0x601070___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
block_400488:
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

define %struct.Memory* @routine_movsd__xmm2__0x601298(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  store double %12, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_movsd_0x601298___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_addsd_0x601288___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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

define %struct.Memory* @routine_movsd_0x601120___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %11 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x10__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM4 to i8*
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

define %struct.Memory* @routine_addsd__xmm4___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x601120___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %18 = fdiv double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601060___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %11 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_addsd_0x601058___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601048___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601038___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601030___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601030_type* @G_0x601030 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__0x601258(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
  %11 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_0x601258___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
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
block_400488:
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
block_400488:
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
block_400488:
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
  store i8 3, i8* %AL, align 1
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

define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
