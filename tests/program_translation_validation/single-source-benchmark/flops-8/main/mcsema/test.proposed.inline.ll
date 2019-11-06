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
%G__0x400a48_type = type <{ [8 x i8] }>
%G__0x400a80_type = type <{ [8 x i8] }>
%G__0x400a82_type = type <{ [8 x i8] }>
%G__0x400ab2_type = type <{ [8 x i8] }>
%G__0x400ad6_type = type <{ [8 x i8] }>
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
@G__0x400a48 = global %G__0x400a48_type zeroinitializer
@G__0x400a80 = global %G__0x400a80_type zeroinitializer
@G__0x400a82 = global %G__0x400a82_type zeroinitializer
@G__0x400ab2 = global %G__0x400ab2_type zeroinitializer
@G__0x400ad6 = global %G__0x400ad6_type zeroinitializer

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
  %PC.i338 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i339 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i339
  %36 = load i64, i64* %PC.i338
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i338
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i339, align 8
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
  %PC.i348 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i349 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i348
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i348
  store i64 ptrtoint (%G__0x400a80_type* @G__0x400a80 to i64), i64* %RDI.i349, align 8
  store %struct.Memory* %loadMem_40052b, %struct.Memory** %MEMORY
  %loadMem_400535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i393
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC.i392
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC.i392
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  store %struct.Memory* %loadMem_400535, %struct.Memory** %MEMORY
  %loadMem_40053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %92 = bitcast %union.anon* %91 to %struct.anon.2*
  %AL.i403 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %92, i32 0, i32 0
  %93 = load i64, i64* %PC.i402
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC.i402
  store i8 0, i8* %AL.i403, align 1
  store %struct.Memory* %loadMem_40053c, %struct.Memory** %MEMORY
  %loadMem1_40053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %PC.i404
  %99 = add i64 %98, -286
  %100 = load i64, i64* %PC.i404
  %101 = add i64 %100, 5
  %102 = load i64, i64* %PC.i404
  %103 = add i64 %102, 5
  store i64 %103, i64* %PC.i404
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
  %PC.i400 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 11
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RDI.i401 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %PC.i400
  %117 = add i64 %116, 10
  store i64 %117, i64* %PC.i400
  store i64 ptrtoint (%G__0x400a48_type* @G__0x400a48 to i64), i64* %RDI.i401, align 8
  store %struct.Memory* %loadMem_400543, %struct.Memory** %MEMORY
  %loadMem_40054d = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %120 to i64*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %EAX.i398 = bitcast %union.anon* %123 to i32*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 15
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %RBP.i399
  %128 = sub i64 %127, 92
  %129 = load i32, i32* %EAX.i398
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %PC.i397
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC.i397
  %133 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %133
  store %struct.Memory* %loadMem_40054d, %struct.Memory** %MEMORY
  %loadMem_400550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %140 = bitcast %union.anon* %139 to %struct.anon.2*
  %AL.i396 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %140, i32 0, i32 0
  %141 = load i64, i64* %PC.i395
  %142 = add i64 %141, 2
  store i64 %142, i64* %PC.i395
  store i8 0, i8* %AL.i396, align 1
  store %struct.Memory* %loadMem_400550, %struct.Memory** %MEMORY
  %loadMem1_400552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i394
  %147 = add i64 %146, -306
  %148 = load i64, i64* %PC.i394
  %149 = add i64 %148, 5
  %150 = load i64, i64* %PC.i394
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC.i394
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
  %PC.i390 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RDI.i391 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %PC.i390
  %165 = add i64 %164, 10
  store i64 %165, i64* %PC.i390
  store i64 ptrtoint (%G__0x400a82_type* @G__0x400a82 to i64), i64* %RDI.i391, align 8
  store %struct.Memory* %loadMem_400557, %struct.Memory** %MEMORY
  %loadMem_400561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %169, i64 0, i64 0
  %YMM0.i389 = bitcast %union.VectorReg* %170 to %"class.std::bitset"*
  %171 = bitcast %"class.std::bitset"* %YMM0.i389 to i8*
  %172 = load i64, i64* %PC.i388
  %173 = add i64 %172, 1191
  %174 = load i64, i64* %PC.i388
  %175 = add i64 %174, 8
  store i64 %175, i64* %PC.i388
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
  %PC.i386 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %184, i64 0, i64 1
  %YMM1.i387 = bitcast %union.VectorReg* %185 to %"class.std::bitset"*
  %186 = bitcast %"class.std::bitset"* %YMM1.i387 to i8*
  %187 = load i64, i64* %PC.i386
  %188 = add i64 %187, 1191
  %189 = load i64, i64* %PC.i386
  %190 = add i64 %189, 8
  store i64 %190, i64* %PC.i386
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
  %PC.i384 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %199, i64 0, i64 2
  %YMM2.i385 = bitcast %union.VectorReg* %200 to %"class.std::bitset"*
  %201 = bitcast %"class.std::bitset"* %YMM2.i385 to i8*
  %202 = load i64, i64* %PC.i384
  %203 = add i64 %202, 1191
  %204 = load i64, i64* %PC.i384
  %205 = add i64 %204, 8
  store i64 %205, i64* %PC.i384
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
  %PC.i382 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %214, i64 0, i64 3
  %YMM3.i383 = bitcast %union.VectorReg* %215 to %"class.std::bitset"*
  %216 = bitcast %"class.std::bitset"* %YMM3.i383 to i8*
  %217 = load i64, i64* %PC.i382
  %218 = add i64 %217, 1191
  %219 = load i64, i64* %PC.i382
  %220 = add i64 %219, 8
  store i64 %220, i64* %PC.i382
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
  %PC.i380 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %229, i64 0, i64 4
  %YMM4.i381 = bitcast %union.VectorReg* %230 to %"class.std::bitset"*
  %231 = bitcast %"class.std::bitset"* %YMM4.i381 to i8*
  %232 = load i64, i64* %PC.i380
  %233 = add i64 %232, 1191
  %234 = load i64, i64* %PC.i380
  %235 = add i64 %234, 8
  store i64 %235, i64* %PC.i380
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
  %PC.i378 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %244, i64 0, i64 5
  %YMM5.i379 = bitcast %union.VectorReg* %245 to %"class.std::bitset"*
  %246 = bitcast %"class.std::bitset"* %YMM5.i379 to i8*
  %247 = load i64, i64* %PC.i378
  %248 = add i64 %247, 1191
  %249 = load i64, i64* %PC.i378
  %250 = add i64 %249, 8
  store i64 %250, i64* %PC.i378
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
  %PC.i376 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 15
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %261 to i64*
  %262 = load i64, i64* %RBP.i377
  %263 = sub i64 %262, 56
  %264 = load i64, i64* %PC.i376
  %265 = add i64 %264, 8
  store i64 %265, i64* %PC.i376
  %266 = inttoptr i64 %263 to i64*
  store i64 15625, i64* %266
  store %struct.Memory* %loadMem_400591, %struct.Memory** %MEMORY
  %loadMem_400599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 4
  %XMM4.i375 = bitcast %union.VectorReg* %271 to %union.vec128_t*
  %272 = bitcast %union.vec128_t* %XMM4.i375 to i8*
  %273 = load i64, i64* %PC.i374
  %274 = add i64 %273, 9
  store i64 %274, i64* %PC.i374
  %275 = bitcast i8* %272 to double*
  %276 = load double, double* %275, align 1
  store double %276, double* bitcast (%G_0x6012d0_type* @G_0x6012d0 to double*)
  store %struct.Memory* %loadMem_400599, %struct.Memory** %MEMORY
  %loadMem_4005a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 15
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %RBP.i373
  %284 = sub i64 %283, 64
  %285 = load i64, i64* %PC.i372
  %286 = add i64 %285, 8
  store i64 %286, i64* %PC.i372
  %287 = inttoptr i64 %284 to i64*
  store i64 512000000, i64* %287
  store %struct.Memory* %loadMem_4005a2, %struct.Memory** %MEMORY
  %loadMem_4005aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %291, i64 0, i64 5
  %XMM5.i371 = bitcast %union.VectorReg* %292 to %union.vec128_t*
  %293 = bitcast %union.vec128_t* %XMM5.i371 to i8*
  %294 = load i64, i64* %PC.i370
  %295 = add i64 %294, 9
  store i64 %295, i64* %PC.i370
  %296 = bitcast i8* %293 to double*
  %297 = load double, double* %296, align 1
  store double %297, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  store %struct.Memory* %loadMem_4005aa, %struct.Memory** %MEMORY
  %loadMem_4005b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %302 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %301, i64 0, i64 4
  %XMM4.i369 = bitcast %union.VectorReg* %302 to %union.vec128_t*
  %303 = bitcast %union.vec128_t* %XMM4.i369 to i8*
  %304 = load i64, i64* %PC.i368
  %305 = add i64 %304, 9
  store i64 %305, i64* %PC.i368
  %306 = bitcast i8* %303 to double*
  %307 = load double, double* %306, align 1
  store double %307, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  store %struct.Memory* %loadMem_4005b3, %struct.Memory** %MEMORY
  %loadMem_4005bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %311, i64 0, i64 3
  %XMM3.i367 = bitcast %union.VectorReg* %312 to %union.vec128_t*
  %313 = bitcast %union.vec128_t* %XMM3.i367 to i8*
  %314 = load i64, i64* %PC.i366
  %315 = add i64 %314, 9
  store i64 %315, i64* %PC.i366
  %316 = bitcast i8* %313 to double*
  %317 = load double, double* %316, align 1
  store double %317, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  store %struct.Memory* %loadMem_4005bc, %struct.Memory** %MEMORY
  %loadMem_4005c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %321, i64 0, i64 2
  %XMM2.i365 = bitcast %union.VectorReg* %322 to %union.vec128_t*
  %323 = bitcast %union.vec128_t* %XMM2.i365 to i8*
  %324 = load i64, i64* %PC.i364
  %325 = add i64 %324, 9
  store i64 %325, i64* %PC.i364
  %326 = bitcast i8* %323 to double*
  %327 = load double, double* %326, align 1
  store double %327, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  store %struct.Memory* %loadMem_4005c5, %struct.Memory** %MEMORY
  %loadMem_4005ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %331, i64 0, i64 1
  %XMM1.i363 = bitcast %union.VectorReg* %332 to %union.vec128_t*
  %333 = bitcast %union.vec128_t* %XMM1.i363 to i8*
  %334 = load i64, i64* %PC.i362
  %335 = add i64 %334, 9
  store i64 %335, i64* %PC.i362
  %336 = bitcast i8* %333 to double*
  %337 = load double, double* %336, align 1
  store double %337, double* bitcast (%G_0x601278_type* @G_0x601278 to double*)
  store %struct.Memory* %loadMem_4005ce, %struct.Memory** %MEMORY
  %loadMem_4005d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 33
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %341, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %342 to %union.vec128_t*
  %343 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %344 = load i64, i64* %PC.i360
  %345 = add i64 %344, 9
  store i64 %345, i64* %PC.i360
  %346 = bitcast i8* %343 to double*
  %347 = load double, double* %346, align 1
  store double %347, double* bitcast (%G_0x601128_type* @G_0x601128 to double*)
  store %struct.Memory* %loadMem_4005d7, %struct.Memory** %MEMORY
  %loadMem_4005e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 33
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %350 to i64*
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %351, i64 0, i64 0
  %YMM0.i359 = bitcast %union.VectorReg* %352 to %"class.std::bitset"*
  %353 = bitcast %"class.std::bitset"* %YMM0.i359 to i8*
  %354 = load i64, i64* %PC.i358
  %355 = add i64 %354, 9
  store i64 %355, i64* %PC.i358
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
  %PC.i356 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %363, i64 0, i64 0
  %XMM0.i357 = bitcast %union.VectorReg* %364 to %union.vec128_t*
  %365 = bitcast %union.vec128_t* %XMM0.i357 to i8*
  %366 = load i64, i64* %PC.i356
  %367 = add i64 %366, 9
  store i64 %367, i64* %PC.i356
  %368 = bitcast i8* %365 to double*
  %369 = load double, double* %368, align 1
  store double %369, double* bitcast (%G_0x601280_type* @G_0x601280 to double*)
  store %struct.Memory* %loadMem_4005e9, %struct.Memory** %MEMORY
  %loadMem_4005f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %375 to i32*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RBP.i355
  %380 = sub i64 %379, 96
  %381 = load i32, i32* %EAX.i354
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC.i353
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC.i353
  %385 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %385
  store %struct.Memory* %loadMem_4005f2, %struct.Memory** %MEMORY
  %loadMem_4005f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %392 = bitcast %union.anon* %391 to %struct.anon.2*
  %AL.i352 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %392, i32 0, i32 0
  %393 = load i64, i64* %PC.i351
  %394 = add i64 %393, 2
  store i64 %394, i64* %PC.i351
  store i8 0, i8* %AL.i352, align 1
  store %struct.Memory* %loadMem_4005f5, %struct.Memory** %MEMORY
  %loadMem1_4005f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %PC.i350
  %399 = add i64 %398, -471
  %400 = load i64, i64* %PC.i350
  %401 = add i64 %400, 5
  %402 = load i64, i64* %PC.i350
  %403 = add i64 %402, 5
  store i64 %403, i64* %PC.i350
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
  %PC.i346 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 11
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RDI.i347 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %PC.i346
  %417 = add i64 %416, 10
  store i64 %417, i64* %PC.i346
  store i64 ptrtoint (%G__0x400ab2_type* @G__0x400ab2 to i64), i64* %RDI.i347, align 8
  store %struct.Memory* %loadMem_4005fc, %struct.Memory** %MEMORY
  %loadMem_400606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %423 to i32*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %426 to i64*
  %427 = load i64, i64* %RBP.i345
  %428 = sub i64 %427, 100
  %429 = load i32, i32* %EAX.i344
  %430 = zext i32 %429 to i64
  %431 = load i64, i64* %PC.i343
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC.i343
  %433 = inttoptr i64 %428 to i32*
  store i32 %429, i32* %433
  store %struct.Memory* %loadMem_400606, %struct.Memory** %MEMORY
  %loadMem_400609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %440 = bitcast %union.anon* %439 to %struct.anon.2*
  %AL.i342 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %440, i32 0, i32 0
  %441 = load i64, i64* %PC.i341
  %442 = add i64 %441, 2
  store i64 %442, i64* %PC.i341
  store i8 0, i8* %AL.i342, align 1
  store %struct.Memory* %loadMem_400609, %struct.Memory** %MEMORY
  %loadMem1_40060b = load %struct.Memory*, %struct.Memory** %MEMORY
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 33
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %PC.i340
  %447 = add i64 %446, -491
  %448 = load i64, i64* %PC.i340
  %449 = add i64 %448, 5
  %450 = load i64, i64* %PC.i340
  %451 = add i64 %450, 5
  store i64 %451, i64* %PC.i340
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
  %PC.i335 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %461, i64 0, i64 0
  %YMM0.i336 = bitcast %union.VectorReg* %462 to %"class.std::bitset"*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %464 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %463, i64 0, i64 0
  %XMM0.i337 = bitcast %union.VectorReg* %464 to %union.vec128_t*
  %465 = bitcast %"class.std::bitset"* %YMM0.i336 to i8*
  %466 = bitcast %"class.std::bitset"* %YMM0.i336 to i8*
  %467 = bitcast %union.vec128_t* %XMM0.i337 to i8*
  %468 = load i64, i64* %PC.i335
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC.i335
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
  %PC.i332 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 11
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RDI.i333 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 15
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %RBP.i334
  %505 = sub i64 %504, 56
  %506 = load i64, i64* %PC.i332
  %507 = add i64 %506, 8
  store i64 %507, i64* %PC.i332
  %508 = inttoptr i64 %505 to i64*
  %509 = load i64, i64* %508
  %510 = sext i64 %509 to i128
  %511 = and i128 %510, -18446744073709551616
  %512 = zext i64 %509 to i128
  %513 = or i128 %511, %512
  %514 = mul i128 %513, 10000
  %515 = trunc i128 %514 to i64
  store i64 %515, i64* %RDI.i333, align 8
  %516 = sext i64 %515 to i128
  %517 = icmp ne i128 %516, %514
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %518, i8* %519, align 1
  %520 = trunc i128 %514 to i32
  %521 = and i32 %520, 255
  %522 = call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %525, i8* %526, align 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %527, align 1
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %528, align 1
  %529 = lshr i64 %515, 63
  %530 = trunc i64 %529 to i8
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %530, i8* %531, align 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %518, i8* %532, align 1
  store %struct.Memory* %loadMem_400613, %struct.Memory** %MEMORY
  %loadMem_40061b = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 11
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RDI.i330 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 15
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RBP.i331
  %543 = sub i64 %542, 80
  %544 = load i64, i64* %RDI.i330
  %545 = load i64, i64* %PC.i329
  %546 = add i64 %545, 4
  store i64 %546, i64* %PC.i329
  %547 = inttoptr i64 %543 to i64*
  store i64 %544, i64* %547
  store %struct.Memory* %loadMem_40061b, %struct.Memory** %MEMORY
  %loadMem_40061f = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %551, i64 0, i64 1
  %YMM1.i328 = bitcast %union.VectorReg* %552 to %"class.std::bitset"*
  %553 = bitcast %"class.std::bitset"* %YMM1.i328 to i8*
  %554 = load i64, i64* %PC.i327
  %555 = add i64 %554, 9
  store i64 %555, i64* %PC.i327
  %556 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %557 = bitcast i8* %553 to double*
  store double %556, double* %557, align 1
  %558 = getelementptr inbounds i8, i8* %553, i64 8
  %559 = bitcast i8* %558 to double*
  store double 0.000000e+00, double* %559, align 1
  store %struct.Memory* %loadMem_40061f, %struct.Memory** %MEMORY
  %loadMem_400628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %564 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %563, i64 0, i64 2
  %YMM2.i326 = bitcast %union.VectorReg* %564 to %"class.std::bitset"*
  %565 = bitcast %"class.std::bitset"* %YMM2.i326 to i8*
  %566 = load i64, i64* %PC.i325
  %567 = add i64 %566, 9
  store i64 %567, i64* %PC.i325
  %568 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %569 = bitcast i8* %565 to double*
  store double %568, double* %569, align 1
  %570 = getelementptr inbounds i8, i8* %565, i64 8
  %571 = bitcast i8* %570 to double*
  store double 0.000000e+00, double* %571, align 1
  store %struct.Memory* %loadMem_400628, %struct.Memory** %MEMORY
  %loadMem_400631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 15
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %578, i64 0, i64 3
  %YMM3.i324 = bitcast %union.VectorReg* %579 to %"class.std::bitset"*
  %580 = bitcast %"class.std::bitset"* %YMM3.i324 to i8*
  %581 = load i64, i64* %RBP.i323
  %582 = sub i64 %581, 80
  %583 = load i64, i64* %PC.i322
  %584 = add i64 %583, 6
  store i64 %584, i64* %PC.i322
  %585 = inttoptr i64 %582 to i64*
  %586 = load i64, i64* %585
  %587 = sitofp i64 %586 to double
  %588 = bitcast i8* %580 to double*
  store double %587, double* %588, align 1
  store %struct.Memory* %loadMem_400631, %struct.Memory** %MEMORY
  %loadMem_400637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %592, i64 0, i64 2
  %YMM2.i320 = bitcast %union.VectorReg* %593 to %"class.std::bitset"*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %595 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %594, i64 0, i64 3
  %XMM3.i321 = bitcast %union.VectorReg* %595 to %union.vec128_t*
  %596 = bitcast %"class.std::bitset"* %YMM2.i320 to i8*
  %597 = bitcast %"class.std::bitset"* %YMM2.i320 to i8*
  %598 = bitcast %union.vec128_t* %XMM3.i321 to i8*
  %599 = load i64, i64* %PC.i319
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC.i319
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
  store %struct.Memory* %loadMem_400637, %struct.Memory** %MEMORY
  %loadMem_40063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %615, i64 0, i64 1
  %YMM1.i317 = bitcast %union.VectorReg* %616 to %"class.std::bitset"*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %617, i64 0, i64 2
  %XMM2.i318 = bitcast %union.VectorReg* %618 to %union.vec128_t*
  %619 = bitcast %"class.std::bitset"* %YMM1.i317 to i8*
  %620 = bitcast %"class.std::bitset"* %YMM1.i317 to i8*
  %621 = bitcast %union.vec128_t* %XMM2.i318 to i8*
  %622 = load i64, i64* %PC.i316
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC.i316
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
  store %struct.Memory* %loadMem_40063b, %struct.Memory** %MEMORY
  %loadMem_40063f = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 15
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %641, i64 0, i64 1
  %XMM1.i315 = bitcast %union.VectorReg* %642 to %union.vec128_t*
  %643 = load i64, i64* %RBP.i314
  %644 = sub i64 %643, 48
  %645 = bitcast %union.vec128_t* %XMM1.i315 to i8*
  %646 = load i64, i64* %PC.i313
  %647 = add i64 %646, 5
  store i64 %647, i64* %PC.i313
  %648 = bitcast i8* %645 to double*
  %649 = load double, double* %648, align 1
  %650 = inttoptr i64 %644 to double*
  store double %649, double* %650
  store %struct.Memory* %loadMem_40063f, %struct.Memory** %MEMORY
  %loadMem_400644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 15
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %657, i64 0, i64 0
  %XMM0.i312 = bitcast %union.VectorReg* %658 to %union.vec128_t*
  %659 = load i64, i64* %RBP.i311
  %660 = sub i64 %659, 16
  %661 = bitcast %union.vec128_t* %XMM0.i312 to i8*
  %662 = load i64, i64* %PC.i310
  %663 = add i64 %662, 5
  store i64 %663, i64* %PC.i310
  %664 = bitcast i8* %661 to double*
  %665 = load double, double* %664, align 1
  %666 = inttoptr i64 %660 to double*
  store double %665, double* %666
  store %struct.Memory* %loadMem_400644, %struct.Memory** %MEMORY
  %loadMem_400649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 15
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %673, i64 0, i64 0
  %XMM0.i309 = bitcast %union.VectorReg* %674 to %union.vec128_t*
  %675 = load i64, i64* %RBP.i308
  %676 = sub i64 %675, 32
  %677 = bitcast %union.vec128_t* %XMM0.i309 to i8*
  %678 = load i64, i64* %PC.i307
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC.i307
  %680 = bitcast i8* %677 to double*
  %681 = load double, double* %680, align 1
  %682 = inttoptr i64 %676 to double*
  store double %681, double* %682
  store %struct.Memory* %loadMem_400649, %struct.Memory** %MEMORY
  %loadMem_40064e = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 15
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %RBP.i306
  %690 = sub i64 %689, 72
  %691 = load i64, i64* %PC.i305
  %692 = add i64 %691, 8
  store i64 %692, i64* %PC.i305
  %693 = inttoptr i64 %690 to i64*
  store i64 1, i64* %693
  store %struct.Memory* %loadMem_40064e, %struct.Memory** %MEMORY
  %loadMem_400656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 1
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %EAX.i303 = bitcast %union.anon* %699 to i32*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 15
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %702 to i64*
  %703 = load i64, i64* %RBP.i304
  %704 = sub i64 %703, 104
  %705 = load i32, i32* %EAX.i303
  %706 = zext i32 %705 to i64
  %707 = load i64, i64* %PC.i302
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC.i302
  %709 = inttoptr i64 %704 to i32*
  store i32 %705, i32* %709
  store %struct.Memory* %loadMem_400656, %struct.Memory** %MEMORY
  br label %block_.L_400659

block_.L_400659:                                  ; preds = %block_40066e, %entry
  %loadMem_400659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 1
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i301
  %720 = sub i64 %719, 72
  %721 = load i64, i64* %PC.i299
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC.i299
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723
  store i64 %724, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_400659, %struct.Memory** %MEMORY
  %loadMem_40065d = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 5
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 15
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %733 to i64*
  %734 = load i64, i64* %RBP.i298
  %735 = sub i64 %734, 80
  %736 = load i64, i64* %PC.i296
  %737 = add i64 %736, 4
  store i64 %737, i64* %PC.i296
  %738 = inttoptr i64 %735 to i64*
  %739 = load i64, i64* %738
  store i64 %739, i64* %RCX.i297, align 8
  store %struct.Memory* %loadMem_40065d, %struct.Memory** %MEMORY
  %loadMem_400661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 5
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RCX.i295
  %747 = load i64, i64* %PC.i294
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC.i294
  %749 = sub i64 %746, 1
  store i64 %749, i64* %RCX.i295, align 8
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
  store %struct.Memory* %loadMem_400661, %struct.Memory** %MEMORY
  %loadMem_400665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 5
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RAX.i292
  %788 = load i64, i64* %RCX.i293
  %789 = load i64, i64* %PC.i291
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC.i291
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
  store %struct.Memory* %loadMem_400665, %struct.Memory** %MEMORY
  %loadMem_400668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %PC.i290
  %826 = add i64 %825, 298
  %827 = load i64, i64* %PC.i290
  %828 = add i64 %827, 6
  %829 = load i64, i64* %PC.i290
  %830 = add i64 %829, 6
  store i64 %830, i64* %PC.i290
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
  store %struct.Memory* %loadMem_400668, %struct.Memory** %MEMORY
  %loadBr_400668 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400668 = icmp eq i8 %loadBr_400668, 1
  br i1 %cmpBr_400668, label %block_.L_400792, label %block_40066e

block_40066e:                                     ; preds = %block_.L_400659
  %loadMem_40066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 33
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 15
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %853 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %852, i64 0, i64 0
  %YMM0.i289 = bitcast %union.VectorReg* %853 to %"class.std::bitset"*
  %854 = bitcast %"class.std::bitset"* %YMM0.i289 to i8*
  %855 = load i64, i64* %RBP.i288
  %856 = sub i64 %855, 72
  %857 = load i64, i64* %PC.i287
  %858 = add i64 %857, 6
  store i64 %858, i64* %PC.i287
  %859 = inttoptr i64 %856 to i64*
  %860 = load i64, i64* %859
  %861 = sitofp i64 %860 to double
  %862 = bitcast i8* %854 to double*
  store double %861, double* %862, align 1
  store %struct.Memory* %loadMem_40066e, %struct.Memory** %MEMORY
  %loadMem_400674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %870 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %869, i64 0, i64 0
  %YMM0.i286 = bitcast %union.VectorReg* %870 to %"class.std::bitset"*
  %871 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %872 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %873 = load i64, i64* %RBP.i285
  %874 = sub i64 %873, 48
  %875 = load i64, i64* %PC.i284
  %876 = add i64 %875, 5
  store i64 %876, i64* %PC.i284
  %877 = bitcast i8* %872 to double*
  %878 = load double, double* %877, align 1
  %879 = getelementptr inbounds i8, i8* %872, i64 8
  %880 = bitcast i8* %879 to i64*
  %881 = load i64, i64* %880, align 1
  %882 = inttoptr i64 %874 to double*
  %883 = load double, double* %882
  %884 = fmul double %878, %883
  %885 = bitcast i8* %871 to double*
  store double %884, double* %885, align 1
  %886 = getelementptr inbounds i8, i8* %871, i64 8
  %887 = bitcast i8* %886 to i64*
  store i64 %881, i64* %887, align 1
  store %struct.Memory* %loadMem_400674, %struct.Memory** %MEMORY
  %loadMem_400679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %895 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %894, i64 0, i64 0
  %XMM0.i283 = bitcast %union.VectorReg* %895 to %union.vec128_t*
  %896 = load i64, i64* %RBP.i282
  %897 = sub i64 %896, 24
  %898 = bitcast %union.vec128_t* %XMM0.i283 to i8*
  %899 = load i64, i64* %PC.i281
  %900 = add i64 %899, 5
  store i64 %900, i64* %PC.i281
  %901 = bitcast i8* %898 to double*
  %902 = load double, double* %901, align 1
  %903 = inttoptr i64 %897 to double*
  store double %902, double* %903
  store %struct.Memory* %loadMem_400679, %struct.Memory** %MEMORY
  %loadMem_40067e = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 15
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %910, i64 0, i64 0
  %YMM0.i280 = bitcast %union.VectorReg* %911 to %"class.std::bitset"*
  %912 = bitcast %"class.std::bitset"* %YMM0.i280 to i8*
  %913 = load i64, i64* %RBP.i279
  %914 = sub i64 %913, 24
  %915 = load i64, i64* %PC.i278
  %916 = add i64 %915, 5
  store i64 %916, i64* %PC.i278
  %917 = inttoptr i64 %914 to double*
  %918 = load double, double* %917
  %919 = bitcast i8* %912 to double*
  store double %918, double* %919, align 1
  %920 = getelementptr inbounds i8, i8* %912, i64 8
  %921 = bitcast i8* %920 to double*
  store double 0.000000e+00, double* %921, align 1
  store %struct.Memory* %loadMem_40067e, %struct.Memory** %MEMORY
  %loadMem_400683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 15
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %929 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %928, i64 0, i64 0
  %YMM0.i277 = bitcast %union.VectorReg* %929 to %"class.std::bitset"*
  %930 = bitcast %"class.std::bitset"* %YMM0.i277 to i8*
  %931 = bitcast %"class.std::bitset"* %YMM0.i277 to i8*
  %932 = load i64, i64* %RBP.i276
  %933 = sub i64 %932, 24
  %934 = load i64, i64* %PC.i275
  %935 = add i64 %934, 5
  store i64 %935, i64* %PC.i275
  %936 = bitcast i8* %931 to double*
  %937 = load double, double* %936, align 1
  %938 = getelementptr inbounds i8, i8* %931, i64 8
  %939 = bitcast i8* %938 to i64*
  %940 = load i64, i64* %939, align 1
  %941 = inttoptr i64 %933 to double*
  %942 = load double, double* %941
  %943 = fmul double %937, %942
  %944 = bitcast i8* %930 to double*
  store double %943, double* %944, align 1
  %945 = getelementptr inbounds i8, i8* %930, i64 8
  %946 = bitcast i8* %945 to i64*
  store i64 %940, i64* %946, align 1
  store %struct.Memory* %loadMem_400683, %struct.Memory** %MEMORY
  %loadMem_400688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 15
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %953, i64 0, i64 0
  %XMM0.i274 = bitcast %union.VectorReg* %954 to %union.vec128_t*
  %955 = load i64, i64* %RBP.i273
  %956 = sub i64 %955, 40
  %957 = bitcast %union.vec128_t* %XMM0.i274 to i8*
  %958 = load i64, i64* %PC.i272
  %959 = add i64 %958, 5
  store i64 %959, i64* %PC.i272
  %960 = bitcast i8* %957 to double*
  %961 = load double, double* %960, align 1
  %962 = inttoptr i64 %956 to double*
  store double %961, double* %962
  store %struct.Memory* %loadMem_400688, %struct.Memory** %MEMORY
  %loadMem_40068d = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %969, i64 0, i64 0
  %YMM0.i271 = bitcast %union.VectorReg* %970 to %"class.std::bitset"*
  %971 = bitcast %"class.std::bitset"* %YMM0.i271 to i8*
  %972 = load i64, i64* %RBP.i270
  %973 = sub i64 %972, 40
  %974 = load i64, i64* %PC.i269
  %975 = add i64 %974, 5
  store i64 %975, i64* %PC.i269
  %976 = inttoptr i64 %973 to double*
  %977 = load double, double* %976
  %978 = bitcast i8* %971 to double*
  store double %977, double* %978, align 1
  %979 = getelementptr inbounds i8, i8* %971, i64 8
  %980 = bitcast i8* %979 to double*
  store double 0.000000e+00, double* %980, align 1
  store %struct.Memory* %loadMem_40068d, %struct.Memory** %MEMORY
  %loadMem_400692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 15
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %988 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %987, i64 0, i64 1
  %YMM1.i268 = bitcast %union.VectorReg* %988 to %"class.std::bitset"*
  %989 = bitcast %"class.std::bitset"* %YMM1.i268 to i8*
  %990 = load i64, i64* %RBP.i267
  %991 = sub i64 %990, 40
  %992 = load i64, i64* %PC.i266
  %993 = add i64 %992, 5
  store i64 %993, i64* %PC.i266
  %994 = inttoptr i64 %991 to double*
  %995 = load double, double* %994
  %996 = bitcast i8* %989 to double*
  store double %995, double* %996, align 1
  %997 = getelementptr inbounds i8, i8* %989, i64 8
  %998 = bitcast i8* %997 to double*
  store double 0.000000e+00, double* %998, align 1
  store %struct.Memory* %loadMem_400692, %struct.Memory** %MEMORY
  %loadMem_400697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 15
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1006 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1005, i64 0, i64 2
  %YMM2.i265 = bitcast %union.VectorReg* %1006 to %"class.std::bitset"*
  %1007 = bitcast %"class.std::bitset"* %YMM2.i265 to i8*
  %1008 = load i64, i64* %RBP.i264
  %1009 = sub i64 %1008, 40
  %1010 = load i64, i64* %PC.i263
  %1011 = add i64 %1010, 5
  store i64 %1011, i64* %PC.i263
  %1012 = inttoptr i64 %1009 to double*
  %1013 = load double, double* %1012
  %1014 = bitcast i8* %1007 to double*
  store double %1013, double* %1014, align 1
  %1015 = getelementptr inbounds i8, i8* %1007, i64 8
  %1016 = bitcast i8* %1015 to double*
  store double 0.000000e+00, double* %1016, align 1
  store %struct.Memory* %loadMem_400697, %struct.Memory** %MEMORY
  %loadMem_40069c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1023, i64 0, i64 3
  %YMM3.i262 = bitcast %union.VectorReg* %1024 to %"class.std::bitset"*
  %1025 = bitcast %"class.std::bitset"* %YMM3.i262 to i8*
  %1026 = load i64, i64* %RBP.i261
  %1027 = sub i64 %1026, 40
  %1028 = load i64, i64* %PC.i260
  %1029 = add i64 %1028, 5
  store i64 %1029, i64* %PC.i260
  %1030 = inttoptr i64 %1027 to double*
  %1031 = load double, double* %1030
  %1032 = bitcast i8* %1025 to double*
  store double %1031, double* %1032, align 1
  %1033 = getelementptr inbounds i8, i8* %1025, i64 8
  %1034 = bitcast i8* %1033 to double*
  store double 0.000000e+00, double* %1034, align 1
  store %struct.Memory* %loadMem_40069c, %struct.Memory** %MEMORY
  %loadMem_4006a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1041, i64 0, i64 4
  %YMM4.i259 = bitcast %union.VectorReg* %1042 to %"class.std::bitset"*
  %1043 = bitcast %"class.std::bitset"* %YMM4.i259 to i8*
  %1044 = load i64, i64* %RBP.i258
  %1045 = sub i64 %1044, 40
  %1046 = load i64, i64* %PC.i257
  %1047 = add i64 %1046, 5
  store i64 %1047, i64* %PC.i257
  %1048 = inttoptr i64 %1045 to double*
  %1049 = load double, double* %1048
  %1050 = bitcast i8* %1043 to double*
  store double %1049, double* %1050, align 1
  %1051 = getelementptr inbounds i8, i8* %1043, i64 8
  %1052 = bitcast i8* %1051 to double*
  store double 0.000000e+00, double* %1052, align 1
  store %struct.Memory* %loadMem_4006a1, %struct.Memory** %MEMORY
  %loadMem_4006a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1057 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1056, i64 0, i64 5
  %YMM5.i256 = bitcast %union.VectorReg* %1057 to %"class.std::bitset"*
  %1058 = bitcast %"class.std::bitset"* %YMM5.i256 to i8*
  %1059 = load i64, i64* %PC.i255
  %1060 = add i64 %1059, 9
  store i64 %1060, i64* %PC.i255
  %1061 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %1062 = bitcast i8* %1058 to double*
  store double %1061, double* %1062, align 1
  %1063 = getelementptr inbounds i8, i8* %1058, i64 8
  %1064 = bitcast i8* %1063 to double*
  store double 0.000000e+00, double* %1064, align 1
  store %struct.Memory* %loadMem_4006a6, %struct.Memory** %MEMORY
  %loadMem_4006af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 15
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1072 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1071, i64 0, i64 5
  %YMM5.i254 = bitcast %union.VectorReg* %1072 to %"class.std::bitset"*
  %1073 = bitcast %"class.std::bitset"* %YMM5.i254 to i8*
  %1074 = bitcast %"class.std::bitset"* %YMM5.i254 to i8*
  %1075 = load i64, i64* %RBP.i253
  %1076 = sub i64 %1075, 40
  %1077 = load i64, i64* %PC.i252
  %1078 = add i64 %1077, 5
  store i64 %1078, i64* %PC.i252
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
  store %struct.Memory* %loadMem_4006af, %struct.Memory** %MEMORY
  %loadMem_4006b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 33
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1092 to i64*
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1094 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1093, i64 0, i64 5
  %YMM5.i251 = bitcast %union.VectorReg* %1094 to %"class.std::bitset"*
  %1095 = bitcast %"class.std::bitset"* %YMM5.i251 to i8*
  %1096 = bitcast %"class.std::bitset"* %YMM5.i251 to i8*
  %1097 = load i64, i64* %PC.i250
  %1098 = add i64 %1097, 9
  store i64 %1098, i64* %PC.i250
  %1099 = bitcast i8* %1096 to double*
  %1100 = load double, double* %1099, align 1
  %1101 = getelementptr inbounds i8, i8* %1096, i64 8
  %1102 = bitcast i8* %1101 to i64*
  %1103 = load i64, i64* %1102, align 1
  %1104 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %1105 = fadd double %1100, %1104
  %1106 = bitcast i8* %1095 to double*
  store double %1105, double* %1106, align 1
  %1107 = getelementptr inbounds i8, i8* %1095, i64 8
  %1108 = bitcast i8* %1107 to i64*
  store i64 %1103, i64* %1108, align 1
  store %struct.Memory* %loadMem_4006b4, %struct.Memory** %MEMORY
  %loadMem_4006bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1112, i64 0, i64 4
  %YMM4.i248 = bitcast %union.VectorReg* %1113 to %"class.std::bitset"*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1114, i64 0, i64 5
  %XMM5.i249 = bitcast %union.VectorReg* %1115 to %union.vec128_t*
  %1116 = bitcast %"class.std::bitset"* %YMM4.i248 to i8*
  %1117 = bitcast %"class.std::bitset"* %YMM4.i248 to i8*
  %1118 = bitcast %union.vec128_t* %XMM5.i249 to i8*
  %1119 = load i64, i64* %PC.i247
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %PC.i247
  %1121 = bitcast i8* %1117 to double*
  %1122 = load double, double* %1121, align 1
  %1123 = getelementptr inbounds i8, i8* %1117, i64 8
  %1124 = bitcast i8* %1123 to i64*
  %1125 = load i64, i64* %1124, align 1
  %1126 = bitcast i8* %1118 to double*
  %1127 = load double, double* %1126, align 1
  %1128 = fmul double %1122, %1127
  %1129 = bitcast i8* %1116 to double*
  store double %1128, double* %1129, align 1
  %1130 = getelementptr inbounds i8, i8* %1116, i64 8
  %1131 = bitcast i8* %1130 to i64*
  store i64 %1125, i64* %1131, align 1
  store %struct.Memory* %loadMem_4006bd, %struct.Memory** %MEMORY
  %loadMem_4006c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1135, i64 0, i64 4
  %YMM4.i246 = bitcast %union.VectorReg* %1136 to %"class.std::bitset"*
  %1137 = bitcast %"class.std::bitset"* %YMM4.i246 to i8*
  %1138 = bitcast %"class.std::bitset"* %YMM4.i246 to i8*
  %1139 = load i64, i64* %PC.i245
  %1140 = add i64 %1139, 9
  store i64 %1140, i64* %PC.i245
  %1141 = bitcast i8* %1138 to double*
  %1142 = load double, double* %1141, align 1
  %1143 = getelementptr inbounds i8, i8* %1138, i64 8
  %1144 = bitcast i8* %1143 to i64*
  %1145 = load i64, i64* %1144, align 1
  %1146 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %1147 = fadd double %1142, %1146
  %1148 = bitcast i8* %1137 to double*
  store double %1147, double* %1148, align 1
  %1149 = getelementptr inbounds i8, i8* %1137, i64 8
  %1150 = bitcast i8* %1149 to i64*
  store i64 %1145, i64* %1150, align 1
  store %struct.Memory* %loadMem_4006c1, %struct.Memory** %MEMORY
  %loadMem_4006ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 33
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1154, i64 0, i64 3
  %YMM3.i243 = bitcast %union.VectorReg* %1155 to %"class.std::bitset"*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1156, i64 0, i64 4
  %XMM4.i244 = bitcast %union.VectorReg* %1157 to %union.vec128_t*
  %1158 = bitcast %"class.std::bitset"* %YMM3.i243 to i8*
  %1159 = bitcast %"class.std::bitset"* %YMM3.i243 to i8*
  %1160 = bitcast %union.vec128_t* %XMM4.i244 to i8*
  %1161 = load i64, i64* %PC.i242
  %1162 = add i64 %1161, 4
  store i64 %1162, i64* %PC.i242
  %1163 = bitcast i8* %1159 to double*
  %1164 = load double, double* %1163, align 1
  %1165 = getelementptr inbounds i8, i8* %1159, i64 8
  %1166 = bitcast i8* %1165 to i64*
  %1167 = load i64, i64* %1166, align 1
  %1168 = bitcast i8* %1160 to double*
  %1169 = load double, double* %1168, align 1
  %1170 = fmul double %1164, %1169
  %1171 = bitcast i8* %1158 to double*
  store double %1170, double* %1171, align 1
  %1172 = getelementptr inbounds i8, i8* %1158, i64 8
  %1173 = bitcast i8* %1172 to i64*
  store i64 %1167, i64* %1173, align 1
  store %struct.Memory* %loadMem_4006ca, %struct.Memory** %MEMORY
  %loadMem_4006ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1177, i64 0, i64 3
  %YMM3.i241 = bitcast %union.VectorReg* %1178 to %"class.std::bitset"*
  %1179 = bitcast %"class.std::bitset"* %YMM3.i241 to i8*
  %1180 = bitcast %"class.std::bitset"* %YMM3.i241 to i8*
  %1181 = load i64, i64* %PC.i240
  %1182 = add i64 %1181, 9
  store i64 %1182, i64* %PC.i240
  %1183 = bitcast i8* %1180 to double*
  %1184 = load double, double* %1183, align 1
  %1185 = getelementptr inbounds i8, i8* %1180, i64 8
  %1186 = bitcast i8* %1185 to i64*
  %1187 = load i64, i64* %1186, align 1
  %1188 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %1189 = fadd double %1184, %1188
  %1190 = bitcast i8* %1179 to double*
  store double %1189, double* %1190, align 1
  %1191 = getelementptr inbounds i8, i8* %1179, i64 8
  %1192 = bitcast i8* %1191 to i64*
  store i64 %1187, i64* %1192, align 1
  store %struct.Memory* %loadMem_4006ce, %struct.Memory** %MEMORY
  %loadMem_4006d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1196, i64 0, i64 2
  %YMM2.i238 = bitcast %union.VectorReg* %1197 to %"class.std::bitset"*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1198, i64 0, i64 3
  %XMM3.i239 = bitcast %union.VectorReg* %1199 to %union.vec128_t*
  %1200 = bitcast %"class.std::bitset"* %YMM2.i238 to i8*
  %1201 = bitcast %"class.std::bitset"* %YMM2.i238 to i8*
  %1202 = bitcast %union.vec128_t* %XMM3.i239 to i8*
  %1203 = load i64, i64* %PC.i237
  %1204 = add i64 %1203, 4
  store i64 %1204, i64* %PC.i237
  %1205 = bitcast i8* %1201 to double*
  %1206 = load double, double* %1205, align 1
  %1207 = getelementptr inbounds i8, i8* %1201, i64 8
  %1208 = bitcast i8* %1207 to i64*
  %1209 = load i64, i64* %1208, align 1
  %1210 = bitcast i8* %1202 to double*
  %1211 = load double, double* %1210, align 1
  %1212 = fmul double %1206, %1211
  %1213 = bitcast i8* %1200 to double*
  store double %1212, double* %1213, align 1
  %1214 = getelementptr inbounds i8, i8* %1200, i64 8
  %1215 = bitcast i8* %1214 to i64*
  store i64 %1209, i64* %1215, align 1
  store %struct.Memory* %loadMem_4006d7, %struct.Memory** %MEMORY
  %loadMem_4006db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1219, i64 0, i64 2
  %YMM2.i236 = bitcast %union.VectorReg* %1220 to %"class.std::bitset"*
  %1221 = bitcast %"class.std::bitset"* %YMM2.i236 to i8*
  %1222 = bitcast %"class.std::bitset"* %YMM2.i236 to i8*
  %1223 = load i64, i64* %PC.i235
  %1224 = add i64 %1223, 9
  store i64 %1224, i64* %PC.i235
  %1225 = bitcast i8* %1222 to double*
  %1226 = load double, double* %1225, align 1
  %1227 = getelementptr inbounds i8, i8* %1222, i64 8
  %1228 = bitcast i8* %1227 to i64*
  %1229 = load i64, i64* %1228, align 1
  %1230 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %1231 = fadd double %1226, %1230
  %1232 = bitcast i8* %1221 to double*
  store double %1231, double* %1232, align 1
  %1233 = getelementptr inbounds i8, i8* %1221, i64 8
  %1234 = bitcast i8* %1233 to i64*
  store i64 %1229, i64* %1234, align 1
  store %struct.Memory* %loadMem_4006db, %struct.Memory** %MEMORY
  %loadMem_4006e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 33
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1238, i64 0, i64 1
  %YMM1.i233 = bitcast %union.VectorReg* %1239 to %"class.std::bitset"*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1240, i64 0, i64 2
  %XMM2.i234 = bitcast %union.VectorReg* %1241 to %union.vec128_t*
  %1242 = bitcast %"class.std::bitset"* %YMM1.i233 to i8*
  %1243 = bitcast %"class.std::bitset"* %YMM1.i233 to i8*
  %1244 = bitcast %union.vec128_t* %XMM2.i234 to i8*
  %1245 = load i64, i64* %PC.i232
  %1246 = add i64 %1245, 4
  store i64 %1246, i64* %PC.i232
  %1247 = bitcast i8* %1243 to double*
  %1248 = load double, double* %1247, align 1
  %1249 = getelementptr inbounds i8, i8* %1243, i64 8
  %1250 = bitcast i8* %1249 to i64*
  %1251 = load i64, i64* %1250, align 1
  %1252 = bitcast i8* %1244 to double*
  %1253 = load double, double* %1252, align 1
  %1254 = fmul double %1248, %1253
  %1255 = bitcast i8* %1242 to double*
  store double %1254, double* %1255, align 1
  %1256 = getelementptr inbounds i8, i8* %1242, i64 8
  %1257 = bitcast i8* %1256 to i64*
  store i64 %1251, i64* %1257, align 1
  store %struct.Memory* %loadMem_4006e4, %struct.Memory** %MEMORY
  %loadMem_4006e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1261, i64 0, i64 1
  %YMM1.i231 = bitcast %union.VectorReg* %1262 to %"class.std::bitset"*
  %1263 = bitcast %"class.std::bitset"* %YMM1.i231 to i8*
  %1264 = bitcast %"class.std::bitset"* %YMM1.i231 to i8*
  %1265 = load i64, i64* %PC.i230
  %1266 = add i64 %1265, 9
  store i64 %1266, i64* %PC.i230
  %1267 = bitcast i8* %1264 to double*
  %1268 = load double, double* %1267, align 1
  %1269 = getelementptr inbounds i8, i8* %1264, i64 8
  %1270 = bitcast i8* %1269 to i64*
  %1271 = load i64, i64* %1270, align 1
  %1272 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %1273 = fadd double %1268, %1272
  %1274 = bitcast i8* %1263 to double*
  store double %1273, double* %1274, align 1
  %1275 = getelementptr inbounds i8, i8* %1263, i64 8
  %1276 = bitcast i8* %1275 to i64*
  store i64 %1271, i64* %1276, align 1
  store %struct.Memory* %loadMem_4006e8, %struct.Memory** %MEMORY
  %loadMem_4006f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1280, i64 0, i64 0
  %YMM0.i228 = bitcast %union.VectorReg* %1281 to %"class.std::bitset"*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1282, i64 0, i64 1
  %XMM1.i229 = bitcast %union.VectorReg* %1283 to %union.vec128_t*
  %1284 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1285 = bitcast %"class.std::bitset"* %YMM0.i228 to i8*
  %1286 = bitcast %union.vec128_t* %XMM1.i229 to i8*
  %1287 = load i64, i64* %PC.i227
  %1288 = add i64 %1287, 4
  store i64 %1288, i64* %PC.i227
  %1289 = bitcast i8* %1285 to double*
  %1290 = load double, double* %1289, align 1
  %1291 = getelementptr inbounds i8, i8* %1285, i64 8
  %1292 = bitcast i8* %1291 to i64*
  %1293 = load i64, i64* %1292, align 1
  %1294 = bitcast i8* %1286 to double*
  %1295 = load double, double* %1294, align 1
  %1296 = fmul double %1290, %1295
  %1297 = bitcast i8* %1284 to double*
  store double %1296, double* %1297, align 1
  %1298 = getelementptr inbounds i8, i8* %1284, i64 8
  %1299 = bitcast i8* %1298 to i64*
  store i64 %1293, i64* %1299, align 1
  store %struct.Memory* %loadMem_4006f1, %struct.Memory** %MEMORY
  %loadMem_4006f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1304 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1303, i64 0, i64 0
  %YMM0.i226 = bitcast %union.VectorReg* %1304 to %"class.std::bitset"*
  %1305 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %1306 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %1307 = load i64, i64* %PC.i225
  %1308 = add i64 %1307, 9
  store i64 %1308, i64* %PC.i225
  %1309 = bitcast i8* %1306 to double*
  %1310 = load double, double* %1309, align 1
  %1311 = getelementptr inbounds i8, i8* %1306, i64 8
  %1312 = bitcast i8* %1311 to i64*
  %1313 = load i64, i64* %1312, align 1
  %1314 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %1315 = fadd double %1310, %1314
  %1316 = bitcast i8* %1305 to double*
  store double %1315, double* %1316, align 1
  %1317 = getelementptr inbounds i8, i8* %1305, i64 8
  %1318 = bitcast i8* %1317 to i64*
  store i64 %1313, i64* %1318, align 1
  store %struct.Memory* %loadMem_4006f5, %struct.Memory** %MEMORY
  %loadMem_4006fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 33
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1321 to i64*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 15
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1326 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1325, i64 0, i64 0
  %XMM0.i224 = bitcast %union.VectorReg* %1326 to %union.vec128_t*
  %1327 = load i64, i64* %RBP.i223
  %1328 = sub i64 %1327, 32
  %1329 = bitcast %union.vec128_t* %XMM0.i224 to i8*
  %1330 = load i64, i64* %PC.i222
  %1331 = add i64 %1330, 5
  store i64 %1331, i64* %PC.i222
  %1332 = bitcast i8* %1329 to double*
  %1333 = load double, double* %1332, align 1
  %1334 = inttoptr i64 %1328 to double*
  store double %1333, double* %1334
  store %struct.Memory* %loadMem_4006fe, %struct.Memory** %MEMORY
  %loadMem_400703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 15
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1342 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1341, i64 0, i64 0
  %YMM0.i221 = bitcast %union.VectorReg* %1342 to %"class.std::bitset"*
  %1343 = bitcast %"class.std::bitset"* %YMM0.i221 to i8*
  %1344 = load i64, i64* %RBP.i220
  %1345 = sub i64 %1344, 16
  %1346 = load i64, i64* %PC.i219
  %1347 = add i64 %1346, 5
  store i64 %1347, i64* %PC.i219
  %1348 = inttoptr i64 %1345 to double*
  %1349 = load double, double* %1348
  %1350 = bitcast i8* %1343 to double*
  store double %1349, double* %1350, align 1
  %1351 = getelementptr inbounds i8, i8* %1343, i64 8
  %1352 = bitcast i8* %1351 to double*
  store double 0.000000e+00, double* %1352, align 1
  store %struct.Memory* %loadMem_400703, %struct.Memory** %MEMORY
  %loadMem_400708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 15
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1360 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1359, i64 0, i64 1
  %YMM1.i218 = bitcast %union.VectorReg* %1360 to %"class.std::bitset"*
  %1361 = bitcast %"class.std::bitset"* %YMM1.i218 to i8*
  %1362 = load i64, i64* %RBP.i217
  %1363 = sub i64 %1362, 32
  %1364 = load i64, i64* %PC.i216
  %1365 = add i64 %1364, 5
  store i64 %1365, i64* %PC.i216
  %1366 = inttoptr i64 %1363 to double*
  %1367 = load double, double* %1366
  %1368 = bitcast i8* %1361 to double*
  store double %1367, double* %1368, align 1
  %1369 = getelementptr inbounds i8, i8* %1361, i64 8
  %1370 = bitcast i8* %1369 to double*
  store double 0.000000e+00, double* %1370, align 1
  store %struct.Memory* %loadMem_400708, %struct.Memory** %MEMORY
  %loadMem_40070d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 15
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1378 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1377, i64 0, i64 1
  %YMM1.i215 = bitcast %union.VectorReg* %1378 to %"class.std::bitset"*
  %1379 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %1380 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %1381 = load i64, i64* %RBP.i214
  %1382 = sub i64 %1381, 32
  %1383 = load i64, i64* %PC.i213
  %1384 = add i64 %1383, 5
  store i64 %1384, i64* %PC.i213
  %1385 = bitcast i8* %1380 to double*
  %1386 = load double, double* %1385, align 1
  %1387 = getelementptr inbounds i8, i8* %1380, i64 8
  %1388 = bitcast i8* %1387 to i64*
  %1389 = load i64, i64* %1388, align 1
  %1390 = inttoptr i64 %1382 to double*
  %1391 = load double, double* %1390
  %1392 = fmul double %1386, %1391
  %1393 = bitcast i8* %1379 to double*
  store double %1392, double* %1393, align 1
  %1394 = getelementptr inbounds i8, i8* %1379, i64 8
  %1395 = bitcast i8* %1394 to i64*
  store i64 %1389, i64* %1395, align 1
  store %struct.Memory* %loadMem_40070d, %struct.Memory** %MEMORY
  %loadMem_400712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 15
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1402, i64 0, i64 1
  %YMM1.i212 = bitcast %union.VectorReg* %1403 to %"class.std::bitset"*
  %1404 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %1405 = bitcast %"class.std::bitset"* %YMM1.i212 to i8*
  %1406 = load i64, i64* %RBP.i211
  %1407 = sub i64 %1406, 24
  %1408 = load i64, i64* %PC.i210
  %1409 = add i64 %1408, 5
  store i64 %1409, i64* %PC.i210
  %1410 = bitcast i8* %1405 to double*
  %1411 = load double, double* %1410, align 1
  %1412 = getelementptr inbounds i8, i8* %1405, i64 8
  %1413 = bitcast i8* %1412 to i64*
  %1414 = load i64, i64* %1413, align 1
  %1415 = inttoptr i64 %1407 to double*
  %1416 = load double, double* %1415
  %1417 = fmul double %1411, %1416
  %1418 = bitcast i8* %1404 to double*
  store double %1417, double* %1418, align 1
  %1419 = getelementptr inbounds i8, i8* %1404, i64 8
  %1420 = bitcast i8* %1419 to i64*
  store i64 %1414, i64* %1420, align 1
  store %struct.Memory* %loadMem_400712, %struct.Memory** %MEMORY
  %loadMem_400717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1424, i64 0, i64 2
  %YMM2.i209 = bitcast %union.VectorReg* %1425 to %"class.std::bitset"*
  %1426 = bitcast %"class.std::bitset"* %YMM2.i209 to i8*
  %1427 = load i64, i64* %PC.i208
  %1428 = add i64 %1427, 9
  store i64 %1428, i64* %PC.i208
  %1429 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %1430 = bitcast i8* %1426 to double*
  store double %1429, double* %1430, align 1
  %1431 = getelementptr inbounds i8, i8* %1426, i64 8
  %1432 = bitcast i8* %1431 to double*
  store double 0.000000e+00, double* %1432, align 1
  store %struct.Memory* %loadMem_400717, %struct.Memory** %MEMORY
  %loadMem_400720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 15
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1439, i64 0, i64 2
  %YMM2.i207 = bitcast %union.VectorReg* %1440 to %"class.std::bitset"*
  %1441 = bitcast %"class.std::bitset"* %YMM2.i207 to i8*
  %1442 = bitcast %"class.std::bitset"* %YMM2.i207 to i8*
  %1443 = load i64, i64* %RBP.i206
  %1444 = sub i64 %1443, 40
  %1445 = load i64, i64* %PC.i205
  %1446 = add i64 %1445, 5
  store i64 %1446, i64* %PC.i205
  %1447 = bitcast i8* %1442 to double*
  %1448 = load double, double* %1447, align 1
  %1449 = getelementptr inbounds i8, i8* %1442, i64 8
  %1450 = bitcast i8* %1449 to i64*
  %1451 = load i64, i64* %1450, align 1
  %1452 = inttoptr i64 %1444 to double*
  %1453 = load double, double* %1452
  %1454 = fmul double %1448, %1453
  %1455 = bitcast i8* %1441 to double*
  store double %1454, double* %1455, align 1
  %1456 = getelementptr inbounds i8, i8* %1441, i64 8
  %1457 = bitcast i8* %1456 to i64*
  store i64 %1451, i64* %1457, align 1
  store %struct.Memory* %loadMem_400720, %struct.Memory** %MEMORY
  %loadMem_400725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1461, i64 0, i64 2
  %YMM2.i204 = bitcast %union.VectorReg* %1462 to %"class.std::bitset"*
  %1463 = bitcast %"class.std::bitset"* %YMM2.i204 to i8*
  %1464 = bitcast %"class.std::bitset"* %YMM2.i204 to i8*
  %1465 = load i64, i64* %PC.i203
  %1466 = add i64 %1465, 9
  store i64 %1466, i64* %PC.i203
  %1467 = bitcast i8* %1464 to double*
  %1468 = load double, double* %1467, align 1
  %1469 = getelementptr inbounds i8, i8* %1464, i64 8
  %1470 = bitcast i8* %1469 to i64*
  %1471 = load i64, i64* %1470, align 1
  %1472 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %1473 = fadd double %1468, %1472
  %1474 = bitcast i8* %1463 to double*
  store double %1473, double* %1474, align 1
  %1475 = getelementptr inbounds i8, i8* %1463, i64 8
  %1476 = bitcast i8* %1475 to i64*
  store i64 %1471, i64* %1476, align 1
  store %struct.Memory* %loadMem_400725, %struct.Memory** %MEMORY
  %loadMem_40072e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 33
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1479 to i64*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 15
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1483, i64 0, i64 2
  %YMM2.i202 = bitcast %union.VectorReg* %1484 to %"class.std::bitset"*
  %1485 = bitcast %"class.std::bitset"* %YMM2.i202 to i8*
  %1486 = bitcast %"class.std::bitset"* %YMM2.i202 to i8*
  %1487 = load i64, i64* %RBP.i201
  %1488 = sub i64 %1487, 40
  %1489 = load i64, i64* %PC.i200
  %1490 = add i64 %1489, 5
  store i64 %1490, i64* %PC.i200
  %1491 = bitcast i8* %1486 to double*
  %1492 = load double, double* %1491, align 1
  %1493 = getelementptr inbounds i8, i8* %1486, i64 8
  %1494 = bitcast i8* %1493 to i64*
  %1495 = load i64, i64* %1494, align 1
  %1496 = inttoptr i64 %1488 to double*
  %1497 = load double, double* %1496
  %1498 = fmul double %1492, %1497
  %1499 = bitcast i8* %1485 to double*
  store double %1498, double* %1499, align 1
  %1500 = getelementptr inbounds i8, i8* %1485, i64 8
  %1501 = bitcast i8* %1500 to i64*
  store i64 %1495, i64* %1501, align 1
  store %struct.Memory* %loadMem_40072e, %struct.Memory** %MEMORY
  %loadMem_400733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1505, i64 0, i64 2
  %YMM2.i199 = bitcast %union.VectorReg* %1506 to %"class.std::bitset"*
  %1507 = bitcast %"class.std::bitset"* %YMM2.i199 to i8*
  %1508 = bitcast %"class.std::bitset"* %YMM2.i199 to i8*
  %1509 = load i64, i64* %PC.i198
  %1510 = add i64 %1509, 9
  store i64 %1510, i64* %PC.i198
  %1511 = bitcast i8* %1508 to double*
  %1512 = load double, double* %1511, align 1
  %1513 = getelementptr inbounds i8, i8* %1508, i64 8
  %1514 = bitcast i8* %1513 to i64*
  %1515 = load i64, i64* %1514, align 1
  %1516 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %1517 = fadd double %1512, %1516
  %1518 = bitcast i8* %1507 to double*
  store double %1517, double* %1518, align 1
  %1519 = getelementptr inbounds i8, i8* %1507, i64 8
  %1520 = bitcast i8* %1519 to i64*
  store i64 %1515, i64* %1520, align 1
  store %struct.Memory* %loadMem_400733, %struct.Memory** %MEMORY
  %loadMem_40073c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 33
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 15
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1528 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1527, i64 0, i64 2
  %YMM2.i197 = bitcast %union.VectorReg* %1528 to %"class.std::bitset"*
  %1529 = bitcast %"class.std::bitset"* %YMM2.i197 to i8*
  %1530 = bitcast %"class.std::bitset"* %YMM2.i197 to i8*
  %1531 = load i64, i64* %RBP.i196
  %1532 = sub i64 %1531, 40
  %1533 = load i64, i64* %PC.i195
  %1534 = add i64 %1533, 5
  store i64 %1534, i64* %PC.i195
  %1535 = bitcast i8* %1530 to double*
  %1536 = load double, double* %1535, align 1
  %1537 = getelementptr inbounds i8, i8* %1530, i64 8
  %1538 = bitcast i8* %1537 to i64*
  %1539 = load i64, i64* %1538, align 1
  %1540 = inttoptr i64 %1532 to double*
  %1541 = load double, double* %1540
  %1542 = fmul double %1536, %1541
  %1543 = bitcast i8* %1529 to double*
  store double %1542, double* %1543, align 1
  %1544 = getelementptr inbounds i8, i8* %1529, i64 8
  %1545 = bitcast i8* %1544 to i64*
  store i64 %1539, i64* %1545, align 1
  store %struct.Memory* %loadMem_40073c, %struct.Memory** %MEMORY
  %loadMem_400741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1549, i64 0, i64 2
  %YMM2.i194 = bitcast %union.VectorReg* %1550 to %"class.std::bitset"*
  %1551 = bitcast %"class.std::bitset"* %YMM2.i194 to i8*
  %1552 = bitcast %"class.std::bitset"* %YMM2.i194 to i8*
  %1553 = load i64, i64* %PC.i193
  %1554 = add i64 %1553, 9
  store i64 %1554, i64* %PC.i193
  %1555 = bitcast i8* %1552 to double*
  %1556 = load double, double* %1555, align 1
  %1557 = getelementptr inbounds i8, i8* %1552, i64 8
  %1558 = bitcast i8* %1557 to i64*
  %1559 = load i64, i64* %1558, align 1
  %1560 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %1561 = fadd double %1556, %1560
  %1562 = bitcast i8* %1551 to double*
  store double %1561, double* %1562, align 1
  %1563 = getelementptr inbounds i8, i8* %1551, i64 8
  %1564 = bitcast i8* %1563 to i64*
  store i64 %1559, i64* %1564, align 1
  store %struct.Memory* %loadMem_400741, %struct.Memory** %MEMORY
  %loadMem_40074a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 33
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1567 to i64*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 15
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1571, i64 0, i64 2
  %YMM2.i192 = bitcast %union.VectorReg* %1572 to %"class.std::bitset"*
  %1573 = bitcast %"class.std::bitset"* %YMM2.i192 to i8*
  %1574 = bitcast %"class.std::bitset"* %YMM2.i192 to i8*
  %1575 = load i64, i64* %RBP.i191
  %1576 = sub i64 %1575, 40
  %1577 = load i64, i64* %PC.i190
  %1578 = add i64 %1577, 5
  store i64 %1578, i64* %PC.i190
  %1579 = bitcast i8* %1574 to double*
  %1580 = load double, double* %1579, align 1
  %1581 = getelementptr inbounds i8, i8* %1574, i64 8
  %1582 = bitcast i8* %1581 to i64*
  %1583 = load i64, i64* %1582, align 1
  %1584 = inttoptr i64 %1576 to double*
  %1585 = load double, double* %1584
  %1586 = fmul double %1580, %1585
  %1587 = bitcast i8* %1573 to double*
  store double %1586, double* %1587, align 1
  %1588 = getelementptr inbounds i8, i8* %1573, i64 8
  %1589 = bitcast i8* %1588 to i64*
  store i64 %1583, i64* %1589, align 1
  store %struct.Memory* %loadMem_40074a, %struct.Memory** %MEMORY
  %loadMem_40074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1593, i64 0, i64 2
  %YMM2.i189 = bitcast %union.VectorReg* %1594 to %"class.std::bitset"*
  %1595 = bitcast %"class.std::bitset"* %YMM2.i189 to i8*
  %1596 = bitcast %"class.std::bitset"* %YMM2.i189 to i8*
  %1597 = load i64, i64* %PC.i188
  %1598 = add i64 %1597, 9
  store i64 %1598, i64* %PC.i188
  %1599 = bitcast i8* %1596 to double*
  %1600 = load double, double* %1599, align 1
  %1601 = getelementptr inbounds i8, i8* %1596, i64 8
  %1602 = bitcast i8* %1601 to i64*
  %1603 = load i64, i64* %1602, align 1
  %1604 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %1605 = fadd double %1600, %1604
  %1606 = bitcast i8* %1595 to double*
  store double %1605, double* %1606, align 1
  %1607 = getelementptr inbounds i8, i8* %1595, i64 8
  %1608 = bitcast i8* %1607 to i64*
  store i64 %1603, i64* %1608, align 1
  store %struct.Memory* %loadMem_40074f, %struct.Memory** %MEMORY
  %loadMem_400758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 15
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1615, i64 0, i64 2
  %YMM2.i187 = bitcast %union.VectorReg* %1616 to %"class.std::bitset"*
  %1617 = bitcast %"class.std::bitset"* %YMM2.i187 to i8*
  %1618 = bitcast %"class.std::bitset"* %YMM2.i187 to i8*
  %1619 = load i64, i64* %RBP.i186
  %1620 = sub i64 %1619, 40
  %1621 = load i64, i64* %PC.i185
  %1622 = add i64 %1621, 5
  store i64 %1622, i64* %PC.i185
  %1623 = bitcast i8* %1618 to double*
  %1624 = load double, double* %1623, align 1
  %1625 = getelementptr inbounds i8, i8* %1618, i64 8
  %1626 = bitcast i8* %1625 to i64*
  %1627 = load i64, i64* %1626, align 1
  %1628 = inttoptr i64 %1620 to double*
  %1629 = load double, double* %1628
  %1630 = fmul double %1624, %1629
  %1631 = bitcast i8* %1617 to double*
  store double %1630, double* %1631, align 1
  %1632 = getelementptr inbounds i8, i8* %1617, i64 8
  %1633 = bitcast i8* %1632 to i64*
  store i64 %1627, i64* %1633, align 1
  store %struct.Memory* %loadMem_400758, %struct.Memory** %MEMORY
  %loadMem_40075d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1637, i64 0, i64 2
  %YMM2.i184 = bitcast %union.VectorReg* %1638 to %"class.std::bitset"*
  %1639 = bitcast %"class.std::bitset"* %YMM2.i184 to i8*
  %1640 = bitcast %"class.std::bitset"* %YMM2.i184 to i8*
  %1641 = load i64, i64* %PC.i183
  %1642 = add i64 %1641, 9
  store i64 %1642, i64* %PC.i183
  %1643 = bitcast i8* %1640 to double*
  %1644 = load double, double* %1643, align 1
  %1645 = getelementptr inbounds i8, i8* %1640, i64 8
  %1646 = bitcast i8* %1645 to i64*
  %1647 = load i64, i64* %1646, align 1
  %1648 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %1649 = fadd double %1644, %1648
  %1650 = bitcast i8* %1639 to double*
  store double %1649, double* %1650, align 1
  %1651 = getelementptr inbounds i8, i8* %1639, i64 8
  %1652 = bitcast i8* %1651 to i64*
  store i64 %1647, i64* %1652, align 1
  store %struct.Memory* %loadMem_40075d, %struct.Memory** %MEMORY
  %loadMem_400766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 33
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1659, i64 0, i64 2
  %YMM2.i182 = bitcast %union.VectorReg* %1660 to %"class.std::bitset"*
  %1661 = bitcast %"class.std::bitset"* %YMM2.i182 to i8*
  %1662 = bitcast %"class.std::bitset"* %YMM2.i182 to i8*
  %1663 = load i64, i64* %RBP.i181
  %1664 = sub i64 %1663, 40
  %1665 = load i64, i64* %PC.i180
  %1666 = add i64 %1665, 5
  store i64 %1666, i64* %PC.i180
  %1667 = bitcast i8* %1662 to double*
  %1668 = load double, double* %1667, align 1
  %1669 = getelementptr inbounds i8, i8* %1662, i64 8
  %1670 = bitcast i8* %1669 to i64*
  %1671 = load i64, i64* %1670, align 1
  %1672 = inttoptr i64 %1664 to double*
  %1673 = load double, double* %1672
  %1674 = fmul double %1668, %1673
  %1675 = bitcast i8* %1661 to double*
  store double %1674, double* %1675, align 1
  %1676 = getelementptr inbounds i8, i8* %1661, i64 8
  %1677 = bitcast i8* %1676 to i64*
  store i64 %1671, i64* %1677, align 1
  store %struct.Memory* %loadMem_400766, %struct.Memory** %MEMORY
  %loadMem_40076b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1681, i64 0, i64 2
  %YMM2.i179 = bitcast %union.VectorReg* %1682 to %"class.std::bitset"*
  %1683 = bitcast %"class.std::bitset"* %YMM2.i179 to i8*
  %1684 = bitcast %"class.std::bitset"* %YMM2.i179 to i8*
  %1685 = load i64, i64* %PC.i178
  %1686 = add i64 %1685, 9
  store i64 %1686, i64* %PC.i178
  %1687 = bitcast i8* %1684 to double*
  %1688 = load double, double* %1687, align 1
  %1689 = getelementptr inbounds i8, i8* %1684, i64 8
  %1690 = bitcast i8* %1689 to i64*
  %1691 = load i64, i64* %1690, align 1
  %1692 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %1693 = fadd double %1688, %1692
  %1694 = bitcast i8* %1683 to double*
  store double %1693, double* %1694, align 1
  %1695 = getelementptr inbounds i8, i8* %1683, i64 8
  %1696 = bitcast i8* %1695 to i64*
  store i64 %1691, i64* %1696, align 1
  store %struct.Memory* %loadMem_40076b, %struct.Memory** %MEMORY
  %loadMem_400774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1700, i64 0, i64 1
  %YMM1.i176 = bitcast %union.VectorReg* %1701 to %"class.std::bitset"*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1702, i64 0, i64 2
  %XMM2.i177 = bitcast %union.VectorReg* %1703 to %union.vec128_t*
  %1704 = bitcast %"class.std::bitset"* %YMM1.i176 to i8*
  %1705 = bitcast %"class.std::bitset"* %YMM1.i176 to i8*
  %1706 = bitcast %union.vec128_t* %XMM2.i177 to i8*
  %1707 = load i64, i64* %PC.i175
  %1708 = add i64 %1707, 4
  store i64 %1708, i64* %PC.i175
  %1709 = bitcast i8* %1705 to double*
  %1710 = load double, double* %1709, align 1
  %1711 = getelementptr inbounds i8, i8* %1705, i64 8
  %1712 = bitcast i8* %1711 to i64*
  %1713 = load i64, i64* %1712, align 1
  %1714 = bitcast i8* %1706 to double*
  %1715 = load double, double* %1714, align 1
  %1716 = fmul double %1710, %1715
  %1717 = bitcast i8* %1704 to double*
  store double %1716, double* %1717, align 1
  %1718 = getelementptr inbounds i8, i8* %1704, i64 8
  %1719 = bitcast i8* %1718 to i64*
  store i64 %1713, i64* %1719, align 1
  store %struct.Memory* %loadMem_400774, %struct.Memory** %MEMORY
  %loadMem_400778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1723, i64 0, i64 0
  %YMM0.i173 = bitcast %union.VectorReg* %1724 to %"class.std::bitset"*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1726 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1725, i64 0, i64 1
  %XMM1.i174 = bitcast %union.VectorReg* %1726 to %union.vec128_t*
  %1727 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %1728 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %1729 = bitcast %union.vec128_t* %XMM1.i174 to i8*
  %1730 = load i64, i64* %PC.i172
  %1731 = add i64 %1730, 4
  store i64 %1731, i64* %PC.i172
  %1732 = bitcast i8* %1728 to double*
  %1733 = load double, double* %1732, align 1
  %1734 = getelementptr inbounds i8, i8* %1728, i64 8
  %1735 = bitcast i8* %1734 to i64*
  %1736 = load i64, i64* %1735, align 1
  %1737 = bitcast i8* %1729 to double*
  %1738 = load double, double* %1737, align 1
  %1739 = fadd double %1733, %1738
  %1740 = bitcast i8* %1727 to double*
  store double %1739, double* %1740, align 1
  %1741 = getelementptr inbounds i8, i8* %1727, i64 8
  %1742 = bitcast i8* %1741 to i64*
  store i64 %1736, i64* %1742, align 1
  store %struct.Memory* %loadMem_400778, %struct.Memory** %MEMORY
  %loadMem_40077c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 15
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1749, i64 0, i64 0
  %XMM0.i171 = bitcast %union.VectorReg* %1750 to %union.vec128_t*
  %1751 = load i64, i64* %RBP.i170
  %1752 = sub i64 %1751, 16
  %1753 = bitcast %union.vec128_t* %XMM0.i171 to i8*
  %1754 = load i64, i64* %PC.i169
  %1755 = add i64 %1754, 5
  store i64 %1755, i64* %PC.i169
  %1756 = bitcast i8* %1753 to double*
  %1757 = load double, double* %1756, align 1
  %1758 = inttoptr i64 %1752 to double*
  store double %1757, double* %1758
  store %struct.Memory* %loadMem_40077c, %struct.Memory** %MEMORY
  %loadMem_400781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 33
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1761 to i64*
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 1
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 15
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %RBP.i168
  %1769 = sub i64 %1768, 72
  %1770 = load i64, i64* %PC.i166
  %1771 = add i64 %1770, 4
  store i64 %1771, i64* %PC.i166
  %1772 = inttoptr i64 %1769 to i64*
  %1773 = load i64, i64* %1772
  store i64 %1773, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_400781, %struct.Memory** %MEMORY
  %loadMem_400785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 1
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %1779 to i64*
  %1780 = load i64, i64* %RAX.i165
  %1781 = load i64, i64* %PC.i164
  %1782 = add i64 %1781, 4
  store i64 %1782, i64* %PC.i164
  %1783 = add i64 1, %1780
  store i64 %1783, i64* %RAX.i165, align 8
  %1784 = icmp ult i64 %1783, %1780
  %1785 = icmp ult i64 %1783, 1
  %1786 = or i1 %1784, %1785
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1787, i8* %1788, align 1
  %1789 = trunc i64 %1783 to i32
  %1790 = and i32 %1789, 255
  %1791 = call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1794, i8* %1795, align 1
  %1796 = xor i64 1, %1780
  %1797 = xor i64 %1796, %1783
  %1798 = lshr i64 %1797, 4
  %1799 = trunc i64 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1800, i8* %1801, align 1
  %1802 = icmp eq i64 %1783, 0
  %1803 = zext i1 %1802 to i8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1803, i8* %1804, align 1
  %1805 = lshr i64 %1783, 63
  %1806 = trunc i64 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i64 %1780, 63
  %1809 = xor i64 %1805, %1808
  %1810 = add i64 %1809, %1805
  %1811 = icmp eq i64 %1810, 2
  %1812 = zext i1 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1812, i8* %1813, align 1
  store %struct.Memory* %loadMem_400785, %struct.Memory** %MEMORY
  %loadMem_400789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 33
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 1
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 15
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %1822 to i64*
  %1823 = load i64, i64* %RBP.i163
  %1824 = sub i64 %1823, 72
  %1825 = load i64, i64* %RAX.i162
  %1826 = load i64, i64* %PC.i161
  %1827 = add i64 %1826, 4
  store i64 %1827, i64* %PC.i161
  %1828 = inttoptr i64 %1824 to i64*
  store i64 %1825, i64* %1828
  store %struct.Memory* %loadMem_400789, %struct.Memory** %MEMORY
  %loadMem_40078d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 33
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1831 to i64*
  %1832 = load i64, i64* %PC.i160
  %1833 = add i64 %1832, -308
  %1834 = load i64, i64* %PC.i160
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %PC.i160
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1833, i64* %1836, align 8
  store %struct.Memory* %loadMem_40078d, %struct.Memory** %MEMORY
  br label %block_.L_400659

block_.L_400792:                                  ; preds = %block_.L_400659
  %loadMem_400792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 11
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %PC.i159
  %1844 = add i64 %1843, 10
  store i64 %1844, i64* %PC.i159
  store i64 ptrtoint (%G__0x400ad6_type* @G__0x400ad6 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400792, %struct.Memory** %MEMORY
  %loadMem_40079c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1848, i64 0, i64 0
  %YMM0.i157 = bitcast %union.VectorReg* %1849 to %"class.std::bitset"*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1850, i64 0, i64 0
  %XMM0.i158 = bitcast %union.VectorReg* %1851 to %union.vec128_t*
  %1852 = bitcast %"class.std::bitset"* %YMM0.i157 to i8*
  %1853 = bitcast %"class.std::bitset"* %YMM0.i157 to i8*
  %1854 = bitcast %union.vec128_t* %XMM0.i158 to i8*
  %1855 = load i64, i64* %PC.i156
  %1856 = add i64 %1855, 3
  store i64 %1856, i64* %PC.i156
  %1857 = bitcast i8* %1853 to i64*
  %1858 = load i64, i64* %1857, align 1
  %1859 = getelementptr inbounds i8, i8* %1853, i64 8
  %1860 = bitcast i8* %1859 to i64*
  %1861 = load i64, i64* %1860, align 1
  %1862 = bitcast i8* %1854 to i64*
  %1863 = load i64, i64* %1862, align 1
  %1864 = getelementptr inbounds i8, i8* %1854, i64 8
  %1865 = bitcast i8* %1864 to i64*
  %1866 = load i64, i64* %1865, align 1
  %1867 = xor i64 %1863, %1858
  %1868 = xor i64 %1866, %1861
  %1869 = trunc i64 %1867 to i32
  %1870 = lshr i64 %1867, 32
  %1871 = trunc i64 %1870 to i32
  %1872 = bitcast i8* %1852 to i32*
  store i32 %1869, i32* %1872, align 1
  %1873 = getelementptr inbounds i8, i8* %1852, i64 4
  %1874 = bitcast i8* %1873 to i32*
  store i32 %1871, i32* %1874, align 1
  %1875 = trunc i64 %1868 to i32
  %1876 = getelementptr inbounds i8, i8* %1852, i64 8
  %1877 = bitcast i8* %1876 to i32*
  store i32 %1875, i32* %1877, align 1
  %1878 = lshr i64 %1868, 32
  %1879 = trunc i64 %1878 to i32
  %1880 = getelementptr inbounds i8, i8* %1852, i64 12
  %1881 = bitcast i8* %1880 to i32*
  store i32 %1879, i32* %1881, align 1
  store %struct.Memory* %loadMem_40079c, %struct.Memory** %MEMORY
  %loadMem_40079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1885, i64 0, i64 1
  %YMM1.i155 = bitcast %union.VectorReg* %1886 to %"class.std::bitset"*
  %1887 = bitcast %"class.std::bitset"* %YMM1.i155 to i8*
  %1888 = load i64, i64* %PC.i154
  %1889 = add i64 %1888, 665
  %1890 = load i64, i64* %PC.i154
  %1891 = add i64 %1890, 8
  store i64 %1891, i64* %PC.i154
  %1892 = inttoptr i64 %1889 to double*
  %1893 = load double, double* %1892
  %1894 = bitcast i8* %1887 to double*
  store double %1893, double* %1894, align 1
  %1895 = getelementptr inbounds i8, i8* %1887, i64 8
  %1896 = bitcast i8* %1895 to double*
  store double 0.000000e+00, double* %1896, align 1
  store %struct.Memory* %loadMem_40079f, %struct.Memory** %MEMORY
  %loadMem_4007a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1901 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1900, i64 0, i64 2
  %YMM2.i153 = bitcast %union.VectorReg* %1901 to %"class.std::bitset"*
  %1902 = bitcast %"class.std::bitset"* %YMM2.i153 to i8*
  %1903 = load i64, i64* %PC.i152
  %1904 = add i64 %1903, 665
  %1905 = load i64, i64* %PC.i152
  %1906 = add i64 %1905, 8
  store i64 %1906, i64* %PC.i152
  %1907 = inttoptr i64 %1904 to double*
  %1908 = load double, double* %1907
  %1909 = bitcast i8* %1902 to double*
  store double %1908, double* %1909, align 1
  %1910 = getelementptr inbounds i8, i8* %1902, i64 8
  %1911 = bitcast i8* %1910 to double*
  store double 0.000000e+00, double* %1911, align 1
  store %struct.Memory* %loadMem_4007a7, %struct.Memory** %MEMORY
  %loadMem_4007af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1916 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1915, i64 0, i64 3
  %YMM3.i151 = bitcast %union.VectorReg* %1916 to %"class.std::bitset"*
  %1917 = bitcast %"class.std::bitset"* %YMM3.i151 to i8*
  %1918 = load i64, i64* %PC.i150
  %1919 = add i64 %1918, 9
  store i64 %1919, i64* %PC.i150
  %1920 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %1921 = bitcast i8* %1917 to double*
  store double %1920, double* %1921, align 1
  %1922 = getelementptr inbounds i8, i8* %1917, i64 8
  %1923 = bitcast i8* %1922 to double*
  store double 0.000000e+00, double* %1923, align 1
  store %struct.Memory* %loadMem_4007af, %struct.Memory** %MEMORY
  %loadMem_4007b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1928 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1927, i64 0, i64 3
  %YMM3.i149 = bitcast %union.VectorReg* %1928 to %"class.std::bitset"*
  %1929 = bitcast %"class.std::bitset"* %YMM3.i149 to i8*
  %1930 = bitcast %"class.std::bitset"* %YMM3.i149 to i8*
  %1931 = load i64, i64* %PC.i148
  %1932 = add i64 %1931, 9
  store i64 %1932, i64* %PC.i148
  %1933 = bitcast i8* %1930 to double*
  %1934 = load double, double* %1933, align 1
  %1935 = getelementptr inbounds i8, i8* %1930, i64 8
  %1936 = bitcast i8* %1935 to i64*
  %1937 = load i64, i64* %1936, align 1
  %1938 = load double, double* bitcast (%G_0x6012a0_type* @G_0x6012a0 to double*)
  %1939 = fdiv double %1934, %1938
  %1940 = bitcast i8* %1929 to double*
  store double %1939, double* %1940, align 1
  %1941 = getelementptr inbounds i8, i8* %1929, i64 8
  %1942 = bitcast i8* %1941 to i64*
  store i64 %1937, i64* %1942, align 1
  store %struct.Memory* %loadMem_4007b8, %struct.Memory** %MEMORY
  %loadMem_4007c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1949, i64 0, i64 3
  %XMM3.i147 = bitcast %union.VectorReg* %1950 to %union.vec128_t*
  %1951 = load i64, i64* %RBP.i146
  %1952 = sub i64 %1951, 24
  %1953 = bitcast %union.vec128_t* %XMM3.i147 to i8*
  %1954 = load i64, i64* %PC.i145
  %1955 = add i64 %1954, 5
  store i64 %1955, i64* %PC.i145
  %1956 = bitcast i8* %1953 to double*
  %1957 = load double, double* %1956, align 1
  %1958 = inttoptr i64 %1952 to double*
  store double %1957, double* %1958
  store %struct.Memory* %loadMem_4007c1, %struct.Memory** %MEMORY
  %loadMem_4007c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 15
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1965, i64 0, i64 3
  %YMM3.i144 = bitcast %union.VectorReg* %1966 to %"class.std::bitset"*
  %1967 = bitcast %"class.std::bitset"* %YMM3.i144 to i8*
  %1968 = load i64, i64* %RBP.i143
  %1969 = sub i64 %1968, 24
  %1970 = load i64, i64* %PC.i142
  %1971 = add i64 %1970, 5
  store i64 %1971, i64* %PC.i142
  %1972 = inttoptr i64 %1969 to double*
  %1973 = load double, double* %1972
  %1974 = bitcast i8* %1967 to double*
  store double %1973, double* %1974, align 1
  %1975 = getelementptr inbounds i8, i8* %1967, i64 8
  %1976 = bitcast i8* %1975 to double*
  store double 0.000000e+00, double* %1976, align 1
  store %struct.Memory* %loadMem_4007c6, %struct.Memory** %MEMORY
  %loadMem_4007cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 33
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %1979 to i64*
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 15
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1984 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1983, i64 0, i64 3
  %YMM3.i141 = bitcast %union.VectorReg* %1984 to %"class.std::bitset"*
  %1985 = bitcast %"class.std::bitset"* %YMM3.i141 to i8*
  %1986 = bitcast %"class.std::bitset"* %YMM3.i141 to i8*
  %1987 = load i64, i64* %RBP.i140
  %1988 = sub i64 %1987, 24
  %1989 = load i64, i64* %PC.i139
  %1990 = add i64 %1989, 5
  store i64 %1990, i64* %PC.i139
  %1991 = bitcast i8* %1986 to double*
  %1992 = load double, double* %1991, align 1
  %1993 = getelementptr inbounds i8, i8* %1986, i64 8
  %1994 = bitcast i8* %1993 to i64*
  %1995 = load i64, i64* %1994, align 1
  %1996 = inttoptr i64 %1988 to double*
  %1997 = load double, double* %1996
  %1998 = fmul double %1992, %1997
  %1999 = bitcast i8* %1985 to double*
  store double %1998, double* %1999, align 1
  %2000 = getelementptr inbounds i8, i8* %1985, i64 8
  %2001 = bitcast i8* %2000 to i64*
  store i64 %1995, i64* %2001, align 1
  store %struct.Memory* %loadMem_4007cb, %struct.Memory** %MEMORY
  %loadMem_4007d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 15
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2008, i64 0, i64 3
  %XMM3.i138 = bitcast %union.VectorReg* %2009 to %union.vec128_t*
  %2010 = load i64, i64* %RBP.i137
  %2011 = sub i64 %2010, 40
  %2012 = bitcast %union.vec128_t* %XMM3.i138 to i8*
  %2013 = load i64, i64* %PC.i136
  %2014 = add i64 %2013, 5
  store i64 %2014, i64* %PC.i136
  %2015 = bitcast i8* %2012 to double*
  %2016 = load double, double* %2015, align 1
  %2017 = inttoptr i64 %2011 to double*
  store double %2016, double* %2017
  store %struct.Memory* %loadMem_4007d0, %struct.Memory** %MEMORY
  %loadMem_4007d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 33
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 15
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %2023 to i64*
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2024, i64 0, i64 3
  %YMM3.i135 = bitcast %union.VectorReg* %2025 to %"class.std::bitset"*
  %2026 = bitcast %"class.std::bitset"* %YMM3.i135 to i8*
  %2027 = load i64, i64* %RBP.i134
  %2028 = sub i64 %2027, 24
  %2029 = load i64, i64* %PC.i133
  %2030 = add i64 %2029, 5
  store i64 %2030, i64* %PC.i133
  %2031 = inttoptr i64 %2028 to double*
  %2032 = load double, double* %2031
  %2033 = bitcast i8* %2026 to double*
  store double %2032, double* %2033, align 1
  %2034 = getelementptr inbounds i8, i8* %2026, i64 8
  %2035 = bitcast i8* %2034 to double*
  store double 0.000000e+00, double* %2035, align 1
  store %struct.Memory* %loadMem_4007d5, %struct.Memory** %MEMORY
  %loadMem_4007da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 33
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2039, i64 0, i64 4
  %YMM4.i132 = bitcast %union.VectorReg* %2040 to %"class.std::bitset"*
  %2041 = bitcast %"class.std::bitset"* %YMM4.i132 to i8*
  %2042 = load i64, i64* %PC.i131
  %2043 = add i64 %2042, 9
  store i64 %2043, i64* %PC.i131
  %2044 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %2045 = bitcast i8* %2041 to double*
  store double %2044, double* %2045, align 1
  %2046 = getelementptr inbounds i8, i8* %2041, i64 8
  %2047 = bitcast i8* %2046 to double*
  store double 0.000000e+00, double* %2047, align 1
  store %struct.Memory* %loadMem_4007da, %struct.Memory** %MEMORY
  %loadMem_4007e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 15
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2054, i64 0, i64 4
  %YMM4.i130 = bitcast %union.VectorReg* %2055 to %"class.std::bitset"*
  %2056 = bitcast %"class.std::bitset"* %YMM4.i130 to i8*
  %2057 = bitcast %"class.std::bitset"* %YMM4.i130 to i8*
  %2058 = load i64, i64* %RBP.i129
  %2059 = sub i64 %2058, 40
  %2060 = load i64, i64* %PC.i128
  %2061 = add i64 %2060, 5
  store i64 %2061, i64* %PC.i128
  %2062 = bitcast i8* %2057 to double*
  %2063 = load double, double* %2062, align 1
  %2064 = getelementptr inbounds i8, i8* %2057, i64 8
  %2065 = bitcast i8* %2064 to i64*
  %2066 = load i64, i64* %2065, align 1
  %2067 = inttoptr i64 %2059 to double*
  %2068 = load double, double* %2067
  %2069 = fmul double %2063, %2068
  %2070 = bitcast i8* %2056 to double*
  store double %2069, double* %2070, align 1
  %2071 = getelementptr inbounds i8, i8* %2056, i64 8
  %2072 = bitcast i8* %2071 to i64*
  store i64 %2066, i64* %2072, align 1
  store %struct.Memory* %loadMem_4007e3, %struct.Memory** %MEMORY
  %loadMem_4007e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2077 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2076, i64 0, i64 4
  %YMM4.i127 = bitcast %union.VectorReg* %2077 to %"class.std::bitset"*
  %2078 = bitcast %"class.std::bitset"* %YMM4.i127 to i8*
  %2079 = bitcast %"class.std::bitset"* %YMM4.i127 to i8*
  %2080 = load i64, i64* %PC.i126
  %2081 = add i64 %2080, 9
  store i64 %2081, i64* %PC.i126
  %2082 = bitcast i8* %2079 to double*
  %2083 = load double, double* %2082, align 1
  %2084 = getelementptr inbounds i8, i8* %2079, i64 8
  %2085 = bitcast i8* %2084 to i64*
  %2086 = load i64, i64* %2085, align 1
  %2087 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %2088 = fadd double %2083, %2087
  %2089 = bitcast i8* %2078 to double*
  store double %2088, double* %2089, align 1
  %2090 = getelementptr inbounds i8, i8* %2078, i64 8
  %2091 = bitcast i8* %2090 to i64*
  store i64 %2086, i64* %2091, align 1
  store %struct.Memory* %loadMem_4007e8, %struct.Memory** %MEMORY
  %loadMem_4007f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 15
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2098, i64 0, i64 4
  %YMM4.i125 = bitcast %union.VectorReg* %2099 to %"class.std::bitset"*
  %2100 = bitcast %"class.std::bitset"* %YMM4.i125 to i8*
  %2101 = bitcast %"class.std::bitset"* %YMM4.i125 to i8*
  %2102 = load i64, i64* %RBP.i124
  %2103 = sub i64 %2102, 40
  %2104 = load i64, i64* %PC.i123
  %2105 = add i64 %2104, 5
  store i64 %2105, i64* %PC.i123
  %2106 = bitcast i8* %2101 to double*
  %2107 = load double, double* %2106, align 1
  %2108 = getelementptr inbounds i8, i8* %2101, i64 8
  %2109 = bitcast i8* %2108 to i64*
  %2110 = load i64, i64* %2109, align 1
  %2111 = inttoptr i64 %2103 to double*
  %2112 = load double, double* %2111
  %2113 = fmul double %2107, %2112
  %2114 = bitcast i8* %2100 to double*
  store double %2113, double* %2114, align 1
  %2115 = getelementptr inbounds i8, i8* %2100, i64 8
  %2116 = bitcast i8* %2115 to i64*
  store i64 %2110, i64* %2116, align 1
  store %struct.Memory* %loadMem_4007f1, %struct.Memory** %MEMORY
  %loadMem_4007f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2120, i64 0, i64 4
  %YMM4.i122 = bitcast %union.VectorReg* %2121 to %"class.std::bitset"*
  %2122 = bitcast %"class.std::bitset"* %YMM4.i122 to i8*
  %2123 = bitcast %"class.std::bitset"* %YMM4.i122 to i8*
  %2124 = load i64, i64* %PC.i121
  %2125 = add i64 %2124, 9
  store i64 %2125, i64* %PC.i121
  %2126 = bitcast i8* %2123 to double*
  %2127 = load double, double* %2126, align 1
  %2128 = getelementptr inbounds i8, i8* %2123, i64 8
  %2129 = bitcast i8* %2128 to i64*
  %2130 = load i64, i64* %2129, align 1
  %2131 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %2132 = fadd double %2127, %2131
  %2133 = bitcast i8* %2122 to double*
  store double %2132, double* %2133, align 1
  %2134 = getelementptr inbounds i8, i8* %2122, i64 8
  %2135 = bitcast i8* %2134 to i64*
  store i64 %2130, i64* %2135, align 1
  store %struct.Memory* %loadMem_4007f6, %struct.Memory** %MEMORY
  %loadMem_4007ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 15
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2142, i64 0, i64 4
  %YMM4.i120 = bitcast %union.VectorReg* %2143 to %"class.std::bitset"*
  %2144 = bitcast %"class.std::bitset"* %YMM4.i120 to i8*
  %2145 = bitcast %"class.std::bitset"* %YMM4.i120 to i8*
  %2146 = load i64, i64* %RBP.i119
  %2147 = sub i64 %2146, 40
  %2148 = load i64, i64* %PC.i118
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC.i118
  %2150 = bitcast i8* %2145 to double*
  %2151 = load double, double* %2150, align 1
  %2152 = getelementptr inbounds i8, i8* %2145, i64 8
  %2153 = bitcast i8* %2152 to i64*
  %2154 = load i64, i64* %2153, align 1
  %2155 = inttoptr i64 %2147 to double*
  %2156 = load double, double* %2155
  %2157 = fmul double %2151, %2156
  %2158 = bitcast i8* %2144 to double*
  store double %2157, double* %2158, align 1
  %2159 = getelementptr inbounds i8, i8* %2144, i64 8
  %2160 = bitcast i8* %2159 to i64*
  store i64 %2154, i64* %2160, align 1
  store %struct.Memory* %loadMem_4007ff, %struct.Memory** %MEMORY
  %loadMem_400804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2164, i64 0, i64 4
  %YMM4.i117 = bitcast %union.VectorReg* %2165 to %"class.std::bitset"*
  %2166 = bitcast %"class.std::bitset"* %YMM4.i117 to i8*
  %2167 = bitcast %"class.std::bitset"* %YMM4.i117 to i8*
  %2168 = load i64, i64* %PC.i116
  %2169 = add i64 %2168, 9
  store i64 %2169, i64* %PC.i116
  %2170 = bitcast i8* %2167 to double*
  %2171 = load double, double* %2170, align 1
  %2172 = getelementptr inbounds i8, i8* %2167, i64 8
  %2173 = bitcast i8* %2172 to i64*
  %2174 = load i64, i64* %2173, align 1
  %2175 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %2176 = fadd double %2171, %2175
  %2177 = bitcast i8* %2166 to double*
  store double %2176, double* %2177, align 1
  %2178 = getelementptr inbounds i8, i8* %2166, i64 8
  %2179 = bitcast i8* %2178 to i64*
  store i64 %2174, i64* %2179, align 1
  store %struct.Memory* %loadMem_400804, %struct.Memory** %MEMORY
  %loadMem_40080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 33
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 15
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2187 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2186, i64 0, i64 4
  %YMM4.i115 = bitcast %union.VectorReg* %2187 to %"class.std::bitset"*
  %2188 = bitcast %"class.std::bitset"* %YMM4.i115 to i8*
  %2189 = bitcast %"class.std::bitset"* %YMM4.i115 to i8*
  %2190 = load i64, i64* %RBP.i114
  %2191 = sub i64 %2190, 40
  %2192 = load i64, i64* %PC.i113
  %2193 = add i64 %2192, 5
  store i64 %2193, i64* %PC.i113
  %2194 = bitcast i8* %2189 to double*
  %2195 = load double, double* %2194, align 1
  %2196 = getelementptr inbounds i8, i8* %2189, i64 8
  %2197 = bitcast i8* %2196 to i64*
  %2198 = load i64, i64* %2197, align 1
  %2199 = inttoptr i64 %2191 to double*
  %2200 = load double, double* %2199
  %2201 = fmul double %2195, %2200
  %2202 = bitcast i8* %2188 to double*
  store double %2201, double* %2202, align 1
  %2203 = getelementptr inbounds i8, i8* %2188, i64 8
  %2204 = bitcast i8* %2203 to i64*
  store i64 %2198, i64* %2204, align 1
  store %struct.Memory* %loadMem_40080d, %struct.Memory** %MEMORY
  %loadMem_400812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2209 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2208, i64 0, i64 4
  %YMM4.i112 = bitcast %union.VectorReg* %2209 to %"class.std::bitset"*
  %2210 = bitcast %"class.std::bitset"* %YMM4.i112 to i8*
  %2211 = bitcast %"class.std::bitset"* %YMM4.i112 to i8*
  %2212 = load i64, i64* %PC.i111
  %2213 = add i64 %2212, 9
  store i64 %2213, i64* %PC.i111
  %2214 = bitcast i8* %2211 to double*
  %2215 = load double, double* %2214, align 1
  %2216 = getelementptr inbounds i8, i8* %2211, i64 8
  %2217 = bitcast i8* %2216 to i64*
  %2218 = load i64, i64* %2217, align 1
  %2219 = load double, double* bitcast (%G_0x601040_type* @G_0x601040 to double*)
  %2220 = fadd double %2215, %2219
  %2221 = bitcast i8* %2210 to double*
  store double %2220, double* %2221, align 1
  %2222 = getelementptr inbounds i8, i8* %2210, i64 8
  %2223 = bitcast i8* %2222 to i64*
  store i64 %2218, i64* %2223, align 1
  store %struct.Memory* %loadMem_400812, %struct.Memory** %MEMORY
  %loadMem_40081b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 33
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2226 to i64*
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 15
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2231 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2230, i64 0, i64 4
  %YMM4.i110 = bitcast %union.VectorReg* %2231 to %"class.std::bitset"*
  %2232 = bitcast %"class.std::bitset"* %YMM4.i110 to i8*
  %2233 = bitcast %"class.std::bitset"* %YMM4.i110 to i8*
  %2234 = load i64, i64* %RBP.i109
  %2235 = sub i64 %2234, 40
  %2236 = load i64, i64* %PC.i108
  %2237 = add i64 %2236, 5
  store i64 %2237, i64* %PC.i108
  %2238 = bitcast i8* %2233 to double*
  %2239 = load double, double* %2238, align 1
  %2240 = getelementptr inbounds i8, i8* %2233, i64 8
  %2241 = bitcast i8* %2240 to i64*
  %2242 = load i64, i64* %2241, align 1
  %2243 = inttoptr i64 %2235 to double*
  %2244 = load double, double* %2243
  %2245 = fmul double %2239, %2244
  %2246 = bitcast i8* %2232 to double*
  store double %2245, double* %2246, align 1
  %2247 = getelementptr inbounds i8, i8* %2232, i64 8
  %2248 = bitcast i8* %2247 to i64*
  store i64 %2242, i64* %2248, align 1
  store %struct.Memory* %loadMem_40081b, %struct.Memory** %MEMORY
  %loadMem_400820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2252, i64 0, i64 4
  %YMM4.i107 = bitcast %union.VectorReg* %2253 to %"class.std::bitset"*
  %2254 = bitcast %"class.std::bitset"* %YMM4.i107 to i8*
  %2255 = bitcast %"class.std::bitset"* %YMM4.i107 to i8*
  %2256 = load i64, i64* %PC.i106
  %2257 = add i64 %2256, 9
  store i64 %2257, i64* %PC.i106
  %2258 = bitcast i8* %2255 to double*
  %2259 = load double, double* %2258, align 1
  %2260 = getelementptr inbounds i8, i8* %2255, i64 8
  %2261 = bitcast i8* %2260 to i64*
  %2262 = load i64, i64* %2261, align 1
  %2263 = load double, double* bitcast (%G_0x601038_type* @G_0x601038 to double*)
  %2264 = fadd double %2259, %2263
  %2265 = bitcast i8* %2254 to double*
  store double %2264, double* %2265, align 1
  %2266 = getelementptr inbounds i8, i8* %2254, i64 8
  %2267 = bitcast i8* %2266 to i64*
  store i64 %2262, i64* %2267, align 1
  store %struct.Memory* %loadMem_400820, %struct.Memory** %MEMORY
  %loadMem_400829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 15
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2274, i64 0, i64 4
  %YMM4.i105 = bitcast %union.VectorReg* %2275 to %"class.std::bitset"*
  %2276 = bitcast %"class.std::bitset"* %YMM4.i105 to i8*
  %2277 = bitcast %"class.std::bitset"* %YMM4.i105 to i8*
  %2278 = load i64, i64* %RBP.i104
  %2279 = sub i64 %2278, 40
  %2280 = load i64, i64* %PC.i103
  %2281 = add i64 %2280, 5
  store i64 %2281, i64* %PC.i103
  %2282 = bitcast i8* %2277 to double*
  %2283 = load double, double* %2282, align 1
  %2284 = getelementptr inbounds i8, i8* %2277, i64 8
  %2285 = bitcast i8* %2284 to i64*
  %2286 = load i64, i64* %2285, align 1
  %2287 = inttoptr i64 %2279 to double*
  %2288 = load double, double* %2287
  %2289 = fmul double %2283, %2288
  %2290 = bitcast i8* %2276 to double*
  store double %2289, double* %2290, align 1
  %2291 = getelementptr inbounds i8, i8* %2276, i64 8
  %2292 = bitcast i8* %2291 to i64*
  store i64 %2286, i64* %2292, align 1
  store %struct.Memory* %loadMem_400829, %struct.Memory** %MEMORY
  %loadMem_40082e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2296, i64 0, i64 4
  %YMM4.i102 = bitcast %union.VectorReg* %2297 to %"class.std::bitset"*
  %2298 = bitcast %"class.std::bitset"* %YMM4.i102 to i8*
  %2299 = bitcast %"class.std::bitset"* %YMM4.i102 to i8*
  %2300 = load i64, i64* %PC.i101
  %2301 = add i64 %2300, 9
  store i64 %2301, i64* %PC.i101
  %2302 = bitcast i8* %2299 to double*
  %2303 = load double, double* %2302, align 1
  %2304 = getelementptr inbounds i8, i8* %2299, i64 8
  %2305 = bitcast i8* %2304 to i64*
  %2306 = load i64, i64* %2305, align 1
  %2307 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %2308 = fadd double %2303, %2307
  %2309 = bitcast i8* %2298 to double*
  store double %2308, double* %2309, align 1
  %2310 = getelementptr inbounds i8, i8* %2298, i64 8
  %2311 = bitcast i8* %2310 to i64*
  store i64 %2306, i64* %2311, align 1
  store %struct.Memory* %loadMem_40082e, %struct.Memory** %MEMORY
  %loadMem_400837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2314 to i64*
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2316 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2315, i64 0, i64 3
  %YMM3.i99 = bitcast %union.VectorReg* %2316 to %"class.std::bitset"*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2318 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2317, i64 0, i64 4
  %XMM4.i100 = bitcast %union.VectorReg* %2318 to %union.vec128_t*
  %2319 = bitcast %"class.std::bitset"* %YMM3.i99 to i8*
  %2320 = bitcast %"class.std::bitset"* %YMM3.i99 to i8*
  %2321 = bitcast %union.vec128_t* %XMM4.i100 to i8*
  %2322 = load i64, i64* %PC.i98
  %2323 = add i64 %2322, 4
  store i64 %2323, i64* %PC.i98
  %2324 = bitcast i8* %2320 to double*
  %2325 = load double, double* %2324, align 1
  %2326 = getelementptr inbounds i8, i8* %2320, i64 8
  %2327 = bitcast i8* %2326 to i64*
  %2328 = load i64, i64* %2327, align 1
  %2329 = bitcast i8* %2321 to double*
  %2330 = load double, double* %2329, align 1
  %2331 = fmul double %2325, %2330
  %2332 = bitcast i8* %2319 to double*
  store double %2331, double* %2332, align 1
  %2333 = getelementptr inbounds i8, i8* %2319, i64 8
  %2334 = bitcast i8* %2333 to i64*
  store i64 %2328, i64* %2334, align 1
  store %struct.Memory* %loadMem_400837, %struct.Memory** %MEMORY
  %loadMem_40083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 33
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2338, i64 0, i64 3
  %XMM3.i97 = bitcast %union.VectorReg* %2339 to %union.vec128_t*
  %2340 = bitcast %union.vec128_t* %XMM3.i97 to i8*
  %2341 = load i64, i64* %PC.i96
  %2342 = add i64 %2341, 9
  store i64 %2342, i64* %PC.i96
  %2343 = bitcast i8* %2340 to double*
  %2344 = load double, double* %2343, align 1
  store double %2344, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_40083b, %struct.Memory** %MEMORY
  %loadMem_400844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 15
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2351, i64 0, i64 3
  %YMM3.i95 = bitcast %union.VectorReg* %2352 to %"class.std::bitset"*
  %2353 = bitcast %"class.std::bitset"* %YMM3.i95 to i8*
  %2354 = load i64, i64* %RBP.i94
  %2355 = sub i64 %2354, 40
  %2356 = load i64, i64* %PC.i93
  %2357 = add i64 %2356, 5
  store i64 %2357, i64* %PC.i93
  %2358 = inttoptr i64 %2355 to double*
  %2359 = load double, double* %2358
  %2360 = bitcast i8* %2353 to double*
  store double %2359, double* %2360, align 1
  %2361 = getelementptr inbounds i8, i8* %2353, i64 8
  %2362 = bitcast i8* %2361 to double*
  store double 0.000000e+00, double* %2362, align 1
  store %struct.Memory* %loadMem_400844, %struct.Memory** %MEMORY
  %loadMem_400849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 15
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2369, i64 0, i64 4
  %YMM4.i92 = bitcast %union.VectorReg* %2370 to %"class.std::bitset"*
  %2371 = bitcast %"class.std::bitset"* %YMM4.i92 to i8*
  %2372 = load i64, i64* %RBP.i91
  %2373 = sub i64 %2372, 40
  %2374 = load i64, i64* %PC.i90
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %PC.i90
  %2376 = inttoptr i64 %2373 to double*
  %2377 = load double, double* %2376
  %2378 = bitcast i8* %2371 to double*
  store double %2377, double* %2378, align 1
  %2379 = getelementptr inbounds i8, i8* %2371, i64 8
  %2380 = bitcast i8* %2379 to double*
  store double 0.000000e+00, double* %2380, align 1
  store %struct.Memory* %loadMem_400849, %struct.Memory** %MEMORY
  %loadMem_40084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 15
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2388 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2387, i64 0, i64 5
  %YMM5.i89 = bitcast %union.VectorReg* %2388 to %"class.std::bitset"*
  %2389 = bitcast %"class.std::bitset"* %YMM5.i89 to i8*
  %2390 = load i64, i64* %RBP.i88
  %2391 = sub i64 %2390, 40
  %2392 = load i64, i64* %PC.i87
  %2393 = add i64 %2392, 5
  store i64 %2393, i64* %PC.i87
  %2394 = inttoptr i64 %2391 to double*
  %2395 = load double, double* %2394
  %2396 = bitcast i8* %2389 to double*
  store double %2395, double* %2396, align 1
  %2397 = getelementptr inbounds i8, i8* %2389, i64 8
  %2398 = bitcast i8* %2397 to double*
  store double 0.000000e+00, double* %2398, align 1
  store %struct.Memory* %loadMem_40084e, %struct.Memory** %MEMORY
  %loadMem_400853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2400 = getelementptr inbounds %struct.GPR, %struct.GPR* %2399, i32 0, i32 33
  %2401 = getelementptr inbounds %struct.Reg, %struct.Reg* %2400, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2401 to i64*
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 15
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2405, i64 0, i64 6
  %YMM6.i86 = bitcast %union.VectorReg* %2406 to %"class.std::bitset"*
  %2407 = bitcast %"class.std::bitset"* %YMM6.i86 to i8*
  %2408 = load i64, i64* %RBP.i85
  %2409 = sub i64 %2408, 40
  %2410 = load i64, i64* %PC.i84
  %2411 = add i64 %2410, 5
  store i64 %2411, i64* %PC.i84
  %2412 = inttoptr i64 %2409 to double*
  %2413 = load double, double* %2412
  %2414 = bitcast i8* %2407 to double*
  store double %2413, double* %2414, align 1
  %2415 = getelementptr inbounds i8, i8* %2407, i64 8
  %2416 = bitcast i8* %2415 to double*
  store double 0.000000e+00, double* %2416, align 1
  store %struct.Memory* %loadMem_400853, %struct.Memory** %MEMORY
  %loadMem_400858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2418 = getelementptr inbounds %struct.GPR, %struct.GPR* %2417, i32 0, i32 33
  %2419 = getelementptr inbounds %struct.Reg, %struct.Reg* %2418, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2419 to i64*
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 15
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2423, i64 0, i64 7
  %YMM7.i83 = bitcast %union.VectorReg* %2424 to %"class.std::bitset"*
  %2425 = bitcast %"class.std::bitset"* %YMM7.i83 to i8*
  %2426 = load i64, i64* %RBP.i82
  %2427 = sub i64 %2426, 40
  %2428 = load i64, i64* %PC.i81
  %2429 = add i64 %2428, 5
  store i64 %2429, i64* %PC.i81
  %2430 = inttoptr i64 %2427 to double*
  %2431 = load double, double* %2430
  %2432 = bitcast i8* %2425 to double*
  store double %2431, double* %2432, align 1
  %2433 = getelementptr inbounds i8, i8* %2425, i64 8
  %2434 = bitcast i8* %2433 to double*
  store double 0.000000e+00, double* %2434, align 1
  store %struct.Memory* %loadMem_400858, %struct.Memory** %MEMORY
  %loadMem_40085d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 8
  %YMM8.i80 = bitcast %union.VectorReg* %2439 to %"class.std::bitset"*
  %2440 = bitcast %"class.std::bitset"* %YMM8.i80 to i8*
  %2441 = load i64, i64* %PC.i79
  %2442 = add i64 %2441, 10
  store i64 %2442, i64* %PC.i79
  %2443 = load double, double* bitcast (%G_0x601098_type* @G_0x601098 to double*)
  %2444 = bitcast i8* %2440 to double*
  store double %2443, double* %2444, align 1
  %2445 = getelementptr inbounds i8, i8* %2440, i64 8
  %2446 = bitcast i8* %2445 to double*
  store double 0.000000e+00, double* %2446, align 1
  store %struct.Memory* %loadMem_40085d, %struct.Memory** %MEMORY
  %loadMem_400867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 15
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2453, i64 0, i64 8
  %YMM8.i78 = bitcast %union.VectorReg* %2454 to %"class.std::bitset"*
  %2455 = bitcast %"class.std::bitset"* %YMM8.i78 to i8*
  %2456 = bitcast %"class.std::bitset"* %YMM8.i78 to i8*
  %2457 = load i64, i64* %RBP.i77
  %2458 = sub i64 %2457, 40
  %2459 = load i64, i64* %PC.i76
  %2460 = add i64 %2459, 6
  store i64 %2460, i64* %PC.i76
  %2461 = bitcast i8* %2456 to double*
  %2462 = load double, double* %2461, align 1
  %2463 = getelementptr inbounds i8, i8* %2456, i64 8
  %2464 = bitcast i8* %2463 to i64*
  %2465 = load i64, i64* %2464, align 1
  %2466 = inttoptr i64 %2458 to double*
  %2467 = load double, double* %2466
  %2468 = fmul double %2462, %2467
  %2469 = bitcast i8* %2455 to double*
  store double %2468, double* %2469, align 1
  %2470 = getelementptr inbounds i8, i8* %2455, i64 8
  %2471 = bitcast i8* %2470 to i64*
  store i64 %2465, i64* %2471, align 1
  store %struct.Memory* %loadMem_400867, %struct.Memory** %MEMORY
  %loadMem_40086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2476 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2475, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %2476 to %"class.std::bitset"*
  %2477 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %2478 = bitcast %"class.std::bitset"* %YMM8.i to i8*
  %2479 = load i64, i64* %PC.i75
  %2480 = add i64 %2479, 10
  store i64 %2480, i64* %PC.i75
  %2481 = bitcast i8* %2478 to double*
  %2482 = load double, double* %2481, align 1
  %2483 = getelementptr inbounds i8, i8* %2478, i64 8
  %2484 = bitcast i8* %2483 to i64*
  %2485 = load i64, i64* %2484, align 1
  %2486 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
  %2487 = fadd double %2482, %2486
  %2488 = bitcast i8* %2477 to double*
  store double %2487, double* %2488, align 1
  %2489 = getelementptr inbounds i8, i8* %2477, i64 8
  %2490 = bitcast i8* %2489 to i64*
  store i64 %2485, i64* %2490, align 1
  store %struct.Memory* %loadMem_40086d, %struct.Memory** %MEMORY
  %loadMem_400877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2495 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2494, i64 0, i64 7
  %YMM7.i74 = bitcast %union.VectorReg* %2495 to %"class.std::bitset"*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2496, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %2497 to %union.vec128_t*
  %2498 = bitcast %"class.std::bitset"* %YMM7.i74 to i8*
  %2499 = bitcast %"class.std::bitset"* %YMM7.i74 to i8*
  %2500 = bitcast %union.vec128_t* %XMM8.i to i8*
  %2501 = load i64, i64* %PC.i73
  %2502 = add i64 %2501, 5
  store i64 %2502, i64* %PC.i73
  %2503 = bitcast i8* %2499 to double*
  %2504 = load double, double* %2503, align 1
  %2505 = getelementptr inbounds i8, i8* %2499, i64 8
  %2506 = bitcast i8* %2505 to i64*
  %2507 = load i64, i64* %2506, align 1
  %2508 = bitcast i8* %2500 to double*
  %2509 = load double, double* %2508, align 1
  %2510 = fmul double %2504, %2509
  %2511 = bitcast i8* %2498 to double*
  store double %2510, double* %2511, align 1
  %2512 = getelementptr inbounds i8, i8* %2498, i64 8
  %2513 = bitcast i8* %2512 to i64*
  store i64 %2507, i64* %2513, align 1
  store %struct.Memory* %loadMem_400877, %struct.Memory** %MEMORY
  %loadMem_40087c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2517, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %2518 to %"class.std::bitset"*
  %2519 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %2520 = bitcast %"class.std::bitset"* %YMM7.i to i8*
  %2521 = load i64, i64* %PC.i72
  %2522 = add i64 %2521, 9
  store i64 %2522, i64* %PC.i72
  %2523 = bitcast i8* %2520 to double*
  %2524 = load double, double* %2523, align 1
  %2525 = getelementptr inbounds i8, i8* %2520, i64 8
  %2526 = bitcast i8* %2525 to i64*
  %2527 = load i64, i64* %2526, align 1
  %2528 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
  %2529 = fadd double %2524, %2528
  %2530 = bitcast i8* %2519 to double*
  store double %2529, double* %2530, align 1
  %2531 = getelementptr inbounds i8, i8* %2519, i64 8
  %2532 = bitcast i8* %2531 to i64*
  store i64 %2527, i64* %2532, align 1
  store %struct.Memory* %loadMem_40087c, %struct.Memory** %MEMORY
  %loadMem_400885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 33
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2536, i64 0, i64 6
  %YMM6.i71 = bitcast %union.VectorReg* %2537 to %"class.std::bitset"*
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2538, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %2539 to %union.vec128_t*
  %2540 = bitcast %"class.std::bitset"* %YMM6.i71 to i8*
  %2541 = bitcast %"class.std::bitset"* %YMM6.i71 to i8*
  %2542 = bitcast %union.vec128_t* %XMM7.i to i8*
  %2543 = load i64, i64* %PC.i70
  %2544 = add i64 %2543, 4
  store i64 %2544, i64* %PC.i70
  %2545 = bitcast i8* %2541 to double*
  %2546 = load double, double* %2545, align 1
  %2547 = getelementptr inbounds i8, i8* %2541, i64 8
  %2548 = bitcast i8* %2547 to i64*
  %2549 = load i64, i64* %2548, align 1
  %2550 = bitcast i8* %2542 to double*
  %2551 = load double, double* %2550, align 1
  %2552 = fmul double %2546, %2551
  %2553 = bitcast i8* %2540 to double*
  store double %2552, double* %2553, align 1
  %2554 = getelementptr inbounds i8, i8* %2540, i64 8
  %2555 = bitcast i8* %2554 to i64*
  store i64 %2549, i64* %2555, align 1
  store %struct.Memory* %loadMem_400885, %struct.Memory** %MEMORY
  %loadMem_400889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2559, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %2560 to %"class.std::bitset"*
  %2561 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %2562 = bitcast %"class.std::bitset"* %YMM6.i to i8*
  %2563 = load i64, i64* %PC.i69
  %2564 = add i64 %2563, 9
  store i64 %2564, i64* %PC.i69
  %2565 = bitcast i8* %2562 to double*
  %2566 = load double, double* %2565, align 1
  %2567 = getelementptr inbounds i8, i8* %2562, i64 8
  %2568 = bitcast i8* %2567 to i64*
  %2569 = load i64, i64* %2568, align 1
  %2570 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %2571 = fadd double %2566, %2570
  %2572 = bitcast i8* %2561 to double*
  store double %2571, double* %2572, align 1
  %2573 = getelementptr inbounds i8, i8* %2561, i64 8
  %2574 = bitcast i8* %2573 to i64*
  store i64 %2569, i64* %2574, align 1
  store %struct.Memory* %loadMem_400889, %struct.Memory** %MEMORY
  %loadMem_400892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2578, i64 0, i64 5
  %YMM5.i68 = bitcast %union.VectorReg* %2579 to %"class.std::bitset"*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2580, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %2581 to %union.vec128_t*
  %2582 = bitcast %"class.std::bitset"* %YMM5.i68 to i8*
  %2583 = bitcast %"class.std::bitset"* %YMM5.i68 to i8*
  %2584 = bitcast %union.vec128_t* %XMM6.i to i8*
  %2585 = load i64, i64* %PC.i67
  %2586 = add i64 %2585, 4
  store i64 %2586, i64* %PC.i67
  %2587 = bitcast i8* %2583 to double*
  %2588 = load double, double* %2587, align 1
  %2589 = getelementptr inbounds i8, i8* %2583, i64 8
  %2590 = bitcast i8* %2589 to i64*
  %2591 = load i64, i64* %2590, align 1
  %2592 = bitcast i8* %2584 to double*
  %2593 = load double, double* %2592, align 1
  %2594 = fmul double %2588, %2593
  %2595 = bitcast i8* %2582 to double*
  store double %2594, double* %2595, align 1
  %2596 = getelementptr inbounds i8, i8* %2582, i64 8
  %2597 = bitcast i8* %2596 to i64*
  store i64 %2591, i64* %2597, align 1
  store %struct.Memory* %loadMem_400892, %struct.Memory** %MEMORY
  %loadMem_400896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 33
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2602 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2601, i64 0, i64 5
  %YMM5.i66 = bitcast %union.VectorReg* %2602 to %"class.std::bitset"*
  %2603 = bitcast %"class.std::bitset"* %YMM5.i66 to i8*
  %2604 = bitcast %"class.std::bitset"* %YMM5.i66 to i8*
  %2605 = load i64, i64* %PC.i65
  %2606 = add i64 %2605, 9
  store i64 %2606, i64* %PC.i65
  %2607 = bitcast i8* %2604 to double*
  %2608 = load double, double* %2607, align 1
  %2609 = getelementptr inbounds i8, i8* %2604, i64 8
  %2610 = bitcast i8* %2609 to i64*
  %2611 = load i64, i64* %2610, align 1
  %2612 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
  %2613 = fadd double %2608, %2612
  %2614 = bitcast i8* %2603 to double*
  store double %2613, double* %2614, align 1
  %2615 = getelementptr inbounds i8, i8* %2603, i64 8
  %2616 = bitcast i8* %2615 to i64*
  store i64 %2611, i64* %2616, align 1
  store %struct.Memory* %loadMem_400896, %struct.Memory** %MEMORY
  %loadMem_40089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2621 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2620, i64 0, i64 4
  %YMM4.i63 = bitcast %union.VectorReg* %2621 to %"class.std::bitset"*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2623 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2622, i64 0, i64 5
  %XMM5.i64 = bitcast %union.VectorReg* %2623 to %union.vec128_t*
  %2624 = bitcast %"class.std::bitset"* %YMM4.i63 to i8*
  %2625 = bitcast %"class.std::bitset"* %YMM4.i63 to i8*
  %2626 = bitcast %union.vec128_t* %XMM5.i64 to i8*
  %2627 = load i64, i64* %PC.i62
  %2628 = add i64 %2627, 4
  store i64 %2628, i64* %PC.i62
  %2629 = bitcast i8* %2625 to double*
  %2630 = load double, double* %2629, align 1
  %2631 = getelementptr inbounds i8, i8* %2625, i64 8
  %2632 = bitcast i8* %2631 to i64*
  %2633 = load i64, i64* %2632, align 1
  %2634 = bitcast i8* %2626 to double*
  %2635 = load double, double* %2634, align 1
  %2636 = fmul double %2630, %2635
  %2637 = bitcast i8* %2624 to double*
  store double %2636, double* %2637, align 1
  %2638 = getelementptr inbounds i8, i8* %2624, i64 8
  %2639 = bitcast i8* %2638 to i64*
  store i64 %2633, i64* %2639, align 1
  store %struct.Memory* %loadMem_40089f, %struct.Memory** %MEMORY
  %loadMem_4008a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2642 to i64*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2643, i64 0, i64 4
  %YMM4.i61 = bitcast %union.VectorReg* %2644 to %"class.std::bitset"*
  %2645 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %2646 = bitcast %"class.std::bitset"* %YMM4.i61 to i8*
  %2647 = load i64, i64* %PC.i60
  %2648 = add i64 %2647, 9
  store i64 %2648, i64* %PC.i60
  %2649 = bitcast i8* %2646 to double*
  %2650 = load double, double* %2649, align 1
  %2651 = getelementptr inbounds i8, i8* %2646, i64 8
  %2652 = bitcast i8* %2651 to i64*
  %2653 = load i64, i64* %2652, align 1
  %2654 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %2655 = fadd double %2650, %2654
  %2656 = bitcast i8* %2645 to double*
  store double %2655, double* %2656, align 1
  %2657 = getelementptr inbounds i8, i8* %2645, i64 8
  %2658 = bitcast i8* %2657 to i64*
  store i64 %2653, i64* %2658, align 1
  store %struct.Memory* %loadMem_4008a3, %struct.Memory** %MEMORY
  %loadMem_4008ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2663 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2662, i64 0, i64 3
  %YMM3.i58 = bitcast %union.VectorReg* %2663 to %"class.std::bitset"*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2664, i64 0, i64 4
  %XMM4.i59 = bitcast %union.VectorReg* %2665 to %union.vec128_t*
  %2666 = bitcast %"class.std::bitset"* %YMM3.i58 to i8*
  %2667 = bitcast %"class.std::bitset"* %YMM3.i58 to i8*
  %2668 = bitcast %union.vec128_t* %XMM4.i59 to i8*
  %2669 = load i64, i64* %PC.i57
  %2670 = add i64 %2669, 4
  store i64 %2670, i64* %PC.i57
  %2671 = bitcast i8* %2667 to double*
  %2672 = load double, double* %2671, align 1
  %2673 = getelementptr inbounds i8, i8* %2667, i64 8
  %2674 = bitcast i8* %2673 to i64*
  %2675 = load i64, i64* %2674, align 1
  %2676 = bitcast i8* %2668 to double*
  %2677 = load double, double* %2676, align 1
  %2678 = fmul double %2672, %2677
  %2679 = bitcast i8* %2666 to double*
  store double %2678, double* %2679, align 1
  %2680 = getelementptr inbounds i8, i8* %2666, i64 8
  %2681 = bitcast i8* %2680 to i64*
  store i64 %2675, i64* %2681, align 1
  store %struct.Memory* %loadMem_4008ac, %struct.Memory** %MEMORY
  %loadMem_4008b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2686 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2685, i64 0, i64 3
  %YMM3.i56 = bitcast %union.VectorReg* %2686 to %"class.std::bitset"*
  %2687 = bitcast %"class.std::bitset"* %YMM3.i56 to i8*
  %2688 = bitcast %"class.std::bitset"* %YMM3.i56 to i8*
  %2689 = load i64, i64* %PC.i55
  %2690 = add i64 %2689, 9
  store i64 %2690, i64* %PC.i55
  %2691 = bitcast i8* %2688 to double*
  %2692 = load double, double* %2691, align 1
  %2693 = getelementptr inbounds i8, i8* %2688, i64 8
  %2694 = bitcast i8* %2693 to i64*
  %2695 = load i64, i64* %2694, align 1
  %2696 = load double, double* bitcast (%G_0x601288_type* @G_0x601288 to double*)
  %2697 = fadd double %2692, %2696
  %2698 = bitcast i8* %2687 to double*
  store double %2697, double* %2698, align 1
  %2699 = getelementptr inbounds i8, i8* %2687, i64 8
  %2700 = bitcast i8* %2699 to i64*
  store i64 %2695, i64* %2700, align 1
  store %struct.Memory* %loadMem_4008b0, %struct.Memory** %MEMORY
  %loadMem_4008b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2704, i64 0, i64 3
  %XMM3.i54 = bitcast %union.VectorReg* %2705 to %union.vec128_t*
  %2706 = bitcast %union.vec128_t* %XMM3.i54 to i8*
  %2707 = load i64, i64* %PC.i53
  %2708 = add i64 %2707, 9
  store i64 %2708, i64* %PC.i53
  %2709 = bitcast i8* %2706 to double*
  %2710 = load double, double* %2709, align 1
  store double %2710, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  store %struct.Memory* %loadMem_4008b9, %struct.Memory** %MEMORY
  %loadMem_4008c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2714, i64 0, i64 3
  %YMM3.i52 = bitcast %union.VectorReg* %2715 to %"class.std::bitset"*
  %2716 = bitcast %"class.std::bitset"* %YMM3.i52 to i8*
  %2717 = load i64, i64* %PC.i51
  %2718 = add i64 %2717, 9
  store i64 %2718, i64* %PC.i51
  %2719 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2720 = bitcast i8* %2716 to double*
  store double %2719, double* %2720, align 1
  %2721 = getelementptr inbounds i8, i8* %2716, i64 8
  %2722 = bitcast i8* %2721 to double*
  store double 0.000000e+00, double* %2722, align 1
  store %struct.Memory* %loadMem_4008c2, %struct.Memory** %MEMORY
  %loadMem_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 33
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2725 to i64*
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2726, i64 0, i64 3
  %YMM3.i50 = bitcast %union.VectorReg* %2727 to %"class.std::bitset"*
  %2728 = bitcast %"class.std::bitset"* %YMM3.i50 to i8*
  %2729 = bitcast %"class.std::bitset"* %YMM3.i50 to i8*
  %2730 = load i64, i64* %PC.i49
  %2731 = add i64 %2730, 9
  store i64 %2731, i64* %PC.i49
  %2732 = bitcast i8* %2729 to double*
  %2733 = load double, double* %2732, align 1
  %2734 = getelementptr inbounds i8, i8* %2729, i64 8
  %2735 = bitcast i8* %2734 to i64*
  %2736 = load i64, i64* %2735, align 1
  %2737 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %2738 = fmul double %2733, %2737
  %2739 = bitcast i8* %2728 to double*
  store double %2738, double* %2739, align 1
  %2740 = getelementptr inbounds i8, i8* %2728, i64 8
  %2741 = bitcast i8* %2740 to i64*
  store i64 %2736, i64* %2741, align 1
  store %struct.Memory* %loadMem_4008cb, %struct.Memory** %MEMORY
  %loadMem_4008d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2746 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2745, i64 0, i64 3
  %YMM3.i48 = bitcast %union.VectorReg* %2746 to %"class.std::bitset"*
  %2747 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2748 = bitcast %"class.std::bitset"* %YMM3.i48 to i8*
  %2749 = load i64, i64* %PC.i47
  %2750 = add i64 %2749, 9
  store i64 %2750, i64* %PC.i47
  %2751 = bitcast i8* %2748 to double*
  %2752 = load double, double* %2751, align 1
  %2753 = getelementptr inbounds i8, i8* %2748, i64 8
  %2754 = bitcast i8* %2753 to i64*
  %2755 = load i64, i64* %2754, align 1
  %2756 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %2757 = fmul double %2752, %2756
  %2758 = bitcast i8* %2747 to double*
  store double %2757, double* %2758, align 1
  %2759 = getelementptr inbounds i8, i8* %2747, i64 8
  %2760 = bitcast i8* %2759 to i64*
  store i64 %2755, i64* %2760, align 1
  store %struct.Memory* %loadMem_4008d4, %struct.Memory** %MEMORY
  %loadMem_4008dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2765 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2764, i64 0, i64 3
  %XMM3.i46 = bitcast %union.VectorReg* %2765 to %union.vec128_t*
  %2766 = bitcast %union.vec128_t* %XMM3.i46 to i8*
  %2767 = load i64, i64* %PC.i45
  %2768 = add i64 %2767, 9
  store i64 %2768, i64* %PC.i45
  %2769 = bitcast i8* %2766 to double*
  %2770 = load double, double* %2769, align 1
  store double %2770, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_4008dd, %struct.Memory** %MEMORY
  %loadMem_4008e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 15
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2777, i64 0, i64 3
  %YMM3.i44 = bitcast %union.VectorReg* %2778 to %"class.std::bitset"*
  %2779 = bitcast %"class.std::bitset"* %YMM3.i44 to i8*
  %2780 = load i64, i64* %RBP.i43
  %2781 = sub i64 %2780, 48
  %2782 = load i64, i64* %PC.i42
  %2783 = add i64 %2782, 5
  store i64 %2783, i64* %PC.i42
  %2784 = inttoptr i64 %2781 to double*
  %2785 = load double, double* %2784
  %2786 = bitcast i8* %2779 to double*
  store double %2785, double* %2786, align 1
  %2787 = getelementptr inbounds i8, i8* %2779, i64 8
  %2788 = bitcast i8* %2787 to double*
  store double 0.000000e+00, double* %2788, align 1
  store %struct.Memory* %loadMem_4008e6, %struct.Memory** %MEMORY
  %loadMem_4008eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 33
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2792, i64 0, i64 4
  %YMM4.i41 = bitcast %union.VectorReg* %2793 to %"class.std::bitset"*
  %2794 = bitcast %"class.std::bitset"* %YMM4.i41 to i8*
  %2795 = load i64, i64* %PC.i40
  %2796 = add i64 %2795, 9
  store i64 %2796, i64* %PC.i40
  %2797 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2798 = bitcast i8* %2794 to double*
  store double %2797, double* %2798, align 1
  %2799 = getelementptr inbounds i8, i8* %2794, i64 8
  %2800 = bitcast i8* %2799 to double*
  store double 0.000000e+00, double* %2800, align 1
  store %struct.Memory* %loadMem_4008eb, %struct.Memory** %MEMORY
  %loadMem_4008f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2805 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2804, i64 0, i64 5
  %YMM5.i39 = bitcast %union.VectorReg* %2805 to %"class.std::bitset"*
  %2806 = bitcast %"class.std::bitset"* %YMM5.i39 to i8*
  %2807 = load i64, i64* %PC.i38
  %2808 = add i64 %2807, 9
  store i64 %2808, i64* %PC.i38
  %2809 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2810 = bitcast i8* %2806 to double*
  store double %2809, double* %2810, align 1
  %2811 = getelementptr inbounds i8, i8* %2806, i64 8
  %2812 = bitcast i8* %2811 to double*
  store double 0.000000e+00, double* %2812, align 1
  store %struct.Memory* %loadMem_4008f4, %struct.Memory** %MEMORY
  %loadMem_4008fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 15
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2820 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2819, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %2820 to %"class.std::bitset"*
  %2821 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2822 = bitcast %"class.std::bitset"* %YMM5.i to i8*
  %2823 = load i64, i64* %RBP.i37
  %2824 = sub i64 %2823, 16
  %2825 = load i64, i64* %PC.i36
  %2826 = add i64 %2825, 5
  store i64 %2826, i64* %PC.i36
  %2827 = bitcast i8* %2822 to double*
  %2828 = load double, double* %2827, align 1
  %2829 = getelementptr inbounds i8, i8* %2822, i64 8
  %2830 = bitcast i8* %2829 to i64*
  %2831 = load i64, i64* %2830, align 1
  %2832 = inttoptr i64 %2824 to double*
  %2833 = load double, double* %2832
  %2834 = fmul double %2828, %2833
  %2835 = bitcast i8* %2821 to double*
  store double %2834, double* %2835, align 1
  %2836 = getelementptr inbounds i8, i8* %2821, i64 8
  %2837 = bitcast i8* %2836 to i64*
  store i64 %2831, i64* %2837, align 1
  store %struct.Memory* %loadMem_4008fd, %struct.Memory** %MEMORY
  %loadMem_400902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2841, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %2842 to %"class.std::bitset"*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2844 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2843, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %2844 to %union.vec128_t*
  %2845 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2846 = bitcast %"class.std::bitset"* %YMM4.i to i8*
  %2847 = bitcast %union.vec128_t* %XMM5.i to i8*
  %2848 = load i64, i64* %PC.i35
  %2849 = add i64 %2848, 4
  store i64 %2849, i64* %PC.i35
  %2850 = bitcast i8* %2846 to double*
  %2851 = load double, double* %2850, align 1
  %2852 = getelementptr inbounds i8, i8* %2846, i64 8
  %2853 = bitcast i8* %2852 to i64*
  %2854 = load i64, i64* %2853, align 1
  %2855 = bitcast i8* %2847 to double*
  %2856 = load double, double* %2855, align 1
  %2857 = fadd double %2851, %2856
  %2858 = bitcast i8* %2845 to double*
  store double %2857, double* %2858, align 1
  %2859 = getelementptr inbounds i8, i8* %2845, i64 8
  %2860 = bitcast i8* %2859 to i64*
  store i64 %2854, i64* %2860, align 1
  store %struct.Memory* %loadMem_400902, %struct.Memory** %MEMORY
  %loadMem_400906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2865 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2864, i64 0, i64 3
  %YMM3.i34 = bitcast %union.VectorReg* %2865 to %"class.std::bitset"*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2867 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2866, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %2867 to %union.vec128_t*
  %2868 = bitcast %"class.std::bitset"* %YMM3.i34 to i8*
  %2869 = bitcast %"class.std::bitset"* %YMM3.i34 to i8*
  %2870 = bitcast %union.vec128_t* %XMM4.i to i8*
  %2871 = load i64, i64* %PC.i33
  %2872 = add i64 %2871, 4
  store i64 %2872, i64* %PC.i33
  %2873 = bitcast i8* %2869 to double*
  %2874 = load double, double* %2873, align 1
  %2875 = getelementptr inbounds i8, i8* %2869, i64 8
  %2876 = bitcast i8* %2875 to i64*
  %2877 = load i64, i64* %2876, align 1
  %2878 = bitcast i8* %2870 to double*
  %2879 = load double, double* %2878, align 1
  %2880 = fmul double %2874, %2879
  %2881 = bitcast i8* %2868 to double*
  store double %2880, double* %2881, align 1
  %2882 = getelementptr inbounds i8, i8* %2868, i64 8
  %2883 = bitcast i8* %2882 to i64*
  store i64 %2877, i64* %2883, align 1
  store %struct.Memory* %loadMem_400906, %struct.Memory** %MEMORY
  %loadMem_40090a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2888 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2887, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %2888 to %"class.std::bitset"*
  %2889 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2890 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %2891 = load i64, i64* %PC.i32
  %2892 = add i64 %2891, 9
  store i64 %2892, i64* %PC.i32
  %2893 = bitcast i8* %2890 to double*
  %2894 = load double, double* %2893, align 1
  %2895 = getelementptr inbounds i8, i8* %2890, i64 8
  %2896 = bitcast i8* %2895 to i64*
  %2897 = load i64, i64* %2896, align 1
  %2898 = load double, double* bitcast (%G_0x601120_type* @G_0x601120 to double*)
  %2899 = fdiv double %2894, %2898
  %2900 = bitcast i8* %2889 to double*
  store double %2899, double* %2900, align 1
  %2901 = getelementptr inbounds i8, i8* %2889, i64 8
  %2902 = bitcast i8* %2901 to i64*
  store i64 %2897, i64* %2902, align 1
  store %struct.Memory* %loadMem_40090a, %struct.Memory** %MEMORY
  %loadMem_400913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2905 to i64*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2906, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %2907 to %union.vec128_t*
  %2908 = bitcast %union.vec128_t* %XMM3.i to i8*
  %2909 = load i64, i64* %PC.i31
  %2910 = add i64 %2909, 9
  store i64 %2910, i64* %PC.i31
  %2911 = bitcast i8* %2908 to double*
  %2912 = load double, double* %2911, align 1
  store double %2912, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  store %struct.Memory* %loadMem_400913, %struct.Memory** %MEMORY
  %loadMem_40091c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 33
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2917 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2916, i64 0, i64 2
  %XMM2.i30 = bitcast %union.VectorReg* %2917 to %union.vec128_t*
  %2918 = bitcast %union.vec128_t* %XMM2.i30 to i8*
  %2919 = load i64, i64* %PC.i29
  %2920 = add i64 %2919, 9
  store i64 %2920, i64* %PC.i29
  %2921 = bitcast i8* %2918 to double*
  %2922 = load double, double* %2921, align 1
  store double %2922, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  store %struct.Memory* %loadMem_40091c, %struct.Memory** %MEMORY
  %loadMem_400925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 33
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2925 to i64*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2926, i64 0, i64 2
  %YMM2.i28 = bitcast %union.VectorReg* %2927 to %"class.std::bitset"*
  %2928 = bitcast %"class.std::bitset"* %YMM2.i28 to i8*
  %2929 = load i64, i64* %PC.i27
  %2930 = add i64 %2929, 9
  store i64 %2930, i64* %PC.i27
  %2931 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %2932 = bitcast i8* %2928 to double*
  store double %2931, double* %2932, align 1
  %2933 = getelementptr inbounds i8, i8* %2928, i64 8
  %2934 = bitcast i8* %2933 to double*
  store double 0.000000e+00, double* %2934, align 1
  store %struct.Memory* %loadMem_400925, %struct.Memory** %MEMORY
  %loadMem_40092e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 33
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2938, i64 0, i64 2
  %YMM2.i26 = bitcast %union.VectorReg* %2939 to %"class.std::bitset"*
  %2940 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2941 = bitcast %"class.std::bitset"* %YMM2.i26 to i8*
  %2942 = load i64, i64* %PC.i25
  %2943 = add i64 %2942, 9
  store i64 %2943, i64* %PC.i25
  %2944 = bitcast i8* %2941 to double*
  %2945 = load double, double* %2944, align 1
  %2946 = getelementptr inbounds i8, i8* %2941, i64 8
  %2947 = bitcast i8* %2946 to i64*
  %2948 = load i64, i64* %2947, align 1
  %2949 = load double, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
  %2950 = fsub double %2945, %2949
  %2951 = bitcast i8* %2940 to double*
  store double %2950, double* %2951, align 1
  %2952 = getelementptr inbounds i8, i8* %2940, i64 8
  %2953 = bitcast i8* %2952 to i64*
  store i64 %2948, i64* %2953, align 1
  store %struct.Memory* %loadMem_40092e, %struct.Memory** %MEMORY
  %loadMem_400937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 33
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2958 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2957, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2958 to %union.vec128_t*
  %2959 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2960 = load i64, i64* %PC.i24
  %2961 = add i64 %2960, 9
  store i64 %2961, i64* %PC.i24
  %2962 = bitcast i8* %2959 to double*
  %2963 = load double, double* %2962, align 1
  store double %2963, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  store %struct.Memory* %loadMem_400937, %struct.Memory** %MEMORY
  %loadMem_400940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2968 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2967, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %2968 to %"class.std::bitset"*
  %2969 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2970 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2971 = load i64, i64* %PC.i22
  %2972 = add i64 %2971, 9
  store i64 %2972, i64* %PC.i22
  %2973 = bitcast i8* %2970 to double*
  %2974 = load double, double* %2973, align 1
  %2975 = getelementptr inbounds i8, i8* %2970, i64 8
  %2976 = bitcast i8* %2975 to i64*
  %2977 = load i64, i64* %2976, align 1
  %2978 = load double, double* bitcast (%G_0x601290_type* @G_0x601290 to double*)
  %2979 = fmul double %2974, %2978
  %2980 = bitcast i8* %2969 to double*
  store double %2979, double* %2980, align 1
  %2981 = getelementptr inbounds i8, i8* %2969, i64 8
  %2982 = bitcast i8* %2981 to i64*
  store i64 %2977, i64* %2982, align 1
  store %struct.Memory* %loadMem_400940, %struct.Memory** %MEMORY
  %loadMem_400949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 15
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2990 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2989, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2990 to %union.vec128_t*
  %2991 = load i64, i64* %RBP.i21
  %2992 = sub i64 %2991, 112
  %2993 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2994 = load i64, i64* %PC.i20
  %2995 = add i64 %2994, 5
  store i64 %2995, i64* %PC.i20
  %2996 = bitcast i8* %2993 to double*
  %2997 = load double, double* %2996, align 1
  %2998 = inttoptr i64 %2992 to double*
  store double %2997, double* %2998
  store %struct.Memory* %loadMem_400949, %struct.Memory** %MEMORY
  %loadMem_40094e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3002, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3003 to %"class.std::bitset"*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3005 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3004, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3005 to %union.vec128_t*
  %3006 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3007 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3008 = load i64, i64* %PC.i19
  %3009 = add i64 %3008, 3
  store i64 %3009, i64* %PC.i19
  %3010 = bitcast i8* %3007 to <2 x i32>*
  %3011 = load <2 x i32>, <2 x i32>* %3010, align 1
  %3012 = getelementptr inbounds i8, i8* %3007, i64 8
  %3013 = bitcast i8* %3012 to <2 x i32>*
  %3014 = load <2 x i32>, <2 x i32>* %3013, align 1
  %3015 = extractelement <2 x i32> %3011, i32 0
  %3016 = bitcast i8* %3006 to i32*
  store i32 %3015, i32* %3016, align 1
  %3017 = extractelement <2 x i32> %3011, i32 1
  %3018 = getelementptr inbounds i8, i8* %3006, i64 4
  %3019 = bitcast i8* %3018 to i32*
  store i32 %3017, i32* %3019, align 1
  %3020 = extractelement <2 x i32> %3014, i32 0
  %3021 = getelementptr inbounds i8, i8* %3006, i64 8
  %3022 = bitcast i8* %3021 to i32*
  store i32 %3020, i32* %3022, align 1
  %3023 = extractelement <2 x i32> %3014, i32 1
  %3024 = getelementptr inbounds i8, i8* %3006, i64 12
  %3025 = bitcast i8* %3024 to i32*
  store i32 %3023, i32* %3025, align 1
  store %struct.Memory* %loadMem_40094e, %struct.Memory** %MEMORY
  %loadMem_400951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 15
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3032, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3033 to %"class.std::bitset"*
  %3034 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3035 = load i64, i64* %RBP.i18
  %3036 = sub i64 %3035, 112
  %3037 = load i64, i64* %PC.i17
  %3038 = add i64 %3037, 5
  store i64 %3038, i64* %PC.i17
  %3039 = inttoptr i64 %3036 to double*
  %3040 = load double, double* %3039
  %3041 = bitcast i8* %3034 to double*
  store double %3040, double* %3041, align 1
  %3042 = getelementptr inbounds i8, i8* %3034, i64 8
  %3043 = bitcast i8* %3042 to double*
  store double 0.000000e+00, double* %3043, align 1
  store %struct.Memory* %loadMem_400951, %struct.Memory** %MEMORY
  %loadMem_400956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 33
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 15
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3051 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3050, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3051 to %"class.std::bitset"*
  %3052 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3053 = load i64, i64* %RBP.i16
  %3054 = sub i64 %3053, 112
  %3055 = load i64, i64* %PC.i15
  %3056 = add i64 %3055, 5
  store i64 %3056, i64* %PC.i15
  %3057 = inttoptr i64 %3054 to double*
  %3058 = load double, double* %3057
  %3059 = bitcast i8* %3052 to double*
  store double %3058, double* %3059, align 1
  %3060 = getelementptr inbounds i8, i8* %3052, i64 8
  %3061 = bitcast i8* %3060 to double*
  store double 0.000000e+00, double* %3061, align 1
  store %struct.Memory* %loadMem_400956, %struct.Memory** %MEMORY
  %loadMem_40095b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 1
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %3068 = bitcast %union.anon* %3067 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3068, i32 0, i32 0
  %3069 = load i64, i64* %PC.i14
  %3070 = add i64 %3069, 2
  store i64 %3070, i64* %PC.i14
  store i8 3, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_40095b, %struct.Memory** %MEMORY
  %loadMem1_40095d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3073 to i64*
  %3074 = load i64, i64* %PC.i13
  %3075 = add i64 %3074, -1341
  %3076 = load i64, i64* %PC.i13
  %3077 = add i64 %3076, 5
  %3078 = load i64, i64* %PC.i13
  %3079 = add i64 %3078, 5
  store i64 %3079, i64* %PC.i13
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3081 = load i64, i64* %3080, align 8
  %3082 = add i64 %3081, -8
  %3083 = inttoptr i64 %3082 to i64*
  store i64 %3077, i64* %3083
  store i64 %3082, i64* %3080, align 8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3075, i64* %3084, align 8
  store %struct.Memory* %loadMem1_40095d, %struct.Memory** %MEMORY
  %loadMem2_40095d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40095d = load i64, i64* %3
  %3085 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_40095d)
  store %struct.Memory* %3085, %struct.Memory** %MEMORY
  %loadMem_400962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 5
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %3091 to i32*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 5
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3094 to i64*
  %3095 = load i64, i64* %RCX.i
  %3096 = load i32, i32* %ECX.i9
  %3097 = zext i32 %3096 to i64
  %3098 = load i64, i64* %PC.i8
  %3099 = add i64 %3098, 2
  store i64 %3099, i64* %PC.i8
  %3100 = xor i64 %3097, %3095
  %3101 = trunc i64 %3100 to i32
  %3102 = and i64 %3100, 4294967295
  store i64 %3102, i64* %RCX.i, align 8
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3103, align 1
  %3104 = and i32 %3101, 255
  %3105 = call i32 @llvm.ctpop.i32(i32 %3104)
  %3106 = trunc i32 %3105 to i8
  %3107 = and i8 %3106, 1
  %3108 = xor i8 %3107, 1
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3108, i8* %3109, align 1
  %3110 = icmp eq i32 %3101, 0
  %3111 = zext i1 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3111, i8* %3112, align 1
  %3113 = lshr i32 %3101, 31
  %3114 = trunc i32 %3113 to i8
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3114, i8* %3115, align 1
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3116, align 1
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3117, align 1
  store %struct.Memory* %loadMem_400962, %struct.Memory** %MEMORY
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 33
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3120 to i64*
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 1
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3123 to i32*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 15
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3126 to i64*
  %3127 = load i64, i64* %RBP.i7
  %3128 = sub i64 %3127, 116
  %3129 = load i32, i32* %EAX.i
  %3130 = zext i32 %3129 to i64
  %3131 = load i64, i64* %PC.i6
  %3132 = add i64 %3131, 3
  store i64 %3132, i64* %PC.i6
  %3133 = inttoptr i64 %3128 to i32*
  store i32 %3129, i32* %3133
  store %struct.Memory* %loadMem_400964, %struct.Memory** %MEMORY
  %loadMem_400967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 33
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3136 to i64*
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 5
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3139 to i32*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 1
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3142 to i64*
  %3143 = load i32, i32* %ECX.i
  %3144 = zext i32 %3143 to i64
  %3145 = load i64, i64* %PC.i5
  %3146 = add i64 %3145, 2
  store i64 %3146, i64* %PC.i5
  %3147 = and i64 %3144, 4294967295
  store i64 %3147, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400967, %struct.Memory** %MEMORY
  %loadMem_400969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 33
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 13
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %RSP.i
  %3155 = load i64, i64* %PC.i4
  %3156 = add i64 %3155, 7
  store i64 %3156, i64* %PC.i4
  %3157 = add i64 128, %3154
  store i64 %3157, i64* %RSP.i, align 8
  %3158 = icmp ult i64 %3157, %3154
  %3159 = icmp ult i64 %3157, 128
  %3160 = or i1 %3158, %3159
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3161, i8* %3162, align 1
  %3163 = trunc i64 %3157 to i32
  %3164 = and i32 %3163, 255
  %3165 = call i32 @llvm.ctpop.i32(i32 %3164)
  %3166 = trunc i32 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = xor i8 %3167, 1
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3168, i8* %3169, align 1
  %3170 = xor i64 128, %3154
  %3171 = xor i64 %3170, %3157
  %3172 = lshr i64 %3171, 4
  %3173 = trunc i64 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3174, i8* %3175, align 1
  %3176 = icmp eq i64 %3157, 0
  %3177 = zext i1 %3176 to i8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3177, i8* %3178, align 1
  %3179 = lshr i64 %3157, 63
  %3180 = trunc i64 %3179 to i8
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3180, i8* %3181, align 1
  %3182 = lshr i64 %3154, 63
  %3183 = xor i64 %3179, %3182
  %3184 = add i64 %3183, %3179
  %3185 = icmp eq i64 %3184, 2
  %3186 = zext i1 %3185 to i8
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3186, i8* %3187, align 1
  store %struct.Memory* %loadMem_400969, %struct.Memory** %MEMORY
  %loadMem_400970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 15
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %PC.i2
  %3195 = add i64 %3194, 1
  store i64 %3195, i64* %PC.i2
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3197 = load i64, i64* %3196, align 8
  %3198 = add i64 %3197, 8
  %3199 = inttoptr i64 %3197 to i64*
  %3200 = load i64, i64* %3199
  store i64 %3200, i64* %RBP.i3, align 8
  store i64 %3198, i64* %3196, align 8
  store %struct.Memory* %loadMem_400970, %struct.Memory** %MEMORY
  %loadMem_400971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 33
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3203 to i64*
  %3204 = load i64, i64* %PC.i1
  %3205 = add i64 %3204, 1
  store i64 %3205, i64* %PC.i1
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3208 = load i64, i64* %3207, align 8
  %3209 = inttoptr i64 %3208 to i64*
  %3210 = load i64, i64* %3209
  store i64 %3210, i64* %3206, align 8
  %3211 = add i64 %3208, 8
  store i64 %3211, i64* %3207, align 8
  store %struct.Memory* %loadMem_400971, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400971
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

define %struct.Memory* @routine_movq__0x400a80___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a80_type* @G__0x400a80 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400a48___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a48_type* @G__0x400a48 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x400a82___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400a82_type* @G__0x400a82 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x49f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movsd_0x49f__rip____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1191
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

define %struct.Memory* @routine_movq__0x400ab2___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400ab2_type* @G__0x400ab2 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_imulq__0x2710__MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jg_.L_400792(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x601098___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM5 to i8*
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

define %struct.Memory* @routine_addsd_0x601090___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601090_type* @G_0x601090 to double*)
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

define %struct.Memory* @routine_addsd_0x601088___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
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

define %struct.Memory* @routine_addsd_0x601080___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601078___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601078_type* @G_0x601078 to double*)
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

define %struct.Memory* @routine_addsd_0x601070___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601070_type* @G_0x601070 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
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

define %struct.Memory* @routine_movsd_0x601060___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addsd_0x601058___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601058_type* @G_0x601058 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601050___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601050_type* @G_0x601050 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601048___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601048_type* @G_0x601048 to double*)
  %18 = fadd double %13, %17
  %19 = bitcast i8* %8 to double*
  store double %18, double* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 8
  %21 = bitcast i8* %20 to i64*
  store i64 %16, i64* %21, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_0x601040___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_400659(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x400ad6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400ad6_type* @G__0x400ad6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x291__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 665
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

define %struct.Memory* @routine_movsd_0x291__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 665
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
  %11 = load double, double* bitcast (%G_0x601260_type* @G_0x601260 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x6012a0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601060_type* @G_0x601060 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x28__rbp____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm7(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
block_400488:
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
block_400488:
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
block_400488:
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
  %17 = load double, double* bitcast (%G_0x601088_type* @G_0x601088 to double*)
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

define %struct.Memory* @routine_addsd_0x601080___xmm6(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load double, double* bitcast (%G_0x601080_type* @G_0x601080 to double*)
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

define %struct.Memory* @routine_addsd_0x601078___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm3__0x601258(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store double %12, double* bitcast (%G_0x601258_type* @G_0x601258 to double*)
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

define %struct.Memory* @routine_mulsd_0x601258___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load double, double* bitcast (%G_0x601298_type* @G_0x601298 to double*)
  %12 = bitcast i8* %8 to double*
  store double %11, double* %12, align 1
  %13 = getelementptr inbounds i8, i8* %8, i64 8
  %14 = bitcast i8* %13 to double*
  store double 0.000000e+00, double* %14, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x601120___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd_0x601120___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
