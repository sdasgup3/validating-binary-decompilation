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
%G_0x69d84__rip__type = type <{ [8 x i8] }>
%G_0x69dbd__rip__type = type <{ [8 x i8] }>
%G_0x7afde0_type = type <{ [4 x i8] }>
%G_0xab0f20_type = type <{ [4 x i8] }>
%G_0xafd960_type = type <{ [4 x i8] }>
%G_0xafdfb4_type = type <{ [4 x i8] }>
%G_0xb01170_type = type <{ [4 x i8] }>
%G_0xb060b8_type = type <{ [4 x i8] }>
%G_0xb4a018_type = type <{ [4 x i8] }>
%G_0xb4bd18_type = type <{ [4 x i8] }>
%G_0xb4bd1c_type = type <{ [4 x i8] }>
%G_0xb54ce0_type = type <{ [4 x i8] }>
%G_0xb54ce8_type = type <{ [4 x i8] }>
%G_0xb63088_type = type <{ [4 x i8] }>
%G_0xb6308c_type = type <{ [4 x i8] }>
%G_0xb6e910_type = type <{ [4 x i8] }>
%G_0xb6eec8_type = type <{ [4 x i8] }>
%G_0xb6eecc_type = type <{ [4 x i8] }>
%G_0xb72710_type = type <{ [4 x i8] }>
%G_0xb8a008_type = type <{ [4 x i8] }>
%G_0xb8a00c_type = type <{ [4 x i8] }>
%G_0xb8af1c_type = type <{ [4 x i8] }>
%G_0xb8af24_type = type <{ [4 x i8] }>
%G_0xb8af28_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G_0xb9a090_type = type <{ [4 x i8] }>
%G_0xb9d8e0_type = type <{ [4 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0C\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x69d84__rip_ = global %G_0x69d84__rip__type zeroinitializer
@G_0x69dbd__rip_ = global %G_0x69dbd__rip__type zeroinitializer
@G_0x7afde0 = global %G_0x7afde0_type zeroinitializer
@G_0xab0f20 = global %G_0xab0f20_type zeroinitializer
@G_0xafd960 = global %G_0xafd960_type zeroinitializer
@G_0xafdfb4 = global %G_0xafdfb4_type zeroinitializer
@G_0xb01170 = global %G_0xb01170_type zeroinitializer
@G_0xb060b8 = global %G_0xb060b8_type zeroinitializer
@G_0xb4a018 = global %G_0xb4a018_type zeroinitializer
@G_0xb4bd18 = global %G_0xb4bd18_type zeroinitializer
@G_0xb4bd1c = global %G_0xb4bd1c_type zeroinitializer
@G_0xb54ce0 = global %G_0xb54ce0_type zeroinitializer
@G_0xb54ce8 = global %G_0xb54ce8_type zeroinitializer
@G_0xb63088 = global %G_0xb63088_type zeroinitializer
@G_0xb6308c = global %G_0xb6308c_type zeroinitializer
@G_0xb6e910 = global %G_0xb6e910_type zeroinitializer
@G_0xb6eec8 = global %G_0xb6eec8_type zeroinitializer
@G_0xb6eecc = global %G_0xb6eecc_type zeroinitializer
@G_0xb72710 = global %G_0xb72710_type zeroinitializer
@G_0xb8a008 = global %G_0xb8a008_type zeroinitializer
@G_0xb8a00c = global %G_0xb8a00c_type zeroinitializer
@G_0xb8af1c = global %G_0xb8af1c_type zeroinitializer
@G_0xb8af24 = global %G_0xb8af24_type zeroinitializer
@G_0xb8af28 = global %G_0xb8af28_type zeroinitializer
@G_0xb8b850 = global %G_0xb8b850_type zeroinitializer
@G_0xb8b854 = global %G_0xb8b854_type zeroinitializer
@G_0xb9a090 = global %G_0xb9a090_type zeroinitializer
@G_0xb9d8e0 = global %G_0xb9d8e0_type zeroinitializer

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
define %struct.Memory* @set_depth_values(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_478cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_478cb0, %struct.Memory** %MEMORY
  %loadMem_478cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i102 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i102
  %27 = load i64, i64* %PC.i101
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i101
  store i64 %26, i64* %RBP.i103, align 8
  store %struct.Memory* %loadMem_478cb1, %struct.Memory** %MEMORY
  %loadMem_478cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i131 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i131
  %36 = load i64, i64* %PC.i130
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i130
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i131, align 8
  %39 = icmp ult i64 %35, 112
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
  %49 = xor i64 112, %35
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
  store %struct.Memory* %loadMem_478cb4, %struct.Memory** %MEMORY
  %loadMem_478cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i466
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i465
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i465
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_478cb8, %struct.Memory** %MEMORY
  %loadMem_478cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 15
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RBP.i490
  %90 = sub i64 %89, 4
  %91 = load i64, i64* %PC.i489
  %92 = add i64 %91, 4
  store i64 %92, i64* %PC.i489
  %93 = inttoptr i64 %90 to i32*
  %94 = load i32, i32* %93
  %95 = sub i32 %94, 10
  %96 = icmp ult i32 %94, 10
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %97, i8* %98, align 1
  %99 = and i32 %95, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99)
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %103, i8* %104, align 1
  %105 = xor i32 %94, 10
  %106 = xor i32 %105, %95
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %109, i8* %110, align 1
  %111 = icmp eq i32 %95, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1
  %114 = lshr i32 %95, 31
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1
  %117 = lshr i32 %94, 31
  %118 = xor i32 %114, %117
  %119 = add i32 %118, %117
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %121, i8* %122, align 1
  store %struct.Memory* %loadMem_478cbb, %struct.Memory** %MEMORY
  %loadMem_478cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %125 to i64*
  %126 = load i64, i64* %PC.i523
  %127 = add i64 %126, 20
  %128 = load i64, i64* %PC.i523
  %129 = add i64 %128, 6
  %130 = load i64, i64* %PC.i523
  %131 = add i64 %130, 6
  store i64 %131, i64* %PC.i523
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %136 = load i8, i8* %135, align 1
  %137 = icmp ne i8 %136, 0
  %138 = xor i1 %134, %137
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %BRANCH_TAKEN, align 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %141 = select i1 %138, i64 %127, i64 %129
  store i64 %141, i64* %140, align 8
  store %struct.Memory* %loadMem_478cbf, %struct.Memory** %MEMORY
  %loadBr_478cbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478cbf = icmp eq i8 %loadBr_478cbf, 1
  br i1 %cmpBr_478cbf, label %block_.L_478cd3, label %block_478cc5

block_478cc5:                                     ; preds = %entry
  %loadMem_478cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 15
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RBP.i550
  %152 = sub i64 %151, 4
  %153 = load i64, i64* %PC.i548
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i548
  %155 = inttoptr i64 %152 to i32*
  %156 = load i32, i32* %155
  %157 = zext i32 %156 to i64
  store i64 %157, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_478cc5, %struct.Memory** %MEMORY
  %loadMem_478cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RAX.i587
  %165 = load i64, i64* %PC.i586
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC.i586
  %167 = trunc i64 %164 to i32
  %168 = sub i32 %167, 10
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX.i587, align 8
  %170 = icmp ult i32 %167, 10
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %171, i8* %172, align 1
  %173 = and i32 %168, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %177, i8* %178, align 1
  %179 = xor i64 10, %164
  %180 = trunc i64 %179 to i32
  %181 = xor i32 %180, %168
  %182 = lshr i32 %181, 4
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %184, i8* %185, align 1
  %186 = icmp eq i32 %168, 0
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %187, i8* %188, align 1
  %189 = lshr i32 %168, 31
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1
  %192 = lshr i32 %167, 31
  %193 = xor i32 %189, %192
  %194 = add i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %197, align 1
  store %struct.Memory* %loadMem_478cc8, %struct.Memory** %MEMORY
  %loadMem_478ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %EAX.i616 = bitcast %union.anon* %203 to i32*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RBP.i617
  %208 = sub i64 %207, 8
  %209 = load i32, i32* %EAX.i616
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %PC.i615
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC.i615
  %213 = inttoptr i64 %208 to i32*
  store i32 %209, i32* %213
  store %struct.Memory* %loadMem_478ccb, %struct.Memory** %MEMORY
  %loadMem_478cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %216 to i64*
  %217 = load i64, i64* %PC.i653
  %218 = add i64 %217, 43
  %219 = load i64, i64* %PC.i653
  %220 = add i64 %219, 5
  store i64 %220, i64* %PC.i653
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %218, i64* %221, align 8
  store %struct.Memory* %loadMem_478cce, %struct.Memory** %MEMORY
  br label %block_.L_478cf9

block_.L_478cd3:                                  ; preds = %entry
  %loadMem_478cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RBP.i682
  %229 = sub i64 %228, 4
  %230 = load i64, i64* %PC.i681
  %231 = add i64 %230, 4
  store i64 %231, i64* %PC.i681
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232
  %234 = sub i32 %233, 8
  %235 = icmp ult i32 %233, 8
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %236, i8* %237, align 1
  %238 = and i32 %234, 255
  %239 = call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %242, i8* %243, align 1
  %244 = xor i32 %233, 8
  %245 = xor i32 %244, %234
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %248, i8* %249, align 1
  %250 = icmp eq i32 %234, 0
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %251, i8* %252, align 1
  %253 = lshr i32 %234, 31
  %254 = trunc i32 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %254, i8* %255, align 1
  %256 = lshr i32 %233, 31
  %257 = xor i32 %253, %256
  %258 = add i32 %257, %256
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %260, i8* %261, align 1
  store %struct.Memory* %loadMem_478cd3, %struct.Memory** %MEMORY
  %loadMem_478cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %PC.i844
  %266 = add i64 %265, 20
  %267 = load i64, i64* %PC.i844
  %268 = add i64 %267, 6
  %269 = load i64, i64* %PC.i844
  %270 = add i64 %269, 6
  store i64 %270, i64* %PC.i844
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %272 = load i8, i8* %271, align 1
  %273 = icmp ne i8 %272, 0
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %275 = load i8, i8* %274, align 1
  %276 = icmp ne i8 %275, 0
  %277 = xor i1 %273, %276
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %BRANCH_TAKEN, align 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %280 = select i1 %277, i64 %266, i64 %268
  store i64 %280, i64* %279, align 8
  store %struct.Memory* %loadMem_478cd7, %struct.Memory** %MEMORY
  %loadBr_478cd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478cd7 = icmp eq i8 %loadBr_478cd7, 1
  br i1 %cmpBr_478cd7, label %block_.L_478ceb, label %block_478cdd

block_478cdd:                                     ; preds = %block_.L_478cd3
  %loadMem_478cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RAX.i842 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 15
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %289 to i64*
  %290 = load i64, i64* %RBP.i843
  %291 = sub i64 %290, 4
  %292 = load i64, i64* %PC.i841
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC.i841
  %294 = inttoptr i64 %291 to i32*
  %295 = load i32, i32* %294
  %296 = zext i32 %295 to i64
  store i64 %296, i64* %RAX.i842, align 8
  store %struct.Memory* %loadMem_478cdd, %struct.Memory** %MEMORY
  %loadMem_478ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %RAX.i840
  %304 = load i64, i64* %PC.i839
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC.i839
  %306 = trunc i64 %303 to i32
  %307 = sub i32 %306, 9
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX.i840, align 8
  %309 = icmp ult i32 %306, 9
  %310 = zext i1 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %310, i8* %311, align 1
  %312 = and i32 %307, 255
  %313 = call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %316, i8* %317, align 1
  %318 = xor i64 9, %303
  %319 = trunc i64 %318 to i32
  %320 = xor i32 %319, %307
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %323, i8* %324, align 1
  %325 = icmp eq i32 %307, 0
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %326, i8* %327, align 1
  %328 = lshr i32 %307, 31
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %329, i8* %330, align 1
  %331 = lshr i32 %306, 31
  %332 = xor i32 %328, %331
  %333 = add i32 %332, %331
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %335, i8* %336, align 1
  store %struct.Memory* %loadMem_478ce0, %struct.Memory** %MEMORY
  %loadMem_478ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %EAX.i837 = bitcast %union.anon* %342 to i32*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 15
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RBP.i838
  %347 = sub i64 %346, 8
  %348 = load i32, i32* %EAX.i837
  %349 = zext i32 %348 to i64
  %350 = load i64, i64* %PC.i836
  %351 = add i64 %350, 3
  store i64 %351, i64* %PC.i836
  %352 = inttoptr i64 %347 to i32*
  store i32 %348, i32* %352
  store %struct.Memory* %loadMem_478ce3, %struct.Memory** %MEMORY
  %loadMem_478ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %PC.i835
  %357 = add i64 %356, 14
  %358 = load i64, i64* %PC.i835
  %359 = add i64 %358, 5
  store i64 %359, i64* %PC.i835
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %357, i64* %360, align 8
  store %struct.Memory* %loadMem_478ce6, %struct.Memory** %MEMORY
  br label %block_.L_478cf4

block_.L_478ceb:                                  ; preds = %block_.L_478cd3
  %loadMem_478ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i834
  %371 = sub i64 %370, 4
  %372 = load i64, i64* %PC.i832
  %373 = add i64 %372, 3
  store i64 %373, i64* %PC.i832
  %374 = inttoptr i64 %371 to i32*
  %375 = load i32, i32* %374
  %376 = zext i32 %375 to i64
  store i64 %376, i64* %RAX.i833, align 8
  store %struct.Memory* %loadMem_478ceb, %struct.Memory** %MEMORY
  %loadMem_478cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RAX.i831 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RAX.i831
  %384 = load i64, i64* %PC.i830
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC.i830
  %386 = trunc i64 %383 to i32
  %387 = sub i32 %386, 8
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RAX.i831, align 8
  %389 = icmp ult i32 %386, 8
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %390, i8* %391, align 1
  %392 = and i32 %387, 255
  %393 = call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %396, i8* %397, align 1
  %398 = xor i64 8, %383
  %399 = trunc i64 %398 to i32
  %400 = xor i32 %399, %387
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %403, i8* %404, align 1
  %405 = icmp eq i32 %387, 0
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %406, i8* %407, align 1
  %408 = lshr i32 %387, 31
  %409 = trunc i32 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %409, i8* %410, align 1
  %411 = lshr i32 %386, 31
  %412 = xor i32 %408, %411
  %413 = add i32 %412, %411
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %416, align 1
  store %struct.Memory* %loadMem_478cee, %struct.Memory** %MEMORY
  %loadMem_478cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %EAX.i828 = bitcast %union.anon* %422 to i32*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RBP.i829
  %427 = sub i64 %426, 8
  %428 = load i32, i32* %EAX.i828
  %429 = zext i32 %428 to i64
  %430 = load i64, i64* %PC.i827
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC.i827
  %432 = inttoptr i64 %427 to i32*
  store i32 %428, i32* %432
  store %struct.Memory* %loadMem_478cf1, %struct.Memory** %MEMORY
  br label %block_.L_478cf4

block_.L_478cf4:                                  ; preds = %block_.L_478ceb, %block_478cdd
  %loadMem_478cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %435 to i64*
  %436 = load i64, i64* %PC.i826
  %437 = add i64 %436, 5
  %438 = load i64, i64* %PC.i826
  %439 = add i64 %438, 5
  store i64 %439, i64* %PC.i826
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %437, i64* %440, align 8
  store %struct.Memory* %loadMem_478cf4, %struct.Memory** %MEMORY
  br label %block_.L_478cf9

block_.L_478cf9:                                  ; preds = %block_.L_478cf4, %block_478cc5
  %loadMem_478cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 33
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RAX.i825 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %PC.i824
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i824
  store i64 6, i64* %RAX.i825, align 8
  store %struct.Memory* %loadMem_478cf9, %struct.Memory** %MEMORY
  %loadMem_478cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 5
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RCX.i822 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 15
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RBP.i823
  %459 = sub i64 %458, 8
  %460 = load i64, i64* %PC.i821
  %461 = add i64 %460, 3
  store i64 %461, i64* %PC.i821
  %462 = inttoptr i64 %459 to i32*
  %463 = load i32, i32* %462
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RCX.i822, align 8
  store %struct.Memory* %loadMem_478cfe, %struct.Memory** %MEMORY
  %loadMem_478d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 5
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %470 to i64*
  %471 = load i64, i64* %RCX.i820
  %472 = load i64, i64* %PC.i819
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC.i819
  %474 = trunc i64 %471 to i32
  %475 = add i32 16, %474
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RCX.i820, align 8
  %477 = icmp ult i32 %475, %474
  %478 = icmp ult i32 %475, 16
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %480, i8* %481, align 1
  %482 = and i32 %475, 255
  %483 = call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %486, i8* %487, align 1
  %488 = xor i64 16, %471
  %489 = trunc i64 %488 to i32
  %490 = xor i32 %489, %475
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %493, i8* %494, align 1
  %495 = icmp eq i32 %475, 0
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %496, i8* %497, align 1
  %498 = lshr i32 %475, 31
  %499 = trunc i32 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %499, i8* %500, align 1
  %501 = lshr i32 %474, 31
  %502 = xor i32 %498, %501
  %503 = add i32 %502, %498
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %505, i8* %506, align 1
  store %struct.Memory* %loadMem_478d01, %struct.Memory** %MEMORY
  %loadMem_478d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %511 = getelementptr inbounds %struct.GPR, %struct.GPR* %510, i32 0, i32 1
  %512 = getelementptr inbounds %struct.Reg, %struct.Reg* %511, i32 0, i32 0
  %EAX.i817 = bitcast %union.anon* %512 to i32*
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 5
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %ECX.i818 = bitcast %union.anon* %515 to i32*
  %516 = load i32, i32* %EAX.i817
  %517 = zext i32 %516 to i64
  %518 = load i32, i32* %ECX.i818
  %519 = zext i32 %518 to i64
  %520 = load i64, i64* %PC.i816
  %521 = add i64 %520, 2
  store i64 %521, i64* %PC.i816
  %522 = sub i32 %516, %518
  %523 = icmp ult i32 %516, %518
  %524 = zext i1 %523 to i8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %524, i8* %525, align 1
  %526 = and i32 %522, 255
  %527 = call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %530, i8* %531, align 1
  %532 = xor i64 %519, %517
  %533 = trunc i64 %532 to i32
  %534 = xor i32 %533, %522
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %537, i8* %538, align 1
  %539 = icmp eq i32 %522, 0
  %540 = zext i1 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %540, i8* %541, align 1
  %542 = lshr i32 %522, 31
  %543 = trunc i32 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %543, i8* %544, align 1
  %545 = lshr i32 %516, 31
  %546 = lshr i32 %518, 31
  %547 = xor i32 %546, %545
  %548 = xor i32 %542, %545
  %549 = add i32 %548, %547
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %551, i8* %552, align 1
  store %struct.Memory* %loadMem_478d04, %struct.Memory** %MEMORY
  %loadMem_478d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %555 to i64*
  %556 = load i64, i64* %PC.i815
  %557 = add i64 %556, 20
  %558 = load i64, i64* %PC.i815
  %559 = add i64 %558, 6
  %560 = load i64, i64* %PC.i815
  %561 = add i64 %560, 6
  store i64 %561, i64* %PC.i815
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %563 = load i8, i8* %562, align 1
  %564 = icmp ne i8 %563, 0
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %566 = load i8, i8* %565, align 1
  %567 = icmp ne i8 %566, 0
  %568 = xor i1 %564, %567
  %569 = xor i1 %568, true
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %BRANCH_TAKEN, align 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %572 = select i1 %568, i64 %559, i64 %557
  store i64 %572, i64* %571, align 8
  store %struct.Memory* %loadMem_478d06, %struct.Memory** %MEMORY
  %loadBr_478d06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478d06 = icmp eq i8 %loadBr_478d06, 1
  br i1 %cmpBr_478d06, label %block_.L_478d1a, label %block_478d0c

block_478d0c:                                     ; preds = %block_.L_478cf9
  %loadMem_478d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 1
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RAX.i813 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RBP.i814
  %583 = sub i64 %582, 8
  %584 = load i64, i64* %PC.i812
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC.i812
  %586 = inttoptr i64 %583 to i32*
  %587 = load i32, i32* %586
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX.i813, align 8
  store %struct.Memory* %loadMem_478d0c, %struct.Memory** %MEMORY
  %loadMem_478d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RAX.i811
  %596 = load i64, i64* %PC.i810
  %597 = add i64 %596, 3
  store i64 %597, i64* %PC.i810
  %598 = trunc i64 %595 to i32
  %599 = add i32 16, %598
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RAX.i811, align 8
  %601 = icmp ult i32 %599, %598
  %602 = icmp ult i32 %599, 16
  %603 = or i1 %601, %602
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %604, i8* %605, align 1
  %606 = and i32 %599, 255
  %607 = call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %610, i8* %611, align 1
  %612 = xor i64 16, %595
  %613 = trunc i64 %612 to i32
  %614 = xor i32 %613, %599
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %617, i8* %618, align 1
  %619 = icmp eq i32 %599, 0
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %620, i8* %621, align 1
  %622 = lshr i32 %599, 31
  %623 = trunc i32 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %623, i8* %624, align 1
  %625 = lshr i32 %598, 31
  %626 = xor i32 %622, %625
  %627 = add i32 %626, %622
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %629, i8* %630, align 1
  store %struct.Memory* %loadMem_478d0f, %struct.Memory** %MEMORY
  %loadMem_478d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 1
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %EAX.i808 = bitcast %union.anon* %636 to i32*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 15
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %RBP.i809
  %641 = sub i64 %640, 12
  %642 = load i32, i32* %EAX.i808
  %643 = zext i32 %642 to i64
  %644 = load i64, i64* %PC.i807
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC.i807
  %646 = inttoptr i64 %641 to i32*
  store i32 %642, i32* %646
  store %struct.Memory* %loadMem_478d12, %struct.Memory** %MEMORY
  %loadMem_478d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %649 to i64*
  %650 = load i64, i64* %PC.i806
  %651 = add i64 %650, 18
  %652 = load i64, i64* %PC.i806
  %653 = add i64 %652, 5
  store i64 %653, i64* %PC.i806
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %651, i64* %654, align 8
  store %struct.Memory* %loadMem_478d15, %struct.Memory** %MEMORY
  br label %block_.L_478d27

block_.L_478d1a:                                  ; preds = %block_.L_478cf9
  %loadMem_478d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 1
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RAX.i805 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %PC.i804
  %662 = add i64 %661, 5
  store i64 %662, i64* %PC.i804
  store i64 6, i64* %RAX.i805, align 8
  store %struct.Memory* %loadMem_478d1a, %struct.Memory** %MEMORY
  %loadMem_478d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 33
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 1
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %EAX.i802 = bitcast %union.anon* %668 to i32*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 15
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %671 to i64*
  %672 = load i64, i64* %RBP.i803
  %673 = sub i64 %672, 12
  %674 = load i32, i32* %EAX.i802
  %675 = zext i32 %674 to i64
  %676 = load i64, i64* %PC.i801
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC.i801
  %678 = inttoptr i64 %673 to i32*
  store i32 %674, i32* %678
  store %struct.Memory* %loadMem_478d1f, %struct.Memory** %MEMORY
  %loadMem_478d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %PC.i800
  %683 = add i64 %682, 5
  %684 = load i64, i64* %PC.i800
  %685 = add i64 %684, 5
  store i64 %685, i64* %PC.i800
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %683, i64* %686, align 8
  store %struct.Memory* %loadMem_478d22, %struct.Memory** %MEMORY
  br label %block_.L_478d27

block_.L_478d27:                                  ; preds = %block_.L_478d1a, %block_478d0c
  %loadMem_478d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %688 = getelementptr inbounds %struct.GPR, %struct.GPR* %687, i32 0, i32 33
  %689 = getelementptr inbounds %struct.Reg, %struct.Reg* %688, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %689 to i64*
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %691 = getelementptr inbounds %struct.GPR, %struct.GPR* %690, i32 0, i32 1
  %692 = getelementptr inbounds %struct.Reg, %struct.Reg* %691, i32 0, i32 0
  %RAX.i798 = bitcast %union.anon* %692 to i64*
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 15
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %695 to i64*
  %696 = load i64, i64* %RBP.i799
  %697 = sub i64 %696, 12
  %698 = load i64, i64* %PC.i797
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC.i797
  %700 = inttoptr i64 %697 to i32*
  %701 = load i32, i32* %700
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX.i798, align 8
  store %struct.Memory* %loadMem_478d27, %struct.Memory** %MEMORY
  %loadMem_478d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 5
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %PC.i795
  %710 = add i64 %709, 5
  store i64 %710, i64* %PC.i795
  store i64 2, i64* %RCX.i796, align 8
  store %struct.Memory* %loadMem_478d2a, %struct.Memory** %MEMORY
  %loadMem_478d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %EAX.i794 = bitcast %union.anon* %716 to i32*
  %717 = load i32, i32* %EAX.i794
  %718 = zext i32 %717 to i64
  %719 = load i64, i64* %PC.i793
  %720 = add i64 %719, 7
  store i64 %720, i64* %PC.i793
  store i32 %717, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  store %struct.Memory* %loadMem_478d2f, %struct.Memory** %MEMORY
  %loadMem_478d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 1
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 15
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %729 to i64*
  %730 = load i64, i64* %RBP.i792
  %731 = sub i64 %730, 8
  %732 = load i64, i64* %PC.i790
  %733 = add i64 %732, 3
  store i64 %733, i64* %PC.i790
  %734 = inttoptr i64 %731 to i32*
  %735 = load i32, i32* %734
  %736 = zext i32 %735 to i64
  store i64 %736, i64* %RAX.i791, align 8
  store %struct.Memory* %loadMem_478d36, %struct.Memory** %MEMORY
  %loadMem_478d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 1
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RAX.i789 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RAX.i789
  %744 = load i64, i64* %PC.i788
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC.i788
  %746 = trunc i64 %743 to i32
  %747 = add i32 12, %746
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RAX.i789, align 8
  %749 = icmp ult i32 %747, %746
  %750 = icmp ult i32 %747, 12
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %752, i8* %753, align 1
  %754 = and i32 %747, 255
  %755 = call i32 @llvm.ctpop.i32(i32 %754)
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %758, i8* %759, align 1
  %760 = xor i64 12, %743
  %761 = trunc i64 %760 to i32
  %762 = xor i32 %761, %747
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %765, i8* %766, align 1
  %767 = icmp eq i32 %747, 0
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %768, i8* %769, align 1
  %770 = lshr i32 %747, 31
  %771 = trunc i32 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %771, i8* %772, align 1
  %773 = lshr i32 %746, 31
  %774 = xor i32 %770, %773
  %775 = add i32 %774, %770
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %777, i8* %778, align 1
  store %struct.Memory* %loadMem_478d39, %struct.Memory** %MEMORY
  %loadMem_478d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 1
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %EAX.i786 = bitcast %union.anon* %784 to i32*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 5
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %ECX.i787 = bitcast %union.anon* %787 to i32*
  %788 = load i32, i32* %ECX.i787
  %789 = zext i32 %788 to i64
  %790 = load i32, i32* %EAX.i786
  %791 = zext i32 %790 to i64
  %792 = load i64, i64* %PC.i785
  %793 = add i64 %792, 2
  store i64 %793, i64* %PC.i785
  %794 = sub i32 %788, %790
  %795 = icmp ult i32 %788, %790
  %796 = zext i1 %795 to i8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %796, i8* %797, align 1
  %798 = and i32 %794, 255
  %799 = call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %802, i8* %803, align 1
  %804 = xor i64 %791, %789
  %805 = trunc i64 %804 to i32
  %806 = xor i32 %805, %794
  %807 = lshr i32 %806, 4
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %809, i8* %810, align 1
  %811 = icmp eq i32 %794, 0
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %812, i8* %813, align 1
  %814 = lshr i32 %794, 31
  %815 = trunc i32 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %815, i8* %816, align 1
  %817 = lshr i32 %788, 31
  %818 = lshr i32 %790, 31
  %819 = xor i32 %818, %817
  %820 = xor i32 %814, %817
  %821 = add i32 %820, %819
  %822 = icmp eq i32 %821, 2
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %823, i8* %824, align 1
  store %struct.Memory* %loadMem_478d3c, %struct.Memory** %MEMORY
  %loadMem_478d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %827 to i64*
  %828 = load i64, i64* %PC.i784
  %829 = add i64 %828, 20
  %830 = load i64, i64* %PC.i784
  %831 = add i64 %830, 6
  %832 = load i64, i64* %PC.i784
  %833 = add i64 %832, 6
  store i64 %833, i64* %PC.i784
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %835 = load i8, i8* %834, align 1
  %836 = icmp ne i8 %835, 0
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %838 = load i8, i8* %837, align 1
  %839 = icmp ne i8 %838, 0
  %840 = xor i1 %836, %839
  %841 = xor i1 %840, true
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %BRANCH_TAKEN, align 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %844 = select i1 %840, i64 %831, i64 %829
  store i64 %844, i64* %843, align 8
  store %struct.Memory* %loadMem_478d3e, %struct.Memory** %MEMORY
  %loadBr_478d3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478d3e = icmp eq i8 %loadBr_478d3e, 1
  br i1 %cmpBr_478d3e, label %block_.L_478d52, label %block_478d44

block_478d44:                                     ; preds = %block_.L_478d27
  %loadMem_478d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 1
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RAX.i782 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 15
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %RBP.i783
  %855 = sub i64 %854, 8
  %856 = load i64, i64* %PC.i781
  %857 = add i64 %856, 3
  store i64 %857, i64* %PC.i781
  %858 = inttoptr i64 %855 to i32*
  %859 = load i32, i32* %858
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RAX.i782, align 8
  store %struct.Memory* %loadMem_478d44, %struct.Memory** %MEMORY
  %loadMem_478d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 33
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 1
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RAX.i780 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RAX.i780
  %868 = load i64, i64* %PC.i779
  %869 = add i64 %868, 3
  store i64 %869, i64* %PC.i779
  %870 = trunc i64 %867 to i32
  %871 = add i32 12, %870
  %872 = zext i32 %871 to i64
  store i64 %872, i64* %RAX.i780, align 8
  %873 = icmp ult i32 %871, %870
  %874 = icmp ult i32 %871, 12
  %875 = or i1 %873, %874
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %876, i8* %877, align 1
  %878 = and i32 %871, 255
  %879 = call i32 @llvm.ctpop.i32(i32 %878)
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  %882 = xor i8 %881, 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %882, i8* %883, align 1
  %884 = xor i64 12, %867
  %885 = trunc i64 %884 to i32
  %886 = xor i32 %885, %871
  %887 = lshr i32 %886, 4
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %889, i8* %890, align 1
  %891 = icmp eq i32 %871, 0
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %892, i8* %893, align 1
  %894 = lshr i32 %871, 31
  %895 = trunc i32 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %895, i8* %896, align 1
  %897 = lshr i32 %870, 31
  %898 = xor i32 %894, %897
  %899 = add i32 %898, %894
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %901, i8* %902, align 1
  store %struct.Memory* %loadMem_478d47, %struct.Memory** %MEMORY
  %loadMem_478d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 33
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 1
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %EAX.i777 = bitcast %union.anon* %908 to i32*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 15
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %RBP.i778 = bitcast %union.anon* %911 to i64*
  %912 = load i64, i64* %RBP.i778
  %913 = sub i64 %912, 16
  %914 = load i32, i32* %EAX.i777
  %915 = zext i32 %914 to i64
  %916 = load i64, i64* %PC.i776
  %917 = add i64 %916, 3
  store i64 %917, i64* %PC.i776
  %918 = inttoptr i64 %913 to i32*
  store i32 %914, i32* %918
  store %struct.Memory* %loadMem_478d4a, %struct.Memory** %MEMORY
  %loadMem_478d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %PC.i775
  %923 = add i64 %922, 18
  %924 = load i64, i64* %PC.i775
  %925 = add i64 %924, 5
  store i64 %925, i64* %PC.i775
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %923, i64* %926, align 8
  store %struct.Memory* %loadMem_478d4d, %struct.Memory** %MEMORY
  br label %block_.L_478d5f

block_.L_478d52:                                  ; preds = %block_.L_478d27
  %loadMem_478d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 1
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %932 to i64*
  %933 = load i64, i64* %PC.i773
  %934 = add i64 %933, 5
  store i64 %934, i64* %PC.i773
  store i64 2, i64* %RAX.i774, align 8
  store %struct.Memory* %loadMem_478d52, %struct.Memory** %MEMORY
  %loadMem_478d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %EAX.i771 = bitcast %union.anon* %940 to i32*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 15
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RBP.i772 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RBP.i772
  %945 = sub i64 %944, 16
  %946 = load i32, i32* %EAX.i771
  %947 = zext i32 %946 to i64
  %948 = load i64, i64* %PC.i770
  %949 = add i64 %948, 3
  store i64 %949, i64* %PC.i770
  %950 = inttoptr i64 %945 to i32*
  store i32 %946, i32* %950
  store %struct.Memory* %loadMem_478d57, %struct.Memory** %MEMORY
  %loadMem_478d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %953 to i64*
  %954 = load i64, i64* %PC.i769
  %955 = add i64 %954, 5
  %956 = load i64, i64* %PC.i769
  %957 = add i64 %956, 5
  store i64 %957, i64* %PC.i769
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %955, i64* %958, align 8
  store %struct.Memory* %loadMem_478d5a, %struct.Memory** %MEMORY
  br label %block_.L_478d5f

block_.L_478d5f:                                  ; preds = %block_.L_478d52, %block_478d44
  %loadMem_478d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 1
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 15
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %967 to i64*
  %968 = load i64, i64* %RBP.i768
  %969 = sub i64 %968, 16
  %970 = load i64, i64* %PC.i766
  %971 = add i64 %970, 3
  store i64 %971, i64* %PC.i766
  %972 = inttoptr i64 %969 to i32*
  %973 = load i32, i32* %972
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX.i767, align 8
  store %struct.Memory* %loadMem_478d5f, %struct.Memory** %MEMORY
  %loadMem_478d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 5
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RCX.i765 = bitcast %union.anon* %980 to i64*
  %981 = load i64, i64* %PC.i764
  %982 = add i64 %981, 5
  store i64 %982, i64* %PC.i764
  store i64 1, i64* %RCX.i765, align 8
  store %struct.Memory* %loadMem_478d62, %struct.Memory** %MEMORY
  %loadMem_478d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 1
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %EAX.i763 = bitcast %union.anon* %988 to i32*
  %989 = load i32, i32* %EAX.i763
  %990 = zext i32 %989 to i64
  %991 = load i64, i64* %PC.i762
  %992 = add i64 %991, 7
  store i64 %992, i64* %PC.i762
  store i32 %989, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*)
  store %struct.Memory* %loadMem_478d67, %struct.Memory** %MEMORY
  %loadMem_478d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 1
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 15
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RBP.i761
  %1003 = sub i64 %1002, 8
  %1004 = load i64, i64* %PC.i759
  %1005 = add i64 %1004, 3
  store i64 %1005, i64* %PC.i759
  %1006 = inttoptr i64 %1003 to i32*
  %1007 = load i32, i32* %1006
  %1008 = zext i32 %1007 to i64
  store i64 %1008, i64* %RAX.i760, align 8
  store %struct.Memory* %loadMem_478d6e, %struct.Memory** %MEMORY
  %loadMem_478d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 1
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %1014 to i64*
  %1015 = load i64, i64* %RAX.i758
  %1016 = load i64, i64* %PC.i757
  %1017 = add i64 %1016, 3
  store i64 %1017, i64* %PC.i757
  %1018 = trunc i64 %1015 to i32
  %1019 = add i32 5, %1018
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX.i758, align 8
  %1021 = icmp ult i32 %1019, %1018
  %1022 = icmp ult i32 %1019, 5
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1024, i8* %1025, align 1
  %1026 = and i32 %1019, 255
  %1027 = call i32 @llvm.ctpop.i32(i32 %1026)
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1030, i8* %1031, align 1
  %1032 = xor i64 5, %1015
  %1033 = trunc i64 %1032 to i32
  %1034 = xor i32 %1033, %1019
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1037, i8* %1038, align 1
  %1039 = icmp eq i32 %1019, 0
  %1040 = zext i1 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1040, i8* %1041, align 1
  %1042 = lshr i32 %1019, 31
  %1043 = trunc i32 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1
  %1045 = lshr i32 %1018, 31
  %1046 = xor i32 %1042, %1045
  %1047 = add i32 %1046, %1042
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1049, i8* %1050, align 1
  store %struct.Memory* %loadMem_478d71, %struct.Memory** %MEMORY
  %loadMem_478d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 1
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %EAX.i755 = bitcast %union.anon* %1056 to i32*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 5
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %ECX.i756 = bitcast %union.anon* %1059 to i32*
  %1060 = load i32, i32* %ECX.i756
  %1061 = zext i32 %1060 to i64
  %1062 = load i32, i32* %EAX.i755
  %1063 = zext i32 %1062 to i64
  %1064 = load i64, i64* %PC.i754
  %1065 = add i64 %1064, 2
  store i64 %1065, i64* %PC.i754
  %1066 = sub i32 %1060, %1062
  %1067 = icmp ult i32 %1060, %1062
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1068, i8* %1069, align 1
  %1070 = and i32 %1066, 255
  %1071 = call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1074, i8* %1075, align 1
  %1076 = xor i64 %1063, %1061
  %1077 = trunc i64 %1076 to i32
  %1078 = xor i32 %1077, %1066
  %1079 = lshr i32 %1078, 4
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1081, i8* %1082, align 1
  %1083 = icmp eq i32 %1066, 0
  %1084 = zext i1 %1083 to i8
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1084, i8* %1085, align 1
  %1086 = lshr i32 %1066, 31
  %1087 = trunc i32 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1087, i8* %1088, align 1
  %1089 = lshr i32 %1060, 31
  %1090 = lshr i32 %1062, 31
  %1091 = xor i32 %1090, %1089
  %1092 = xor i32 %1086, %1089
  %1093 = add i32 %1092, %1091
  %1094 = icmp eq i32 %1093, 2
  %1095 = zext i1 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1095, i8* %1096, align 1
  store %struct.Memory* %loadMem_478d74, %struct.Memory** %MEMORY
  %loadMem_478d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %PC.i753
  %1101 = add i64 %1100, 20
  %1102 = load i64, i64* %PC.i753
  %1103 = add i64 %1102, 6
  %1104 = load i64, i64* %PC.i753
  %1105 = add i64 %1104, 6
  store i64 %1105, i64* %PC.i753
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1107 = load i8, i8* %1106, align 1
  %1108 = icmp ne i8 %1107, 0
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1110 = load i8, i8* %1109, align 1
  %1111 = icmp ne i8 %1110, 0
  %1112 = xor i1 %1108, %1111
  %1113 = xor i1 %1112, true
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %BRANCH_TAKEN, align 1
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1116 = select i1 %1112, i64 %1103, i64 %1101
  store i64 %1116, i64* %1115, align 8
  store %struct.Memory* %loadMem_478d76, %struct.Memory** %MEMORY
  %loadBr_478d76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478d76 = icmp eq i8 %loadBr_478d76, 1
  br i1 %cmpBr_478d76, label %block_.L_478d8a, label %block_478d7c

block_478d7c:                                     ; preds = %block_.L_478d5f
  %loadMem_478d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 1
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 15
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %RBP.i752
  %1127 = sub i64 %1126, 8
  %1128 = load i64, i64* %PC.i750
  %1129 = add i64 %1128, 3
  store i64 %1129, i64* %PC.i750
  %1130 = inttoptr i64 %1127 to i32*
  %1131 = load i32, i32* %1130
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RAX.i751, align 8
  store %struct.Memory* %loadMem_478d7c, %struct.Memory** %MEMORY
  %loadMem_478d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 1
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %RAX.i749
  %1140 = load i64, i64* %PC.i748
  %1141 = add i64 %1140, 3
  store i64 %1141, i64* %PC.i748
  %1142 = trunc i64 %1139 to i32
  %1143 = add i32 5, %1142
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i749, align 8
  %1145 = icmp ult i32 %1143, %1142
  %1146 = icmp ult i32 %1143, 5
  %1147 = or i1 %1145, %1146
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1148, i8* %1149, align 1
  %1150 = and i32 %1143, 255
  %1151 = call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1154, i8* %1155, align 1
  %1156 = xor i64 5, %1139
  %1157 = trunc i64 %1156 to i32
  %1158 = xor i32 %1157, %1143
  %1159 = lshr i32 %1158, 4
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1161, i8* %1162, align 1
  %1163 = icmp eq i32 %1143, 0
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1164, i8* %1165, align 1
  %1166 = lshr i32 %1143, 31
  %1167 = trunc i32 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1167, i8* %1168, align 1
  %1169 = lshr i32 %1142, 31
  %1170 = xor i32 %1166, %1169
  %1171 = add i32 %1170, %1166
  %1172 = icmp eq i32 %1171, 2
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1173, i8* %1174, align 1
  store %struct.Memory* %loadMem_478d7f, %struct.Memory** %MEMORY
  %loadMem_478d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %EAX.i746 = bitcast %union.anon* %1180 to i32*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 15
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %1183 to i64*
  %1184 = load i64, i64* %RBP.i747
  %1185 = sub i64 %1184, 20
  %1186 = load i32, i32* %EAX.i746
  %1187 = zext i32 %1186 to i64
  %1188 = load i64, i64* %PC.i745
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %PC.i745
  %1190 = inttoptr i64 %1185 to i32*
  store i32 %1186, i32* %1190
  store %struct.Memory* %loadMem_478d82, %struct.Memory** %MEMORY
  %loadMem_478d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 33
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %PC.i744
  %1195 = add i64 %1194, 18
  %1196 = load i64, i64* %PC.i744
  %1197 = add i64 %1196, 5
  store i64 %1197, i64* %PC.i744
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1195, i64* %1198, align 8
  store %struct.Memory* %loadMem_478d85, %struct.Memory** %MEMORY
  br label %block_.L_478d97

block_.L_478d8a:                                  ; preds = %block_.L_478d5f
  %loadMem_478d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %PC.i742
  %1206 = add i64 %1205, 5
  store i64 %1206, i64* %PC.i742
  store i64 1, i64* %RAX.i743, align 8
  store %struct.Memory* %loadMem_478d8a, %struct.Memory** %MEMORY
  %loadMem_478d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 1
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %EAX.i740 = bitcast %union.anon* %1212 to i32*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 15
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1215 to i64*
  %1216 = load i64, i64* %RBP.i741
  %1217 = sub i64 %1216, 20
  %1218 = load i32, i32* %EAX.i740
  %1219 = zext i32 %1218 to i64
  %1220 = load i64, i64* %PC.i739
  %1221 = add i64 %1220, 3
  store i64 %1221, i64* %PC.i739
  %1222 = inttoptr i64 %1217 to i32*
  store i32 %1218, i32* %1222
  store %struct.Memory* %loadMem_478d8f, %struct.Memory** %MEMORY
  %loadMem_478d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1225 to i64*
  %1226 = load i64, i64* %PC.i738
  %1227 = add i64 %1226, 5
  %1228 = load i64, i64* %PC.i738
  %1229 = add i64 %1228, 5
  store i64 %1229, i64* %PC.i738
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1227, i64* %1230, align 8
  store %struct.Memory* %loadMem_478d92, %struct.Memory** %MEMORY
  br label %block_.L_478d97

block_.L_478d97:                                  ; preds = %block_.L_478d8a, %block_478d7c
  %loadMem_478d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 1
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RAX.i736 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 15
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %RBP.i737
  %1241 = sub i64 %1240, 20
  %1242 = load i64, i64* %PC.i735
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %PC.i735
  %1244 = inttoptr i64 %1241 to i32*
  %1245 = load i32, i32* %1244
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %RAX.i736, align 8
  store %struct.Memory* %loadMem_478d97, %struct.Memory** %MEMORY
  %loadMem_478d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 5
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RCX.i734 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %PC.i733
  %1254 = add i64 %1253, 5
  store i64 %1254, i64* %PC.i733
  store i64 3, i64* %RCX.i734, align 8
  store %struct.Memory* %loadMem_478d9a, %struct.Memory** %MEMORY
  %loadMem_478d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %EAX.i732 = bitcast %union.anon* %1260 to i32*
  %1261 = load i32, i32* %EAX.i732
  %1262 = zext i32 %1261 to i64
  %1263 = load i64, i64* %PC.i731
  %1264 = add i64 %1263, 7
  store i64 %1264, i64* %PC.i731
  store i32 %1261, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*)
  store %struct.Memory* %loadMem_478d9f, %struct.Memory** %MEMORY
  %loadMem_478da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 1
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RAX.i729 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i730
  %1275 = sub i64 %1274, 8
  %1276 = load i64, i64* %PC.i728
  %1277 = add i64 %1276, 3
  store i64 %1277, i64* %PC.i728
  %1278 = inttoptr i64 %1275 to i32*
  %1279 = load i32, i32* %1278
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i729, align 8
  store %struct.Memory* %loadMem_478da6, %struct.Memory** %MEMORY
  %loadMem_478da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 33
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 1
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RAX.i727 = bitcast %union.anon* %1286 to i64*
  %1287 = load i64, i64* %RAX.i727
  %1288 = load i64, i64* %PC.i726
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %PC.i726
  %1290 = trunc i64 %1287 to i32
  %1291 = add i32 13, %1290
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RAX.i727, align 8
  %1293 = icmp ult i32 %1291, %1290
  %1294 = icmp ult i32 %1291, 13
  %1295 = or i1 %1293, %1294
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1296, i8* %1297, align 1
  %1298 = and i32 %1291, 255
  %1299 = call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1302, i8* %1303, align 1
  %1304 = xor i64 13, %1287
  %1305 = trunc i64 %1304 to i32
  %1306 = xor i32 %1305, %1291
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1309, i8* %1310, align 1
  %1311 = icmp eq i32 %1291, 0
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1312, i8* %1313, align 1
  %1314 = lshr i32 %1291, 31
  %1315 = trunc i32 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1315, i8* %1316, align 1
  %1317 = lshr i32 %1290, 31
  %1318 = xor i32 %1314, %1317
  %1319 = add i32 %1318, %1314
  %1320 = icmp eq i32 %1319, 2
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1321, i8* %1322, align 1
  store %struct.Memory* %loadMem_478da9, %struct.Memory** %MEMORY
  %loadMem_478dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 33
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 1
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %EAX.i724 = bitcast %union.anon* %1328 to i32*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 5
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %ECX.i725 = bitcast %union.anon* %1331 to i32*
  %1332 = load i32, i32* %ECX.i725
  %1333 = zext i32 %1332 to i64
  %1334 = load i32, i32* %EAX.i724
  %1335 = zext i32 %1334 to i64
  %1336 = load i64, i64* %PC.i723
  %1337 = add i64 %1336, 2
  store i64 %1337, i64* %PC.i723
  %1338 = sub i32 %1332, %1334
  %1339 = icmp ult i32 %1332, %1334
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1340, i8* %1341, align 1
  %1342 = and i32 %1338, 255
  %1343 = call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1346, i8* %1347, align 1
  %1348 = xor i64 %1335, %1333
  %1349 = trunc i64 %1348 to i32
  %1350 = xor i32 %1349, %1338
  %1351 = lshr i32 %1350, 4
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1353, i8* %1354, align 1
  %1355 = icmp eq i32 %1338, 0
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1356, i8* %1357, align 1
  %1358 = lshr i32 %1338, 31
  %1359 = trunc i32 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1359, i8* %1360, align 1
  %1361 = lshr i32 %1332, 31
  %1362 = lshr i32 %1334, 31
  %1363 = xor i32 %1362, %1361
  %1364 = xor i32 %1358, %1361
  %1365 = add i32 %1364, %1363
  %1366 = icmp eq i32 %1365, 2
  %1367 = zext i1 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1367, i8* %1368, align 1
  store %struct.Memory* %loadMem_478dac, %struct.Memory** %MEMORY
  %loadMem_478dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 33
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1371 to i64*
  %1372 = load i64, i64* %PC.i722
  %1373 = add i64 %1372, 20
  %1374 = load i64, i64* %PC.i722
  %1375 = add i64 %1374, 6
  %1376 = load i64, i64* %PC.i722
  %1377 = add i64 %1376, 6
  store i64 %1377, i64* %PC.i722
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1379 = load i8, i8* %1378, align 1
  %1380 = icmp ne i8 %1379, 0
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1382 = load i8, i8* %1381, align 1
  %1383 = icmp ne i8 %1382, 0
  %1384 = xor i1 %1380, %1383
  %1385 = xor i1 %1384, true
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %BRANCH_TAKEN, align 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1388 = select i1 %1384, i64 %1375, i64 %1373
  store i64 %1388, i64* %1387, align 8
  store %struct.Memory* %loadMem_478dae, %struct.Memory** %MEMORY
  %loadBr_478dae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478dae = icmp eq i8 %loadBr_478dae, 1
  br i1 %cmpBr_478dae, label %block_.L_478dc2, label %block_478db4

block_478db4:                                     ; preds = %block_.L_478d97
  %loadMem_478db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 1
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RAX.i720 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 15
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %1397 to i64*
  %1398 = load i64, i64* %RBP.i721
  %1399 = sub i64 %1398, 8
  %1400 = load i64, i64* %PC.i719
  %1401 = add i64 %1400, 3
  store i64 %1401, i64* %PC.i719
  %1402 = inttoptr i64 %1399 to i32*
  %1403 = load i32, i32* %1402
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RAX.i720, align 8
  store %struct.Memory* %loadMem_478db4, %struct.Memory** %MEMORY
  %loadMem_478db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 1
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %RAX.i718
  %1412 = load i64, i64* %PC.i717
  %1413 = add i64 %1412, 3
  store i64 %1413, i64* %PC.i717
  %1414 = trunc i64 %1411 to i32
  %1415 = add i32 13, %1414
  %1416 = zext i32 %1415 to i64
  store i64 %1416, i64* %RAX.i718, align 8
  %1417 = icmp ult i32 %1415, %1414
  %1418 = icmp ult i32 %1415, 13
  %1419 = or i1 %1417, %1418
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1420, i8* %1421, align 1
  %1422 = and i32 %1415, 255
  %1423 = call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1426, i8* %1427, align 1
  %1428 = xor i64 13, %1411
  %1429 = trunc i64 %1428 to i32
  %1430 = xor i32 %1429, %1415
  %1431 = lshr i32 %1430, 4
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1433, i8* %1434, align 1
  %1435 = icmp eq i32 %1415, 0
  %1436 = zext i1 %1435 to i8
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1436, i8* %1437, align 1
  %1438 = lshr i32 %1415, 31
  %1439 = trunc i32 %1438 to i8
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1439, i8* %1440, align 1
  %1441 = lshr i32 %1414, 31
  %1442 = xor i32 %1438, %1441
  %1443 = add i32 %1442, %1438
  %1444 = icmp eq i32 %1443, 2
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1445, i8* %1446, align 1
  store %struct.Memory* %loadMem_478db7, %struct.Memory** %MEMORY
  %loadMem_478dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 1
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %EAX.i715 = bitcast %union.anon* %1452 to i32*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 15
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %1455 to i64*
  %1456 = load i64, i64* %RBP.i716
  %1457 = sub i64 %1456, 24
  %1458 = load i32, i32* %EAX.i715
  %1459 = zext i32 %1458 to i64
  %1460 = load i64, i64* %PC.i714
  %1461 = add i64 %1460, 3
  store i64 %1461, i64* %PC.i714
  %1462 = inttoptr i64 %1457 to i32*
  store i32 %1458, i32* %1462
  store %struct.Memory* %loadMem_478dba, %struct.Memory** %MEMORY
  %loadMem_478dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 33
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1465 to i64*
  %1466 = load i64, i64* %PC.i713
  %1467 = add i64 %1466, 18
  %1468 = load i64, i64* %PC.i713
  %1469 = add i64 %1468, 5
  store i64 %1469, i64* %PC.i713
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1467, i64* %1470, align 8
  store %struct.Memory* %loadMem_478dbd, %struct.Memory** %MEMORY
  br label %block_.L_478dcf

block_.L_478dc2:                                  ; preds = %block_.L_478d97
  %loadMem_478dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %PC.i711
  %1478 = add i64 %1477, 5
  store i64 %1478, i64* %PC.i711
  store i64 3, i64* %RAX.i712, align 8
  store %struct.Memory* %loadMem_478dc2, %struct.Memory** %MEMORY
  %loadMem_478dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 1
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %EAX.i709 = bitcast %union.anon* %1484 to i32*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 15
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %1487 to i64*
  %1488 = load i64, i64* %RBP.i710
  %1489 = sub i64 %1488, 24
  %1490 = load i32, i32* %EAX.i709
  %1491 = zext i32 %1490 to i64
  %1492 = load i64, i64* %PC.i708
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %PC.i708
  %1494 = inttoptr i64 %1489 to i32*
  store i32 %1490, i32* %1494
  store %struct.Memory* %loadMem_478dc7, %struct.Memory** %MEMORY
  %loadMem_478dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %PC.i707
  %1499 = add i64 %1498, 5
  %1500 = load i64, i64* %PC.i707
  %1501 = add i64 %1500, 5
  store i64 %1501, i64* %PC.i707
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1499, i64* %1502, align 8
  store %struct.Memory* %loadMem_478dca, %struct.Memory** %MEMORY
  br label %block_.L_478dcf

block_.L_478dcf:                                  ; preds = %block_.L_478dc2, %block_478db4
  %loadMem_478dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 1
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 15
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RBP.i706
  %1513 = sub i64 %1512, 24
  %1514 = load i64, i64* %PC.i704
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC.i704
  %1516 = inttoptr i64 %1513 to i32*
  %1517 = load i32, i32* %1516
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RAX.i705, align 8
  store %struct.Memory* %loadMem_478dcf, %struct.Memory** %MEMORY
  %loadMem_478dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 1
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %EAX.i703 = bitcast %union.anon* %1524 to i32*
  %1525 = load i32, i32* %EAX.i703
  %1526 = zext i32 %1525 to i64
  %1527 = load i64, i64* %PC.i702
  %1528 = add i64 %1527, 7
  store i64 %1528, i64* %PC.i702
  store i32 %1525, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*)
  store %struct.Memory* %loadMem_478dd2, %struct.Memory** %MEMORY
  %loadMem_478dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i701
  %1536 = sub i64 %1535, 4
  %1537 = load i64, i64* %PC.i700
  %1538 = add i64 %1537, 4
  store i64 %1538, i64* %PC.i700
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = sub i32 %1540, 8
  %1542 = icmp ult i32 %1540, 8
  %1543 = zext i1 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1543, i8* %1544, align 1
  %1545 = and i32 %1541, 255
  %1546 = call i32 @llvm.ctpop.i32(i32 %1545)
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1549, i8* %1550, align 1
  %1551 = xor i32 %1540, 8
  %1552 = xor i32 %1551, %1541
  %1553 = lshr i32 %1552, 4
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1555, i8* %1556, align 1
  %1557 = icmp eq i32 %1541, 0
  %1558 = zext i1 %1557 to i8
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1558, i8* %1559, align 1
  %1560 = lshr i32 %1541, 31
  %1561 = trunc i32 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1561, i8* %1562, align 1
  %1563 = lshr i32 %1540, 31
  %1564 = xor i32 %1560, %1563
  %1565 = add i32 %1564, %1563
  %1566 = icmp eq i32 %1565, 2
  %1567 = zext i1 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1567, i8* %1568, align 1
  store %struct.Memory* %loadMem_478dd9, %struct.Memory** %MEMORY
  %loadMem_478ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %PC.i699
  %1573 = add i64 %1572, 99
  %1574 = load i64, i64* %PC.i699
  %1575 = add i64 %1574, 6
  %1576 = load i64, i64* %PC.i699
  %1577 = add i64 %1576, 6
  store i64 %1577, i64* %PC.i699
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1579 = load i8, i8* %1578, align 1
  %1580 = icmp ne i8 %1579, 0
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1582 = load i8, i8* %1581, align 1
  %1583 = icmp ne i8 %1582, 0
  %1584 = xor i1 %1580, %1583
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %BRANCH_TAKEN, align 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1587 = select i1 %1584, i64 %1573, i64 %1575
  store i64 %1587, i64* %1586, align 8
  store %struct.Memory* %loadMem_478ddd, %struct.Memory** %MEMORY
  %loadBr_478ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478ddd = icmp eq i8 %loadBr_478ddd, 1
  br i1 %cmpBr_478ddd, label %block_.L_478e40, label %block_478de3

block_478de3:                                     ; preds = %block_.L_478dcf
  %loadMem_478de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 1
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %1593 to i64*
  %1594 = load i64, i64* %PC.i697
  %1595 = add i64 %1594, 5
  store i64 %1595, i64* %PC.i697
  store i64 1, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_478de3, %struct.Memory** %MEMORY
  %loadMem_478de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 33
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1598 to i64*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 5
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %1601 to i64*
  %1602 = load i64, i64* %PC.i695
  %1603 = add i64 %1602, 5
  store i64 %1603, i64* %PC.i695
  store i64 2, i64* %RCX.i696, align 8
  store %struct.Memory* %loadMem_478de8, %struct.Memory** %MEMORY
  %loadMem_478ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 7
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RDX.i693 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 15
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RBP.i694
  %1614 = sub i64 %1613, 8
  %1615 = load i64, i64* %PC.i692
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC.i692
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RDX.i693, align 8
  store %struct.Memory* %loadMem_478ded, %struct.Memory** %MEMORY
  %loadMem_478df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 33
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 7
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %1625 to i64*
  %1626 = load i64, i64* %RDX.i691
  %1627 = load i64, i64* %PC.i690
  %1628 = add i64 %1627, 3
  store i64 %1628, i64* %PC.i690
  %1629 = trunc i64 %1626 to i32
  %1630 = add i32 12, %1629
  %1631 = zext i32 %1630 to i64
  store i64 %1631, i64* %RDX.i691, align 8
  %1632 = icmp ult i32 %1630, %1629
  %1633 = icmp ult i32 %1630, 12
  %1634 = or i1 %1632, %1633
  %1635 = zext i1 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1635, i8* %1636, align 1
  %1637 = and i32 %1630, 255
  %1638 = call i32 @llvm.ctpop.i32(i32 %1637)
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  %1641 = xor i8 %1640, 1
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1641, i8* %1642, align 1
  %1643 = xor i64 12, %1626
  %1644 = trunc i64 %1643 to i32
  %1645 = xor i32 %1644, %1630
  %1646 = lshr i32 %1645, 4
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1648, i8* %1649, align 1
  %1650 = icmp eq i32 %1630, 0
  %1651 = zext i1 %1650 to i8
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1651, i8* %1652, align 1
  %1653 = lshr i32 %1630, 31
  %1654 = trunc i32 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1654, i8* %1655, align 1
  %1656 = lshr i32 %1629, 31
  %1657 = xor i32 %1653, %1656
  %1658 = add i32 %1657, %1653
  %1659 = icmp eq i32 %1658, 2
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1660, i8* %1661, align 1
  store %struct.Memory* %loadMem_478df0, %struct.Memory** %MEMORY
  %loadMem_478df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 1
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %EAX.i688 = bitcast %union.anon* %1667 to i32*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 15
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %RBP.i689
  %1672 = sub i64 %1671, 28
  %1673 = load i32, i32* %EAX.i688
  %1674 = zext i32 %1673 to i64
  %1675 = load i64, i64* %PC.i687
  %1676 = add i64 %1675, 3
  store i64 %1676, i64* %PC.i687
  %1677 = inttoptr i64 %1672 to i32*
  store i32 %1673, i32* %1677
  store %struct.Memory* %loadMem_478df3, %struct.Memory** %MEMORY
  %loadMem_478df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 7
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %EDX.i685 = bitcast %union.anon* %1683 to i32*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 1
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %1686 to i64*
  %1687 = load i32, i32* %EDX.i685
  %1688 = zext i32 %1687 to i64
  %1689 = load i64, i64* %PC.i684
  %1690 = add i64 %1689, 2
  store i64 %1690, i64* %PC.i684
  %1691 = and i64 %1688, 4294967295
  store i64 %1691, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_478df6, %struct.Memory** %MEMORY
  %loadMem_478df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %PC.i683
  %1696 = add i64 %1695, 1
  store i64 %1696, i64* %PC.i683
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1699 = bitcast %union.anon* %1698 to i32*
  %1700 = load i32, i32* %1699, align 8
  %1701 = sext i32 %1700 to i64
  %1702 = lshr i64 %1701, 32
  store i64 %1702, i64* %1697, align 8
  store %struct.Memory* %loadMem_478df8, %struct.Memory** %MEMORY
  %loadMem_478df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 33
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 5
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %ECX.i679 = bitcast %union.anon* %1708 to i32*
  %1709 = load i32, i32* %ECX.i679
  %1710 = zext i32 %1709 to i64
  %1711 = load i64, i64* %PC.i678
  %1712 = add i64 %1711, 2
  store i64 %1712, i64* %PC.i678
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1714 = bitcast %union.anon* %1713 to i32*
  %1715 = load i32, i32* %1714, align 8
  %1716 = zext i32 %1715 to i64
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1718 = bitcast %union.anon* %1717 to i32*
  %1719 = load i32, i32* %1718, align 8
  %1720 = zext i32 %1719 to i64
  %1721 = shl i64 %1710, 32
  %1722 = ashr exact i64 %1721, 32
  %1723 = shl i64 %1720, 32
  %1724 = or i64 %1723, %1716
  %1725 = sdiv i64 %1724, %1722
  %1726 = shl i64 %1725, 32
  %1727 = ashr exact i64 %1726, 32
  %1728 = icmp eq i64 %1725, %1727
  br i1 %1728, label %1733, label %1729

; <label>:1729:                                   ; preds = %block_478de3
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1731 = load i64, i64* %1730, align 8
  %1732 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1731, %struct.Memory* %loadMem_478df9)
  br label %routine_idivl__ecx.exit680

; <label>:1733:                                   ; preds = %block_478de3
  %1734 = srem i64 %1724, %1722
  %1735 = getelementptr inbounds %union.anon, %union.anon* %1713, i64 0, i32 0
  %1736 = and i64 %1725, 4294967295
  store i64 %1736, i64* %1735, align 8
  %1737 = getelementptr inbounds %union.anon, %union.anon* %1717, i64 0, i32 0
  %1738 = and i64 %1734, 4294967295
  store i64 %1738, i64* %1737, align 8
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1739, align 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1740, align 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1741, align 1
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1742, align 1
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1743, align 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1744, align 1
  br label %routine_idivl__ecx.exit680

routine_idivl__ecx.exit680:                       ; preds = %1729, %1733
  %1745 = phi %struct.Memory* [ %1732, %1729 ], [ %loadMem_478df9, %1733 ]
  store %struct.Memory* %1745, %struct.Memory** %MEMORY
  %loadMem_478dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 5
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RCX.i676 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 15
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RBP.i677
  %1756 = sub i64 %1755, 28
  %1757 = load i64, i64* %PC.i675
  %1758 = add i64 %1757, 3
  store i64 %1758, i64* %PC.i675
  %1759 = inttoptr i64 %1756 to i32*
  %1760 = load i32, i32* %1759
  %1761 = zext i32 %1760 to i64
  store i64 %1761, i64* %RCX.i676, align 8
  store %struct.Memory* %loadMem_478dfb, %struct.Memory** %MEMORY
  %loadMem_478dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 1
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %EAX.i673 = bitcast %union.anon* %1767 to i32*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 5
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %ECX.i674 = bitcast %union.anon* %1770 to i32*
  %1771 = load i32, i32* %ECX.i674
  %1772 = zext i32 %1771 to i64
  %1773 = load i32, i32* %EAX.i673
  %1774 = zext i32 %1773 to i64
  %1775 = load i64, i64* %PC.i672
  %1776 = add i64 %1775, 2
  store i64 %1776, i64* %PC.i672
  %1777 = sub i32 %1771, %1773
  %1778 = icmp ult i32 %1771, %1773
  %1779 = zext i1 %1778 to i8
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1779, i8* %1780, align 1
  %1781 = and i32 %1777, 255
  %1782 = call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1785, i8* %1786, align 1
  %1787 = xor i64 %1774, %1772
  %1788 = trunc i64 %1787 to i32
  %1789 = xor i32 %1788, %1777
  %1790 = lshr i32 %1789, 4
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1792, i8* %1793, align 1
  %1794 = icmp eq i32 %1777, 0
  %1795 = zext i1 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1795, i8* %1796, align 1
  %1797 = lshr i32 %1777, 31
  %1798 = trunc i32 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1798, i8* %1799, align 1
  %1800 = lshr i32 %1771, 31
  %1801 = lshr i32 %1773, 31
  %1802 = xor i32 %1801, %1800
  %1803 = xor i32 %1797, %1800
  %1804 = add i32 %1803, %1802
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1806, i8* %1807, align 1
  store %struct.Memory* %loadMem_478dfe, %struct.Memory** %MEMORY
  %loadMem_478e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %PC.i671
  %1812 = add i64 %1811, 36
  %1813 = load i64, i64* %PC.i671
  %1814 = add i64 %1813, 6
  %1815 = load i64, i64* %PC.i671
  %1816 = add i64 %1815, 6
  store i64 %1816, i64* %PC.i671
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1818 = load i8, i8* %1817, align 1
  %1819 = icmp ne i8 %1818, 0
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1821 = load i8, i8* %1820, align 1
  %1822 = icmp ne i8 %1821, 0
  %1823 = xor i1 %1819, %1822
  %1824 = xor i1 %1823, true
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %BRANCH_TAKEN, align 1
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1827 = select i1 %1823, i64 %1814, i64 %1812
  store i64 %1827, i64* %1826, align 8
  store %struct.Memory* %loadMem_478e00, %struct.Memory** %MEMORY
  %loadBr_478e00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478e00 = icmp eq i8 %loadBr_478e00, 1
  br i1 %cmpBr_478e00, label %block_.L_478e24, label %block_478e06

block_478e06:                                     ; preds = %routine_idivl__ecx.exit680
  %loadMem_478e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 1
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %1833 to i64*
  %1834 = load i64, i64* %PC.i669
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %PC.i669
  store i64 2, i64* %RAX.i670, align 8
  store %struct.Memory* %loadMem_478e06, %struct.Memory** %MEMORY
  %loadMem_478e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 5
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 15
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %1844 to i64*
  %1845 = load i64, i64* %RBP.i668
  %1846 = sub i64 %1845, 8
  %1847 = load i64, i64* %PC.i666
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC.i666
  %1849 = inttoptr i64 %1846 to i32*
  %1850 = load i32, i32* %1849
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_478e0b, %struct.Memory** %MEMORY
  %loadMem_478e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 5
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %RCX.i665
  %1859 = load i64, i64* %PC.i664
  %1860 = add i64 %1859, 3
  store i64 %1860, i64* %PC.i664
  %1861 = trunc i64 %1858 to i32
  %1862 = add i32 12, %1861
  %1863 = zext i32 %1862 to i64
  store i64 %1863, i64* %RCX.i665, align 8
  %1864 = icmp ult i32 %1862, %1861
  %1865 = icmp ult i32 %1862, 12
  %1866 = or i1 %1864, %1865
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1867, i8* %1868, align 1
  %1869 = and i32 %1862, 255
  %1870 = call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1873, i8* %1874, align 1
  %1875 = xor i64 12, %1858
  %1876 = trunc i64 %1875 to i32
  %1877 = xor i32 %1876, %1862
  %1878 = lshr i32 %1877, 4
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1880, i8* %1881, align 1
  %1882 = icmp eq i32 %1862, 0
  %1883 = zext i1 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1883, i8* %1884, align 1
  %1885 = lshr i32 %1862, 31
  %1886 = trunc i32 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1886, i8* %1887, align 1
  %1888 = lshr i32 %1861, 31
  %1889 = xor i32 %1885, %1888
  %1890 = add i32 %1889, %1885
  %1891 = icmp eq i32 %1890, 2
  %1892 = zext i1 %1891 to i8
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1892, i8* %1893, align 1
  store %struct.Memory* %loadMem_478e0e, %struct.Memory** %MEMORY
  %loadMem_478e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 33
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 1
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %EAX.i662 = bitcast %union.anon* %1899 to i32*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 15
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %1902 to i64*
  %1903 = load i64, i64* %RBP.i663
  %1904 = sub i64 %1903, 32
  %1905 = load i32, i32* %EAX.i662
  %1906 = zext i32 %1905 to i64
  %1907 = load i64, i64* %PC.i661
  %1908 = add i64 %1907, 3
  store i64 %1908, i64* %PC.i661
  %1909 = inttoptr i64 %1904 to i32*
  store i32 %1905, i32* %1909
  store %struct.Memory* %loadMem_478e11, %struct.Memory** %MEMORY
  %loadMem_478e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 5
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %ECX.i659 = bitcast %union.anon* %1915 to i32*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 1
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RAX.i660 = bitcast %union.anon* %1918 to i64*
  %1919 = load i32, i32* %ECX.i659
  %1920 = zext i32 %1919 to i64
  %1921 = load i64, i64* %PC.i658
  %1922 = add i64 %1921, 2
  store i64 %1922, i64* %PC.i658
  %1923 = and i64 %1920, 4294967295
  store i64 %1923, i64* %RAX.i660, align 8
  store %struct.Memory* %loadMem_478e14, %struct.Memory** %MEMORY
  %loadMem_478e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %PC.i657
  %1928 = add i64 %1927, 1
  store i64 %1928, i64* %PC.i657
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1931 = bitcast %union.anon* %1930 to i32*
  %1932 = load i32, i32* %1931, align 8
  %1933 = sext i32 %1932 to i64
  %1934 = lshr i64 %1933, 32
  store i64 %1934, i64* %1929, align 8
  store %struct.Memory* %loadMem_478e16, %struct.Memory** %MEMORY
  %loadMem_478e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 5
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RCX.i655 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 15
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %1943 to i64*
  %1944 = load i64, i64* %RBP.i656
  %1945 = sub i64 %1944, 32
  %1946 = load i64, i64* %PC.i654
  %1947 = add i64 %1946, 3
  store i64 %1947, i64* %PC.i654
  %1948 = inttoptr i64 %1945 to i32*
  %1949 = load i32, i32* %1948
  %1950 = zext i32 %1949 to i64
  store i64 %1950, i64* %RCX.i655, align 8
  store %struct.Memory* %loadMem_478e17, %struct.Memory** %MEMORY
  %loadMem_478e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 5
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %ECX.i651 = bitcast %union.anon* %1956 to i32*
  %1957 = load i32, i32* %ECX.i651
  %1958 = zext i32 %1957 to i64
  %1959 = load i64, i64* %PC.i650
  %1960 = add i64 %1959, 2
  store i64 %1960, i64* %PC.i650
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1962 = bitcast %union.anon* %1961 to i32*
  %1963 = load i32, i32* %1962, align 8
  %1964 = zext i32 %1963 to i64
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1966 = bitcast %union.anon* %1965 to i32*
  %1967 = load i32, i32* %1966, align 8
  %1968 = zext i32 %1967 to i64
  %1969 = shl i64 %1958, 32
  %1970 = ashr exact i64 %1969, 32
  %1971 = shl i64 %1968, 32
  %1972 = or i64 %1971, %1964
  %1973 = sdiv i64 %1972, %1970
  %1974 = shl i64 %1973, 32
  %1975 = ashr exact i64 %1974, 32
  %1976 = icmp eq i64 %1973, %1975
  br i1 %1976, label %1981, label %1977

; <label>:1977:                                   ; preds = %block_478e06
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1979 = load i64, i64* %1978, align 8
  %1980 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1979, %struct.Memory* %loadMem_478e1a)
  br label %routine_idivl__ecx.exit652

; <label>:1981:                                   ; preds = %block_478e06
  %1982 = srem i64 %1972, %1970
  %1983 = getelementptr inbounds %union.anon, %union.anon* %1961, i64 0, i32 0
  %1984 = and i64 %1973, 4294967295
  store i64 %1984, i64* %1983, align 8
  %1985 = getelementptr inbounds %union.anon, %union.anon* %1965, i64 0, i32 0
  %1986 = and i64 %1982, 4294967295
  store i64 %1986, i64* %1985, align 8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1987, align 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1988, align 1
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1989, align 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1990, align 1
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1991, align 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1992, align 1
  br label %routine_idivl__ecx.exit652

routine_idivl__ecx.exit652:                       ; preds = %1977, %1981
  %1993 = phi %struct.Memory* [ %1980, %1977 ], [ %loadMem_478e1a, %1981 ]
  store %struct.Memory* %1993, %struct.Memory** %MEMORY
  %loadMem_478e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 1
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %EAX.i648 = bitcast %union.anon* %1999 to i32*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 15
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RBP.i649
  %2004 = sub i64 %2003, 36
  %2005 = load i32, i32* %EAX.i648
  %2006 = zext i32 %2005 to i64
  %2007 = load i64, i64* %PC.i647
  %2008 = add i64 %2007, 3
  store i64 %2008, i64* %PC.i647
  %2009 = inttoptr i64 %2004 to i32*
  store i32 %2005, i32* %2009
  store %struct.Memory* %loadMem_478e1c, %struct.Memory** %MEMORY
  %loadMem_478e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %PC.i646
  %2014 = add i64 %2013, 18
  %2015 = load i64, i64* %PC.i646
  %2016 = add i64 %2015, 5
  store i64 %2016, i64* %PC.i646
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2014, i64* %2017, align 8
  store %struct.Memory* %loadMem_478e1f, %struct.Memory** %MEMORY
  br label %block_.L_478e31

block_.L_478e24:                                  ; preds = %routine_idivl__ecx.exit680
  %loadMem_478e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 33
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 1
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %PC.i644
  %2025 = add i64 %2024, 5
  store i64 %2025, i64* %PC.i644
  store i64 1, i64* %RAX.i645, align 8
  store %struct.Memory* %loadMem_478e24, %struct.Memory** %MEMORY
  %loadMem_478e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %EAX.i642 = bitcast %union.anon* %2031 to i32*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i643
  %2036 = sub i64 %2035, 36
  %2037 = load i32, i32* %EAX.i642
  %2038 = zext i32 %2037 to i64
  %2039 = load i64, i64* %PC.i641
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %PC.i641
  %2041 = inttoptr i64 %2036 to i32*
  store i32 %2037, i32* %2041
  store %struct.Memory* %loadMem_478e29, %struct.Memory** %MEMORY
  %loadMem_478e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2044 to i64*
  %2045 = load i64, i64* %PC.i640
  %2046 = add i64 %2045, 5
  %2047 = load i64, i64* %PC.i640
  %2048 = add i64 %2047, 5
  store i64 %2048, i64* %PC.i640
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2046, i64* %2049, align 8
  store %struct.Memory* %loadMem_478e2c, %struct.Memory** %MEMORY
  br label %block_.L_478e31

block_.L_478e31:                                  ; preds = %block_.L_478e24, %routine_idivl__ecx.exit652
  %loadMem_478e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 33
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 1
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 15
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %RBP.i639
  %2060 = sub i64 %2059, 36
  %2061 = load i64, i64* %PC.i637
  %2062 = add i64 %2061, 3
  store i64 %2062, i64* %PC.i637
  %2063 = inttoptr i64 %2060 to i32*
  %2064 = load i32, i32* %2063
  %2065 = zext i32 %2064 to i64
  store i64 %2065, i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_478e31, %struct.Memory** %MEMORY
  %loadMem_478e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 1
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %EAX.i636 = bitcast %union.anon* %2071 to i32*
  %2072 = load i32, i32* %EAX.i636
  %2073 = zext i32 %2072 to i64
  %2074 = load i64, i64* %PC.i635
  %2075 = add i64 %2074, 7
  store i64 %2075, i64* %PC.i635
  store i32 %2072, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*)
  store %struct.Memory* %loadMem_478e34, %struct.Memory** %MEMORY
  %loadMem_478e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 33
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2078 to i64*
  %2079 = load i64, i64* %PC.i634
  %2080 = add i64 %2079, 93
  %2081 = load i64, i64* %PC.i634
  %2082 = add i64 %2081, 5
  store i64 %2082, i64* %PC.i634
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2080, i64* %2083, align 8
  store %struct.Memory* %loadMem_478e3b, %struct.Memory** %MEMORY
  br label %block_.L_478e98

block_.L_478e40:                                  ; preds = %block_.L_478dcf
  %loadMem_478e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 1
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %2089 to i64*
  %2090 = load i64, i64* %PC.i632
  %2091 = add i64 %2090, 5
  store i64 %2091, i64* %PC.i632
  store i64 1, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_478e40, %struct.Memory** %MEMORY
  %loadMem_478e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 5
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %2097 to i64*
  %2098 = load i64, i64* %PC.i630
  %2099 = add i64 %2098, 5
  store i64 %2099, i64* %PC.i630
  store i64 2, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_478e45, %struct.Memory** %MEMORY
  %loadMem_478e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 7
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RDX.i628 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 15
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %RBP.i629
  %2110 = sub i64 %2109, 8
  %2111 = load i64, i64* %PC.i627
  %2112 = add i64 %2111, 3
  store i64 %2112, i64* %PC.i627
  %2113 = inttoptr i64 %2110 to i32*
  %2114 = load i32, i32* %2113
  %2115 = zext i32 %2114 to i64
  store i64 %2115, i64* %RDX.i628, align 8
  store %struct.Memory* %loadMem_478e4a, %struct.Memory** %MEMORY
  %loadMem_478e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 7
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %2121 to i64*
  %2122 = load i64, i64* %RDX.i626
  %2123 = load i64, i64* %PC.i625
  %2124 = add i64 %2123, 3
  store i64 %2124, i64* %PC.i625
  %2125 = trunc i64 %2122 to i32
  %2126 = add i32 11, %2125
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RDX.i626, align 8
  %2128 = icmp ult i32 %2126, %2125
  %2129 = icmp ult i32 %2126, 11
  %2130 = or i1 %2128, %2129
  %2131 = zext i1 %2130 to i8
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2131, i8* %2132, align 1
  %2133 = and i32 %2126, 255
  %2134 = call i32 @llvm.ctpop.i32(i32 %2133)
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2137, i8* %2138, align 1
  %2139 = xor i64 11, %2122
  %2140 = trunc i64 %2139 to i32
  %2141 = xor i32 %2140, %2126
  %2142 = lshr i32 %2141, 4
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2144, i8* %2145, align 1
  %2146 = icmp eq i32 %2126, 0
  %2147 = zext i1 %2146 to i8
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2147, i8* %2148, align 1
  %2149 = lshr i32 %2126, 31
  %2150 = trunc i32 %2149 to i8
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2150, i8* %2151, align 1
  %2152 = lshr i32 %2125, 31
  %2153 = xor i32 %2149, %2152
  %2154 = add i32 %2153, %2149
  %2155 = icmp eq i32 %2154, 2
  %2156 = zext i1 %2155 to i8
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2156, i8* %2157, align 1
  store %struct.Memory* %loadMem_478e4d, %struct.Memory** %MEMORY
  %loadMem_478e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 1
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %EAX.i623 = bitcast %union.anon* %2163 to i32*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 15
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %RBP.i624
  %2168 = sub i64 %2167, 40
  %2169 = load i32, i32* %EAX.i623
  %2170 = zext i32 %2169 to i64
  %2171 = load i64, i64* %PC.i622
  %2172 = add i64 %2171, 3
  store i64 %2172, i64* %PC.i622
  %2173 = inttoptr i64 %2168 to i32*
  store i32 %2169, i32* %2173
  store %struct.Memory* %loadMem_478e50, %struct.Memory** %MEMORY
  %loadMem_478e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 7
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %EDX.i620 = bitcast %union.anon* %2179 to i32*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 1
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %2182 to i64*
  %2183 = load i32, i32* %EDX.i620
  %2184 = zext i32 %2183 to i64
  %2185 = load i64, i64* %PC.i619
  %2186 = add i64 %2185, 2
  store i64 %2186, i64* %PC.i619
  %2187 = and i64 %2184, 4294967295
  store i64 %2187, i64* %RAX.i621, align 8
  store %struct.Memory* %loadMem_478e53, %struct.Memory** %MEMORY
  %loadMem_478e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 33
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %2190 to i64*
  %2191 = load i64, i64* %PC.i618
  %2192 = add i64 %2191, 1
  store i64 %2192, i64* %PC.i618
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2195 = bitcast %union.anon* %2194 to i32*
  %2196 = load i32, i32* %2195, align 8
  %2197 = sext i32 %2196 to i64
  %2198 = lshr i64 %2197, 32
  store i64 %2198, i64* %2193, align 8
  store %struct.Memory* %loadMem_478e55, %struct.Memory** %MEMORY
  %loadMem_478e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 33
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 5
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %ECX.i613 = bitcast %union.anon* %2204 to i32*
  %2205 = load i32, i32* %ECX.i613
  %2206 = zext i32 %2205 to i64
  %2207 = load i64, i64* %PC.i612
  %2208 = add i64 %2207, 2
  store i64 %2208, i64* %PC.i612
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2210 = bitcast %union.anon* %2209 to i32*
  %2211 = load i32, i32* %2210, align 8
  %2212 = zext i32 %2211 to i64
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2214 = bitcast %union.anon* %2213 to i32*
  %2215 = load i32, i32* %2214, align 8
  %2216 = zext i32 %2215 to i64
  %2217 = shl i64 %2206, 32
  %2218 = ashr exact i64 %2217, 32
  %2219 = shl i64 %2216, 32
  %2220 = or i64 %2219, %2212
  %2221 = sdiv i64 %2220, %2218
  %2222 = shl i64 %2221, 32
  %2223 = ashr exact i64 %2222, 32
  %2224 = icmp eq i64 %2221, %2223
  br i1 %2224, label %2229, label %2225

; <label>:2225:                                   ; preds = %block_.L_478e40
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2227 = load i64, i64* %2226, align 8
  %2228 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2227, %struct.Memory* %loadMem_478e56)
  br label %routine_idivl__ecx.exit614

; <label>:2229:                                   ; preds = %block_.L_478e40
  %2230 = srem i64 %2220, %2218
  %2231 = getelementptr inbounds %union.anon, %union.anon* %2209, i64 0, i32 0
  %2232 = and i64 %2221, 4294967295
  store i64 %2232, i64* %2231, align 8
  %2233 = getelementptr inbounds %union.anon, %union.anon* %2213, i64 0, i32 0
  %2234 = and i64 %2230, 4294967295
  store i64 %2234, i64* %2233, align 8
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2235, align 1
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2236, align 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2237, align 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2238, align 1
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2239, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2240, align 1
  br label %routine_idivl__ecx.exit614

routine_idivl__ecx.exit614:                       ; preds = %2225, %2229
  %2241 = phi %struct.Memory* [ %2228, %2225 ], [ %loadMem_478e56, %2229 ]
  store %struct.Memory* %2241, %struct.Memory** %MEMORY
  %loadMem_478e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 33
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2244 to i64*
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 5
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %RCX.i610 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 15
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %RBP.i611
  %2252 = sub i64 %2251, 40
  %2253 = load i64, i64* %PC.i609
  %2254 = add i64 %2253, 3
  store i64 %2254, i64* %PC.i609
  %2255 = inttoptr i64 %2252 to i32*
  %2256 = load i32, i32* %2255
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RCX.i610, align 8
  store %struct.Memory* %loadMem_478e58, %struct.Memory** %MEMORY
  %loadMem_478e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 33
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 1
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %2263 to i32*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 5
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %ECX.i608 = bitcast %union.anon* %2266 to i32*
  %2267 = load i32, i32* %ECX.i608
  %2268 = zext i32 %2267 to i64
  %2269 = load i32, i32* %EAX.i607
  %2270 = zext i32 %2269 to i64
  %2271 = load i64, i64* %PC.i606
  %2272 = add i64 %2271, 2
  store i64 %2272, i64* %PC.i606
  %2273 = sub i32 %2267, %2269
  %2274 = icmp ult i32 %2267, %2269
  %2275 = zext i1 %2274 to i8
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2275, i8* %2276, align 1
  %2277 = and i32 %2273, 255
  %2278 = call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2281, i8* %2282, align 1
  %2283 = xor i64 %2270, %2268
  %2284 = trunc i64 %2283 to i32
  %2285 = xor i32 %2284, %2273
  %2286 = lshr i32 %2285, 4
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2288, i8* %2289, align 1
  %2290 = icmp eq i32 %2273, 0
  %2291 = zext i1 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2291, i8* %2292, align 1
  %2293 = lshr i32 %2273, 31
  %2294 = trunc i32 %2293 to i8
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2294, i8* %2295, align 1
  %2296 = lshr i32 %2267, 31
  %2297 = lshr i32 %2269, 31
  %2298 = xor i32 %2297, %2296
  %2299 = xor i32 %2293, %2296
  %2300 = add i32 %2299, %2298
  %2301 = icmp eq i32 %2300, 2
  %2302 = zext i1 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2302, i8* %2303, align 1
  store %struct.Memory* %loadMem_478e5b, %struct.Memory** %MEMORY
  %loadMem_478e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %PC.i605
  %2308 = add i64 %2307, 36
  %2309 = load i64, i64* %PC.i605
  %2310 = add i64 %2309, 6
  %2311 = load i64, i64* %PC.i605
  %2312 = add i64 %2311, 6
  store i64 %2312, i64* %PC.i605
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2314 = load i8, i8* %2313, align 1
  %2315 = icmp ne i8 %2314, 0
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2317 = load i8, i8* %2316, align 1
  %2318 = icmp ne i8 %2317, 0
  %2319 = xor i1 %2315, %2318
  %2320 = xor i1 %2319, true
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %BRANCH_TAKEN, align 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2323 = select i1 %2319, i64 %2310, i64 %2308
  store i64 %2323, i64* %2322, align 8
  store %struct.Memory* %loadMem_478e5d, %struct.Memory** %MEMORY
  %loadBr_478e5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478e5d = icmp eq i8 %loadBr_478e5d, 1
  br i1 %cmpBr_478e5d, label %block_.L_478e81, label %block_478e63

block_478e63:                                     ; preds = %routine_idivl__ecx.exit614
  %loadMem_478e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 1
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %2329 to i64*
  %2330 = load i64, i64* %PC.i603
  %2331 = add i64 %2330, 5
  store i64 %2331, i64* %PC.i603
  store i64 2, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_478e63, %struct.Memory** %MEMORY
  %loadMem_478e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 5
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 15
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RBP.i602
  %2342 = sub i64 %2341, 8
  %2343 = load i64, i64* %PC.i600
  %2344 = add i64 %2343, 3
  store i64 %2344, i64* %PC.i600
  %2345 = inttoptr i64 %2342 to i32*
  %2346 = load i32, i32* %2345
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RCX.i601, align 8
  store %struct.Memory* %loadMem_478e68, %struct.Memory** %MEMORY
  %loadMem_478e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 5
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %RCX.i599
  %2355 = load i64, i64* %PC.i598
  %2356 = add i64 %2355, 3
  store i64 %2356, i64* %PC.i598
  %2357 = trunc i64 %2354 to i32
  %2358 = add i32 11, %2357
  %2359 = zext i32 %2358 to i64
  store i64 %2359, i64* %RCX.i599, align 8
  %2360 = icmp ult i32 %2358, %2357
  %2361 = icmp ult i32 %2358, 11
  %2362 = or i1 %2360, %2361
  %2363 = zext i1 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2363, i8* %2364, align 1
  %2365 = and i32 %2358, 255
  %2366 = call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2369, i8* %2370, align 1
  %2371 = xor i64 11, %2354
  %2372 = trunc i64 %2371 to i32
  %2373 = xor i32 %2372, %2358
  %2374 = lshr i32 %2373, 4
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2376, i8* %2377, align 1
  %2378 = icmp eq i32 %2358, 0
  %2379 = zext i1 %2378 to i8
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2379, i8* %2380, align 1
  %2381 = lshr i32 %2358, 31
  %2382 = trunc i32 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i32 %2357, 31
  %2385 = xor i32 %2381, %2384
  %2386 = add i32 %2385, %2381
  %2387 = icmp eq i32 %2386, 2
  %2388 = zext i1 %2387 to i8
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2388, i8* %2389, align 1
  store %struct.Memory* %loadMem_478e6b, %struct.Memory** %MEMORY
  %loadMem_478e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 1
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %EAX.i596 = bitcast %union.anon* %2395 to i32*
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 15
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %2398 to i64*
  %2399 = load i64, i64* %RBP.i597
  %2400 = sub i64 %2399, 44
  %2401 = load i32, i32* %EAX.i596
  %2402 = zext i32 %2401 to i64
  %2403 = load i64, i64* %PC.i595
  %2404 = add i64 %2403, 3
  store i64 %2404, i64* %PC.i595
  %2405 = inttoptr i64 %2400 to i32*
  store i32 %2401, i32* %2405
  store %struct.Memory* %loadMem_478e6e, %struct.Memory** %MEMORY
  %loadMem_478e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 5
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %ECX.i593 = bitcast %union.anon* %2411 to i32*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 1
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %2414 to i64*
  %2415 = load i32, i32* %ECX.i593
  %2416 = zext i32 %2415 to i64
  %2417 = load i64, i64* %PC.i592
  %2418 = add i64 %2417, 2
  store i64 %2418, i64* %PC.i592
  %2419 = and i64 %2416, 4294967295
  store i64 %2419, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_478e71, %struct.Memory** %MEMORY
  %loadMem_478e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %PC.i591
  %2424 = add i64 %2423, 1
  store i64 %2424, i64* %PC.i591
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2427 = bitcast %union.anon* %2426 to i32*
  %2428 = load i32, i32* %2427, align 8
  %2429 = sext i32 %2428 to i64
  %2430 = lshr i64 %2429, 32
  store i64 %2430, i64* %2425, align 8
  store %struct.Memory* %loadMem_478e73, %struct.Memory** %MEMORY
  %loadMem_478e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 5
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %RBP.i590
  %2441 = sub i64 %2440, 44
  %2442 = load i64, i64* %PC.i588
  %2443 = add i64 %2442, 3
  store i64 %2443, i64* %PC.i588
  %2444 = inttoptr i64 %2441 to i32*
  %2445 = load i32, i32* %2444
  %2446 = zext i32 %2445 to i64
  store i64 %2446, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_478e74, %struct.Memory** %MEMORY
  %loadMem_478e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 33
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2449 to i64*
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 5
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %ECX.i584 = bitcast %union.anon* %2452 to i32*
  %2453 = load i32, i32* %ECX.i584
  %2454 = zext i32 %2453 to i64
  %2455 = load i64, i64* %PC.i583
  %2456 = add i64 %2455, 2
  store i64 %2456, i64* %PC.i583
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2458 = bitcast %union.anon* %2457 to i32*
  %2459 = load i32, i32* %2458, align 8
  %2460 = zext i32 %2459 to i64
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2462 = bitcast %union.anon* %2461 to i32*
  %2463 = load i32, i32* %2462, align 8
  %2464 = zext i32 %2463 to i64
  %2465 = shl i64 %2454, 32
  %2466 = ashr exact i64 %2465, 32
  %2467 = shl i64 %2464, 32
  %2468 = or i64 %2467, %2460
  %2469 = sdiv i64 %2468, %2466
  %2470 = shl i64 %2469, 32
  %2471 = ashr exact i64 %2470, 32
  %2472 = icmp eq i64 %2469, %2471
  br i1 %2472, label %2477, label %2473

; <label>:2473:                                   ; preds = %block_478e63
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2475 = load i64, i64* %2474, align 8
  %2476 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2475, %struct.Memory* %loadMem_478e77)
  br label %routine_idivl__ecx.exit585

; <label>:2477:                                   ; preds = %block_478e63
  %2478 = srem i64 %2468, %2466
  %2479 = getelementptr inbounds %union.anon, %union.anon* %2457, i64 0, i32 0
  %2480 = and i64 %2469, 4294967295
  store i64 %2480, i64* %2479, align 8
  %2481 = getelementptr inbounds %union.anon, %union.anon* %2461, i64 0, i32 0
  %2482 = and i64 %2478, 4294967295
  store i64 %2482, i64* %2481, align 8
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2483, align 1
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2484, align 1
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2485, align 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2486, align 1
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2487, align 1
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2488, align 1
  br label %routine_idivl__ecx.exit585

routine_idivl__ecx.exit585:                       ; preds = %2473, %2477
  %2489 = phi %struct.Memory* [ %2476, %2473 ], [ %loadMem_478e77, %2477 ]
  store %struct.Memory* %2489, %struct.Memory** %MEMORY
  %loadMem_478e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 1
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %EAX.i581 = bitcast %union.anon* %2495 to i32*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 15
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %RBP.i582
  %2500 = sub i64 %2499, 48
  %2501 = load i32, i32* %EAX.i581
  %2502 = zext i32 %2501 to i64
  %2503 = load i64, i64* %PC.i580
  %2504 = add i64 %2503, 3
  store i64 %2504, i64* %PC.i580
  %2505 = inttoptr i64 %2500 to i32*
  store i32 %2501, i32* %2505
  store %struct.Memory* %loadMem_478e79, %struct.Memory** %MEMORY
  %loadMem_478e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %PC.i579
  %2510 = add i64 %2509, 18
  %2511 = load i64, i64* %PC.i579
  %2512 = add i64 %2511, 5
  store i64 %2512, i64* %PC.i579
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2510, i64* %2513, align 8
  store %struct.Memory* %loadMem_478e7c, %struct.Memory** %MEMORY
  br label %block_.L_478e8e

block_.L_478e81:                                  ; preds = %routine_idivl__ecx.exit614
  %loadMem_478e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 1
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %2519 to i64*
  %2520 = load i64, i64* %PC.i577
  %2521 = add i64 %2520, 5
  store i64 %2521, i64* %PC.i577
  store i64 1, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_478e81, %struct.Memory** %MEMORY
  %loadMem_478e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 1
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %EAX.i575 = bitcast %union.anon* %2527 to i32*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 15
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %2530 to i64*
  %2531 = load i64, i64* %RBP.i576
  %2532 = sub i64 %2531, 48
  %2533 = load i32, i32* %EAX.i575
  %2534 = zext i32 %2533 to i64
  %2535 = load i64, i64* %PC.i574
  %2536 = add i64 %2535, 3
  store i64 %2536, i64* %PC.i574
  %2537 = inttoptr i64 %2532 to i32*
  store i32 %2533, i32* %2537
  store %struct.Memory* %loadMem_478e86, %struct.Memory** %MEMORY
  %loadMem_478e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2540 to i64*
  %2541 = load i64, i64* %PC.i573
  %2542 = add i64 %2541, 5
  %2543 = load i64, i64* %PC.i573
  %2544 = add i64 %2543, 5
  store i64 %2544, i64* %PC.i573
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2542, i64* %2545, align 8
  store %struct.Memory* %loadMem_478e89, %struct.Memory** %MEMORY
  br label %block_.L_478e8e

block_.L_478e8e:                                  ; preds = %block_.L_478e81, %routine_idivl__ecx.exit585
  %loadMem_478e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2548 to i64*
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 1
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 15
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %2554 to i64*
  %2555 = load i64, i64* %RBP.i572
  %2556 = sub i64 %2555, 48
  %2557 = load i64, i64* %PC.i570
  %2558 = add i64 %2557, 3
  store i64 %2558, i64* %PC.i570
  %2559 = inttoptr i64 %2556 to i32*
  %2560 = load i32, i32* %2559
  %2561 = zext i32 %2560 to i64
  store i64 %2561, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_478e8e, %struct.Memory** %MEMORY
  %loadMem_478e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 1
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %EAX.i569 = bitcast %union.anon* %2567 to i32*
  %2568 = load i32, i32* %EAX.i569
  %2569 = zext i32 %2568 to i64
  %2570 = load i64, i64* %PC.i568
  %2571 = add i64 %2570, 7
  store i64 %2571, i64* %PC.i568
  store i32 %2568, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*)
  store %struct.Memory* %loadMem_478e91, %struct.Memory** %MEMORY
  br label %block_.L_478e98

block_.L_478e98:                                  ; preds = %block_.L_478e8e, %block_.L_478e31
  %loadMem_478e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 1
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %PC.i566
  %2579 = add i64 %2578, 5
  store i64 %2579, i64* %PC.i566
  store i64 2, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_478e98, %struct.Memory** %MEMORY
  %loadMem_478e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 5
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %2585 to i64*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 15
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %2588 to i64*
  %2589 = load i64, i64* %RBP.i565
  %2590 = sub i64 %2589, 8
  %2591 = load i64, i64* %PC.i563
  %2592 = add i64 %2591, 3
  store i64 %2592, i64* %PC.i563
  %2593 = inttoptr i64 %2590 to i32*
  %2594 = load i32, i32* %2593
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RCX.i564, align 8
  store %struct.Memory* %loadMem_478e9d, %struct.Memory** %MEMORY
  %loadMem_478ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 33
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2598 to i64*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 5
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %RCX.i562
  %2603 = load i64, i64* %PC.i561
  %2604 = add i64 %2603, 3
  store i64 %2604, i64* %PC.i561
  %2605 = trunc i64 %2602 to i32
  %2606 = add i32 16, %2605
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RCX.i562, align 8
  %2608 = icmp ult i32 %2606, %2605
  %2609 = icmp ult i32 %2606, 16
  %2610 = or i1 %2608, %2609
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2611, i8* %2612, align 1
  %2613 = and i32 %2606, 255
  %2614 = call i32 @llvm.ctpop.i32(i32 %2613)
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  %2617 = xor i8 %2616, 1
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2617, i8* %2618, align 1
  %2619 = xor i64 16, %2602
  %2620 = trunc i64 %2619 to i32
  %2621 = xor i32 %2620, %2606
  %2622 = lshr i32 %2621, 4
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2624, i8* %2625, align 1
  %2626 = icmp eq i32 %2606, 0
  %2627 = zext i1 %2626 to i8
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2627, i8* %2628, align 1
  %2629 = lshr i32 %2606, 31
  %2630 = trunc i32 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2630, i8* %2631, align 1
  %2632 = lshr i32 %2605, 31
  %2633 = xor i32 %2629, %2632
  %2634 = add i32 %2633, %2629
  %2635 = icmp eq i32 %2634, 2
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2636, i8* %2637, align 1
  store %struct.Memory* %loadMem_478ea0, %struct.Memory** %MEMORY
  %loadMem_478ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 1
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %EAX.i559 = bitcast %union.anon* %2643 to i32*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 15
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %RBP.i560
  %2648 = sub i64 %2647, 52
  %2649 = load i32, i32* %EAX.i559
  %2650 = zext i32 %2649 to i64
  %2651 = load i64, i64* %PC.i558
  %2652 = add i64 %2651, 3
  store i64 %2652, i64* %PC.i558
  %2653 = inttoptr i64 %2648 to i32*
  store i32 %2649, i32* %2653
  store %struct.Memory* %loadMem_478ea3, %struct.Memory** %MEMORY
  %loadMem_478ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 33
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2656 to i64*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 5
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %ECX.i556 = bitcast %union.anon* %2659 to i32*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 1
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %2662 to i64*
  %2663 = load i32, i32* %ECX.i556
  %2664 = zext i32 %2663 to i64
  %2665 = load i64, i64* %PC.i555
  %2666 = add i64 %2665, 2
  store i64 %2666, i64* %PC.i555
  %2667 = and i64 %2664, 4294967295
  store i64 %2667, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_478ea6, %struct.Memory** %MEMORY
  %loadMem_478ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 33
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2670 to i64*
  %2671 = load i64, i64* %PC.i554
  %2672 = add i64 %2671, 1
  store i64 %2672, i64* %PC.i554
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2675 = bitcast %union.anon* %2674 to i32*
  %2676 = load i32, i32* %2675, align 8
  %2677 = sext i32 %2676 to i64
  %2678 = lshr i64 %2677, 32
  store i64 %2678, i64* %2673, align 8
  store %struct.Memory* %loadMem_478ea8, %struct.Memory** %MEMORY
  %loadMem_478ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 5
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %2687 to i64*
  %2688 = load i64, i64* %RBP.i553
  %2689 = sub i64 %2688, 52
  %2690 = load i64, i64* %PC.i551
  %2691 = add i64 %2690, 3
  store i64 %2691, i64* %PC.i551
  %2692 = inttoptr i64 %2689 to i32*
  %2693 = load i32, i32* %2692
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_478ea9, %struct.Memory** %MEMORY
  %loadMem_478eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 5
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %ECX.i546 = bitcast %union.anon* %2700 to i32*
  %2701 = load i32, i32* %ECX.i546
  %2702 = zext i32 %2701 to i64
  %2703 = load i64, i64* %PC.i545
  %2704 = add i64 %2703, 2
  store i64 %2704, i64* %PC.i545
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2706 = bitcast %union.anon* %2705 to i32*
  %2707 = load i32, i32* %2706, align 8
  %2708 = zext i32 %2707 to i64
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2710 = bitcast %union.anon* %2709 to i32*
  %2711 = load i32, i32* %2710, align 8
  %2712 = zext i32 %2711 to i64
  %2713 = shl i64 %2702, 32
  %2714 = ashr exact i64 %2713, 32
  %2715 = shl i64 %2712, 32
  %2716 = or i64 %2715, %2708
  %2717 = sdiv i64 %2716, %2714
  %2718 = shl i64 %2717, 32
  %2719 = ashr exact i64 %2718, 32
  %2720 = icmp eq i64 %2717, %2719
  br i1 %2720, label %2725, label %2721

; <label>:2721:                                   ; preds = %block_.L_478e98
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2723 = load i64, i64* %2722, align 8
  %2724 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2723, %struct.Memory* %loadMem_478eac)
  br label %routine_idivl__ecx.exit547

; <label>:2725:                                   ; preds = %block_.L_478e98
  %2726 = srem i64 %2716, %2714
  %2727 = getelementptr inbounds %union.anon, %union.anon* %2705, i64 0, i32 0
  %2728 = and i64 %2717, 4294967295
  store i64 %2728, i64* %2727, align 8
  %2729 = getelementptr inbounds %union.anon, %union.anon* %2709, i64 0, i32 0
  %2730 = and i64 %2726, 4294967295
  store i64 %2730, i64* %2729, align 8
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2731, align 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2732, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2733, align 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2734, align 1
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2735, align 1
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2736, align 1
  br label %routine_idivl__ecx.exit547

routine_idivl__ecx.exit547:                       ; preds = %2721, %2725
  %2737 = phi %struct.Memory* [ %2724, %2721 ], [ %loadMem_478eac, %2725 ]
  store %struct.Memory* %2737, %struct.Memory** %MEMORY
  %loadMem_478eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 1
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %EAX.i543 = bitcast %union.anon* %2743 to i32*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 5
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %ECX.i544 = bitcast %union.anon* %2746 to i32*
  %2747 = load i32, i32* %ECX.i544
  %2748 = zext i32 %2747 to i64
  %2749 = load i32, i32* %EAX.i543
  %2750 = zext i32 %2749 to i64
  %2751 = load i64, i64* %PC.i542
  %2752 = add i64 %2751, 2
  store i64 %2752, i64* %PC.i542
  %2753 = sub i32 %2747, %2749
  %2754 = icmp ult i32 %2747, %2749
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2755, i8* %2756, align 1
  %2757 = and i32 %2753, 255
  %2758 = call i32 @llvm.ctpop.i32(i32 %2757)
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  %2761 = xor i8 %2760, 1
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2761, i8* %2762, align 1
  %2763 = xor i64 %2750, %2748
  %2764 = trunc i64 %2763 to i32
  %2765 = xor i32 %2764, %2753
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2768, i8* %2769, align 1
  %2770 = icmp eq i32 %2753, 0
  %2771 = zext i1 %2770 to i8
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2771, i8* %2772, align 1
  %2773 = lshr i32 %2753, 31
  %2774 = trunc i32 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2774, i8* %2775, align 1
  %2776 = lshr i32 %2747, 31
  %2777 = lshr i32 %2749, 31
  %2778 = xor i32 %2777, %2776
  %2779 = xor i32 %2773, %2776
  %2780 = add i32 %2779, %2778
  %2781 = icmp eq i32 %2780, 2
  %2782 = zext i1 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2782, i8* %2783, align 1
  store %struct.Memory* %loadMem_478eae, %struct.Memory** %MEMORY
  %loadMem_478eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %PC.i541
  %2788 = add i64 %2787, 36
  %2789 = load i64, i64* %PC.i541
  %2790 = add i64 %2789, 6
  %2791 = load i64, i64* %PC.i541
  %2792 = add i64 %2791, 6
  store i64 %2792, i64* %PC.i541
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2794 = load i8, i8* %2793, align 1
  %2795 = icmp ne i8 %2794, 0
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2797 = load i8, i8* %2796, align 1
  %2798 = icmp ne i8 %2797, 0
  %2799 = xor i1 %2795, %2798
  %2800 = xor i1 %2799, true
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %BRANCH_TAKEN, align 1
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2803 = select i1 %2799, i64 %2790, i64 %2788
  store i64 %2803, i64* %2802, align 8
  store %struct.Memory* %loadMem_478eb0, %struct.Memory** %MEMORY
  %loadBr_478eb0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478eb0 = icmp eq i8 %loadBr_478eb0, 1
  br i1 %cmpBr_478eb0, label %block_.L_478ed4, label %block_478eb6

block_478eb6:                                     ; preds = %routine_idivl__ecx.exit547
  %loadMem_478eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 1
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %PC.i539
  %2811 = add i64 %2810, 5
  store i64 %2811, i64* %PC.i539
  store i64 2, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_478eb6, %struct.Memory** %MEMORY
  %loadMem_478ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 5
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 15
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %RBP.i538
  %2822 = sub i64 %2821, 8
  %2823 = load i64, i64* %PC.i536
  %2824 = add i64 %2823, 3
  store i64 %2824, i64* %PC.i536
  %2825 = inttoptr i64 %2822 to i32*
  %2826 = load i32, i32* %2825
  %2827 = zext i32 %2826 to i64
  store i64 %2827, i64* %RCX.i537, align 8
  store %struct.Memory* %loadMem_478ebb, %struct.Memory** %MEMORY
  %loadMem_478ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 5
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %2833 to i64*
  %2834 = load i64, i64* %RCX.i535
  %2835 = load i64, i64* %PC.i534
  %2836 = add i64 %2835, 3
  store i64 %2836, i64* %PC.i534
  %2837 = trunc i64 %2834 to i32
  %2838 = add i32 16, %2837
  %2839 = zext i32 %2838 to i64
  store i64 %2839, i64* %RCX.i535, align 8
  %2840 = icmp ult i32 %2838, %2837
  %2841 = icmp ult i32 %2838, 16
  %2842 = or i1 %2840, %2841
  %2843 = zext i1 %2842 to i8
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2843, i8* %2844, align 1
  %2845 = and i32 %2838, 255
  %2846 = call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2849, i8* %2850, align 1
  %2851 = xor i64 16, %2834
  %2852 = trunc i64 %2851 to i32
  %2853 = xor i32 %2852, %2838
  %2854 = lshr i32 %2853, 4
  %2855 = trunc i32 %2854 to i8
  %2856 = and i8 %2855, 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2856, i8* %2857, align 1
  %2858 = icmp eq i32 %2838, 0
  %2859 = zext i1 %2858 to i8
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2859, i8* %2860, align 1
  %2861 = lshr i32 %2838, 31
  %2862 = trunc i32 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2862, i8* %2863, align 1
  %2864 = lshr i32 %2837, 31
  %2865 = xor i32 %2861, %2864
  %2866 = add i32 %2865, %2861
  %2867 = icmp eq i32 %2866, 2
  %2868 = zext i1 %2867 to i8
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2868, i8* %2869, align 1
  store %struct.Memory* %loadMem_478ebe, %struct.Memory** %MEMORY
  %loadMem_478ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 33
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2872 to i64*
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 1
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %EAX.i532 = bitcast %union.anon* %2875 to i32*
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 15
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %RBP.i533
  %2880 = sub i64 %2879, 56
  %2881 = load i32, i32* %EAX.i532
  %2882 = zext i32 %2881 to i64
  %2883 = load i64, i64* %PC.i531
  %2884 = add i64 %2883, 3
  store i64 %2884, i64* %PC.i531
  %2885 = inttoptr i64 %2880 to i32*
  store i32 %2881, i32* %2885
  store %struct.Memory* %loadMem_478ec1, %struct.Memory** %MEMORY
  %loadMem_478ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 5
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %ECX.i529 = bitcast %union.anon* %2891 to i32*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 1
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %2894 to i64*
  %2895 = load i32, i32* %ECX.i529
  %2896 = zext i32 %2895 to i64
  %2897 = load i64, i64* %PC.i528
  %2898 = add i64 %2897, 2
  store i64 %2898, i64* %PC.i528
  %2899 = and i64 %2896, 4294967295
  store i64 %2899, i64* %RAX.i530, align 8
  store %struct.Memory* %loadMem_478ec4, %struct.Memory** %MEMORY
  %loadMem_478ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %PC.i527
  %2904 = add i64 %2903, 1
  store i64 %2904, i64* %PC.i527
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2907 = bitcast %union.anon* %2906 to i32*
  %2908 = load i32, i32* %2907, align 8
  %2909 = sext i32 %2908 to i64
  %2910 = lshr i64 %2909, 32
  store i64 %2910, i64* %2905, align 8
  store %struct.Memory* %loadMem_478ec6, %struct.Memory** %MEMORY
  %loadMem_478ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 33
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 5
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 15
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %2919 to i64*
  %2920 = load i64, i64* %RBP.i526
  %2921 = sub i64 %2920, 56
  %2922 = load i64, i64* %PC.i524
  %2923 = add i64 %2922, 3
  store i64 %2923, i64* %PC.i524
  %2924 = inttoptr i64 %2921 to i32*
  %2925 = load i32, i32* %2924
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_478ec7, %struct.Memory** %MEMORY
  %loadMem_478eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 5
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %ECX.i521 = bitcast %union.anon* %2932 to i32*
  %2933 = load i32, i32* %ECX.i521
  %2934 = zext i32 %2933 to i64
  %2935 = load i64, i64* %PC.i520
  %2936 = add i64 %2935, 2
  store i64 %2936, i64* %PC.i520
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2938 = bitcast %union.anon* %2937 to i32*
  %2939 = load i32, i32* %2938, align 8
  %2940 = zext i32 %2939 to i64
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2942 = bitcast %union.anon* %2941 to i32*
  %2943 = load i32, i32* %2942, align 8
  %2944 = zext i32 %2943 to i64
  %2945 = shl i64 %2934, 32
  %2946 = ashr exact i64 %2945, 32
  %2947 = shl i64 %2944, 32
  %2948 = or i64 %2947, %2940
  %2949 = sdiv i64 %2948, %2946
  %2950 = shl i64 %2949, 32
  %2951 = ashr exact i64 %2950, 32
  %2952 = icmp eq i64 %2949, %2951
  br i1 %2952, label %2957, label %2953

; <label>:2953:                                   ; preds = %block_478eb6
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2955 = load i64, i64* %2954, align 8
  %2956 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2955, %struct.Memory* %loadMem_478eca)
  br label %routine_idivl__ecx.exit522

; <label>:2957:                                   ; preds = %block_478eb6
  %2958 = srem i64 %2948, %2946
  %2959 = getelementptr inbounds %union.anon, %union.anon* %2937, i64 0, i32 0
  %2960 = and i64 %2949, 4294967295
  store i64 %2960, i64* %2959, align 8
  %2961 = getelementptr inbounds %union.anon, %union.anon* %2941, i64 0, i32 0
  %2962 = and i64 %2958, 4294967295
  store i64 %2962, i64* %2961, align 8
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2963, align 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2964, align 1
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2965, align 1
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2966, align 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2967, align 1
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2968, align 1
  br label %routine_idivl__ecx.exit522

routine_idivl__ecx.exit522:                       ; preds = %2953, %2957
  %2969 = phi %struct.Memory* [ %2956, %2953 ], [ %loadMem_478eca, %2957 ]
  store %struct.Memory* %2969, %struct.Memory** %MEMORY
  %loadMem_478ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 1
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %EAX.i518 = bitcast %union.anon* %2975 to i32*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 15
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RBP.i519
  %2980 = sub i64 %2979, 60
  %2981 = load i32, i32* %EAX.i518
  %2982 = zext i32 %2981 to i64
  %2983 = load i64, i64* %PC.i517
  %2984 = add i64 %2983, 3
  store i64 %2984, i64* %PC.i517
  %2985 = inttoptr i64 %2980 to i32*
  store i32 %2981, i32* %2985
  store %struct.Memory* %loadMem_478ecc, %struct.Memory** %MEMORY
  %loadMem_478ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %PC.i516
  %2990 = add i64 %2989, 18
  %2991 = load i64, i64* %PC.i516
  %2992 = add i64 %2991, 5
  store i64 %2992, i64* %PC.i516
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2990, i64* %2993, align 8
  store %struct.Memory* %loadMem_478ecf, %struct.Memory** %MEMORY
  br label %block_.L_478ee1

block_.L_478ed4:                                  ; preds = %routine_idivl__ecx.exit547
  %loadMem_478ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 1
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %PC.i514
  %3001 = add i64 %3000, 5
  store i64 %3001, i64* %PC.i514
  store i64 2, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_478ed4, %struct.Memory** %MEMORY
  %loadMem_478ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 1
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %EAX.i512 = bitcast %union.anon* %3007 to i32*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 15
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %3010 to i64*
  %3011 = load i64, i64* %RBP.i513
  %3012 = sub i64 %3011, 60
  %3013 = load i32, i32* %EAX.i512
  %3014 = zext i32 %3013 to i64
  %3015 = load i64, i64* %PC.i511
  %3016 = add i64 %3015, 3
  store i64 %3016, i64* %PC.i511
  %3017 = inttoptr i64 %3012 to i32*
  store i32 %3013, i32* %3017
  store %struct.Memory* %loadMem_478ed9, %struct.Memory** %MEMORY
  %loadMem_478edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3020 to i64*
  %3021 = load i64, i64* %PC.i510
  %3022 = add i64 %3021, 5
  %3023 = load i64, i64* %PC.i510
  %3024 = add i64 %3023, 5
  store i64 %3024, i64* %PC.i510
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3022, i64* %3025, align 8
  store %struct.Memory* %loadMem_478edc, %struct.Memory** %MEMORY
  br label %block_.L_478ee1

block_.L_478ee1:                                  ; preds = %block_.L_478ed4, %routine_idivl__ecx.exit522
  %loadMem_478ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 1
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 15
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RBP.i509
  %3036 = sub i64 %3035, 60
  %3037 = load i64, i64* %PC.i507
  %3038 = add i64 %3037, 3
  store i64 %3038, i64* %PC.i507
  %3039 = inttoptr i64 %3036 to i32*
  %3040 = load i32, i32* %3039
  %3041 = zext i32 %3040 to i64
  store i64 %3041, i64* %RAX.i508, align 8
  store %struct.Memory* %loadMem_478ee1, %struct.Memory** %MEMORY
  %loadMem_478ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 5
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %3047 to i64*
  %3048 = load i64, i64* %PC.i505
  %3049 = add i64 %3048, 5
  store i64 %3049, i64* %PC.i505
  store i64 5, i64* %RCX.i506, align 8
  store %struct.Memory* %loadMem_478ee4, %struct.Memory** %MEMORY
  %loadMem_478ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 7
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RDX.i504 = bitcast %union.anon* %3055 to i64*
  %3056 = load i64, i64* %PC.i503
  %3057 = add i64 %3056, 5
  store i64 %3057, i64* %PC.i503
  store i64 2, i64* %RDX.i504, align 8
  store %struct.Memory* %loadMem_478ee9, %struct.Memory** %MEMORY
  %loadMem_478eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 1
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %3063 to i32*
  %3064 = load i32, i32* %EAX.i502
  %3065 = zext i32 %3064 to i64
  %3066 = load i64, i64* %PC.i501
  %3067 = add i64 %3066, 7
  store i64 %3067, i64* %PC.i501
  store i32 %3064, i32* bitcast (%G_0xb6e910_type* @G_0xb6e910 to i32*)
  store %struct.Memory* %loadMem_478eee, %struct.Memory** %MEMORY
  %loadMem_478ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 33
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 1
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 15
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3076 to i64*
  %3077 = load i64, i64* %RBP.i500
  %3078 = sub i64 %3077, 8
  %3079 = load i64, i64* %PC.i498
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC.i498
  %3081 = inttoptr i64 %3078 to i32*
  %3082 = load i32, i32* %3081
  %3083 = zext i32 %3082 to i64
  store i64 %3083, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_478ef5, %struct.Memory** %MEMORY
  %loadMem_478ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 1
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %3089 to i64*
  %3090 = load i64, i64* %RAX.i497
  %3091 = load i64, i64* %PC.i496
  %3092 = add i64 %3091, 3
  store i64 %3092, i64* %PC.i496
  %3093 = trunc i64 %3090 to i32
  %3094 = add i32 40, %3093
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RAX.i497, align 8
  %3096 = icmp ult i32 %3094, %3093
  %3097 = icmp ult i32 %3094, 40
  %3098 = or i1 %3096, %3097
  %3099 = zext i1 %3098 to i8
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3099, i8* %3100, align 1
  %3101 = and i32 %3094, 255
  %3102 = call i32 @llvm.ctpop.i32(i32 %3101)
  %3103 = trunc i32 %3102 to i8
  %3104 = and i8 %3103, 1
  %3105 = xor i8 %3104, 1
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3105, i8* %3106, align 1
  %3107 = xor i64 40, %3090
  %3108 = trunc i64 %3107 to i32
  %3109 = xor i32 %3108, %3094
  %3110 = lshr i32 %3109, 4
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3112, i8* %3113, align 1
  %3114 = icmp eq i32 %3094, 0
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3115, i8* %3116, align 1
  %3117 = lshr i32 %3094, 31
  %3118 = trunc i32 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3118, i8* %3119, align 1
  %3120 = lshr i32 %3093, 31
  %3121 = xor i32 %3117, %3120
  %3122 = add i32 %3121, %3117
  %3123 = icmp eq i32 %3122, 2
  %3124 = zext i1 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3124, i8* %3125, align 1
  store %struct.Memory* %loadMem_478ef8, %struct.Memory** %MEMORY
  %loadMem_478efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 7
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3131 to i32*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 15
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %RBP.i495
  %3136 = sub i64 %3135, 64
  %3137 = load i32, i32* %EDX.i
  %3138 = zext i32 %3137 to i64
  %3139 = load i64, i64* %PC.i494
  %3140 = add i64 %3139, 3
  store i64 %3140, i64* %PC.i494
  %3141 = inttoptr i64 %3136 to i32*
  store i32 %3137, i32* %3141
  store %struct.Memory* %loadMem_478efb, %struct.Memory** %MEMORY
  %loadMem_478efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 33
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %PC.i493
  %3146 = add i64 %3145, 1
  store i64 %3146, i64* %PC.i493
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3149 = bitcast %union.anon* %3148 to i32*
  %3150 = load i32, i32* %3149, align 8
  %3151 = sext i32 %3150 to i64
  %3152 = lshr i64 %3151, 32
  store i64 %3152, i64* %3147, align 8
  store %struct.Memory* %loadMem_478efe, %struct.Memory** %MEMORY
  %loadMem_478eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 33
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 9
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 15
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3161 to i64*
  %3162 = load i64, i64* %RBP.i492
  %3163 = sub i64 %3162, 64
  %3164 = load i64, i64* %PC.i491
  %3165 = add i64 %3164, 3
  store i64 %3165, i64* %PC.i491
  %3166 = inttoptr i64 %3163 to i32*
  %3167 = load i32, i32* %3166
  %3168 = zext i32 %3167 to i64
  store i64 %3168, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_478eff, %struct.Memory** %MEMORY
  %loadMem_478f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 33
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 9
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3174 to i32*
  %3175 = load i32, i32* %ESI.i
  %3176 = zext i32 %3175 to i64
  %3177 = load i64, i64* %PC.i488
  %3178 = add i64 %3177, 2
  store i64 %3178, i64* %PC.i488
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3180 = bitcast %union.anon* %3179 to i32*
  %3181 = load i32, i32* %3180, align 8
  %3182 = zext i32 %3181 to i64
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3184 = bitcast %union.anon* %3183 to i32*
  %3185 = load i32, i32* %3184, align 8
  %3186 = zext i32 %3185 to i64
  %3187 = shl i64 %3176, 32
  %3188 = ashr exact i64 %3187, 32
  %3189 = shl i64 %3186, 32
  %3190 = or i64 %3189, %3182
  %3191 = sdiv i64 %3190, %3188
  %3192 = shl i64 %3191, 32
  %3193 = ashr exact i64 %3192, 32
  %3194 = icmp eq i64 %3191, %3193
  br i1 %3194, label %3199, label %3195

; <label>:3195:                                   ; preds = %block_.L_478ee1
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3197 = load i64, i64* %3196, align 8
  %3198 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3197, %struct.Memory* %loadMem_478f02)
  br label %routine_idivl__esi.exit

; <label>:3199:                                   ; preds = %block_.L_478ee1
  %3200 = srem i64 %3190, %3188
  %3201 = getelementptr inbounds %union.anon, %union.anon* %3179, i64 0, i32 0
  %3202 = and i64 %3191, 4294967295
  store i64 %3202, i64* %3201, align 8
  %3203 = getelementptr inbounds %union.anon, %union.anon* %3183, i64 0, i32 0
  %3204 = and i64 %3200, 4294967295
  store i64 %3204, i64* %3203, align 8
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3205, align 1
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3206, align 1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3207, align 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3208, align 1
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3209, align 1
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3210, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %3195, %3199
  %3211 = phi %struct.Memory* [ %3198, %3195 ], [ %loadMem_478f02, %3199 ]
  store %struct.Memory* %3211, %struct.Memory** %MEMORY
  %loadMem_478f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 33
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 1
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %EAX.i486 = bitcast %union.anon* %3217 to i32*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 5
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %ECX.i487 = bitcast %union.anon* %3220 to i32*
  %3221 = load i32, i32* %ECX.i487
  %3222 = zext i32 %3221 to i64
  %3223 = load i32, i32* %EAX.i486
  %3224 = zext i32 %3223 to i64
  %3225 = load i64, i64* %PC.i485
  %3226 = add i64 %3225, 2
  store i64 %3226, i64* %PC.i485
  %3227 = sub i32 %3221, %3223
  %3228 = icmp ult i32 %3221, %3223
  %3229 = zext i1 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3229, i8* %3230, align 1
  %3231 = and i32 %3227, 255
  %3232 = call i32 @llvm.ctpop.i32(i32 %3231)
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3235, i8* %3236, align 1
  %3237 = xor i64 %3224, %3222
  %3238 = trunc i64 %3237 to i32
  %3239 = xor i32 %3238, %3227
  %3240 = lshr i32 %3239, 4
  %3241 = trunc i32 %3240 to i8
  %3242 = and i8 %3241, 1
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3242, i8* %3243, align 1
  %3244 = icmp eq i32 %3227, 0
  %3245 = zext i1 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3245, i8* %3246, align 1
  %3247 = lshr i32 %3227, 31
  %3248 = trunc i32 %3247 to i8
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3248, i8* %3249, align 1
  %3250 = lshr i32 %3221, 31
  %3251 = lshr i32 %3223, 31
  %3252 = xor i32 %3251, %3250
  %3253 = xor i32 %3247, %3250
  %3254 = add i32 %3253, %3252
  %3255 = icmp eq i32 %3254, 2
  %3256 = zext i1 %3255 to i8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3256, i8* %3257, align 1
  store %struct.Memory* %loadMem_478f04, %struct.Memory** %MEMORY
  %loadMem_478f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3260 to i64*
  %3261 = load i64, i64* %PC.i484
  %3262 = add i64 %3261, 36
  %3263 = load i64, i64* %PC.i484
  %3264 = add i64 %3263, 6
  %3265 = load i64, i64* %PC.i484
  %3266 = add i64 %3265, 6
  store i64 %3266, i64* %PC.i484
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3268 = load i8, i8* %3267, align 1
  %3269 = icmp ne i8 %3268, 0
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3271 = load i8, i8* %3270, align 1
  %3272 = icmp ne i8 %3271, 0
  %3273 = xor i1 %3269, %3272
  %3274 = xor i1 %3273, true
  %3275 = zext i1 %3274 to i8
  store i8 %3275, i8* %BRANCH_TAKEN, align 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3277 = select i1 %3273, i64 %3264, i64 %3262
  store i64 %3277, i64* %3276, align 8
  store %struct.Memory* %loadMem_478f06, %struct.Memory** %MEMORY
  %loadBr_478f06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478f06 = icmp eq i8 %loadBr_478f06, 1
  br i1 %cmpBr_478f06, label %block_.L_478f2a, label %block_478f0c

block_478f0c:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_478f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 33
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3280 to i64*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 1
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %3283 to i64*
  %3284 = load i64, i64* %PC.i482
  %3285 = add i64 %3284, 5
  store i64 %3285, i64* %PC.i482
  store i64 2, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_478f0c, %struct.Memory** %MEMORY
  %loadMem_478f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 5
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 15
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %3294 to i64*
  %3295 = load i64, i64* %RBP.i481
  %3296 = sub i64 %3295, 8
  %3297 = load i64, i64* %PC.i479
  %3298 = add i64 %3297, 3
  store i64 %3298, i64* %PC.i479
  %3299 = inttoptr i64 %3296 to i32*
  %3300 = load i32, i32* %3299
  %3301 = zext i32 %3300 to i64
  store i64 %3301, i64* %RCX.i480, align 8
  store %struct.Memory* %loadMem_478f11, %struct.Memory** %MEMORY
  %loadMem_478f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 33
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3304 to i64*
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 5
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %RCX.i478
  %3309 = load i64, i64* %PC.i477
  %3310 = add i64 %3309, 3
  store i64 %3310, i64* %PC.i477
  %3311 = trunc i64 %3308 to i32
  %3312 = add i32 40, %3311
  %3313 = zext i32 %3312 to i64
  store i64 %3313, i64* %RCX.i478, align 8
  %3314 = icmp ult i32 %3312, %3311
  %3315 = icmp ult i32 %3312, 40
  %3316 = or i1 %3314, %3315
  %3317 = zext i1 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3317, i8* %3318, align 1
  %3319 = and i32 %3312, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1
  %3325 = xor i64 40, %3308
  %3326 = trunc i64 %3325 to i32
  %3327 = xor i32 %3326, %3312
  %3328 = lshr i32 %3327, 4
  %3329 = trunc i32 %3328 to i8
  %3330 = and i8 %3329, 1
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3330, i8* %3331, align 1
  %3332 = icmp eq i32 %3312, 0
  %3333 = zext i1 %3332 to i8
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3333, i8* %3334, align 1
  %3335 = lshr i32 %3312, 31
  %3336 = trunc i32 %3335 to i8
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3336, i8* %3337, align 1
  %3338 = lshr i32 %3311, 31
  %3339 = xor i32 %3335, %3338
  %3340 = add i32 %3339, %3335
  %3341 = icmp eq i32 %3340, 2
  %3342 = zext i1 %3341 to i8
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3342, i8* %3343, align 1
  store %struct.Memory* %loadMem_478f14, %struct.Memory** %MEMORY
  %loadMem_478f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 1
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %EAX.i475 = bitcast %union.anon* %3349 to i32*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 15
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %3352 to i64*
  %3353 = load i64, i64* %RBP.i476
  %3354 = sub i64 %3353, 68
  %3355 = load i32, i32* %EAX.i475
  %3356 = zext i32 %3355 to i64
  %3357 = load i64, i64* %PC.i474
  %3358 = add i64 %3357, 3
  store i64 %3358, i64* %PC.i474
  %3359 = inttoptr i64 %3354 to i32*
  store i32 %3355, i32* %3359
  store %struct.Memory* %loadMem_478f17, %struct.Memory** %MEMORY
  %loadMem_478f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 33
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 5
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %ECX.i472 = bitcast %union.anon* %3365 to i32*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 1
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %3368 to i64*
  %3369 = load i32, i32* %ECX.i472
  %3370 = zext i32 %3369 to i64
  %3371 = load i64, i64* %PC.i471
  %3372 = add i64 %3371, 2
  store i64 %3372, i64* %PC.i471
  %3373 = and i64 %3370, 4294967295
  store i64 %3373, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_478f1a, %struct.Memory** %MEMORY
  %loadMem_478f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 33
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3376 to i64*
  %3377 = load i64, i64* %PC.i470
  %3378 = add i64 %3377, 1
  store i64 %3378, i64* %PC.i470
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3381 = bitcast %union.anon* %3380 to i32*
  %3382 = load i32, i32* %3381, align 8
  %3383 = sext i32 %3382 to i64
  %3384 = lshr i64 %3383, 32
  store i64 %3384, i64* %3379, align 8
  store %struct.Memory* %loadMem_478f1c, %struct.Memory** %MEMORY
  %loadMem_478f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 5
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 15
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %3393 to i64*
  %3394 = load i64, i64* %RBP.i469
  %3395 = sub i64 %3394, 68
  %3396 = load i64, i64* %PC.i467
  %3397 = add i64 %3396, 3
  store i64 %3397, i64* %PC.i467
  %3398 = inttoptr i64 %3395 to i32*
  %3399 = load i32, i32* %3398
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RCX.i468, align 8
  store %struct.Memory* %loadMem_478f1d, %struct.Memory** %MEMORY
  %loadMem_478f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 5
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %ECX.i464 = bitcast %union.anon* %3406 to i32*
  %3407 = load i32, i32* %ECX.i464
  %3408 = zext i32 %3407 to i64
  %3409 = load i64, i64* %PC.i463
  %3410 = add i64 %3409, 2
  store i64 %3410, i64* %PC.i463
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3412 = bitcast %union.anon* %3411 to i32*
  %3413 = load i32, i32* %3412, align 8
  %3414 = zext i32 %3413 to i64
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3416 = bitcast %union.anon* %3415 to i32*
  %3417 = load i32, i32* %3416, align 8
  %3418 = zext i32 %3417 to i64
  %3419 = shl i64 %3408, 32
  %3420 = ashr exact i64 %3419, 32
  %3421 = shl i64 %3418, 32
  %3422 = or i64 %3421, %3414
  %3423 = sdiv i64 %3422, %3420
  %3424 = shl i64 %3423, 32
  %3425 = ashr exact i64 %3424, 32
  %3426 = icmp eq i64 %3423, %3425
  br i1 %3426, label %3431, label %3427

; <label>:3427:                                   ; preds = %block_478f0c
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3429 = load i64, i64* %3428, align 8
  %3430 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3429, %struct.Memory* %loadMem_478f20)
  br label %routine_idivl__ecx.exit

; <label>:3431:                                   ; preds = %block_478f0c
  %3432 = srem i64 %3422, %3420
  %3433 = getelementptr inbounds %union.anon, %union.anon* %3411, i64 0, i32 0
  %3434 = and i64 %3423, 4294967295
  store i64 %3434, i64* %3433, align 8
  %3435 = getelementptr inbounds %union.anon, %union.anon* %3415, i64 0, i32 0
  %3436 = and i64 %3432, 4294967295
  store i64 %3436, i64* %3435, align 8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3437, align 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3438, align 1
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3439, align 1
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3440, align 1
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3441, align 1
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3442, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3427, %3431
  %3443 = phi %struct.Memory* [ %3430, %3427 ], [ %loadMem_478f20, %3431 ]
  store %struct.Memory* %3443, %struct.Memory** %MEMORY
  %loadMem_478f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 33
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 1
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %EAX.i461 = bitcast %union.anon* %3449 to i32*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 15
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %RBP.i462
  %3454 = sub i64 %3453, 72
  %3455 = load i32, i32* %EAX.i461
  %3456 = zext i32 %3455 to i64
  %3457 = load i64, i64* %PC.i460
  %3458 = add i64 %3457, 3
  store i64 %3458, i64* %PC.i460
  %3459 = inttoptr i64 %3454 to i32*
  store i32 %3455, i32* %3459
  store %struct.Memory* %loadMem_478f22, %struct.Memory** %MEMORY
  %loadMem_478f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %3462 to i64*
  %3463 = load i64, i64* %PC.i459
  %3464 = add i64 %3463, 18
  %3465 = load i64, i64* %PC.i459
  %3466 = add i64 %3465, 5
  store i64 %3466, i64* %PC.i459
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3464, i64* %3467, align 8
  store %struct.Memory* %loadMem_478f25, %struct.Memory** %MEMORY
  br label %block_.L_478f37

block_.L_478f2a:                                  ; preds = %routine_idivl__esi.exit
  %loadMem_478f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %3473 to i64*
  %3474 = load i64, i64* %PC.i457
  %3475 = add i64 %3474, 5
  store i64 %3475, i64* %PC.i457
  store i64 5, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_478f2a, %struct.Memory** %MEMORY
  %loadMem_478f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 33
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 1
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %EAX.i455 = bitcast %union.anon* %3481 to i32*
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 15
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %3484 to i64*
  %3485 = load i64, i64* %RBP.i456
  %3486 = sub i64 %3485, 72
  %3487 = load i32, i32* %EAX.i455
  %3488 = zext i32 %3487 to i64
  %3489 = load i64, i64* %PC.i454
  %3490 = add i64 %3489, 3
  store i64 %3490, i64* %PC.i454
  %3491 = inttoptr i64 %3486 to i32*
  store i32 %3487, i32* %3491
  store %struct.Memory* %loadMem_478f2f, %struct.Memory** %MEMORY
  %loadMem_478f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %3494 to i64*
  %3495 = load i64, i64* %PC.i453
  %3496 = add i64 %3495, 5
  %3497 = load i64, i64* %PC.i453
  %3498 = add i64 %3497, 5
  store i64 %3498, i64* %PC.i453
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3496, i64* %3499, align 8
  store %struct.Memory* %loadMem_478f32, %struct.Memory** %MEMORY
  br label %block_.L_478f37

block_.L_478f37:                                  ; preds = %block_.L_478f2a, %routine_idivl__ecx.exit
  %loadMem_478f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 33
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3502 to i64*
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3504 = getelementptr inbounds %struct.GPR, %struct.GPR* %3503, i32 0, i32 1
  %3505 = getelementptr inbounds %struct.Reg, %struct.Reg* %3504, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %3505 to i64*
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 15
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %3508 to i64*
  %3509 = load i64, i64* %RBP.i452
  %3510 = sub i64 %3509, 72
  %3511 = load i64, i64* %PC.i450
  %3512 = add i64 %3511, 3
  store i64 %3512, i64* %PC.i450
  %3513 = inttoptr i64 %3510 to i32*
  %3514 = load i32, i32* %3513
  %3515 = zext i32 %3514 to i64
  store i64 %3515, i64* %RAX.i451, align 8
  store %struct.Memory* %loadMem_478f37, %struct.Memory** %MEMORY
  %loadMem_478f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 1
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %EAX.i449 = bitcast %union.anon* %3521 to i32*
  %3522 = load i32, i32* %EAX.i449
  %3523 = zext i32 %3522 to i64
  %3524 = load i64, i64* %PC.i448
  %3525 = add i64 %3524, 7
  store i64 %3525, i64* %PC.i448
  store i32 %3522, i32* bitcast (%G_0xb8af1c_type* @G_0xb8af1c to i32*)
  store %struct.Memory* %loadMem_478f3a, %struct.Memory** %MEMORY
  %loadMem_478f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3528 to i64*
  %3529 = load i64, i64* %PC.i447
  %3530 = add i64 %3529, 11
  store i64 %3530, i64* %PC.i447
  store i32 0, i32* bitcast (%G_0xab0f20_type* @G_0xab0f20 to i32*)
  store %struct.Memory* %loadMem_478f41, %struct.Memory** %MEMORY
  %loadMem_478f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RBP.i446
  %3538 = sub i64 %3537, 4
  %3539 = load i64, i64* %PC.i445
  %3540 = add i64 %3539, 4
  store i64 %3540, i64* %PC.i445
  %3541 = inttoptr i64 %3538 to i32*
  %3542 = load i32, i32* %3541
  %3543 = sub i32 %3542, 8
  %3544 = icmp ult i32 %3542, 8
  %3545 = zext i1 %3544 to i8
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3545, i8* %3546, align 1
  %3547 = and i32 %3543, 255
  %3548 = call i32 @llvm.ctpop.i32(i32 %3547)
  %3549 = trunc i32 %3548 to i8
  %3550 = and i8 %3549, 1
  %3551 = xor i8 %3550, 1
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3551, i8* %3552, align 1
  %3553 = xor i32 %3542, 8
  %3554 = xor i32 %3553, %3543
  %3555 = lshr i32 %3554, 4
  %3556 = trunc i32 %3555 to i8
  %3557 = and i8 %3556, 1
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3557, i8* %3558, align 1
  %3559 = icmp eq i32 %3543, 0
  %3560 = zext i1 %3559 to i8
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3560, i8* %3561, align 1
  %3562 = lshr i32 %3543, 31
  %3563 = trunc i32 %3562 to i8
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3563, i8* %3564, align 1
  %3565 = lshr i32 %3542, 31
  %3566 = xor i32 %3562, %3565
  %3567 = add i32 %3566, %3565
  %3568 = icmp eq i32 %3567, 2
  %3569 = zext i1 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3569, i8* %3570, align 1
  store %struct.Memory* %loadMem_478f4c, %struct.Memory** %MEMORY
  %loadMem_478f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 33
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %PC.i444
  %3575 = add i64 %3574, 67
  %3576 = load i64, i64* %PC.i444
  %3577 = add i64 %3576, 6
  %3578 = load i64, i64* %PC.i444
  %3579 = add i64 %3578, 6
  store i64 %3579, i64* %PC.i444
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3581 = load i8, i8* %3580, align 1
  %3582 = icmp ne i8 %3581, 0
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3584 = load i8, i8* %3583, align 1
  %3585 = icmp ne i8 %3584, 0
  %3586 = xor i1 %3582, %3585
  %3587 = zext i1 %3586 to i8
  store i8 %3587, i8* %BRANCH_TAKEN, align 1
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3589 = select i1 %3586, i64 %3575, i64 %3577
  store i64 %3589, i64* %3588, align 8
  store %struct.Memory* %loadMem_478f50, %struct.Memory** %MEMORY
  %loadBr_478f50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478f50 = icmp eq i8 %loadBr_478f50, 1
  br i1 %cmpBr_478f50, label %block_.L_478f93, label %block_478f56

block_478f56:                                     ; preds = %block_.L_478f37
  %loadMem_478f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 1
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %3595 to i32*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 1
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RAX.i443
  %3600 = load i32, i32* %EAX.i442
  %3601 = zext i32 %3600 to i64
  %3602 = load i64, i64* %PC.i441
  %3603 = add i64 %3602, 2
  store i64 %3603, i64* %PC.i441
  %3604 = xor i64 %3601, %3599
  %3605 = trunc i64 %3604 to i32
  %3606 = and i64 %3604, 4294967295
  store i64 %3606, i64* %RAX.i443, align 8
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3607, align 1
  %3608 = and i32 %3605, 255
  %3609 = call i32 @llvm.ctpop.i32(i32 %3608)
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  %3612 = xor i8 %3611, 1
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3612, i8* %3613, align 1
  %3614 = icmp eq i32 %3605, 0
  %3615 = zext i1 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i32 %3605, 31
  %3618 = trunc i32 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3618, i8* %3619, align 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3620, align 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3621, align 1
  store %struct.Memory* %loadMem_478f56, %struct.Memory** %MEMORY
  %loadMem_478f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 33
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 5
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 15
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %RBP.i440
  %3632 = sub i64 %3631, 4
  %3633 = load i64, i64* %PC.i438
  %3634 = add i64 %3633, 3
  store i64 %3634, i64* %PC.i438
  %3635 = inttoptr i64 %3632 to i32*
  %3636 = load i32, i32* %3635
  %3637 = zext i32 %3636 to i64
  store i64 %3637, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_478f58, %struct.Memory** %MEMORY
  %loadMem_478f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 5
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %RCX.i437
  %3645 = load i64, i64* %PC.i436
  %3646 = add i64 %3645, 3
  store i64 %3646, i64* %PC.i436
  %3647 = trunc i64 %3644 to i32
  %3648 = sub i32 %3647, 10
  %3649 = zext i32 %3648 to i64
  store i64 %3649, i64* %RCX.i437, align 8
  %3650 = icmp ult i32 %3647, 10
  %3651 = zext i1 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3651, i8* %3652, align 1
  %3653 = and i32 %3648, 255
  %3654 = call i32 @llvm.ctpop.i32(i32 %3653)
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = xor i8 %3656, 1
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3657, i8* %3658, align 1
  %3659 = xor i64 10, %3644
  %3660 = trunc i64 %3659 to i32
  %3661 = xor i32 %3660, %3648
  %3662 = lshr i32 %3661, 4
  %3663 = trunc i32 %3662 to i8
  %3664 = and i8 %3663, 1
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3664, i8* %3665, align 1
  %3666 = icmp eq i32 %3648, 0
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3667, i8* %3668, align 1
  %3669 = lshr i32 %3648, 31
  %3670 = trunc i32 %3669 to i8
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3670, i8* %3671, align 1
  %3672 = lshr i32 %3647, 31
  %3673 = xor i32 %3669, %3672
  %3674 = add i32 %3673, %3672
  %3675 = icmp eq i32 %3674, 2
  %3676 = zext i1 %3675 to i8
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3676, i8* %3677, align 1
  store %struct.Memory* %loadMem_478f5b, %struct.Memory** %MEMORY
  %loadMem_478f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 33
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3680 to i64*
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3682 = getelementptr inbounds %struct.GPR, %struct.GPR* %3681, i32 0, i32 5
  %3683 = getelementptr inbounds %struct.Reg, %struct.Reg* %3682, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %3683 to i64*
  %3684 = load i64, i64* %RCX.i435
  %3685 = load i64, i64* %PC.i434
  %3686 = add i64 %3685, 3
  store i64 %3686, i64* %PC.i434
  %3687 = trunc i64 %3684 to i32
  %3688 = add i32 6, %3687
  %3689 = zext i32 %3688 to i64
  store i64 %3689, i64* %RCX.i435, align 8
  %3690 = icmp ult i32 %3688, %3687
  %3691 = icmp ult i32 %3688, 6
  %3692 = or i1 %3690, %3691
  %3693 = zext i1 %3692 to i8
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3693, i8* %3694, align 1
  %3695 = and i32 %3688, 255
  %3696 = call i32 @llvm.ctpop.i32(i32 %3695)
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = xor i8 %3698, 1
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3699, i8* %3700, align 1
  %3701 = xor i64 6, %3684
  %3702 = trunc i64 %3701 to i32
  %3703 = xor i32 %3702, %3688
  %3704 = lshr i32 %3703, 4
  %3705 = trunc i32 %3704 to i8
  %3706 = and i8 %3705, 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3706, i8* %3707, align 1
  %3708 = icmp eq i32 %3688, 0
  %3709 = zext i1 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3709, i8* %3710, align 1
  %3711 = lshr i32 %3688, 31
  %3712 = trunc i32 %3711 to i8
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3712, i8* %3713, align 1
  %3714 = lshr i32 %3687, 31
  %3715 = xor i32 %3711, %3714
  %3716 = add i32 %3715, %3711
  %3717 = icmp eq i32 %3716, 2
  %3718 = zext i1 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3718, i8* %3719, align 1
  store %struct.Memory* %loadMem_478f5e, %struct.Memory** %MEMORY
  %loadMem_478f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 33
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3722 to i64*
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 1
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %EAX.i432 = bitcast %union.anon* %3725 to i32*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 5
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %ECX.i433 = bitcast %union.anon* %3728 to i32*
  %3729 = load i32, i32* %EAX.i432
  %3730 = zext i32 %3729 to i64
  %3731 = load i32, i32* %ECX.i433
  %3732 = zext i32 %3731 to i64
  %3733 = load i64, i64* %PC.i431
  %3734 = add i64 %3733, 2
  store i64 %3734, i64* %PC.i431
  %3735 = sub i32 %3729, %3731
  %3736 = icmp ult i32 %3729, %3731
  %3737 = zext i1 %3736 to i8
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3737, i8* %3738, align 1
  %3739 = and i32 %3735, 255
  %3740 = call i32 @llvm.ctpop.i32(i32 %3739)
  %3741 = trunc i32 %3740 to i8
  %3742 = and i8 %3741, 1
  %3743 = xor i8 %3742, 1
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3743, i8* %3744, align 1
  %3745 = xor i64 %3732, %3730
  %3746 = trunc i64 %3745 to i32
  %3747 = xor i32 %3746, %3735
  %3748 = lshr i32 %3747, 4
  %3749 = trunc i32 %3748 to i8
  %3750 = and i8 %3749, 1
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3750, i8* %3751, align 1
  %3752 = icmp eq i32 %3735, 0
  %3753 = zext i1 %3752 to i8
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3753, i8* %3754, align 1
  %3755 = lshr i32 %3735, 31
  %3756 = trunc i32 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3756, i8* %3757, align 1
  %3758 = lshr i32 %3729, 31
  %3759 = lshr i32 %3731, 31
  %3760 = xor i32 %3759, %3758
  %3761 = xor i32 %3755, %3758
  %3762 = add i32 %3761, %3760
  %3763 = icmp eq i32 %3762, 2
  %3764 = zext i1 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3764, i8* %3765, align 1
  store %struct.Memory* %loadMem_478f61, %struct.Memory** %MEMORY
  %loadMem_478f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 33
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3768 to i64*
  %3769 = load i64, i64* %PC.i430
  %3770 = add i64 %3769, 23
  %3771 = load i64, i64* %PC.i430
  %3772 = add i64 %3771, 6
  %3773 = load i64, i64* %PC.i430
  %3774 = add i64 %3773, 6
  store i64 %3774, i64* %PC.i430
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3776 = load i8, i8* %3775, align 1
  %3777 = icmp ne i8 %3776, 0
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3779 = load i8, i8* %3778, align 1
  %3780 = icmp ne i8 %3779, 0
  %3781 = xor i1 %3777, %3780
  %3782 = xor i1 %3781, true
  %3783 = zext i1 %3782 to i8
  store i8 %3783, i8* %BRANCH_TAKEN, align 1
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3785 = select i1 %3781, i64 %3772, i64 %3770
  store i64 %3785, i64* %3784, align 8
  store %struct.Memory* %loadMem_478f63, %struct.Memory** %MEMORY
  %loadBr_478f63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478f63 = icmp eq i8 %loadBr_478f63, 1
  br i1 %cmpBr_478f63, label %block_.L_478f7a, label %block_478f69

block_478f69:                                     ; preds = %block_478f56
  %loadMem_478f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 33
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3788 to i64*
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 1
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 15
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %3794 to i64*
  %3795 = load i64, i64* %RBP.i429
  %3796 = sub i64 %3795, 4
  %3797 = load i64, i64* %PC.i427
  %3798 = add i64 %3797, 3
  store i64 %3798, i64* %PC.i427
  %3799 = inttoptr i64 %3796 to i32*
  %3800 = load i32, i32* %3799
  %3801 = zext i32 %3800 to i64
  store i64 %3801, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_478f69, %struct.Memory** %MEMORY
  %loadMem_478f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 33
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3804 to i64*
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3806 = getelementptr inbounds %struct.GPR, %struct.GPR* %3805, i32 0, i32 1
  %3807 = getelementptr inbounds %struct.Reg, %struct.Reg* %3806, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %3807 to i64*
  %3808 = load i64, i64* %RAX.i426
  %3809 = load i64, i64* %PC.i425
  %3810 = add i64 %3809, 3
  store i64 %3810, i64* %PC.i425
  %3811 = trunc i64 %3808 to i32
  %3812 = sub i32 %3811, 10
  %3813 = zext i32 %3812 to i64
  store i64 %3813, i64* %RAX.i426, align 8
  %3814 = icmp ult i32 %3811, 10
  %3815 = zext i1 %3814 to i8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3815, i8* %3816, align 1
  %3817 = and i32 %3812, 255
  %3818 = call i32 @llvm.ctpop.i32(i32 %3817)
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = xor i8 %3820, 1
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3821, i8* %3822, align 1
  %3823 = xor i64 10, %3808
  %3824 = trunc i64 %3823 to i32
  %3825 = xor i32 %3824, %3812
  %3826 = lshr i32 %3825, 4
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3828, i8* %3829, align 1
  %3830 = icmp eq i32 %3812, 0
  %3831 = zext i1 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3831, i8* %3832, align 1
  %3833 = lshr i32 %3812, 31
  %3834 = trunc i32 %3833 to i8
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3834, i8* %3835, align 1
  %3836 = lshr i32 %3811, 31
  %3837 = xor i32 %3833, %3836
  %3838 = add i32 %3837, %3836
  %3839 = icmp eq i32 %3838, 2
  %3840 = zext i1 %3839 to i8
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3840, i8* %3841, align 1
  store %struct.Memory* %loadMem_478f6c, %struct.Memory** %MEMORY
  %loadMem_478f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 1
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %3847 to i64*
  %3848 = load i64, i64* %RAX.i424
  %3849 = load i64, i64* %PC.i423
  %3850 = add i64 %3849, 3
  store i64 %3850, i64* %PC.i423
  %3851 = trunc i64 %3848 to i32
  %3852 = add i32 6, %3851
  %3853 = zext i32 %3852 to i64
  store i64 %3853, i64* %RAX.i424, align 8
  %3854 = icmp ult i32 %3852, %3851
  %3855 = icmp ult i32 %3852, 6
  %3856 = or i1 %3854, %3855
  %3857 = zext i1 %3856 to i8
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3857, i8* %3858, align 1
  %3859 = and i32 %3852, 255
  %3860 = call i32 @llvm.ctpop.i32(i32 %3859)
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  %3863 = xor i8 %3862, 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3863, i8* %3864, align 1
  %3865 = xor i64 6, %3848
  %3866 = trunc i64 %3865 to i32
  %3867 = xor i32 %3866, %3852
  %3868 = lshr i32 %3867, 4
  %3869 = trunc i32 %3868 to i8
  %3870 = and i8 %3869, 1
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3870, i8* %3871, align 1
  %3872 = icmp eq i32 %3852, 0
  %3873 = zext i1 %3872 to i8
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3873, i8* %3874, align 1
  %3875 = lshr i32 %3852, 31
  %3876 = trunc i32 %3875 to i8
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3876, i8* %3877, align 1
  %3878 = lshr i32 %3851, 31
  %3879 = xor i32 %3875, %3878
  %3880 = add i32 %3879, %3875
  %3881 = icmp eq i32 %3880, 2
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3882, i8* %3883, align 1
  store %struct.Memory* %loadMem_478f6f, %struct.Memory** %MEMORY
  %loadMem_478f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 33
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3886 to i64*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 1
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %3889 to i32*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 15
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %RBP.i422
  %3894 = sub i64 %3893, 76
  %3895 = load i32, i32* %EAX.i421
  %3896 = zext i32 %3895 to i64
  %3897 = load i64, i64* %PC.i420
  %3898 = add i64 %3897, 3
  store i64 %3898, i64* %PC.i420
  %3899 = inttoptr i64 %3894 to i32*
  store i32 %3895, i32* %3899
  store %struct.Memory* %loadMem_478f72, %struct.Memory** %MEMORY
  %loadMem_478f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 33
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %PC.i419
  %3904 = add i64 %3903, 15
  %3905 = load i64, i64* %PC.i419
  %3906 = add i64 %3905, 5
  store i64 %3906, i64* %PC.i419
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3904, i64* %3907, align 8
  store %struct.Memory* %loadMem_478f75, %struct.Memory** %MEMORY
  br label %block_.L_478f84

block_.L_478f7a:                                  ; preds = %block_478f56
  %loadMem_478f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 1
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %3913 to i32*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 1
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RAX.i418
  %3918 = load i32, i32* %EAX.i417
  %3919 = zext i32 %3918 to i64
  %3920 = load i64, i64* %PC.i416
  %3921 = add i64 %3920, 2
  store i64 %3921, i64* %PC.i416
  %3922 = xor i64 %3919, %3917
  %3923 = trunc i64 %3922 to i32
  %3924 = and i64 %3922, 4294967295
  store i64 %3924, i64* %RAX.i418, align 8
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3925, align 1
  %3926 = and i32 %3923, 255
  %3927 = call i32 @llvm.ctpop.i32(i32 %3926)
  %3928 = trunc i32 %3927 to i8
  %3929 = and i8 %3928, 1
  %3930 = xor i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3930, i8* %3931, align 1
  %3932 = icmp eq i32 %3923, 0
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3933, i8* %3934, align 1
  %3935 = lshr i32 %3923, 31
  %3936 = trunc i32 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3936, i8* %3937, align 1
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3938, align 1
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3939, align 1
  store %struct.Memory* %loadMem_478f7a, %struct.Memory** %MEMORY
  %loadMem_478f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 33
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 1
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %3945 to i32*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 15
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %RBP.i415
  %3950 = sub i64 %3949, 76
  %3951 = load i32, i32* %EAX.i414
  %3952 = zext i32 %3951 to i64
  %3953 = load i64, i64* %PC.i413
  %3954 = add i64 %3953, 3
  store i64 %3954, i64* %PC.i413
  %3955 = inttoptr i64 %3950 to i32*
  store i32 %3951, i32* %3955
  store %struct.Memory* %loadMem_478f7c, %struct.Memory** %MEMORY
  %loadMem_478f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %PC.i412
  %3960 = add i64 %3959, 5
  %3961 = load i64, i64* %PC.i412
  %3962 = add i64 %3961, 5
  store i64 %3962, i64* %PC.i412
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3960, i64* %3963, align 8
  store %struct.Memory* %loadMem_478f7f, %struct.Memory** %MEMORY
  br label %block_.L_478f84

block_.L_478f84:                                  ; preds = %block_.L_478f7a, %block_478f69
  %loadMem_478f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 1
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 15
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %RBP.i411
  %3974 = sub i64 %3973, 76
  %3975 = load i64, i64* %PC.i409
  %3976 = add i64 %3975, 3
  store i64 %3976, i64* %PC.i409
  %3977 = inttoptr i64 %3974 to i32*
  %3978 = load i32, i32* %3977
  %3979 = zext i32 %3978 to i64
  store i64 %3979, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_478f84, %struct.Memory** %MEMORY
  %loadMem_478f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3981 = getelementptr inbounds %struct.GPR, %struct.GPR* %3980, i32 0, i32 33
  %3982 = getelementptr inbounds %struct.Reg, %struct.Reg* %3981, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3982 to i64*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 1
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %EAX.i408 = bitcast %union.anon* %3985 to i32*
  %3986 = load i32, i32* %EAX.i408
  %3987 = zext i32 %3986 to i64
  %3988 = load i64, i64* %PC.i407
  %3989 = add i64 %3988, 7
  store i64 %3989, i64* %PC.i407
  store i32 %3986, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*)
  store %struct.Memory* %loadMem_478f87, %struct.Memory** %MEMORY
  %loadMem_478f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3992 to i64*
  %3993 = load i64, i64* %PC.i406
  %3994 = add i64 %3993, 61
  %3995 = load i64, i64* %PC.i406
  %3996 = add i64 %3995, 5
  store i64 %3996, i64* %PC.i406
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3994, i64* %3997, align 8
  store %struct.Memory* %loadMem_478f8e, %struct.Memory** %MEMORY
  br label %block_.L_478fcb

block_.L_478f93:                                  ; preds = %block_.L_478f37
  %loadMem_478f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %4000 to i64*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 1
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %4003 to i32*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 1
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %4006 to i64*
  %4007 = load i64, i64* %RAX.i405
  %4008 = load i32, i32* %EAX.i404
  %4009 = zext i32 %4008 to i64
  %4010 = load i64, i64* %PC.i403
  %4011 = add i64 %4010, 2
  store i64 %4011, i64* %PC.i403
  %4012 = xor i64 %4009, %4007
  %4013 = trunc i64 %4012 to i32
  %4014 = and i64 %4012, 4294967295
  store i64 %4014, i64* %RAX.i405, align 8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4015, align 1
  %4016 = and i32 %4013, 255
  %4017 = call i32 @llvm.ctpop.i32(i32 %4016)
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = xor i8 %4019, 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4020, i8* %4021, align 1
  %4022 = icmp eq i32 %4013, 0
  %4023 = zext i1 %4022 to i8
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4023, i8* %4024, align 1
  %4025 = lshr i32 %4013, 31
  %4026 = trunc i32 %4025 to i8
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4026, i8* %4027, align 1
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4028, align 1
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4029, align 1
  store %struct.Memory* %loadMem_478f93, %struct.Memory** %MEMORY
  %loadMem_478f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 5
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RCX.i401 = bitcast %union.anon* %4035 to i64*
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4037 = getelementptr inbounds %struct.GPR, %struct.GPR* %4036, i32 0, i32 15
  %4038 = getelementptr inbounds %struct.Reg, %struct.Reg* %4037, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %4038 to i64*
  %4039 = load i64, i64* %RBP.i402
  %4040 = sub i64 %4039, 4
  %4041 = load i64, i64* %PC.i400
  %4042 = add i64 %4041, 3
  store i64 %4042, i64* %PC.i400
  %4043 = inttoptr i64 %4040 to i32*
  %4044 = load i32, i32* %4043
  %4045 = zext i32 %4044 to i64
  store i64 %4045, i64* %RCX.i401, align 8
  store %struct.Memory* %loadMem_478f95, %struct.Memory** %MEMORY
  %loadMem_478f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 33
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4048 to i64*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 5
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %RCX.i399 = bitcast %union.anon* %4051 to i64*
  %4052 = load i64, i64* %RCX.i399
  %4053 = load i64, i64* %PC.i398
  %4054 = add i64 %4053, 3
  store i64 %4054, i64* %PC.i398
  %4055 = trunc i64 %4052 to i32
  %4056 = sub i32 %4055, 9
  %4057 = zext i32 %4056 to i64
  store i64 %4057, i64* %RCX.i399, align 8
  %4058 = icmp ult i32 %4055, 9
  %4059 = zext i1 %4058 to i8
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4059, i8* %4060, align 1
  %4061 = and i32 %4056, 255
  %4062 = call i32 @llvm.ctpop.i32(i32 %4061)
  %4063 = trunc i32 %4062 to i8
  %4064 = and i8 %4063, 1
  %4065 = xor i8 %4064, 1
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4065, i8* %4066, align 1
  %4067 = xor i64 9, %4052
  %4068 = trunc i64 %4067 to i32
  %4069 = xor i32 %4068, %4056
  %4070 = lshr i32 %4069, 4
  %4071 = trunc i32 %4070 to i8
  %4072 = and i8 %4071, 1
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4072, i8* %4073, align 1
  %4074 = icmp eq i32 %4056, 0
  %4075 = zext i1 %4074 to i8
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4075, i8* %4076, align 1
  %4077 = lshr i32 %4056, 31
  %4078 = trunc i32 %4077 to i8
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4078, i8* %4079, align 1
  %4080 = lshr i32 %4055, 31
  %4081 = xor i32 %4077, %4080
  %4082 = add i32 %4081, %4080
  %4083 = icmp eq i32 %4082, 2
  %4084 = zext i1 %4083 to i8
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4084, i8* %4085, align 1
  store %struct.Memory* %loadMem_478f98, %struct.Memory** %MEMORY
  %loadMem_478f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 33
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4088 to i64*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 5
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %4091 to i64*
  %4092 = load i64, i64* %RCX.i397
  %4093 = load i64, i64* %PC.i396
  %4094 = add i64 %4093, 3
  store i64 %4094, i64* %PC.i396
  %4095 = trunc i64 %4092 to i32
  %4096 = add i32 6, %4095
  %4097 = zext i32 %4096 to i64
  store i64 %4097, i64* %RCX.i397, align 8
  %4098 = icmp ult i32 %4096, %4095
  %4099 = icmp ult i32 %4096, 6
  %4100 = or i1 %4098, %4099
  %4101 = zext i1 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4101, i8* %4102, align 1
  %4103 = and i32 %4096, 255
  %4104 = call i32 @llvm.ctpop.i32(i32 %4103)
  %4105 = trunc i32 %4104 to i8
  %4106 = and i8 %4105, 1
  %4107 = xor i8 %4106, 1
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4107, i8* %4108, align 1
  %4109 = xor i64 6, %4092
  %4110 = trunc i64 %4109 to i32
  %4111 = xor i32 %4110, %4096
  %4112 = lshr i32 %4111, 4
  %4113 = trunc i32 %4112 to i8
  %4114 = and i8 %4113, 1
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4114, i8* %4115, align 1
  %4116 = icmp eq i32 %4096, 0
  %4117 = zext i1 %4116 to i8
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4117, i8* %4118, align 1
  %4119 = lshr i32 %4096, 31
  %4120 = trunc i32 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4120, i8* %4121, align 1
  %4122 = lshr i32 %4095, 31
  %4123 = xor i32 %4119, %4122
  %4124 = add i32 %4123, %4119
  %4125 = icmp eq i32 %4124, 2
  %4126 = zext i1 %4125 to i8
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4126, i8* %4127, align 1
  store %struct.Memory* %loadMem_478f9b, %struct.Memory** %MEMORY
  %loadMem_478f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 1
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %4133 to i32*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 5
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %ECX.i395 = bitcast %union.anon* %4136 to i32*
  %4137 = load i32, i32* %EAX.i394
  %4138 = zext i32 %4137 to i64
  %4139 = load i32, i32* %ECX.i395
  %4140 = zext i32 %4139 to i64
  %4141 = load i64, i64* %PC.i393
  %4142 = add i64 %4141, 2
  store i64 %4142, i64* %PC.i393
  %4143 = sub i32 %4137, %4139
  %4144 = icmp ult i32 %4137, %4139
  %4145 = zext i1 %4144 to i8
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4145, i8* %4146, align 1
  %4147 = and i32 %4143, 255
  %4148 = call i32 @llvm.ctpop.i32(i32 %4147)
  %4149 = trunc i32 %4148 to i8
  %4150 = and i8 %4149, 1
  %4151 = xor i8 %4150, 1
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4151, i8* %4152, align 1
  %4153 = xor i64 %4140, %4138
  %4154 = trunc i64 %4153 to i32
  %4155 = xor i32 %4154, %4143
  %4156 = lshr i32 %4155, 4
  %4157 = trunc i32 %4156 to i8
  %4158 = and i8 %4157, 1
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4158, i8* %4159, align 1
  %4160 = icmp eq i32 %4143, 0
  %4161 = zext i1 %4160 to i8
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4161, i8* %4162, align 1
  %4163 = lshr i32 %4143, 31
  %4164 = trunc i32 %4163 to i8
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4164, i8* %4165, align 1
  %4166 = lshr i32 %4137, 31
  %4167 = lshr i32 %4139, 31
  %4168 = xor i32 %4167, %4166
  %4169 = xor i32 %4163, %4166
  %4170 = add i32 %4169, %4168
  %4171 = icmp eq i32 %4170, 2
  %4172 = zext i1 %4171 to i8
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4172, i8* %4173, align 1
  store %struct.Memory* %loadMem_478f9e, %struct.Memory** %MEMORY
  %loadMem_478fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4175 = getelementptr inbounds %struct.GPR, %struct.GPR* %4174, i32 0, i32 33
  %4176 = getelementptr inbounds %struct.Reg, %struct.Reg* %4175, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4176 to i64*
  %4177 = load i64, i64* %PC.i392
  %4178 = add i64 %4177, 23
  %4179 = load i64, i64* %PC.i392
  %4180 = add i64 %4179, 6
  %4181 = load i64, i64* %PC.i392
  %4182 = add i64 %4181, 6
  store i64 %4182, i64* %PC.i392
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4184 = load i8, i8* %4183, align 1
  %4185 = icmp ne i8 %4184, 0
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4187 = load i8, i8* %4186, align 1
  %4188 = icmp ne i8 %4187, 0
  %4189 = xor i1 %4185, %4188
  %4190 = xor i1 %4189, true
  %4191 = zext i1 %4190 to i8
  store i8 %4191, i8* %BRANCH_TAKEN, align 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4193 = select i1 %4189, i64 %4180, i64 %4178
  store i64 %4193, i64* %4192, align 8
  store %struct.Memory* %loadMem_478fa0, %struct.Memory** %MEMORY
  %loadBr_478fa0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478fa0 = icmp eq i8 %loadBr_478fa0, 1
  br i1 %cmpBr_478fa0, label %block_.L_478fb7, label %block_478fa6

block_478fa6:                                     ; preds = %block_.L_478f93
  %loadMem_478fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 1
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 15
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4202 to i64*
  %4203 = load i64, i64* %RBP.i391
  %4204 = sub i64 %4203, 4
  %4205 = load i64, i64* %PC.i389
  %4206 = add i64 %4205, 3
  store i64 %4206, i64* %PC.i389
  %4207 = inttoptr i64 %4204 to i32*
  %4208 = load i32, i32* %4207
  %4209 = zext i32 %4208 to i64
  store i64 %4209, i64* %RAX.i390, align 8
  store %struct.Memory* %loadMem_478fa6, %struct.Memory** %MEMORY
  %loadMem_478fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 33
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %4212 to i64*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 1
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %4215 to i64*
  %4216 = load i64, i64* %RAX.i388
  %4217 = load i64, i64* %PC.i387
  %4218 = add i64 %4217, 3
  store i64 %4218, i64* %PC.i387
  %4219 = trunc i64 %4216 to i32
  %4220 = sub i32 %4219, 9
  %4221 = zext i32 %4220 to i64
  store i64 %4221, i64* %RAX.i388, align 8
  %4222 = icmp ult i32 %4219, 9
  %4223 = zext i1 %4222 to i8
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4223, i8* %4224, align 1
  %4225 = and i32 %4220, 255
  %4226 = call i32 @llvm.ctpop.i32(i32 %4225)
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  %4229 = xor i8 %4228, 1
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4229, i8* %4230, align 1
  %4231 = xor i64 9, %4216
  %4232 = trunc i64 %4231 to i32
  %4233 = xor i32 %4232, %4220
  %4234 = lshr i32 %4233, 4
  %4235 = trunc i32 %4234 to i8
  %4236 = and i8 %4235, 1
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4236, i8* %4237, align 1
  %4238 = icmp eq i32 %4220, 0
  %4239 = zext i1 %4238 to i8
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4239, i8* %4240, align 1
  %4241 = lshr i32 %4220, 31
  %4242 = trunc i32 %4241 to i8
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4242, i8* %4243, align 1
  %4244 = lshr i32 %4219, 31
  %4245 = xor i32 %4241, %4244
  %4246 = add i32 %4245, %4244
  %4247 = icmp eq i32 %4246, 2
  %4248 = zext i1 %4247 to i8
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4248, i8* %4249, align 1
  store %struct.Memory* %loadMem_478fa9, %struct.Memory** %MEMORY
  %loadMem_478fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 33
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %4255 to i64*
  %4256 = load i64, i64* %RAX.i386
  %4257 = load i64, i64* %PC.i385
  %4258 = add i64 %4257, 3
  store i64 %4258, i64* %PC.i385
  %4259 = trunc i64 %4256 to i32
  %4260 = add i32 6, %4259
  %4261 = zext i32 %4260 to i64
  store i64 %4261, i64* %RAX.i386, align 8
  %4262 = icmp ult i32 %4260, %4259
  %4263 = icmp ult i32 %4260, 6
  %4264 = or i1 %4262, %4263
  %4265 = zext i1 %4264 to i8
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4265, i8* %4266, align 1
  %4267 = and i32 %4260, 255
  %4268 = call i32 @llvm.ctpop.i32(i32 %4267)
  %4269 = trunc i32 %4268 to i8
  %4270 = and i8 %4269, 1
  %4271 = xor i8 %4270, 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4271, i8* %4272, align 1
  %4273 = xor i64 6, %4256
  %4274 = trunc i64 %4273 to i32
  %4275 = xor i32 %4274, %4260
  %4276 = lshr i32 %4275, 4
  %4277 = trunc i32 %4276 to i8
  %4278 = and i8 %4277, 1
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4278, i8* %4279, align 1
  %4280 = icmp eq i32 %4260, 0
  %4281 = zext i1 %4280 to i8
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4281, i8* %4282, align 1
  %4283 = lshr i32 %4260, 31
  %4284 = trunc i32 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4284, i8* %4285, align 1
  %4286 = lshr i32 %4259, 31
  %4287 = xor i32 %4283, %4286
  %4288 = add i32 %4287, %4283
  %4289 = icmp eq i32 %4288, 2
  %4290 = zext i1 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4290, i8* %4291, align 1
  store %struct.Memory* %loadMem_478fac, %struct.Memory** %MEMORY
  %loadMem_478faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 33
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4294 to i64*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 1
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %EAX.i383 = bitcast %union.anon* %4297 to i32*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 15
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4300 to i64*
  %4301 = load i64, i64* %RBP.i384
  %4302 = sub i64 %4301, 80
  %4303 = load i32, i32* %EAX.i383
  %4304 = zext i32 %4303 to i64
  %4305 = load i64, i64* %PC.i382
  %4306 = add i64 %4305, 3
  store i64 %4306, i64* %PC.i382
  %4307 = inttoptr i64 %4302 to i32*
  store i32 %4303, i32* %4307
  store %struct.Memory* %loadMem_478faf, %struct.Memory** %MEMORY
  %loadMem_478fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 33
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4310 to i64*
  %4311 = load i64, i64* %PC.i381
  %4312 = add i64 %4311, 15
  %4313 = load i64, i64* %PC.i381
  %4314 = add i64 %4313, 5
  store i64 %4314, i64* %PC.i381
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4312, i64* %4315, align 8
  store %struct.Memory* %loadMem_478fb2, %struct.Memory** %MEMORY
  br label %block_.L_478fc1

block_.L_478fb7:                                  ; preds = %block_.L_478f93
  %loadMem_478fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 1
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %EAX.i379 = bitcast %union.anon* %4321 to i32*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 1
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %4324 to i64*
  %4325 = load i64, i64* %RAX.i380
  %4326 = load i32, i32* %EAX.i379
  %4327 = zext i32 %4326 to i64
  %4328 = load i64, i64* %PC.i378
  %4329 = add i64 %4328, 2
  store i64 %4329, i64* %PC.i378
  %4330 = xor i64 %4327, %4325
  %4331 = trunc i64 %4330 to i32
  %4332 = and i64 %4330, 4294967295
  store i64 %4332, i64* %RAX.i380, align 8
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4333, align 1
  %4334 = and i32 %4331, 255
  %4335 = call i32 @llvm.ctpop.i32(i32 %4334)
  %4336 = trunc i32 %4335 to i8
  %4337 = and i8 %4336, 1
  %4338 = xor i8 %4337, 1
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4338, i8* %4339, align 1
  %4340 = icmp eq i32 %4331, 0
  %4341 = zext i1 %4340 to i8
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4341, i8* %4342, align 1
  %4343 = lshr i32 %4331, 31
  %4344 = trunc i32 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4344, i8* %4345, align 1
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4346, align 1
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4347, align 1
  store %struct.Memory* %loadMem_478fb7, %struct.Memory** %MEMORY
  %loadMem_478fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 1
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %4353 to i32*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 15
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %4356 to i64*
  %4357 = load i64, i64* %RBP.i377
  %4358 = sub i64 %4357, 80
  %4359 = load i32, i32* %EAX.i376
  %4360 = zext i32 %4359 to i64
  %4361 = load i64, i64* %PC.i375
  %4362 = add i64 %4361, 3
  store i64 %4362, i64* %PC.i375
  %4363 = inttoptr i64 %4358 to i32*
  store i32 %4359, i32* %4363
  store %struct.Memory* %loadMem_478fb9, %struct.Memory** %MEMORY
  %loadMem_478fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 33
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %4366 to i64*
  %4367 = load i64, i64* %PC.i374
  %4368 = add i64 %4367, 5
  %4369 = load i64, i64* %PC.i374
  %4370 = add i64 %4369, 5
  store i64 %4370, i64* %PC.i374
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4368, i64* %4371, align 8
  store %struct.Memory* %loadMem_478fbc, %struct.Memory** %MEMORY
  br label %block_.L_478fc1

block_.L_478fc1:                                  ; preds = %block_.L_478fb7, %block_478fa6
  %loadMem_478fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 1
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RAX.i372 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 15
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %4380 to i64*
  %4381 = load i64, i64* %RBP.i373
  %4382 = sub i64 %4381, 80
  %4383 = load i64, i64* %PC.i371
  %4384 = add i64 %4383, 3
  store i64 %4384, i64* %PC.i371
  %4385 = inttoptr i64 %4382 to i32*
  %4386 = load i32, i32* %4385
  %4387 = zext i32 %4386 to i64
  store i64 %4387, i64* %RAX.i372, align 8
  store %struct.Memory* %loadMem_478fc1, %struct.Memory** %MEMORY
  %loadMem_478fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 1
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %EAX.i370 = bitcast %union.anon* %4393 to i32*
  %4394 = load i32, i32* %EAX.i370
  %4395 = zext i32 %4394 to i64
  %4396 = load i64, i64* %PC.i369
  %4397 = add i64 %4396, 7
  store i64 %4397, i64* %PC.i369
  store i32 %4394, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*)
  store %struct.Memory* %loadMem_478fc4, %struct.Memory** %MEMORY
  br label %block_.L_478fcb

block_.L_478fcb:                                  ; preds = %block_.L_478fc1, %block_.L_478f84
  %loadMem_478fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 33
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4400 to i64*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 15
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %4403 to i64*
  %4404 = load i64, i64* %RBP.i368
  %4405 = sub i64 %4404, 4
  %4406 = load i64, i64* %PC.i367
  %4407 = add i64 %4406, 4
  store i64 %4407, i64* %PC.i367
  %4408 = inttoptr i64 %4405 to i32*
  %4409 = load i32, i32* %4408
  %4410 = sub i32 %4409, 10
  %4411 = icmp ult i32 %4409, 10
  %4412 = zext i1 %4411 to i8
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4412, i8* %4413, align 1
  %4414 = and i32 %4410, 255
  %4415 = call i32 @llvm.ctpop.i32(i32 %4414)
  %4416 = trunc i32 %4415 to i8
  %4417 = and i8 %4416, 1
  %4418 = xor i8 %4417, 1
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4418, i8* %4419, align 1
  %4420 = xor i32 %4409, 10
  %4421 = xor i32 %4420, %4410
  %4422 = lshr i32 %4421, 4
  %4423 = trunc i32 %4422 to i8
  %4424 = and i8 %4423, 1
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4424, i8* %4425, align 1
  %4426 = icmp eq i32 %4410, 0
  %4427 = zext i1 %4426 to i8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4427, i8* %4428, align 1
  %4429 = lshr i32 %4410, 31
  %4430 = trunc i32 %4429 to i8
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4430, i8* %4431, align 1
  %4432 = lshr i32 %4409, 31
  %4433 = xor i32 %4429, %4432
  %4434 = add i32 %4433, %4432
  %4435 = icmp eq i32 %4434, 2
  %4436 = zext i1 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4436, i8* %4437, align 1
  store %struct.Memory* %loadMem_478fcb, %struct.Memory** %MEMORY
  %loadMem_478fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 33
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4440 to i64*
  %4441 = load i64, i64* %PC.i366
  %4442 = add i64 %4441, 73
  %4443 = load i64, i64* %PC.i366
  %4444 = add i64 %4443, 6
  %4445 = load i64, i64* %PC.i366
  %4446 = add i64 %4445, 6
  store i64 %4446, i64* %PC.i366
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4448 = load i8, i8* %4447, align 1
  %4449 = icmp ne i8 %4448, 0
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4451 = load i8, i8* %4450, align 1
  %4452 = icmp ne i8 %4451, 0
  %4453 = xor i1 %4449, %4452
  %4454 = zext i1 %4453 to i8
  store i8 %4454, i8* %BRANCH_TAKEN, align 1
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4456 = select i1 %4453, i64 %4442, i64 %4444
  store i64 %4456, i64* %4455, align 8
  store %struct.Memory* %loadMem_478fcf, %struct.Memory** %MEMORY
  %loadBr_478fcf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478fcf = icmp eq i8 %loadBr_478fcf, 1
  br i1 %cmpBr_478fcf, label %block_.L_479018, label %block_478fd5

block_478fd5:                                     ; preds = %block_.L_478fcb
  %loadMem_478fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 33
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 1
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %4462 to i64*
  %4463 = load i64, i64* %PC.i364
  %4464 = add i64 %4463, 5
  store i64 %4464, i64* %PC.i364
  store i64 1, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_478fd5, %struct.Memory** %MEMORY
  %loadMem_478fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 33
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4467 to i64*
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 5
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %4470 to i64*
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 15
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %4473 to i64*
  %4474 = load i64, i64* %RBP.i363
  %4475 = sub i64 %4474, 4
  %4476 = load i64, i64* %PC.i361
  %4477 = add i64 %4476, 3
  store i64 %4477, i64* %PC.i361
  %4478 = inttoptr i64 %4475 to i32*
  %4479 = load i32, i32* %4478
  %4480 = zext i32 %4479 to i64
  store i64 %4480, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_478fda, %struct.Memory** %MEMORY
  %loadMem_478fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 33
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 5
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %4486 to i64*
  %4487 = load i64, i64* %RCX.i360
  %4488 = load i64, i64* %PC.i359
  %4489 = add i64 %4488, 3
  store i64 %4489, i64* %PC.i359
  %4490 = trunc i64 %4487 to i32
  %4491 = sub i32 %4490, 10
  %4492 = zext i32 %4491 to i64
  store i64 %4492, i64* %RCX.i360, align 8
  %4493 = icmp ult i32 %4490, 10
  %4494 = zext i1 %4493 to i8
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4494, i8* %4495, align 1
  %4496 = and i32 %4491, 255
  %4497 = call i32 @llvm.ctpop.i32(i32 %4496)
  %4498 = trunc i32 %4497 to i8
  %4499 = and i8 %4498, 1
  %4500 = xor i8 %4499, 1
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4500, i8* %4501, align 1
  %4502 = xor i64 10, %4487
  %4503 = trunc i64 %4502 to i32
  %4504 = xor i32 %4503, %4491
  %4505 = lshr i32 %4504, 4
  %4506 = trunc i32 %4505 to i8
  %4507 = and i8 %4506, 1
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4507, i8* %4508, align 1
  %4509 = icmp eq i32 %4491, 0
  %4510 = zext i1 %4509 to i8
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4510, i8* %4511, align 1
  %4512 = lshr i32 %4491, 31
  %4513 = trunc i32 %4512 to i8
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4513, i8* %4514, align 1
  %4515 = lshr i32 %4490, 31
  %4516 = xor i32 %4512, %4515
  %4517 = add i32 %4516, %4515
  %4518 = icmp eq i32 %4517, 2
  %4519 = zext i1 %4518 to i8
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4519, i8* %4520, align 1
  store %struct.Memory* %loadMem_478fdd, %struct.Memory** %MEMORY
  %loadMem_478fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 5
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %4526 to i64*
  %4527 = load i64, i64* %RCX.i358
  %4528 = load i64, i64* %PC.i357
  %4529 = add i64 %4528, 3
  store i64 %4529, i64* %PC.i357
  %4530 = trunc i64 %4527 to i32
  %4531 = add i32 8, %4530
  %4532 = zext i32 %4531 to i64
  store i64 %4532, i64* %RCX.i358, align 8
  %4533 = icmp ult i32 %4531, %4530
  %4534 = icmp ult i32 %4531, 8
  %4535 = or i1 %4533, %4534
  %4536 = zext i1 %4535 to i8
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4536, i8* %4537, align 1
  %4538 = and i32 %4531, 255
  %4539 = call i32 @llvm.ctpop.i32(i32 %4538)
  %4540 = trunc i32 %4539 to i8
  %4541 = and i8 %4540, 1
  %4542 = xor i8 %4541, 1
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4542, i8* %4543, align 1
  %4544 = xor i64 8, %4527
  %4545 = trunc i64 %4544 to i32
  %4546 = xor i32 %4545, %4531
  %4547 = lshr i32 %4546, 4
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4549, i8* %4550, align 1
  %4551 = icmp eq i32 %4531, 0
  %4552 = zext i1 %4551 to i8
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4552, i8* %4553, align 1
  %4554 = lshr i32 %4531, 31
  %4555 = trunc i32 %4554 to i8
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4555, i8* %4556, align 1
  %4557 = lshr i32 %4530, 31
  %4558 = xor i32 %4554, %4557
  %4559 = add i32 %4558, %4554
  %4560 = icmp eq i32 %4559, 2
  %4561 = zext i1 %4560 to i8
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4561, i8* %4562, align 1
  store %struct.Memory* %loadMem_478fe0, %struct.Memory** %MEMORY
  %loadMem_478fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 33
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4565 to i64*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 1
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %EAX.i355 = bitcast %union.anon* %4568 to i32*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 5
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %ECX.i356 = bitcast %union.anon* %4571 to i32*
  %4572 = load i32, i32* %EAX.i355
  %4573 = zext i32 %4572 to i64
  %4574 = load i32, i32* %ECX.i356
  %4575 = zext i32 %4574 to i64
  %4576 = load i64, i64* %PC.i354
  %4577 = add i64 %4576, 2
  store i64 %4577, i64* %PC.i354
  %4578 = sub i32 %4572, %4574
  %4579 = icmp ult i32 %4572, %4574
  %4580 = zext i1 %4579 to i8
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4580, i8* %4581, align 1
  %4582 = and i32 %4578, 255
  %4583 = call i32 @llvm.ctpop.i32(i32 %4582)
  %4584 = trunc i32 %4583 to i8
  %4585 = and i8 %4584, 1
  %4586 = xor i8 %4585, 1
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4586, i8* %4587, align 1
  %4588 = xor i64 %4575, %4573
  %4589 = trunc i64 %4588 to i32
  %4590 = xor i32 %4589, %4578
  %4591 = lshr i32 %4590, 4
  %4592 = trunc i32 %4591 to i8
  %4593 = and i8 %4592, 1
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4593, i8* %4594, align 1
  %4595 = icmp eq i32 %4578, 0
  %4596 = zext i1 %4595 to i8
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4596, i8* %4597, align 1
  %4598 = lshr i32 %4578, 31
  %4599 = trunc i32 %4598 to i8
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4599, i8* %4600, align 1
  %4601 = lshr i32 %4572, 31
  %4602 = lshr i32 %4574, 31
  %4603 = xor i32 %4602, %4601
  %4604 = xor i32 %4598, %4601
  %4605 = add i32 %4604, %4603
  %4606 = icmp eq i32 %4605, 2
  %4607 = zext i1 %4606 to i8
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4607, i8* %4608, align 1
  store %struct.Memory* %loadMem_478fe3, %struct.Memory** %MEMORY
  %loadMem_478fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 33
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %4611 to i64*
  %4612 = load i64, i64* %PC.i353
  %4613 = add i64 %4612, 23
  %4614 = load i64, i64* %PC.i353
  %4615 = add i64 %4614, 6
  %4616 = load i64, i64* %PC.i353
  %4617 = add i64 %4616, 6
  store i64 %4617, i64* %PC.i353
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4619 = load i8, i8* %4618, align 1
  %4620 = icmp ne i8 %4619, 0
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4622 = load i8, i8* %4621, align 1
  %4623 = icmp ne i8 %4622, 0
  %4624 = xor i1 %4620, %4623
  %4625 = xor i1 %4624, true
  %4626 = zext i1 %4625 to i8
  store i8 %4626, i8* %BRANCH_TAKEN, align 1
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4628 = select i1 %4624, i64 %4615, i64 %4613
  store i64 %4628, i64* %4627, align 8
  store %struct.Memory* %loadMem_478fe5, %struct.Memory** %MEMORY
  %loadBr_478fe5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_478fe5 = icmp eq i8 %loadBr_478fe5, 1
  br i1 %cmpBr_478fe5, label %block_.L_478ffc, label %block_478feb

block_478feb:                                     ; preds = %block_478fd5
  %loadMem_478feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 1
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 15
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %4637 to i64*
  %4638 = load i64, i64* %RBP.i352
  %4639 = sub i64 %4638, 4
  %4640 = load i64, i64* %PC.i350
  %4641 = add i64 %4640, 3
  store i64 %4641, i64* %PC.i350
  %4642 = inttoptr i64 %4639 to i32*
  %4643 = load i32, i32* %4642
  %4644 = zext i32 %4643 to i64
  store i64 %4644, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_478feb, %struct.Memory** %MEMORY
  %loadMem_478fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 33
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 1
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %4650 to i64*
  %4651 = load i64, i64* %RAX.i349
  %4652 = load i64, i64* %PC.i348
  %4653 = add i64 %4652, 3
  store i64 %4653, i64* %PC.i348
  %4654 = trunc i64 %4651 to i32
  %4655 = sub i32 %4654, 10
  %4656 = zext i32 %4655 to i64
  store i64 %4656, i64* %RAX.i349, align 8
  %4657 = icmp ult i32 %4654, 10
  %4658 = zext i1 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4658, i8* %4659, align 1
  %4660 = and i32 %4655, 255
  %4661 = call i32 @llvm.ctpop.i32(i32 %4660)
  %4662 = trunc i32 %4661 to i8
  %4663 = and i8 %4662, 1
  %4664 = xor i8 %4663, 1
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4664, i8* %4665, align 1
  %4666 = xor i64 10, %4651
  %4667 = trunc i64 %4666 to i32
  %4668 = xor i32 %4667, %4655
  %4669 = lshr i32 %4668, 4
  %4670 = trunc i32 %4669 to i8
  %4671 = and i8 %4670, 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4671, i8* %4672, align 1
  %4673 = icmp eq i32 %4655, 0
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4674, i8* %4675, align 1
  %4676 = lshr i32 %4655, 31
  %4677 = trunc i32 %4676 to i8
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4677, i8* %4678, align 1
  %4679 = lshr i32 %4654, 31
  %4680 = xor i32 %4676, %4679
  %4681 = add i32 %4680, %4679
  %4682 = icmp eq i32 %4681, 2
  %4683 = zext i1 %4682 to i8
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4683, i8* %4684, align 1
  store %struct.Memory* %loadMem_478fee, %struct.Memory** %MEMORY
  %loadMem_478ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 33
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 1
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %RAX.i347
  %4692 = load i64, i64* %PC.i346
  %4693 = add i64 %4692, 3
  store i64 %4693, i64* %PC.i346
  %4694 = trunc i64 %4691 to i32
  %4695 = add i32 8, %4694
  %4696 = zext i32 %4695 to i64
  store i64 %4696, i64* %RAX.i347, align 8
  %4697 = icmp ult i32 %4695, %4694
  %4698 = icmp ult i32 %4695, 8
  %4699 = or i1 %4697, %4698
  %4700 = zext i1 %4699 to i8
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4700, i8* %4701, align 1
  %4702 = and i32 %4695, 255
  %4703 = call i32 @llvm.ctpop.i32(i32 %4702)
  %4704 = trunc i32 %4703 to i8
  %4705 = and i8 %4704, 1
  %4706 = xor i8 %4705, 1
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4706, i8* %4707, align 1
  %4708 = xor i64 8, %4691
  %4709 = trunc i64 %4708 to i32
  %4710 = xor i32 %4709, %4695
  %4711 = lshr i32 %4710, 4
  %4712 = trunc i32 %4711 to i8
  %4713 = and i8 %4712, 1
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4713, i8* %4714, align 1
  %4715 = icmp eq i32 %4695, 0
  %4716 = zext i1 %4715 to i8
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4716, i8* %4717, align 1
  %4718 = lshr i32 %4695, 31
  %4719 = trunc i32 %4718 to i8
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4719, i8* %4720, align 1
  %4721 = lshr i32 %4694, 31
  %4722 = xor i32 %4718, %4721
  %4723 = add i32 %4722, %4718
  %4724 = icmp eq i32 %4723, 2
  %4725 = zext i1 %4724 to i8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4725, i8* %4726, align 1
  store %struct.Memory* %loadMem_478ff1, %struct.Memory** %MEMORY
  %loadMem_478ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 33
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 1
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %EAX.i344 = bitcast %union.anon* %4732 to i32*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 15
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %4735 to i64*
  %4736 = load i64, i64* %RBP.i345
  %4737 = sub i64 %4736, 84
  %4738 = load i32, i32* %EAX.i344
  %4739 = zext i32 %4738 to i64
  %4740 = load i64, i64* %PC.i343
  %4741 = add i64 %4740, 3
  store i64 %4741, i64* %PC.i343
  %4742 = inttoptr i64 %4737 to i32*
  store i32 %4738, i32* %4742
  store %struct.Memory* %loadMem_478ff4, %struct.Memory** %MEMORY
  %loadMem_478ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 33
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %PC.i342
  %4747 = add i64 %4746, 18
  %4748 = load i64, i64* %PC.i342
  %4749 = add i64 %4748, 5
  store i64 %4749, i64* %PC.i342
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4747, i64* %4750, align 8
  store %struct.Memory* %loadMem_478ff7, %struct.Memory** %MEMORY
  br label %block_.L_479009

block_.L_478ffc:                                  ; preds = %block_478fd5
  %loadMem_478ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 1
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %PC.i340
  %4758 = add i64 %4757, 5
  store i64 %4758, i64* %PC.i340
  store i64 1, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_478ffc, %struct.Memory** %MEMORY
  %loadMem_479001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 33
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4761 to i64*
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 1
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %EAX.i338 = bitcast %union.anon* %4764 to i32*
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4766 = getelementptr inbounds %struct.GPR, %struct.GPR* %4765, i32 0, i32 15
  %4767 = getelementptr inbounds %struct.Reg, %struct.Reg* %4766, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %4767 to i64*
  %4768 = load i64, i64* %RBP.i339
  %4769 = sub i64 %4768, 84
  %4770 = load i32, i32* %EAX.i338
  %4771 = zext i32 %4770 to i64
  %4772 = load i64, i64* %PC.i337
  %4773 = add i64 %4772, 3
  store i64 %4773, i64* %PC.i337
  %4774 = inttoptr i64 %4769 to i32*
  store i32 %4770, i32* %4774
  store %struct.Memory* %loadMem_479001, %struct.Memory** %MEMORY
  %loadMem_479004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 33
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4777 to i64*
  %4778 = load i64, i64* %PC.i336
  %4779 = add i64 %4778, 5
  %4780 = load i64, i64* %PC.i336
  %4781 = add i64 %4780, 5
  store i64 %4781, i64* %PC.i336
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4779, i64* %4782, align 8
  store %struct.Memory* %loadMem_479004, %struct.Memory** %MEMORY
  br label %block_.L_479009

block_.L_479009:                                  ; preds = %block_.L_478ffc, %block_478feb
  %loadMem_479009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 15
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RBP.i335
  %4793 = sub i64 %4792, 84
  %4794 = load i64, i64* %PC.i333
  %4795 = add i64 %4794, 3
  store i64 %4795, i64* %PC.i333
  %4796 = inttoptr i64 %4793 to i32*
  %4797 = load i32, i32* %4796
  %4798 = zext i32 %4797 to i64
  store i64 %4798, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_479009, %struct.Memory** %MEMORY
  %loadMem_47900c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 1
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %4804 to i32*
  %4805 = load i32, i32* %EAX.i332
  %4806 = zext i32 %4805 to i64
  %4807 = load i64, i64* %PC.i331
  %4808 = add i64 %4807, 7
  store i64 %4808, i64* %PC.i331
  store i32 %4805, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  store %struct.Memory* %loadMem_47900c, %struct.Memory** %MEMORY
  %loadMem_479013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 33
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %PC.i330
  %4813 = add i64 %4812, 149
  %4814 = load i64, i64* %PC.i330
  %4815 = add i64 %4814, 5
  store i64 %4815, i64* %PC.i330
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4813, i64* %4816, align 8
  store %struct.Memory* %loadMem_479013, %struct.Memory** %MEMORY
  br label %block_.L_4790a8

block_.L_479018:                                  ; preds = %block_.L_478fcb
  %loadMem_479018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 33
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4819 to i64*
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 15
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %4822 to i64*
  %4823 = load i64, i64* %RBP.i329
  %4824 = sub i64 %4823, 4
  %4825 = load i64, i64* %PC.i328
  %4826 = add i64 %4825, 4
  store i64 %4826, i64* %PC.i328
  %4827 = inttoptr i64 %4824 to i32*
  %4828 = load i32, i32* %4827
  %4829 = sub i32 %4828, 7
  %4830 = icmp ult i32 %4828, 7
  %4831 = zext i1 %4830 to i8
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4831, i8* %4832, align 1
  %4833 = and i32 %4829, 255
  %4834 = call i32 @llvm.ctpop.i32(i32 %4833)
  %4835 = trunc i32 %4834 to i8
  %4836 = and i8 %4835, 1
  %4837 = xor i8 %4836, 1
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4837, i8* %4838, align 1
  %4839 = xor i32 %4828, 7
  %4840 = xor i32 %4839, %4829
  %4841 = lshr i32 %4840, 4
  %4842 = trunc i32 %4841 to i8
  %4843 = and i8 %4842, 1
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4843, i8* %4844, align 1
  %4845 = icmp eq i32 %4829, 0
  %4846 = zext i1 %4845 to i8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4846, i8* %4847, align 1
  %4848 = lshr i32 %4829, 31
  %4849 = trunc i32 %4848 to i8
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4849, i8* %4850, align 1
  %4851 = lshr i32 %4828, 31
  %4852 = xor i32 %4848, %4851
  %4853 = add i32 %4852, %4851
  %4854 = icmp eq i32 %4853, 2
  %4855 = zext i1 %4854 to i8
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4855, i8* %4856, align 1
  store %struct.Memory* %loadMem_479018, %struct.Memory** %MEMORY
  %loadMem_47901c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 33
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4859 to i64*
  %4860 = load i64, i64* %PC.i327
  %4861 = add i64 %4860, 73
  %4862 = load i64, i64* %PC.i327
  %4863 = add i64 %4862, 6
  %4864 = load i64, i64* %PC.i327
  %4865 = add i64 %4864, 6
  store i64 %4865, i64* %PC.i327
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4867 = load i8, i8* %4866, align 1
  store i8 %4867, i8* %BRANCH_TAKEN, align 1
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4869 = icmp ne i8 %4867, 0
  %4870 = select i1 %4869, i64 %4861, i64 %4863
  store i64 %4870, i64* %4868, align 8
  store %struct.Memory* %loadMem_47901c, %struct.Memory** %MEMORY
  %loadBr_47901c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47901c = icmp eq i8 %loadBr_47901c, 1
  br i1 %cmpBr_47901c, label %block_.L_479065, label %block_479022

block_479022:                                     ; preds = %block_.L_479018
  %loadMem_479022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 1
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %4876 to i64*
  %4877 = load i64, i64* %PC.i325
  %4878 = add i64 %4877, 5
  store i64 %4878, i64* %PC.i325
  store i64 1, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_479022, %struct.Memory** %MEMORY
  %loadMem_479027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 33
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4881 to i64*
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 5
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %4884 to i64*
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4886 = getelementptr inbounds %struct.GPR, %struct.GPR* %4885, i32 0, i32 15
  %4887 = getelementptr inbounds %struct.Reg, %struct.Reg* %4886, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %4887 to i64*
  %4888 = load i64, i64* %RBP.i324
  %4889 = sub i64 %4888, 4
  %4890 = load i64, i64* %PC.i322
  %4891 = add i64 %4890, 3
  store i64 %4891, i64* %PC.i322
  %4892 = inttoptr i64 %4889 to i32*
  %4893 = load i32, i32* %4892
  %4894 = zext i32 %4893 to i64
  store i64 %4894, i64* %RCX.i323, align 8
  store %struct.Memory* %loadMem_479027, %struct.Memory** %MEMORY
  %loadMem_47902a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 33
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4897 to i64*
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 5
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %4900 to i64*
  %4901 = load i64, i64* %RCX.i321
  %4902 = load i64, i64* %PC.i320
  %4903 = add i64 %4902, 3
  store i64 %4903, i64* %PC.i320
  %4904 = trunc i64 %4901 to i32
  %4905 = sub i32 %4904, 9
  %4906 = zext i32 %4905 to i64
  store i64 %4906, i64* %RCX.i321, align 8
  %4907 = icmp ult i32 %4904, 9
  %4908 = zext i1 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4908, i8* %4909, align 1
  %4910 = and i32 %4905, 255
  %4911 = call i32 @llvm.ctpop.i32(i32 %4910)
  %4912 = trunc i32 %4911 to i8
  %4913 = and i8 %4912, 1
  %4914 = xor i8 %4913, 1
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4914, i8* %4915, align 1
  %4916 = xor i64 9, %4901
  %4917 = trunc i64 %4916 to i32
  %4918 = xor i32 %4917, %4905
  %4919 = lshr i32 %4918, 4
  %4920 = trunc i32 %4919 to i8
  %4921 = and i8 %4920, 1
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4921, i8* %4922, align 1
  %4923 = icmp eq i32 %4905, 0
  %4924 = zext i1 %4923 to i8
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4924, i8* %4925, align 1
  %4926 = lshr i32 %4905, 31
  %4927 = trunc i32 %4926 to i8
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4927, i8* %4928, align 1
  %4929 = lshr i32 %4904, 31
  %4930 = xor i32 %4926, %4929
  %4931 = add i32 %4930, %4929
  %4932 = icmp eq i32 %4931, 2
  %4933 = zext i1 %4932 to i8
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4933, i8* %4934, align 1
  store %struct.Memory* %loadMem_47902a, %struct.Memory** %MEMORY
  %loadMem_47902d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 33
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4937 to i64*
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 5
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %4940 to i64*
  %4941 = load i64, i64* %RCX.i319
  %4942 = load i64, i64* %PC.i318
  %4943 = add i64 %4942, 3
  store i64 %4943, i64* %PC.i318
  %4944 = trunc i64 %4941 to i32
  %4945 = add i32 8, %4944
  %4946 = zext i32 %4945 to i64
  store i64 %4946, i64* %RCX.i319, align 8
  %4947 = icmp ult i32 %4945, %4944
  %4948 = icmp ult i32 %4945, 8
  %4949 = or i1 %4947, %4948
  %4950 = zext i1 %4949 to i8
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4950, i8* %4951, align 1
  %4952 = and i32 %4945, 255
  %4953 = call i32 @llvm.ctpop.i32(i32 %4952)
  %4954 = trunc i32 %4953 to i8
  %4955 = and i8 %4954, 1
  %4956 = xor i8 %4955, 1
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4956, i8* %4957, align 1
  %4958 = xor i64 8, %4941
  %4959 = trunc i64 %4958 to i32
  %4960 = xor i32 %4959, %4945
  %4961 = lshr i32 %4960, 4
  %4962 = trunc i32 %4961 to i8
  %4963 = and i8 %4962, 1
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4963, i8* %4964, align 1
  %4965 = icmp eq i32 %4945, 0
  %4966 = zext i1 %4965 to i8
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4966, i8* %4967, align 1
  %4968 = lshr i32 %4945, 31
  %4969 = trunc i32 %4968 to i8
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4969, i8* %4970, align 1
  %4971 = lshr i32 %4944, 31
  %4972 = xor i32 %4968, %4971
  %4973 = add i32 %4972, %4968
  %4974 = icmp eq i32 %4973, 2
  %4975 = zext i1 %4974 to i8
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4975, i8* %4976, align 1
  store %struct.Memory* %loadMem_47902d, %struct.Memory** %MEMORY
  %loadMem_479030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 1
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %EAX.i316 = bitcast %union.anon* %4982 to i32*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 5
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %ECX.i317 = bitcast %union.anon* %4985 to i32*
  %4986 = load i32, i32* %EAX.i316
  %4987 = zext i32 %4986 to i64
  %4988 = load i32, i32* %ECX.i317
  %4989 = zext i32 %4988 to i64
  %4990 = load i64, i64* %PC.i315
  %4991 = add i64 %4990, 2
  store i64 %4991, i64* %PC.i315
  %4992 = sub i32 %4986, %4988
  %4993 = icmp ult i32 %4986, %4988
  %4994 = zext i1 %4993 to i8
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4994, i8* %4995, align 1
  %4996 = and i32 %4992, 255
  %4997 = call i32 @llvm.ctpop.i32(i32 %4996)
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = xor i8 %4999, 1
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5000, i8* %5001, align 1
  %5002 = xor i64 %4989, %4987
  %5003 = trunc i64 %5002 to i32
  %5004 = xor i32 %5003, %4992
  %5005 = lshr i32 %5004, 4
  %5006 = trunc i32 %5005 to i8
  %5007 = and i8 %5006, 1
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5007, i8* %5008, align 1
  %5009 = icmp eq i32 %4992, 0
  %5010 = zext i1 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5010, i8* %5011, align 1
  %5012 = lshr i32 %4992, 31
  %5013 = trunc i32 %5012 to i8
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5013, i8* %5014, align 1
  %5015 = lshr i32 %4986, 31
  %5016 = lshr i32 %4988, 31
  %5017 = xor i32 %5016, %5015
  %5018 = xor i32 %5012, %5015
  %5019 = add i32 %5018, %5017
  %5020 = icmp eq i32 %5019, 2
  %5021 = zext i1 %5020 to i8
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5021, i8* %5022, align 1
  store %struct.Memory* %loadMem_479030, %struct.Memory** %MEMORY
  %loadMem_479032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5025 to i64*
  %5026 = load i64, i64* %PC.i314
  %5027 = add i64 %5026, 23
  %5028 = load i64, i64* %PC.i314
  %5029 = add i64 %5028, 6
  %5030 = load i64, i64* %PC.i314
  %5031 = add i64 %5030, 6
  store i64 %5031, i64* %PC.i314
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5033 = load i8, i8* %5032, align 1
  %5034 = icmp ne i8 %5033, 0
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5036 = load i8, i8* %5035, align 1
  %5037 = icmp ne i8 %5036, 0
  %5038 = xor i1 %5034, %5037
  %5039 = xor i1 %5038, true
  %5040 = zext i1 %5039 to i8
  store i8 %5040, i8* %BRANCH_TAKEN, align 1
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5042 = select i1 %5038, i64 %5029, i64 %5027
  store i64 %5042, i64* %5041, align 8
  store %struct.Memory* %loadMem_479032, %struct.Memory** %MEMORY
  %loadBr_479032 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479032 = icmp eq i8 %loadBr_479032, 1
  br i1 %cmpBr_479032, label %block_.L_479049, label %block_479038

block_479038:                                     ; preds = %block_479022
  %loadMem_479038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 1
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 15
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %5051 to i64*
  %5052 = load i64, i64* %RBP.i313
  %5053 = sub i64 %5052, 4
  %5054 = load i64, i64* %PC.i311
  %5055 = add i64 %5054, 3
  store i64 %5055, i64* %PC.i311
  %5056 = inttoptr i64 %5053 to i32*
  %5057 = load i32, i32* %5056
  %5058 = zext i32 %5057 to i64
  store i64 %5058, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_479038, %struct.Memory** %MEMORY
  %loadMem_47903b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 33
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %5061 to i64*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 1
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %5064 to i64*
  %5065 = load i64, i64* %RAX.i310
  %5066 = load i64, i64* %PC.i309
  %5067 = add i64 %5066, 3
  store i64 %5067, i64* %PC.i309
  %5068 = trunc i64 %5065 to i32
  %5069 = sub i32 %5068, 9
  %5070 = zext i32 %5069 to i64
  store i64 %5070, i64* %RAX.i310, align 8
  %5071 = icmp ult i32 %5068, 9
  %5072 = zext i1 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5072, i8* %5073, align 1
  %5074 = and i32 %5069, 255
  %5075 = call i32 @llvm.ctpop.i32(i32 %5074)
  %5076 = trunc i32 %5075 to i8
  %5077 = and i8 %5076, 1
  %5078 = xor i8 %5077, 1
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5078, i8* %5079, align 1
  %5080 = xor i64 9, %5065
  %5081 = trunc i64 %5080 to i32
  %5082 = xor i32 %5081, %5069
  %5083 = lshr i32 %5082, 4
  %5084 = trunc i32 %5083 to i8
  %5085 = and i8 %5084, 1
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5085, i8* %5086, align 1
  %5087 = icmp eq i32 %5069, 0
  %5088 = zext i1 %5087 to i8
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5088, i8* %5089, align 1
  %5090 = lshr i32 %5069, 31
  %5091 = trunc i32 %5090 to i8
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5091, i8* %5092, align 1
  %5093 = lshr i32 %5068, 31
  %5094 = xor i32 %5090, %5093
  %5095 = add i32 %5094, %5093
  %5096 = icmp eq i32 %5095, 2
  %5097 = zext i1 %5096 to i8
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5097, i8* %5098, align 1
  store %struct.Memory* %loadMem_47903b, %struct.Memory** %MEMORY
  %loadMem_47903e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 33
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 1
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %5104 to i64*
  %5105 = load i64, i64* %RAX.i308
  %5106 = load i64, i64* %PC.i307
  %5107 = add i64 %5106, 3
  store i64 %5107, i64* %PC.i307
  %5108 = trunc i64 %5105 to i32
  %5109 = add i32 8, %5108
  %5110 = zext i32 %5109 to i64
  store i64 %5110, i64* %RAX.i308, align 8
  %5111 = icmp ult i32 %5109, %5108
  %5112 = icmp ult i32 %5109, 8
  %5113 = or i1 %5111, %5112
  %5114 = zext i1 %5113 to i8
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5114, i8* %5115, align 1
  %5116 = and i32 %5109, 255
  %5117 = call i32 @llvm.ctpop.i32(i32 %5116)
  %5118 = trunc i32 %5117 to i8
  %5119 = and i8 %5118, 1
  %5120 = xor i8 %5119, 1
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5120, i8* %5121, align 1
  %5122 = xor i64 8, %5105
  %5123 = trunc i64 %5122 to i32
  %5124 = xor i32 %5123, %5109
  %5125 = lshr i32 %5124, 4
  %5126 = trunc i32 %5125 to i8
  %5127 = and i8 %5126, 1
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5127, i8* %5128, align 1
  %5129 = icmp eq i32 %5109, 0
  %5130 = zext i1 %5129 to i8
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5130, i8* %5131, align 1
  %5132 = lshr i32 %5109, 31
  %5133 = trunc i32 %5132 to i8
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5133, i8* %5134, align 1
  %5135 = lshr i32 %5108, 31
  %5136 = xor i32 %5132, %5135
  %5137 = add i32 %5136, %5132
  %5138 = icmp eq i32 %5137, 2
  %5139 = zext i1 %5138 to i8
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5139, i8* %5140, align 1
  store %struct.Memory* %loadMem_47903e, %struct.Memory** %MEMORY
  %loadMem_479041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5142 = getelementptr inbounds %struct.GPR, %struct.GPR* %5141, i32 0, i32 33
  %5143 = getelementptr inbounds %struct.Reg, %struct.Reg* %5142, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5143 to i64*
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 1
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %5146 to i32*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 15
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %5149 to i64*
  %5150 = load i64, i64* %RBP.i306
  %5151 = sub i64 %5150, 88
  %5152 = load i32, i32* %EAX.i305
  %5153 = zext i32 %5152 to i64
  %5154 = load i64, i64* %PC.i304
  %5155 = add i64 %5154, 3
  store i64 %5155, i64* %PC.i304
  %5156 = inttoptr i64 %5151 to i32*
  store i32 %5152, i32* %5156
  store %struct.Memory* %loadMem_479041, %struct.Memory** %MEMORY
  %loadMem_479044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 33
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5159 to i64*
  %5160 = load i64, i64* %PC.i303
  %5161 = add i64 %5160, 18
  %5162 = load i64, i64* %PC.i303
  %5163 = add i64 %5162, 5
  store i64 %5163, i64* %PC.i303
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5161, i64* %5164, align 8
  store %struct.Memory* %loadMem_479044, %struct.Memory** %MEMORY
  br label %block_.L_479056

block_.L_479049:                                  ; preds = %block_479022
  %loadMem_479049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 33
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 1
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %5170 to i64*
  %5171 = load i64, i64* %PC.i301
  %5172 = add i64 %5171, 5
  store i64 %5172, i64* %PC.i301
  store i64 1, i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_479049, %struct.Memory** %MEMORY
  %loadMem_47904e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 33
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 1
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %5178 to i32*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 15
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %5181 to i64*
  %5182 = load i64, i64* %RBP.i300
  %5183 = sub i64 %5182, 88
  %5184 = load i32, i32* %EAX.i299
  %5185 = zext i32 %5184 to i64
  %5186 = load i64, i64* %PC.i298
  %5187 = add i64 %5186, 3
  store i64 %5187, i64* %PC.i298
  %5188 = inttoptr i64 %5183 to i32*
  store i32 %5184, i32* %5188
  store %struct.Memory* %loadMem_47904e, %struct.Memory** %MEMORY
  %loadMem_479051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5191 to i64*
  %5192 = load i64, i64* %PC.i297
  %5193 = add i64 %5192, 5
  %5194 = load i64, i64* %PC.i297
  %5195 = add i64 %5194, 5
  store i64 %5195, i64* %PC.i297
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5193, i64* %5196, align 8
  store %struct.Memory* %loadMem_479051, %struct.Memory** %MEMORY
  br label %block_.L_479056

block_.L_479056:                                  ; preds = %block_.L_479049, %block_479038
  %loadMem_479056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 33
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5199 to i64*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 1
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5202 to i64*
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 15
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5205 to i64*
  %5206 = load i64, i64* %RBP.i296
  %5207 = sub i64 %5206, 88
  %5208 = load i64, i64* %PC.i294
  %5209 = add i64 %5208, 3
  store i64 %5209, i64* %PC.i294
  %5210 = inttoptr i64 %5207 to i32*
  %5211 = load i32, i32* %5210
  %5212 = zext i32 %5211 to i64
  store i64 %5212, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_479056, %struct.Memory** %MEMORY
  %loadMem_479059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 33
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5215 to i64*
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 1
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %EAX.i293 = bitcast %union.anon* %5218 to i32*
  %5219 = load i32, i32* %EAX.i293
  %5220 = zext i32 %5219 to i64
  %5221 = load i64, i64* %PC.i292
  %5222 = add i64 %5221, 7
  store i64 %5222, i64* %PC.i292
  store i32 %5219, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  store %struct.Memory* %loadMem_479059, %struct.Memory** %MEMORY
  %loadMem_479060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 33
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5225 to i64*
  %5226 = load i64, i64* %PC.i291
  %5227 = add i64 %5226, 67
  %5228 = load i64, i64* %PC.i291
  %5229 = add i64 %5228, 5
  store i64 %5229, i64* %PC.i291
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5227, i64* %5230, align 8
  store %struct.Memory* %loadMem_479060, %struct.Memory** %MEMORY
  br label %block_.L_4790a3

block_.L_479065:                                  ; preds = %block_.L_479018
  %loadMem_479065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 33
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5233 to i64*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 1
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %5236 to i64*
  %5237 = load i64, i64* %PC.i289
  %5238 = add i64 %5237, 5
  store i64 %5238, i64* %PC.i289
  store i64 1, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_479065, %struct.Memory** %MEMORY
  %loadMem_47906a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5240 = getelementptr inbounds %struct.GPR, %struct.GPR* %5239, i32 0, i32 33
  %5241 = getelementptr inbounds %struct.Reg, %struct.Reg* %5240, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5241 to i64*
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 5
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 15
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %5247 to i64*
  %5248 = load i64, i64* %RBP.i288
  %5249 = sub i64 %5248, 4
  %5250 = load i64, i64* %PC.i286
  %5251 = add i64 %5250, 3
  store i64 %5251, i64* %PC.i286
  %5252 = inttoptr i64 %5249 to i32*
  %5253 = load i32, i32* %5252
  %5254 = zext i32 %5253 to i64
  store i64 %5254, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_47906a, %struct.Memory** %MEMORY
  %loadMem_47906d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 5
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %RCX.i285
  %5262 = load i64, i64* %PC.i284
  %5263 = add i64 %5262, 3
  store i64 %5263, i64* %PC.i284
  %5264 = trunc i64 %5261 to i32
  %5265 = sub i32 %5264, 8
  %5266 = zext i32 %5265 to i64
  store i64 %5266, i64* %RCX.i285, align 8
  %5267 = icmp ult i32 %5264, 8
  %5268 = zext i1 %5267 to i8
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5268, i8* %5269, align 1
  %5270 = and i32 %5265, 255
  %5271 = call i32 @llvm.ctpop.i32(i32 %5270)
  %5272 = trunc i32 %5271 to i8
  %5273 = and i8 %5272, 1
  %5274 = xor i8 %5273, 1
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5274, i8* %5275, align 1
  %5276 = xor i64 8, %5261
  %5277 = trunc i64 %5276 to i32
  %5278 = xor i32 %5277, %5265
  %5279 = lshr i32 %5278, 4
  %5280 = trunc i32 %5279 to i8
  %5281 = and i8 %5280, 1
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5281, i8* %5282, align 1
  %5283 = icmp eq i32 %5265, 0
  %5284 = zext i1 %5283 to i8
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5284, i8* %5285, align 1
  %5286 = lshr i32 %5265, 31
  %5287 = trunc i32 %5286 to i8
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5287, i8* %5288, align 1
  %5289 = lshr i32 %5264, 31
  %5290 = xor i32 %5286, %5289
  %5291 = add i32 %5290, %5289
  %5292 = icmp eq i32 %5291, 2
  %5293 = zext i1 %5292 to i8
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5293, i8* %5294, align 1
  store %struct.Memory* %loadMem_47906d, %struct.Memory** %MEMORY
  %loadMem_479070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5296 = getelementptr inbounds %struct.GPR, %struct.GPR* %5295, i32 0, i32 33
  %5297 = getelementptr inbounds %struct.Reg, %struct.Reg* %5296, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5297 to i64*
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5299 = getelementptr inbounds %struct.GPR, %struct.GPR* %5298, i32 0, i32 5
  %5300 = getelementptr inbounds %struct.Reg, %struct.Reg* %5299, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %5300 to i64*
  %5301 = load i64, i64* %RCX.i283
  %5302 = load i64, i64* %PC.i282
  %5303 = add i64 %5302, 3
  store i64 %5303, i64* %PC.i282
  %5304 = trunc i64 %5301 to i32
  %5305 = add i32 8, %5304
  %5306 = zext i32 %5305 to i64
  store i64 %5306, i64* %RCX.i283, align 8
  %5307 = icmp ult i32 %5305, %5304
  %5308 = icmp ult i32 %5305, 8
  %5309 = or i1 %5307, %5308
  %5310 = zext i1 %5309 to i8
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5310, i8* %5311, align 1
  %5312 = and i32 %5305, 255
  %5313 = call i32 @llvm.ctpop.i32(i32 %5312)
  %5314 = trunc i32 %5313 to i8
  %5315 = and i8 %5314, 1
  %5316 = xor i8 %5315, 1
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5316, i8* %5317, align 1
  %5318 = xor i64 8, %5301
  %5319 = trunc i64 %5318 to i32
  %5320 = xor i32 %5319, %5305
  %5321 = lshr i32 %5320, 4
  %5322 = trunc i32 %5321 to i8
  %5323 = and i8 %5322, 1
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5323, i8* %5324, align 1
  %5325 = icmp eq i32 %5305, 0
  %5326 = zext i1 %5325 to i8
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5326, i8* %5327, align 1
  %5328 = lshr i32 %5305, 31
  %5329 = trunc i32 %5328 to i8
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5329, i8* %5330, align 1
  %5331 = lshr i32 %5304, 31
  %5332 = xor i32 %5328, %5331
  %5333 = add i32 %5332, %5328
  %5334 = icmp eq i32 %5333, 2
  %5335 = zext i1 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5335, i8* %5336, align 1
  store %struct.Memory* %loadMem_479070, %struct.Memory** %MEMORY
  %loadMem_479073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 33
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5339 to i64*
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 1
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %EAX.i280 = bitcast %union.anon* %5342 to i32*
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 5
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %ECX.i281 = bitcast %union.anon* %5345 to i32*
  %5346 = load i32, i32* %EAX.i280
  %5347 = zext i32 %5346 to i64
  %5348 = load i32, i32* %ECX.i281
  %5349 = zext i32 %5348 to i64
  %5350 = load i64, i64* %PC.i279
  %5351 = add i64 %5350, 2
  store i64 %5351, i64* %PC.i279
  %5352 = sub i32 %5346, %5348
  %5353 = icmp ult i32 %5346, %5348
  %5354 = zext i1 %5353 to i8
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5354, i8* %5355, align 1
  %5356 = and i32 %5352, 255
  %5357 = call i32 @llvm.ctpop.i32(i32 %5356)
  %5358 = trunc i32 %5357 to i8
  %5359 = and i8 %5358, 1
  %5360 = xor i8 %5359, 1
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5360, i8* %5361, align 1
  %5362 = xor i64 %5349, %5347
  %5363 = trunc i64 %5362 to i32
  %5364 = xor i32 %5363, %5352
  %5365 = lshr i32 %5364, 4
  %5366 = trunc i32 %5365 to i8
  %5367 = and i8 %5366, 1
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5367, i8* %5368, align 1
  %5369 = icmp eq i32 %5352, 0
  %5370 = zext i1 %5369 to i8
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5370, i8* %5371, align 1
  %5372 = lshr i32 %5352, 31
  %5373 = trunc i32 %5372 to i8
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5373, i8* %5374, align 1
  %5375 = lshr i32 %5346, 31
  %5376 = lshr i32 %5348, 31
  %5377 = xor i32 %5376, %5375
  %5378 = xor i32 %5372, %5375
  %5379 = add i32 %5378, %5377
  %5380 = icmp eq i32 %5379, 2
  %5381 = zext i1 %5380 to i8
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5381, i8* %5382, align 1
  store %struct.Memory* %loadMem_479073, %struct.Memory** %MEMORY
  %loadMem_479075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5384 = getelementptr inbounds %struct.GPR, %struct.GPR* %5383, i32 0, i32 33
  %5385 = getelementptr inbounds %struct.Reg, %struct.Reg* %5384, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %5385 to i64*
  %5386 = load i64, i64* %PC.i278
  %5387 = add i64 %5386, 23
  %5388 = load i64, i64* %PC.i278
  %5389 = add i64 %5388, 6
  %5390 = load i64, i64* %PC.i278
  %5391 = add i64 %5390, 6
  store i64 %5391, i64* %PC.i278
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5393 = load i8, i8* %5392, align 1
  %5394 = icmp ne i8 %5393, 0
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5396 = load i8, i8* %5395, align 1
  %5397 = icmp ne i8 %5396, 0
  %5398 = xor i1 %5394, %5397
  %5399 = xor i1 %5398, true
  %5400 = zext i1 %5399 to i8
  store i8 %5400, i8* %BRANCH_TAKEN, align 1
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5402 = select i1 %5398, i64 %5389, i64 %5387
  store i64 %5402, i64* %5401, align 8
  store %struct.Memory* %loadMem_479075, %struct.Memory** %MEMORY
  %loadBr_479075 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479075 = icmp eq i8 %loadBr_479075, 1
  br i1 %cmpBr_479075, label %block_.L_47908c, label %block_47907b

block_47907b:                                     ; preds = %block_.L_479065
  %loadMem_47907b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 33
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 1
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %5408 to i64*
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 15
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %5411 to i64*
  %5412 = load i64, i64* %RBP.i277
  %5413 = sub i64 %5412, 4
  %5414 = load i64, i64* %PC.i275
  %5415 = add i64 %5414, 3
  store i64 %5415, i64* %PC.i275
  %5416 = inttoptr i64 %5413 to i32*
  %5417 = load i32, i32* %5416
  %5418 = zext i32 %5417 to i64
  store i64 %5418, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_47907b, %struct.Memory** %MEMORY
  %loadMem_47907e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 33
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5421 to i64*
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 1
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %5424 to i64*
  %5425 = load i64, i64* %RAX.i274
  %5426 = load i64, i64* %PC.i273
  %5427 = add i64 %5426, 3
  store i64 %5427, i64* %PC.i273
  %5428 = trunc i64 %5425 to i32
  %5429 = sub i32 %5428, 8
  %5430 = zext i32 %5429 to i64
  store i64 %5430, i64* %RAX.i274, align 8
  %5431 = icmp ult i32 %5428, 8
  %5432 = zext i1 %5431 to i8
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5432, i8* %5433, align 1
  %5434 = and i32 %5429, 255
  %5435 = call i32 @llvm.ctpop.i32(i32 %5434)
  %5436 = trunc i32 %5435 to i8
  %5437 = and i8 %5436, 1
  %5438 = xor i8 %5437, 1
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5438, i8* %5439, align 1
  %5440 = xor i64 8, %5425
  %5441 = trunc i64 %5440 to i32
  %5442 = xor i32 %5441, %5429
  %5443 = lshr i32 %5442, 4
  %5444 = trunc i32 %5443 to i8
  %5445 = and i8 %5444, 1
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5445, i8* %5446, align 1
  %5447 = icmp eq i32 %5429, 0
  %5448 = zext i1 %5447 to i8
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5448, i8* %5449, align 1
  %5450 = lshr i32 %5429, 31
  %5451 = trunc i32 %5450 to i8
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5451, i8* %5452, align 1
  %5453 = lshr i32 %5428, 31
  %5454 = xor i32 %5450, %5453
  %5455 = add i32 %5454, %5453
  %5456 = icmp eq i32 %5455, 2
  %5457 = zext i1 %5456 to i8
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5457, i8* %5458, align 1
  store %struct.Memory* %loadMem_47907e, %struct.Memory** %MEMORY
  %loadMem_479081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 33
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %5461 to i64*
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 1
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %5464 to i64*
  %5465 = load i64, i64* %RAX.i272
  %5466 = load i64, i64* %PC.i271
  %5467 = add i64 %5466, 3
  store i64 %5467, i64* %PC.i271
  %5468 = trunc i64 %5465 to i32
  %5469 = add i32 8, %5468
  %5470 = zext i32 %5469 to i64
  store i64 %5470, i64* %RAX.i272, align 8
  %5471 = icmp ult i32 %5469, %5468
  %5472 = icmp ult i32 %5469, 8
  %5473 = or i1 %5471, %5472
  %5474 = zext i1 %5473 to i8
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5474, i8* %5475, align 1
  %5476 = and i32 %5469, 255
  %5477 = call i32 @llvm.ctpop.i32(i32 %5476)
  %5478 = trunc i32 %5477 to i8
  %5479 = and i8 %5478, 1
  %5480 = xor i8 %5479, 1
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5480, i8* %5481, align 1
  %5482 = xor i64 8, %5465
  %5483 = trunc i64 %5482 to i32
  %5484 = xor i32 %5483, %5469
  %5485 = lshr i32 %5484, 4
  %5486 = trunc i32 %5485 to i8
  %5487 = and i8 %5486, 1
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5487, i8* %5488, align 1
  %5489 = icmp eq i32 %5469, 0
  %5490 = zext i1 %5489 to i8
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5490, i8* %5491, align 1
  %5492 = lshr i32 %5469, 31
  %5493 = trunc i32 %5492 to i8
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5493, i8* %5494, align 1
  %5495 = lshr i32 %5468, 31
  %5496 = xor i32 %5492, %5495
  %5497 = add i32 %5496, %5492
  %5498 = icmp eq i32 %5497, 2
  %5499 = zext i1 %5498 to i8
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5499, i8* %5500, align 1
  store %struct.Memory* %loadMem_479081, %struct.Memory** %MEMORY
  %loadMem_479084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5502 = getelementptr inbounds %struct.GPR, %struct.GPR* %5501, i32 0, i32 33
  %5503 = getelementptr inbounds %struct.Reg, %struct.Reg* %5502, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %5503 to i64*
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 1
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %5506 to i32*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 15
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %5509 to i64*
  %5510 = load i64, i64* %RBP.i270
  %5511 = sub i64 %5510, 92
  %5512 = load i32, i32* %EAX.i269
  %5513 = zext i32 %5512 to i64
  %5514 = load i64, i64* %PC.i268
  %5515 = add i64 %5514, 3
  store i64 %5515, i64* %PC.i268
  %5516 = inttoptr i64 %5511 to i32*
  store i32 %5512, i32* %5516
  store %struct.Memory* %loadMem_479084, %struct.Memory** %MEMORY
  %loadMem_479087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 33
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5519 to i64*
  %5520 = load i64, i64* %PC.i267
  %5521 = add i64 %5520, 18
  %5522 = load i64, i64* %PC.i267
  %5523 = add i64 %5522, 5
  store i64 %5523, i64* %PC.i267
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5521, i64* %5524, align 8
  store %struct.Memory* %loadMem_479087, %struct.Memory** %MEMORY
  br label %block_.L_479099

block_.L_47908c:                                  ; preds = %block_.L_479065
  %loadMem_47908c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 1
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %5530 to i64*
  %5531 = load i64, i64* %PC.i265
  %5532 = add i64 %5531, 5
  store i64 %5532, i64* %PC.i265
  store i64 1, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_47908c, %struct.Memory** %MEMORY
  %loadMem_479091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 33
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 1
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %EAX.i263 = bitcast %union.anon* %5538 to i32*
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 15
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %5541 to i64*
  %5542 = load i64, i64* %RBP.i264
  %5543 = sub i64 %5542, 92
  %5544 = load i32, i32* %EAX.i263
  %5545 = zext i32 %5544 to i64
  %5546 = load i64, i64* %PC.i262
  %5547 = add i64 %5546, 3
  store i64 %5547, i64* %PC.i262
  %5548 = inttoptr i64 %5543 to i32*
  store i32 %5544, i32* %5548
  store %struct.Memory* %loadMem_479091, %struct.Memory** %MEMORY
  %loadMem_479094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 33
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5551 to i64*
  %5552 = load i64, i64* %PC.i261
  %5553 = add i64 %5552, 5
  %5554 = load i64, i64* %PC.i261
  %5555 = add i64 %5554, 5
  store i64 %5555, i64* %PC.i261
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5553, i64* %5556, align 8
  store %struct.Memory* %loadMem_479094, %struct.Memory** %MEMORY
  br label %block_.L_479099

block_.L_479099:                                  ; preds = %block_.L_47908c, %block_47907b
  %loadMem_479099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 33
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5559 to i64*
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 1
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %5562 to i64*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 15
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5565 to i64*
  %5566 = load i64, i64* %RBP.i260
  %5567 = sub i64 %5566, 92
  %5568 = load i64, i64* %PC.i258
  %5569 = add i64 %5568, 3
  store i64 %5569, i64* %PC.i258
  %5570 = inttoptr i64 %5567 to i32*
  %5571 = load i32, i32* %5570
  %5572 = zext i32 %5571 to i64
  store i64 %5572, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_479099, %struct.Memory** %MEMORY
  %loadMem_47909c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 33
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5575 to i64*
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 1
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %EAX.i257 = bitcast %union.anon* %5578 to i32*
  %5579 = load i32, i32* %EAX.i257
  %5580 = zext i32 %5579 to i64
  %5581 = load i64, i64* %PC.i256
  %5582 = add i64 %5581, 7
  store i64 %5582, i64* %PC.i256
  store i32 %5579, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  store %struct.Memory* %loadMem_47909c, %struct.Memory** %MEMORY
  br label %block_.L_4790a3

block_.L_4790a3:                                  ; preds = %block_.L_479099, %block_.L_479056
  %loadMem_4790a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 33
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5585 to i64*
  %5586 = load i64, i64* %PC.i255
  %5587 = add i64 %5586, 5
  %5588 = load i64, i64* %PC.i255
  %5589 = add i64 %5588, 5
  store i64 %5589, i64* %PC.i255
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5587, i64* %5590, align 8
  store %struct.Memory* %loadMem_4790a3, %struct.Memory** %MEMORY
  br label %block_.L_4790a8

block_.L_4790a8:                                  ; preds = %block_.L_4790a3, %block_.L_479009
  %loadMem_4790a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5592 = getelementptr inbounds %struct.GPR, %struct.GPR* %5591, i32 0, i32 33
  %5593 = getelementptr inbounds %struct.Reg, %struct.Reg* %5592, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5593 to i64*
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 15
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %5596 to i64*
  %5597 = load i64, i64* %RBP.i254
  %5598 = sub i64 %5597, 4
  %5599 = load i64, i64* %PC.i253
  %5600 = add i64 %5599, 4
  store i64 %5600, i64* %PC.i253
  %5601 = inttoptr i64 %5598 to i32*
  %5602 = load i32, i32* %5601
  %5603 = sub i32 %5602, 10
  %5604 = icmp ult i32 %5602, 10
  %5605 = zext i1 %5604 to i8
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5605, i8* %5606, align 1
  %5607 = and i32 %5603, 255
  %5608 = call i32 @llvm.ctpop.i32(i32 %5607)
  %5609 = trunc i32 %5608 to i8
  %5610 = and i8 %5609, 1
  %5611 = xor i8 %5610, 1
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5611, i8* %5612, align 1
  %5613 = xor i32 %5602, 10
  %5614 = xor i32 %5613, %5603
  %5615 = lshr i32 %5614, 4
  %5616 = trunc i32 %5615 to i8
  %5617 = and i8 %5616, 1
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5617, i8* %5618, align 1
  %5619 = icmp eq i32 %5603, 0
  %5620 = zext i1 %5619 to i8
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5620, i8* %5621, align 1
  %5622 = lshr i32 %5603, 31
  %5623 = trunc i32 %5622 to i8
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5623, i8* %5624, align 1
  %5625 = lshr i32 %5602, 31
  %5626 = xor i32 %5622, %5625
  %5627 = add i32 %5626, %5625
  %5628 = icmp eq i32 %5627, 2
  %5629 = zext i1 %5628 to i8
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5629, i8* %5630, align 1
  store %struct.Memory* %loadMem_4790a8, %struct.Memory** %MEMORY
  %loadMem_4790ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5632 = getelementptr inbounds %struct.GPR, %struct.GPR* %5631, i32 0, i32 33
  %5633 = getelementptr inbounds %struct.Reg, %struct.Reg* %5632, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5633 to i64*
  %5634 = load i64, i64* %PC.i252
  %5635 = add i64 %5634, 73
  %5636 = load i64, i64* %PC.i252
  %5637 = add i64 %5636, 6
  %5638 = load i64, i64* %PC.i252
  %5639 = add i64 %5638, 6
  store i64 %5639, i64* %PC.i252
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5641 = load i8, i8* %5640, align 1
  %5642 = icmp ne i8 %5641, 0
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5644 = load i8, i8* %5643, align 1
  %5645 = icmp ne i8 %5644, 0
  %5646 = xor i1 %5642, %5645
  %5647 = zext i1 %5646 to i8
  store i8 %5647, i8* %BRANCH_TAKEN, align 1
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5649 = select i1 %5646, i64 %5635, i64 %5637
  store i64 %5649, i64* %5648, align 8
  store %struct.Memory* %loadMem_4790ac, %struct.Memory** %MEMORY
  %loadBr_4790ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4790ac = icmp eq i8 %loadBr_4790ac, 1
  br i1 %cmpBr_4790ac, label %block_.L_4790f5, label %block_4790b2

block_4790b2:                                     ; preds = %block_.L_4790a8
  %loadMem_4790b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5651 = getelementptr inbounds %struct.GPR, %struct.GPR* %5650, i32 0, i32 33
  %5652 = getelementptr inbounds %struct.Reg, %struct.Reg* %5651, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5652 to i64*
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 1
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %5655 to i64*
  %5656 = load i64, i64* %PC.i250
  %5657 = add i64 %5656, 5
  store i64 %5657, i64* %PC.i250
  store i64 1, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_4790b2, %struct.Memory** %MEMORY
  %loadMem_4790b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 33
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 5
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %5663 to i64*
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 15
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %5666 to i64*
  %5667 = load i64, i64* %RBP.i249
  %5668 = sub i64 %5667, 4
  %5669 = load i64, i64* %PC.i247
  %5670 = add i64 %5669, 3
  store i64 %5670, i64* %PC.i247
  %5671 = inttoptr i64 %5668 to i32*
  %5672 = load i32, i32* %5671
  %5673 = zext i32 %5672 to i64
  store i64 %5673, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_4790b7, %struct.Memory** %MEMORY
  %loadMem_4790ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 5
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %5679 to i64*
  %5680 = load i64, i64* %RCX.i246
  %5681 = load i64, i64* %PC.i245
  %5682 = add i64 %5681, 3
  store i64 %5682, i64* %PC.i245
  %5683 = trunc i64 %5680 to i32
  %5684 = sub i32 %5683, 10
  %5685 = zext i32 %5684 to i64
  store i64 %5685, i64* %RCX.i246, align 8
  %5686 = icmp ult i32 %5683, 10
  %5687 = zext i1 %5686 to i8
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5687, i8* %5688, align 1
  %5689 = and i32 %5684, 255
  %5690 = call i32 @llvm.ctpop.i32(i32 %5689)
  %5691 = trunc i32 %5690 to i8
  %5692 = and i8 %5691, 1
  %5693 = xor i8 %5692, 1
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5693, i8* %5694, align 1
  %5695 = xor i64 10, %5680
  %5696 = trunc i64 %5695 to i32
  %5697 = xor i32 %5696, %5684
  %5698 = lshr i32 %5697, 4
  %5699 = trunc i32 %5698 to i8
  %5700 = and i8 %5699, 1
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5700, i8* %5701, align 1
  %5702 = icmp eq i32 %5684, 0
  %5703 = zext i1 %5702 to i8
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5703, i8* %5704, align 1
  %5705 = lshr i32 %5684, 31
  %5706 = trunc i32 %5705 to i8
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5706, i8* %5707, align 1
  %5708 = lshr i32 %5683, 31
  %5709 = xor i32 %5705, %5708
  %5710 = add i32 %5709, %5708
  %5711 = icmp eq i32 %5710, 2
  %5712 = zext i1 %5711 to i8
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5712, i8* %5713, align 1
  store %struct.Memory* %loadMem_4790ba, %struct.Memory** %MEMORY
  %loadMem_4790bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 33
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5716 to i64*
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 5
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %5719 to i64*
  %5720 = load i64, i64* %RCX.i244
  %5721 = load i64, i64* %PC.i243
  %5722 = add i64 %5721, 3
  store i64 %5722, i64* %PC.i243
  %5723 = trunc i64 %5720 to i32
  %5724 = add i32 7, %5723
  %5725 = zext i32 %5724 to i64
  store i64 %5725, i64* %RCX.i244, align 8
  %5726 = icmp ult i32 %5724, %5723
  %5727 = icmp ult i32 %5724, 7
  %5728 = or i1 %5726, %5727
  %5729 = zext i1 %5728 to i8
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5729, i8* %5730, align 1
  %5731 = and i32 %5724, 255
  %5732 = call i32 @llvm.ctpop.i32(i32 %5731)
  %5733 = trunc i32 %5732 to i8
  %5734 = and i8 %5733, 1
  %5735 = xor i8 %5734, 1
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5735, i8* %5736, align 1
  %5737 = xor i64 7, %5720
  %5738 = trunc i64 %5737 to i32
  %5739 = xor i32 %5738, %5724
  %5740 = lshr i32 %5739, 4
  %5741 = trunc i32 %5740 to i8
  %5742 = and i8 %5741, 1
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5742, i8* %5743, align 1
  %5744 = icmp eq i32 %5724, 0
  %5745 = zext i1 %5744 to i8
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5745, i8* %5746, align 1
  %5747 = lshr i32 %5724, 31
  %5748 = trunc i32 %5747 to i8
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5748, i8* %5749, align 1
  %5750 = lshr i32 %5723, 31
  %5751 = xor i32 %5747, %5750
  %5752 = add i32 %5751, %5747
  %5753 = icmp eq i32 %5752, 2
  %5754 = zext i1 %5753 to i8
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5754, i8* %5755, align 1
  store %struct.Memory* %loadMem_4790bd, %struct.Memory** %MEMORY
  %loadMem_4790c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 1
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %5761 to i32*
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 5
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %ECX.i242 = bitcast %union.anon* %5764 to i32*
  %5765 = load i32, i32* %EAX.i241
  %5766 = zext i32 %5765 to i64
  %5767 = load i32, i32* %ECX.i242
  %5768 = zext i32 %5767 to i64
  %5769 = load i64, i64* %PC.i240
  %5770 = add i64 %5769, 2
  store i64 %5770, i64* %PC.i240
  %5771 = sub i32 %5765, %5767
  %5772 = icmp ult i32 %5765, %5767
  %5773 = zext i1 %5772 to i8
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5773, i8* %5774, align 1
  %5775 = and i32 %5771, 255
  %5776 = call i32 @llvm.ctpop.i32(i32 %5775)
  %5777 = trunc i32 %5776 to i8
  %5778 = and i8 %5777, 1
  %5779 = xor i8 %5778, 1
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5779, i8* %5780, align 1
  %5781 = xor i64 %5768, %5766
  %5782 = trunc i64 %5781 to i32
  %5783 = xor i32 %5782, %5771
  %5784 = lshr i32 %5783, 4
  %5785 = trunc i32 %5784 to i8
  %5786 = and i8 %5785, 1
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5786, i8* %5787, align 1
  %5788 = icmp eq i32 %5771, 0
  %5789 = zext i1 %5788 to i8
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5789, i8* %5790, align 1
  %5791 = lshr i32 %5771, 31
  %5792 = trunc i32 %5791 to i8
  %5793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5792, i8* %5793, align 1
  %5794 = lshr i32 %5765, 31
  %5795 = lshr i32 %5767, 31
  %5796 = xor i32 %5795, %5794
  %5797 = xor i32 %5791, %5794
  %5798 = add i32 %5797, %5796
  %5799 = icmp eq i32 %5798, 2
  %5800 = zext i1 %5799 to i8
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5800, i8* %5801, align 1
  store %struct.Memory* %loadMem_4790c0, %struct.Memory** %MEMORY
  %loadMem_4790c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5803 = getelementptr inbounds %struct.GPR, %struct.GPR* %5802, i32 0, i32 33
  %5804 = getelementptr inbounds %struct.Reg, %struct.Reg* %5803, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5804 to i64*
  %5805 = load i64, i64* %PC.i239
  %5806 = add i64 %5805, 23
  %5807 = load i64, i64* %PC.i239
  %5808 = add i64 %5807, 6
  %5809 = load i64, i64* %PC.i239
  %5810 = add i64 %5809, 6
  store i64 %5810, i64* %PC.i239
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5812 = load i8, i8* %5811, align 1
  %5813 = icmp ne i8 %5812, 0
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5815 = load i8, i8* %5814, align 1
  %5816 = icmp ne i8 %5815, 0
  %5817 = xor i1 %5813, %5816
  %5818 = xor i1 %5817, true
  %5819 = zext i1 %5818 to i8
  store i8 %5819, i8* %BRANCH_TAKEN, align 1
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5821 = select i1 %5817, i64 %5808, i64 %5806
  store i64 %5821, i64* %5820, align 8
  store %struct.Memory* %loadMem_4790c2, %struct.Memory** %MEMORY
  %loadBr_4790c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4790c2 = icmp eq i8 %loadBr_4790c2, 1
  br i1 %cmpBr_4790c2, label %block_.L_4790d9, label %block_4790c8

block_4790c8:                                     ; preds = %block_4790b2
  %loadMem_4790c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 33
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 1
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 15
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %5830 to i64*
  %5831 = load i64, i64* %RBP.i238
  %5832 = sub i64 %5831, 4
  %5833 = load i64, i64* %PC.i236
  %5834 = add i64 %5833, 3
  store i64 %5834, i64* %PC.i236
  %5835 = inttoptr i64 %5832 to i32*
  %5836 = load i32, i32* %5835
  %5837 = zext i32 %5836 to i64
  store i64 %5837, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_4790c8, %struct.Memory** %MEMORY
  %loadMem_4790cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 33
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %5840 to i64*
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5842 = getelementptr inbounds %struct.GPR, %struct.GPR* %5841, i32 0, i32 1
  %5843 = getelementptr inbounds %struct.Reg, %struct.Reg* %5842, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %5843 to i64*
  %5844 = load i64, i64* %RAX.i235
  %5845 = load i64, i64* %PC.i234
  %5846 = add i64 %5845, 3
  store i64 %5846, i64* %PC.i234
  %5847 = trunc i64 %5844 to i32
  %5848 = sub i32 %5847, 10
  %5849 = zext i32 %5848 to i64
  store i64 %5849, i64* %RAX.i235, align 8
  %5850 = icmp ult i32 %5847, 10
  %5851 = zext i1 %5850 to i8
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5851, i8* %5852, align 1
  %5853 = and i32 %5848, 255
  %5854 = call i32 @llvm.ctpop.i32(i32 %5853)
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = xor i8 %5856, 1
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5857, i8* %5858, align 1
  %5859 = xor i64 10, %5844
  %5860 = trunc i64 %5859 to i32
  %5861 = xor i32 %5860, %5848
  %5862 = lshr i32 %5861, 4
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5864, i8* %5865, align 1
  %5866 = icmp eq i32 %5848, 0
  %5867 = zext i1 %5866 to i8
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5867, i8* %5868, align 1
  %5869 = lshr i32 %5848, 31
  %5870 = trunc i32 %5869 to i8
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5870, i8* %5871, align 1
  %5872 = lshr i32 %5847, 31
  %5873 = xor i32 %5869, %5872
  %5874 = add i32 %5873, %5872
  %5875 = icmp eq i32 %5874, 2
  %5876 = zext i1 %5875 to i8
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5876, i8* %5877, align 1
  store %struct.Memory* %loadMem_4790cb, %struct.Memory** %MEMORY
  %loadMem_4790ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5879 = getelementptr inbounds %struct.GPR, %struct.GPR* %5878, i32 0, i32 33
  %5880 = getelementptr inbounds %struct.Reg, %struct.Reg* %5879, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %5880 to i64*
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 1
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %5883 to i64*
  %5884 = load i64, i64* %RAX.i233
  %5885 = load i64, i64* %PC.i232
  %5886 = add i64 %5885, 3
  store i64 %5886, i64* %PC.i232
  %5887 = trunc i64 %5884 to i32
  %5888 = add i32 7, %5887
  %5889 = zext i32 %5888 to i64
  store i64 %5889, i64* %RAX.i233, align 8
  %5890 = icmp ult i32 %5888, %5887
  %5891 = icmp ult i32 %5888, 7
  %5892 = or i1 %5890, %5891
  %5893 = zext i1 %5892 to i8
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5893, i8* %5894, align 1
  %5895 = and i32 %5888, 255
  %5896 = call i32 @llvm.ctpop.i32(i32 %5895)
  %5897 = trunc i32 %5896 to i8
  %5898 = and i8 %5897, 1
  %5899 = xor i8 %5898, 1
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5899, i8* %5900, align 1
  %5901 = xor i64 7, %5884
  %5902 = trunc i64 %5901 to i32
  %5903 = xor i32 %5902, %5888
  %5904 = lshr i32 %5903, 4
  %5905 = trunc i32 %5904 to i8
  %5906 = and i8 %5905, 1
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5906, i8* %5907, align 1
  %5908 = icmp eq i32 %5888, 0
  %5909 = zext i1 %5908 to i8
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5909, i8* %5910, align 1
  %5911 = lshr i32 %5888, 31
  %5912 = trunc i32 %5911 to i8
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5912, i8* %5913, align 1
  %5914 = lshr i32 %5887, 31
  %5915 = xor i32 %5911, %5914
  %5916 = add i32 %5915, %5911
  %5917 = icmp eq i32 %5916, 2
  %5918 = zext i1 %5917 to i8
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5918, i8* %5919, align 1
  store %struct.Memory* %loadMem_4790ce, %struct.Memory** %MEMORY
  %loadMem_4790d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 33
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %5922 to i64*
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 1
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %5925 to i32*
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 15
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %5928 to i64*
  %5929 = load i64, i64* %RBP.i231
  %5930 = sub i64 %5929, 96
  %5931 = load i32, i32* %EAX.i230
  %5932 = zext i32 %5931 to i64
  %5933 = load i64, i64* %PC.i229
  %5934 = add i64 %5933, 3
  store i64 %5934, i64* %PC.i229
  %5935 = inttoptr i64 %5930 to i32*
  store i32 %5931, i32* %5935
  store %struct.Memory* %loadMem_4790d1, %struct.Memory** %MEMORY
  %loadMem_4790d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5937 = getelementptr inbounds %struct.GPR, %struct.GPR* %5936, i32 0, i32 33
  %5938 = getelementptr inbounds %struct.Reg, %struct.Reg* %5937, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %5938 to i64*
  %5939 = load i64, i64* %PC.i228
  %5940 = add i64 %5939, 18
  %5941 = load i64, i64* %PC.i228
  %5942 = add i64 %5941, 5
  store i64 %5942, i64* %PC.i228
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5940, i64* %5943, align 8
  store %struct.Memory* %loadMem_4790d4, %struct.Memory** %MEMORY
  br label %block_.L_4790e6

block_.L_4790d9:                                  ; preds = %block_4790b2
  %loadMem_4790d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 33
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5946 to i64*
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 1
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %5949 to i64*
  %5950 = load i64, i64* %PC.i226
  %5951 = add i64 %5950, 5
  store i64 %5951, i64* %PC.i226
  store i64 1, i64* %RAX.i227, align 8
  store %struct.Memory* %loadMem_4790d9, %struct.Memory** %MEMORY
  %loadMem_4790de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 33
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %5954 to i64*
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 1
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %5957 to i32*
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 15
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %5960 to i64*
  %5961 = load i64, i64* %RBP.i225
  %5962 = sub i64 %5961, 96
  %5963 = load i32, i32* %EAX.i224
  %5964 = zext i32 %5963 to i64
  %5965 = load i64, i64* %PC.i223
  %5966 = add i64 %5965, 3
  store i64 %5966, i64* %PC.i223
  %5967 = inttoptr i64 %5962 to i32*
  store i32 %5963, i32* %5967
  store %struct.Memory* %loadMem_4790de, %struct.Memory** %MEMORY
  %loadMem_4790e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 33
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %5970 to i64*
  %5971 = load i64, i64* %PC.i222
  %5972 = add i64 %5971, 5
  %5973 = load i64, i64* %PC.i222
  %5974 = add i64 %5973, 5
  store i64 %5974, i64* %PC.i222
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5972, i64* %5975, align 8
  store %struct.Memory* %loadMem_4790e1, %struct.Memory** %MEMORY
  br label %block_.L_4790e6

block_.L_4790e6:                                  ; preds = %block_.L_4790d9, %block_4790c8
  %loadMem_4790e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 1
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 15
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %5984 to i64*
  %5985 = load i64, i64* %RBP.i221
  %5986 = sub i64 %5985, 96
  %5987 = load i64, i64* %PC.i219
  %5988 = add i64 %5987, 3
  store i64 %5988, i64* %PC.i219
  %5989 = inttoptr i64 %5986 to i32*
  %5990 = load i32, i32* %5989
  %5991 = zext i32 %5990 to i64
  store i64 %5991, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_4790e6, %struct.Memory** %MEMORY
  %loadMem_4790e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5993 = getelementptr inbounds %struct.GPR, %struct.GPR* %5992, i32 0, i32 33
  %5994 = getelementptr inbounds %struct.Reg, %struct.Reg* %5993, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5994 to i64*
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 1
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %EAX.i218 = bitcast %union.anon* %5997 to i32*
  %5998 = load i32, i32* %EAX.i218
  %5999 = zext i32 %5998 to i64
  %6000 = load i64, i64* %PC.i217
  %6001 = add i64 %6000, 7
  store i64 %6001, i64* %PC.i217
  store i32 %5998, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  store %struct.Memory* %loadMem_4790e9, %struct.Memory** %MEMORY
  %loadMem_4790f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6003 = getelementptr inbounds %struct.GPR, %struct.GPR* %6002, i32 0, i32 33
  %6004 = getelementptr inbounds %struct.Reg, %struct.Reg* %6003, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6004 to i64*
  %6005 = load i64, i64* %PC.i216
  %6006 = add i64 %6005, 98
  %6007 = load i64, i64* %PC.i216
  %6008 = add i64 %6007, 5
  store i64 %6008, i64* %PC.i216
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6006, i64* %6009, align 8
  store %struct.Memory* %loadMem_4790f0, %struct.Memory** %MEMORY
  br label %block_.L_479152

block_.L_4790f5:                                  ; preds = %block_.L_4790a8
  %loadMem_4790f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 33
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6012 to i64*
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 15
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %6015 to i64*
  %6016 = load i64, i64* %RBP.i215
  %6017 = sub i64 %6016, 4
  %6018 = load i64, i64* %PC.i214
  %6019 = add i64 %6018, 4
  store i64 %6019, i64* %PC.i214
  %6020 = inttoptr i64 %6017 to i32*
  %6021 = load i32, i32* %6020
  %6022 = sub i32 %6021, 7
  %6023 = icmp ult i32 %6021, 7
  %6024 = zext i1 %6023 to i8
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6024, i8* %6025, align 1
  %6026 = and i32 %6022, 255
  %6027 = call i32 @llvm.ctpop.i32(i32 %6026)
  %6028 = trunc i32 %6027 to i8
  %6029 = and i8 %6028, 1
  %6030 = xor i8 %6029, 1
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6030, i8* %6031, align 1
  %6032 = xor i32 %6021, 7
  %6033 = xor i32 %6032, %6022
  %6034 = lshr i32 %6033, 4
  %6035 = trunc i32 %6034 to i8
  %6036 = and i8 %6035, 1
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6036, i8* %6037, align 1
  %6038 = icmp eq i32 %6022, 0
  %6039 = zext i1 %6038 to i8
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6039, i8* %6040, align 1
  %6041 = lshr i32 %6022, 31
  %6042 = trunc i32 %6041 to i8
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6042, i8* %6043, align 1
  %6044 = lshr i32 %6021, 31
  %6045 = xor i32 %6041, %6044
  %6046 = add i32 %6045, %6044
  %6047 = icmp eq i32 %6046, 2
  %6048 = zext i1 %6047 to i8
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6048, i8* %6049, align 1
  store %struct.Memory* %loadMem_4790f5, %struct.Memory** %MEMORY
  %loadMem_4790f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 33
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6052 to i64*
  %6053 = load i64, i64* %PC.i213
  %6054 = add i64 %6053, 22
  %6055 = load i64, i64* %PC.i213
  %6056 = add i64 %6055, 6
  %6057 = load i64, i64* %PC.i213
  %6058 = add i64 %6057, 6
  store i64 %6058, i64* %PC.i213
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6060 = load i8, i8* %6059, align 1
  %6061 = icmp ne i8 %6060, 0
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6063 = load i8, i8* %6062, align 1
  %6064 = icmp ne i8 %6063, 0
  %6065 = xor i1 %6061, %6064
  %6066 = zext i1 %6065 to i8
  store i8 %6066, i8* %BRANCH_TAKEN, align 1
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6068 = select i1 %6065, i64 %6054, i64 %6056
  store i64 %6068, i64* %6067, align 8
  store %struct.Memory* %loadMem_4790f9, %struct.Memory** %MEMORY
  %loadBr_4790f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4790f9 = icmp eq i8 %loadBr_4790f9, 1
  br i1 %cmpBr_4790f9, label %block_.L_47910f, label %block_4790ff

block_4790ff:                                     ; preds = %block_.L_4790f5
  %loadMem_4790ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6070 = getelementptr inbounds %struct.GPR, %struct.GPR* %6069, i32 0, i32 33
  %6071 = getelementptr inbounds %struct.Reg, %struct.Reg* %6070, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %6071 to i64*
  %6072 = load i64, i64* %PC.i212
  %6073 = add i64 %6072, 11
  store i64 %6073, i64* %PC.i212
  store i32 7, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  store %struct.Memory* %loadMem_4790ff, %struct.Memory** %MEMORY
  %loadMem_47910a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 33
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %6076 to i64*
  %6077 = load i64, i64* %PC.i211
  %6078 = add i64 %6077, 67
  %6079 = load i64, i64* %PC.i211
  %6080 = add i64 %6079, 5
  store i64 %6080, i64* %PC.i211
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6078, i64* %6081, align 8
  store %struct.Memory* %loadMem_47910a, %struct.Memory** %MEMORY
  br label %block_.L_47914d

block_.L_47910f:                                  ; preds = %block_.L_4790f5
  %loadMem_47910f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %6084 to i64*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 1
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %6087 to i64*
  %6088 = load i64, i64* %PC.i209
  %6089 = add i64 %6088, 5
  store i64 %6089, i64* %PC.i209
  store i64 1, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_47910f, %struct.Memory** %MEMORY
  %loadMem_479114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6091 = getelementptr inbounds %struct.GPR, %struct.GPR* %6090, i32 0, i32 33
  %6092 = getelementptr inbounds %struct.Reg, %struct.Reg* %6091, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %6092 to i64*
  %6093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6094 = getelementptr inbounds %struct.GPR, %struct.GPR* %6093, i32 0, i32 5
  %6095 = getelementptr inbounds %struct.Reg, %struct.Reg* %6094, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %6095 to i64*
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 15
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %6098 to i64*
  %6099 = load i64, i64* %RBP.i208
  %6100 = sub i64 %6099, 4
  %6101 = load i64, i64* %PC.i206
  %6102 = add i64 %6101, 3
  store i64 %6102, i64* %PC.i206
  %6103 = inttoptr i64 %6100 to i32*
  %6104 = load i32, i32* %6103
  %6105 = zext i32 %6104 to i64
  store i64 %6105, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_479114, %struct.Memory** %MEMORY
  %loadMem_479117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6107 = getelementptr inbounds %struct.GPR, %struct.GPR* %6106, i32 0, i32 33
  %6108 = getelementptr inbounds %struct.Reg, %struct.Reg* %6107, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %6108 to i64*
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 5
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %RCX.i205 = bitcast %union.anon* %6111 to i64*
  %6112 = load i64, i64* %RCX.i205
  %6113 = load i64, i64* %PC.i204
  %6114 = add i64 %6113, 3
  store i64 %6114, i64* %PC.i204
  %6115 = trunc i64 %6112 to i32
  %6116 = sub i32 %6115, 7
  %6117 = zext i32 %6116 to i64
  store i64 %6117, i64* %RCX.i205, align 8
  %6118 = icmp ult i32 %6115, 7
  %6119 = zext i1 %6118 to i8
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6119, i8* %6120, align 1
  %6121 = and i32 %6116, 255
  %6122 = call i32 @llvm.ctpop.i32(i32 %6121)
  %6123 = trunc i32 %6122 to i8
  %6124 = and i8 %6123, 1
  %6125 = xor i8 %6124, 1
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6125, i8* %6126, align 1
  %6127 = xor i64 7, %6112
  %6128 = trunc i64 %6127 to i32
  %6129 = xor i32 %6128, %6116
  %6130 = lshr i32 %6129, 4
  %6131 = trunc i32 %6130 to i8
  %6132 = and i8 %6131, 1
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6132, i8* %6133, align 1
  %6134 = icmp eq i32 %6116, 0
  %6135 = zext i1 %6134 to i8
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6135, i8* %6136, align 1
  %6137 = lshr i32 %6116, 31
  %6138 = trunc i32 %6137 to i8
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6138, i8* %6139, align 1
  %6140 = lshr i32 %6115, 31
  %6141 = xor i32 %6137, %6140
  %6142 = add i32 %6141, %6140
  %6143 = icmp eq i32 %6142, 2
  %6144 = zext i1 %6143 to i8
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6144, i8* %6145, align 1
  store %struct.Memory* %loadMem_479117, %struct.Memory** %MEMORY
  %loadMem_47911a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 33
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6148 to i64*
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6150 = getelementptr inbounds %struct.GPR, %struct.GPR* %6149, i32 0, i32 5
  %6151 = getelementptr inbounds %struct.Reg, %struct.Reg* %6150, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %6151 to i64*
  %6152 = load i64, i64* %RCX.i203
  %6153 = load i64, i64* %PC.i202
  %6154 = add i64 %6153, 3
  store i64 %6154, i64* %PC.i202
  %6155 = trunc i64 %6152 to i32
  %6156 = add i32 7, %6155
  %6157 = zext i32 %6156 to i64
  store i64 %6157, i64* %RCX.i203, align 8
  %6158 = icmp ult i32 %6156, %6155
  %6159 = icmp ult i32 %6156, 7
  %6160 = or i1 %6158, %6159
  %6161 = zext i1 %6160 to i8
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6161, i8* %6162, align 1
  %6163 = and i32 %6156, 255
  %6164 = call i32 @llvm.ctpop.i32(i32 %6163)
  %6165 = trunc i32 %6164 to i8
  %6166 = and i8 %6165, 1
  %6167 = xor i8 %6166, 1
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6167, i8* %6168, align 1
  %6169 = xor i64 7, %6152
  %6170 = trunc i64 %6169 to i32
  %6171 = xor i32 %6170, %6156
  %6172 = lshr i32 %6171, 4
  %6173 = trunc i32 %6172 to i8
  %6174 = and i8 %6173, 1
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6174, i8* %6175, align 1
  %6176 = icmp eq i32 %6156, 0
  %6177 = zext i1 %6176 to i8
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6177, i8* %6178, align 1
  %6179 = lshr i32 %6156, 31
  %6180 = trunc i32 %6179 to i8
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6180, i8* %6181, align 1
  %6182 = lshr i32 %6155, 31
  %6183 = xor i32 %6179, %6182
  %6184 = add i32 %6183, %6179
  %6185 = icmp eq i32 %6184, 2
  %6186 = zext i1 %6185 to i8
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6186, i8* %6187, align 1
  store %struct.Memory* %loadMem_47911a, %struct.Memory** %MEMORY
  %loadMem_47911d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 33
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6190 to i64*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 1
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %EAX.i200 = bitcast %union.anon* %6193 to i32*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 5
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %ECX.i201 = bitcast %union.anon* %6196 to i32*
  %6197 = load i32, i32* %EAX.i200
  %6198 = zext i32 %6197 to i64
  %6199 = load i32, i32* %ECX.i201
  %6200 = zext i32 %6199 to i64
  %6201 = load i64, i64* %PC.i199
  %6202 = add i64 %6201, 2
  store i64 %6202, i64* %PC.i199
  %6203 = sub i32 %6197, %6199
  %6204 = icmp ult i32 %6197, %6199
  %6205 = zext i1 %6204 to i8
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6205, i8* %6206, align 1
  %6207 = and i32 %6203, 255
  %6208 = call i32 @llvm.ctpop.i32(i32 %6207)
  %6209 = trunc i32 %6208 to i8
  %6210 = and i8 %6209, 1
  %6211 = xor i8 %6210, 1
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6211, i8* %6212, align 1
  %6213 = xor i64 %6200, %6198
  %6214 = trunc i64 %6213 to i32
  %6215 = xor i32 %6214, %6203
  %6216 = lshr i32 %6215, 4
  %6217 = trunc i32 %6216 to i8
  %6218 = and i8 %6217, 1
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6218, i8* %6219, align 1
  %6220 = icmp eq i32 %6203, 0
  %6221 = zext i1 %6220 to i8
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6221, i8* %6222, align 1
  %6223 = lshr i32 %6203, 31
  %6224 = trunc i32 %6223 to i8
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6224, i8* %6225, align 1
  %6226 = lshr i32 %6197, 31
  %6227 = lshr i32 %6199, 31
  %6228 = xor i32 %6227, %6226
  %6229 = xor i32 %6223, %6226
  %6230 = add i32 %6229, %6228
  %6231 = icmp eq i32 %6230, 2
  %6232 = zext i1 %6231 to i8
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6232, i8* %6233, align 1
  store %struct.Memory* %loadMem_47911d, %struct.Memory** %MEMORY
  %loadMem_47911f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 33
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %6236 to i64*
  %6237 = load i64, i64* %PC.i198
  %6238 = add i64 %6237, 23
  %6239 = load i64, i64* %PC.i198
  %6240 = add i64 %6239, 6
  %6241 = load i64, i64* %PC.i198
  %6242 = add i64 %6241, 6
  store i64 %6242, i64* %PC.i198
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6244 = load i8, i8* %6243, align 1
  %6245 = icmp ne i8 %6244, 0
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6247 = load i8, i8* %6246, align 1
  %6248 = icmp ne i8 %6247, 0
  %6249 = xor i1 %6245, %6248
  %6250 = xor i1 %6249, true
  %6251 = zext i1 %6250 to i8
  store i8 %6251, i8* %BRANCH_TAKEN, align 1
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6253 = select i1 %6249, i64 %6240, i64 %6238
  store i64 %6253, i64* %6252, align 8
  store %struct.Memory* %loadMem_47911f, %struct.Memory** %MEMORY
  %loadBr_47911f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47911f = icmp eq i8 %loadBr_47911f, 1
  br i1 %cmpBr_47911f, label %block_.L_479136, label %block_479125

block_479125:                                     ; preds = %block_.L_47910f
  %loadMem_479125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6255 = getelementptr inbounds %struct.GPR, %struct.GPR* %6254, i32 0, i32 33
  %6256 = getelementptr inbounds %struct.Reg, %struct.Reg* %6255, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %6256 to i64*
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6258 = getelementptr inbounds %struct.GPR, %struct.GPR* %6257, i32 0, i32 1
  %6259 = getelementptr inbounds %struct.Reg, %struct.Reg* %6258, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %6259 to i64*
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 15
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %6262 to i64*
  %6263 = load i64, i64* %RBP.i197
  %6264 = sub i64 %6263, 4
  %6265 = load i64, i64* %PC.i195
  %6266 = add i64 %6265, 3
  store i64 %6266, i64* %PC.i195
  %6267 = inttoptr i64 %6264 to i32*
  %6268 = load i32, i32* %6267
  %6269 = zext i32 %6268 to i64
  store i64 %6269, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_479125, %struct.Memory** %MEMORY
  %loadMem_479128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 33
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6272 to i64*
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 1
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %6275 to i64*
  %6276 = load i64, i64* %RAX.i194
  %6277 = load i64, i64* %PC.i193
  %6278 = add i64 %6277, 3
  store i64 %6278, i64* %PC.i193
  %6279 = trunc i64 %6276 to i32
  %6280 = sub i32 %6279, 7
  %6281 = zext i32 %6280 to i64
  store i64 %6281, i64* %RAX.i194, align 8
  %6282 = icmp ult i32 %6279, 7
  %6283 = zext i1 %6282 to i8
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6283, i8* %6284, align 1
  %6285 = and i32 %6280, 255
  %6286 = call i32 @llvm.ctpop.i32(i32 %6285)
  %6287 = trunc i32 %6286 to i8
  %6288 = and i8 %6287, 1
  %6289 = xor i8 %6288, 1
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6289, i8* %6290, align 1
  %6291 = xor i64 7, %6276
  %6292 = trunc i64 %6291 to i32
  %6293 = xor i32 %6292, %6280
  %6294 = lshr i32 %6293, 4
  %6295 = trunc i32 %6294 to i8
  %6296 = and i8 %6295, 1
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6296, i8* %6297, align 1
  %6298 = icmp eq i32 %6280, 0
  %6299 = zext i1 %6298 to i8
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6299, i8* %6300, align 1
  %6301 = lshr i32 %6280, 31
  %6302 = trunc i32 %6301 to i8
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6302, i8* %6303, align 1
  %6304 = lshr i32 %6279, 31
  %6305 = xor i32 %6301, %6304
  %6306 = add i32 %6305, %6304
  %6307 = icmp eq i32 %6306, 2
  %6308 = zext i1 %6307 to i8
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6308, i8* %6309, align 1
  store %struct.Memory* %loadMem_479128, %struct.Memory** %MEMORY
  %loadMem_47912b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6311 = getelementptr inbounds %struct.GPR, %struct.GPR* %6310, i32 0, i32 33
  %6312 = getelementptr inbounds %struct.Reg, %struct.Reg* %6311, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6312 to i64*
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6314 = getelementptr inbounds %struct.GPR, %struct.GPR* %6313, i32 0, i32 1
  %6315 = getelementptr inbounds %struct.Reg, %struct.Reg* %6314, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %6315 to i64*
  %6316 = load i64, i64* %RAX.i192
  %6317 = load i64, i64* %PC.i191
  %6318 = add i64 %6317, 3
  store i64 %6318, i64* %PC.i191
  %6319 = trunc i64 %6316 to i32
  %6320 = add i32 7, %6319
  %6321 = zext i32 %6320 to i64
  store i64 %6321, i64* %RAX.i192, align 8
  %6322 = icmp ult i32 %6320, %6319
  %6323 = icmp ult i32 %6320, 7
  %6324 = or i1 %6322, %6323
  %6325 = zext i1 %6324 to i8
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6325, i8* %6326, align 1
  %6327 = and i32 %6320, 255
  %6328 = call i32 @llvm.ctpop.i32(i32 %6327)
  %6329 = trunc i32 %6328 to i8
  %6330 = and i8 %6329, 1
  %6331 = xor i8 %6330, 1
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6331, i8* %6332, align 1
  %6333 = xor i64 7, %6316
  %6334 = trunc i64 %6333 to i32
  %6335 = xor i32 %6334, %6320
  %6336 = lshr i32 %6335, 4
  %6337 = trunc i32 %6336 to i8
  %6338 = and i8 %6337, 1
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6338, i8* %6339, align 1
  %6340 = icmp eq i32 %6320, 0
  %6341 = zext i1 %6340 to i8
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6341, i8* %6342, align 1
  %6343 = lshr i32 %6320, 31
  %6344 = trunc i32 %6343 to i8
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6344, i8* %6345, align 1
  %6346 = lshr i32 %6319, 31
  %6347 = xor i32 %6343, %6346
  %6348 = add i32 %6347, %6343
  %6349 = icmp eq i32 %6348, 2
  %6350 = zext i1 %6349 to i8
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6350, i8* %6351, align 1
  store %struct.Memory* %loadMem_47912b, %struct.Memory** %MEMORY
  %loadMem_47912e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6353 = getelementptr inbounds %struct.GPR, %struct.GPR* %6352, i32 0, i32 33
  %6354 = getelementptr inbounds %struct.Reg, %struct.Reg* %6353, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6354 to i64*
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 1
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %EAX.i189 = bitcast %union.anon* %6357 to i32*
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6359 = getelementptr inbounds %struct.GPR, %struct.GPR* %6358, i32 0, i32 15
  %6360 = getelementptr inbounds %struct.Reg, %struct.Reg* %6359, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %6360 to i64*
  %6361 = load i64, i64* %RBP.i190
  %6362 = sub i64 %6361, 100
  %6363 = load i32, i32* %EAX.i189
  %6364 = zext i32 %6363 to i64
  %6365 = load i64, i64* %PC.i188
  %6366 = add i64 %6365, 3
  store i64 %6366, i64* %PC.i188
  %6367 = inttoptr i64 %6362 to i32*
  store i32 %6363, i32* %6367
  store %struct.Memory* %loadMem_47912e, %struct.Memory** %MEMORY
  %loadMem_479131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6369 = getelementptr inbounds %struct.GPR, %struct.GPR* %6368, i32 0, i32 33
  %6370 = getelementptr inbounds %struct.Reg, %struct.Reg* %6369, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6370 to i64*
  %6371 = load i64, i64* %PC.i187
  %6372 = add i64 %6371, 18
  %6373 = load i64, i64* %PC.i187
  %6374 = add i64 %6373, 5
  store i64 %6374, i64* %PC.i187
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6372, i64* %6375, align 8
  store %struct.Memory* %loadMem_479131, %struct.Memory** %MEMORY
  br label %block_.L_479143

block_.L_479136:                                  ; preds = %block_.L_47910f
  %loadMem_479136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6377 = getelementptr inbounds %struct.GPR, %struct.GPR* %6376, i32 0, i32 33
  %6378 = getelementptr inbounds %struct.Reg, %struct.Reg* %6377, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %6378 to i64*
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6380 = getelementptr inbounds %struct.GPR, %struct.GPR* %6379, i32 0, i32 1
  %6381 = getelementptr inbounds %struct.Reg, %struct.Reg* %6380, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %6381 to i64*
  %6382 = load i64, i64* %PC.i185
  %6383 = add i64 %6382, 5
  store i64 %6383, i64* %PC.i185
  store i64 1, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_479136, %struct.Memory** %MEMORY
  %loadMem_47913b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 33
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %6386 to i64*
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6388 = getelementptr inbounds %struct.GPR, %struct.GPR* %6387, i32 0, i32 1
  %6389 = getelementptr inbounds %struct.Reg, %struct.Reg* %6388, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %6389 to i32*
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6391 = getelementptr inbounds %struct.GPR, %struct.GPR* %6390, i32 0, i32 15
  %6392 = getelementptr inbounds %struct.Reg, %struct.Reg* %6391, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %6392 to i64*
  %6393 = load i64, i64* %RBP.i184
  %6394 = sub i64 %6393, 100
  %6395 = load i32, i32* %EAX.i183
  %6396 = zext i32 %6395 to i64
  %6397 = load i64, i64* %PC.i182
  %6398 = add i64 %6397, 3
  store i64 %6398, i64* %PC.i182
  %6399 = inttoptr i64 %6394 to i32*
  store i32 %6395, i32* %6399
  store %struct.Memory* %loadMem_47913b, %struct.Memory** %MEMORY
  %loadMem_47913e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 33
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6402 to i64*
  %6403 = load i64, i64* %PC.i181
  %6404 = add i64 %6403, 5
  %6405 = load i64, i64* %PC.i181
  %6406 = add i64 %6405, 5
  store i64 %6406, i64* %PC.i181
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6404, i64* %6407, align 8
  store %struct.Memory* %loadMem_47913e, %struct.Memory** %MEMORY
  br label %block_.L_479143

block_.L_479143:                                  ; preds = %block_.L_479136, %block_479125
  %loadMem_479143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 33
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6410 to i64*
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6412 = getelementptr inbounds %struct.GPR, %struct.GPR* %6411, i32 0, i32 1
  %6413 = getelementptr inbounds %struct.Reg, %struct.Reg* %6412, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %6413 to i64*
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6415 = getelementptr inbounds %struct.GPR, %struct.GPR* %6414, i32 0, i32 15
  %6416 = getelementptr inbounds %struct.Reg, %struct.Reg* %6415, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %6416 to i64*
  %6417 = load i64, i64* %RBP.i180
  %6418 = sub i64 %6417, 100
  %6419 = load i64, i64* %PC.i178
  %6420 = add i64 %6419, 3
  store i64 %6420, i64* %PC.i178
  %6421 = inttoptr i64 %6418 to i32*
  %6422 = load i32, i32* %6421
  %6423 = zext i32 %6422 to i64
  store i64 %6423, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_479143, %struct.Memory** %MEMORY
  %loadMem_479146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 33
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6426 to i64*
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6428 = getelementptr inbounds %struct.GPR, %struct.GPR* %6427, i32 0, i32 1
  %6429 = getelementptr inbounds %struct.Reg, %struct.Reg* %6428, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %6429 to i32*
  %6430 = load i32, i32* %EAX.i177
  %6431 = zext i32 %6430 to i64
  %6432 = load i64, i64* %PC.i176
  %6433 = add i64 %6432, 7
  store i64 %6433, i64* %PC.i176
  store i32 %6430, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  store %struct.Memory* %loadMem_479146, %struct.Memory** %MEMORY
  br label %block_.L_47914d

block_.L_47914d:                                  ; preds = %block_.L_479143, %block_4790ff
  %loadMem_47914d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 33
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6436 to i64*
  %6437 = load i64, i64* %PC.i175
  %6438 = add i64 %6437, 5
  %6439 = load i64, i64* %PC.i175
  %6440 = add i64 %6439, 5
  store i64 %6440, i64* %PC.i175
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6438, i64* %6441, align 8
  store %struct.Memory* %loadMem_47914d, %struct.Memory** %MEMORY
  br label %block_.L_479152

block_.L_479152:                                  ; preds = %block_.L_47914d, %block_.L_4790e6
  %loadMem_479152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 33
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6444 to i64*
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 15
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %6447 to i64*
  %6448 = load i64, i64* %RBP.i174
  %6449 = sub i64 %6448, 4
  %6450 = load i64, i64* %PC.i173
  %6451 = add i64 %6450, 4
  store i64 %6451, i64* %PC.i173
  %6452 = inttoptr i64 %6449 to i32*
  %6453 = load i32, i32* %6452
  %6454 = sub i32 %6453, 10
  %6455 = icmp ult i32 %6453, 10
  %6456 = zext i1 %6455 to i8
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6456, i8* %6457, align 1
  %6458 = and i32 %6454, 255
  %6459 = call i32 @llvm.ctpop.i32(i32 %6458)
  %6460 = trunc i32 %6459 to i8
  %6461 = and i8 %6460, 1
  %6462 = xor i8 %6461, 1
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6462, i8* %6463, align 1
  %6464 = xor i32 %6453, 10
  %6465 = xor i32 %6464, %6454
  %6466 = lshr i32 %6465, 4
  %6467 = trunc i32 %6466 to i8
  %6468 = and i8 %6467, 1
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6468, i8* %6469, align 1
  %6470 = icmp eq i32 %6454, 0
  %6471 = zext i1 %6470 to i8
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6471, i8* %6472, align 1
  %6473 = lshr i32 %6454, 31
  %6474 = trunc i32 %6473 to i8
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6474, i8* %6475, align 1
  %6476 = lshr i32 %6453, 31
  %6477 = xor i32 %6473, %6476
  %6478 = add i32 %6477, %6476
  %6479 = icmp eq i32 %6478, 2
  %6480 = zext i1 %6479 to i8
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6480, i8* %6481, align 1
  store %struct.Memory* %loadMem_479152, %struct.Memory** %MEMORY
  %loadMem_479156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 33
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6484 to i64*
  %6485 = load i64, i64* %PC.i172
  %6486 = add i64 %6485, 114
  %6487 = load i64, i64* %PC.i172
  %6488 = add i64 %6487, 6
  %6489 = load i64, i64* %PC.i172
  %6490 = add i64 %6489, 6
  store i64 %6490, i64* %PC.i172
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6492 = load i8, i8* %6491, align 1
  %6493 = icmp ne i8 %6492, 0
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6495 = load i8, i8* %6494, align 1
  %6496 = icmp ne i8 %6495, 0
  %6497 = xor i1 %6493, %6496
  %6498 = zext i1 %6497 to i8
  store i8 %6498, i8* %BRANCH_TAKEN, align 1
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6500 = select i1 %6497, i64 %6486, i64 %6488
  store i64 %6500, i64* %6499, align 8
  store %struct.Memory* %loadMem_479156, %struct.Memory** %MEMORY
  %loadBr_479156 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479156 = icmp eq i8 %loadBr_479156, 1
  br i1 %cmpBr_479156, label %block_.L_4791c8, label %block_47915c

block_47915c:                                     ; preds = %block_.L_479152
  %loadMem_47915c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6502 = getelementptr inbounds %struct.GPR, %struct.GPR* %6501, i32 0, i32 33
  %6503 = getelementptr inbounds %struct.Reg, %struct.Reg* %6502, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6503 to i64*
  %6504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6505 = getelementptr inbounds %struct.GPR, %struct.GPR* %6504, i32 0, i32 1
  %6506 = getelementptr inbounds %struct.Reg, %struct.Reg* %6505, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %6506 to i64*
  %6507 = load i64, i64* %PC.i170
  %6508 = add i64 %6507, 5
  store i64 %6508, i64* %PC.i170
  store i64 1, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_47915c, %struct.Memory** %MEMORY
  %loadMem_479161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 33
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6511 to i64*
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6513 = getelementptr inbounds %struct.GPR, %struct.GPR* %6512, i32 0, i32 5
  %6514 = getelementptr inbounds %struct.Reg, %struct.Reg* %6513, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %6514 to i64*
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6516 = getelementptr inbounds %struct.GPR, %struct.GPR* %6515, i32 0, i32 15
  %6517 = getelementptr inbounds %struct.Reg, %struct.Reg* %6516, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %6517 to i64*
  %6518 = load i64, i64* %RBP.i169
  %6519 = sub i64 %6518, 4
  %6520 = load i64, i64* %PC.i167
  %6521 = add i64 %6520, 3
  store i64 %6521, i64* %PC.i167
  %6522 = inttoptr i64 %6519 to i32*
  %6523 = load i32, i32* %6522
  %6524 = zext i32 %6523 to i64
  store i64 %6524, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_479161, %struct.Memory** %MEMORY
  %loadMem_479164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6526 = getelementptr inbounds %struct.GPR, %struct.GPR* %6525, i32 0, i32 33
  %6527 = getelementptr inbounds %struct.Reg, %struct.Reg* %6526, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6527 to i64*
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6529 = getelementptr inbounds %struct.GPR, %struct.GPR* %6528, i32 0, i32 5
  %6530 = getelementptr inbounds %struct.Reg, %struct.Reg* %6529, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %6530 to i64*
  %6531 = load i64, i64* %RCX.i166
  %6532 = load i64, i64* %PC.i165
  %6533 = add i64 %6532, 3
  store i64 %6533, i64* %PC.i165
  %6534 = trunc i64 %6531 to i32
  %6535 = sub i32 %6534, 10
  %6536 = zext i32 %6535 to i64
  store i64 %6536, i64* %RCX.i166, align 8
  %6537 = icmp ult i32 %6534, 10
  %6538 = zext i1 %6537 to i8
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6538, i8* %6539, align 1
  %6540 = and i32 %6535, 255
  %6541 = call i32 @llvm.ctpop.i32(i32 %6540)
  %6542 = trunc i32 %6541 to i8
  %6543 = and i8 %6542, 1
  %6544 = xor i8 %6543, 1
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6544, i8* %6545, align 1
  %6546 = xor i64 10, %6531
  %6547 = trunc i64 %6546 to i32
  %6548 = xor i32 %6547, %6535
  %6549 = lshr i32 %6548, 4
  %6550 = trunc i32 %6549 to i8
  %6551 = and i8 %6550, 1
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6551, i8* %6552, align 1
  %6553 = icmp eq i32 %6535, 0
  %6554 = zext i1 %6553 to i8
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6554, i8* %6555, align 1
  %6556 = lshr i32 %6535, 31
  %6557 = trunc i32 %6556 to i8
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6557, i8* %6558, align 1
  %6559 = lshr i32 %6534, 31
  %6560 = xor i32 %6556, %6559
  %6561 = add i32 %6560, %6559
  %6562 = icmp eq i32 %6561, 2
  %6563 = zext i1 %6562 to i8
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6563, i8* %6564, align 1
  store %struct.Memory* %loadMem_479164, %struct.Memory** %MEMORY
  %loadMem_479167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6566 = getelementptr inbounds %struct.GPR, %struct.GPR* %6565, i32 0, i32 33
  %6567 = getelementptr inbounds %struct.Reg, %struct.Reg* %6566, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %6567 to i64*
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6569 = getelementptr inbounds %struct.GPR, %struct.GPR* %6568, i32 0, i32 5
  %6570 = getelementptr inbounds %struct.Reg, %struct.Reg* %6569, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %6570 to i64*
  %6571 = load i64, i64* %RCX.i164
  %6572 = load i64, i64* %PC.i163
  %6573 = add i64 %6572, 3
  store i64 %6573, i64* %PC.i163
  %6574 = trunc i64 %6571 to i32
  %6575 = add i32 7, %6574
  %6576 = zext i32 %6575 to i64
  store i64 %6576, i64* %RCX.i164, align 8
  %6577 = icmp ult i32 %6575, %6574
  %6578 = icmp ult i32 %6575, 7
  %6579 = or i1 %6577, %6578
  %6580 = zext i1 %6579 to i8
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6580, i8* %6581, align 1
  %6582 = and i32 %6575, 255
  %6583 = call i32 @llvm.ctpop.i32(i32 %6582)
  %6584 = trunc i32 %6583 to i8
  %6585 = and i8 %6584, 1
  %6586 = xor i8 %6585, 1
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6586, i8* %6587, align 1
  %6588 = xor i64 7, %6571
  %6589 = trunc i64 %6588 to i32
  %6590 = xor i32 %6589, %6575
  %6591 = lshr i32 %6590, 4
  %6592 = trunc i32 %6591 to i8
  %6593 = and i8 %6592, 1
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6593, i8* %6594, align 1
  %6595 = icmp eq i32 %6575, 0
  %6596 = zext i1 %6595 to i8
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6596, i8* %6597, align 1
  %6598 = lshr i32 %6575, 31
  %6599 = trunc i32 %6598 to i8
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6599, i8* %6600, align 1
  %6601 = lshr i32 %6574, 31
  %6602 = xor i32 %6598, %6601
  %6603 = add i32 %6602, %6598
  %6604 = icmp eq i32 %6603, 2
  %6605 = zext i1 %6604 to i8
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6605, i8* %6606, align 1
  store %struct.Memory* %loadMem_479167, %struct.Memory** %MEMORY
  %loadMem_47916a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 33
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 1
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %6612 to i32*
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 5
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %ECX.i162 = bitcast %union.anon* %6615 to i32*
  %6616 = load i32, i32* %EAX.i161
  %6617 = zext i32 %6616 to i64
  %6618 = load i32, i32* %ECX.i162
  %6619 = zext i32 %6618 to i64
  %6620 = load i64, i64* %PC.i160
  %6621 = add i64 %6620, 2
  store i64 %6621, i64* %PC.i160
  %6622 = sub i32 %6616, %6618
  %6623 = icmp ult i32 %6616, %6618
  %6624 = zext i1 %6623 to i8
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6624, i8* %6625, align 1
  %6626 = and i32 %6622, 255
  %6627 = call i32 @llvm.ctpop.i32(i32 %6626)
  %6628 = trunc i32 %6627 to i8
  %6629 = and i8 %6628, 1
  %6630 = xor i8 %6629, 1
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6630, i8* %6631, align 1
  %6632 = xor i64 %6619, %6617
  %6633 = trunc i64 %6632 to i32
  %6634 = xor i32 %6633, %6622
  %6635 = lshr i32 %6634, 4
  %6636 = trunc i32 %6635 to i8
  %6637 = and i8 %6636, 1
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6637, i8* %6638, align 1
  %6639 = icmp eq i32 %6622, 0
  %6640 = zext i1 %6639 to i8
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6640, i8* %6641, align 1
  %6642 = lshr i32 %6622, 31
  %6643 = trunc i32 %6642 to i8
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6643, i8* %6644, align 1
  %6645 = lshr i32 %6616, 31
  %6646 = lshr i32 %6618, 31
  %6647 = xor i32 %6646, %6645
  %6648 = xor i32 %6642, %6645
  %6649 = add i32 %6648, %6647
  %6650 = icmp eq i32 %6649, 2
  %6651 = zext i1 %6650 to i8
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6651, i8* %6652, align 1
  store %struct.Memory* %loadMem_47916a, %struct.Memory** %MEMORY
  %loadMem_47916c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 33
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6655 to i64*
  %6656 = load i64, i64* %PC.i159
  %6657 = add i64 %6656, 23
  %6658 = load i64, i64* %PC.i159
  %6659 = add i64 %6658, 6
  %6660 = load i64, i64* %PC.i159
  %6661 = add i64 %6660, 6
  store i64 %6661, i64* %PC.i159
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6663 = load i8, i8* %6662, align 1
  %6664 = icmp ne i8 %6663, 0
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6666 = load i8, i8* %6665, align 1
  %6667 = icmp ne i8 %6666, 0
  %6668 = xor i1 %6664, %6667
  %6669 = xor i1 %6668, true
  %6670 = zext i1 %6669 to i8
  store i8 %6670, i8* %BRANCH_TAKEN, align 1
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6672 = select i1 %6668, i64 %6659, i64 %6657
  store i64 %6672, i64* %6671, align 8
  store %struct.Memory* %loadMem_47916c, %struct.Memory** %MEMORY
  %loadBr_47916c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47916c = icmp eq i8 %loadBr_47916c, 1
  br i1 %cmpBr_47916c, label %block_.L_479183, label %block_479172

block_479172:                                     ; preds = %block_47915c
  %loadMem_479172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 33
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6675 to i64*
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 1
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %6678 to i64*
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6680 = getelementptr inbounds %struct.GPR, %struct.GPR* %6679, i32 0, i32 15
  %6681 = getelementptr inbounds %struct.Reg, %struct.Reg* %6680, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %6681 to i64*
  %6682 = load i64, i64* %RBP.i158
  %6683 = sub i64 %6682, 4
  %6684 = load i64, i64* %PC.i156
  %6685 = add i64 %6684, 3
  store i64 %6685, i64* %PC.i156
  %6686 = inttoptr i64 %6683 to i32*
  %6687 = load i32, i32* %6686
  %6688 = zext i32 %6687 to i64
  store i64 %6688, i64* %RAX.i157, align 8
  store %struct.Memory* %loadMem_479172, %struct.Memory** %MEMORY
  %loadMem_479175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 33
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6691 to i64*
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 1
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %RAX.i155 = bitcast %union.anon* %6694 to i64*
  %6695 = load i64, i64* %RAX.i155
  %6696 = load i64, i64* %PC.i154
  %6697 = add i64 %6696, 3
  store i64 %6697, i64* %PC.i154
  %6698 = trunc i64 %6695 to i32
  %6699 = sub i32 %6698, 10
  %6700 = zext i32 %6699 to i64
  store i64 %6700, i64* %RAX.i155, align 8
  %6701 = icmp ult i32 %6698, 10
  %6702 = zext i1 %6701 to i8
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6702, i8* %6703, align 1
  %6704 = and i32 %6699, 255
  %6705 = call i32 @llvm.ctpop.i32(i32 %6704)
  %6706 = trunc i32 %6705 to i8
  %6707 = and i8 %6706, 1
  %6708 = xor i8 %6707, 1
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6708, i8* %6709, align 1
  %6710 = xor i64 10, %6695
  %6711 = trunc i64 %6710 to i32
  %6712 = xor i32 %6711, %6699
  %6713 = lshr i32 %6712, 4
  %6714 = trunc i32 %6713 to i8
  %6715 = and i8 %6714, 1
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6715, i8* %6716, align 1
  %6717 = icmp eq i32 %6699, 0
  %6718 = zext i1 %6717 to i8
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6718, i8* %6719, align 1
  %6720 = lshr i32 %6699, 31
  %6721 = trunc i32 %6720 to i8
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6721, i8* %6722, align 1
  %6723 = lshr i32 %6698, 31
  %6724 = xor i32 %6720, %6723
  %6725 = add i32 %6724, %6723
  %6726 = icmp eq i32 %6725, 2
  %6727 = zext i1 %6726 to i8
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6727, i8* %6728, align 1
  store %struct.Memory* %loadMem_479175, %struct.Memory** %MEMORY
  %loadMem_479178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6730 = getelementptr inbounds %struct.GPR, %struct.GPR* %6729, i32 0, i32 33
  %6731 = getelementptr inbounds %struct.Reg, %struct.Reg* %6730, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6731 to i64*
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 1
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %6734 to i64*
  %6735 = load i64, i64* %RAX.i153
  %6736 = load i64, i64* %PC.i152
  %6737 = add i64 %6736, 3
  store i64 %6737, i64* %PC.i152
  %6738 = trunc i64 %6735 to i32
  %6739 = add i32 7, %6738
  %6740 = zext i32 %6739 to i64
  store i64 %6740, i64* %RAX.i153, align 8
  %6741 = icmp ult i32 %6739, %6738
  %6742 = icmp ult i32 %6739, 7
  %6743 = or i1 %6741, %6742
  %6744 = zext i1 %6743 to i8
  %6745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6744, i8* %6745, align 1
  %6746 = and i32 %6739, 255
  %6747 = call i32 @llvm.ctpop.i32(i32 %6746)
  %6748 = trunc i32 %6747 to i8
  %6749 = and i8 %6748, 1
  %6750 = xor i8 %6749, 1
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6750, i8* %6751, align 1
  %6752 = xor i64 7, %6735
  %6753 = trunc i64 %6752 to i32
  %6754 = xor i32 %6753, %6739
  %6755 = lshr i32 %6754, 4
  %6756 = trunc i32 %6755 to i8
  %6757 = and i8 %6756, 1
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6757, i8* %6758, align 1
  %6759 = icmp eq i32 %6739, 0
  %6760 = zext i1 %6759 to i8
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6760, i8* %6761, align 1
  %6762 = lshr i32 %6739, 31
  %6763 = trunc i32 %6762 to i8
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6763, i8* %6764, align 1
  %6765 = lshr i32 %6738, 31
  %6766 = xor i32 %6762, %6765
  %6767 = add i32 %6766, %6762
  %6768 = icmp eq i32 %6767, 2
  %6769 = zext i1 %6768 to i8
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6769, i8* %6770, align 1
  store %struct.Memory* %loadMem_479178, %struct.Memory** %MEMORY
  %loadMem_47917b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6772 = getelementptr inbounds %struct.GPR, %struct.GPR* %6771, i32 0, i32 33
  %6773 = getelementptr inbounds %struct.Reg, %struct.Reg* %6772, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6773 to i64*
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6775 = getelementptr inbounds %struct.GPR, %struct.GPR* %6774, i32 0, i32 1
  %6776 = getelementptr inbounds %struct.Reg, %struct.Reg* %6775, i32 0, i32 0
  %EAX.i150 = bitcast %union.anon* %6776 to i32*
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6778 = getelementptr inbounds %struct.GPR, %struct.GPR* %6777, i32 0, i32 15
  %6779 = getelementptr inbounds %struct.Reg, %struct.Reg* %6778, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %6779 to i64*
  %6780 = load i64, i64* %RBP.i151
  %6781 = sub i64 %6780, 104
  %6782 = load i32, i32* %EAX.i150
  %6783 = zext i32 %6782 to i64
  %6784 = load i64, i64* %PC.i149
  %6785 = add i64 %6784, 3
  store i64 %6785, i64* %PC.i149
  %6786 = inttoptr i64 %6781 to i32*
  store i32 %6782, i32* %6786
  store %struct.Memory* %loadMem_47917b, %struct.Memory** %MEMORY
  %loadMem_47917e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 33
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6789 to i64*
  %6790 = load i64, i64* %PC.i148
  %6791 = add i64 %6790, 18
  %6792 = load i64, i64* %PC.i148
  %6793 = add i64 %6792, 5
  store i64 %6793, i64* %PC.i148
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6791, i64* %6794, align 8
  store %struct.Memory* %loadMem_47917e, %struct.Memory** %MEMORY
  br label %block_.L_479190

block_.L_479183:                                  ; preds = %block_47915c
  %loadMem_479183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6796 = getelementptr inbounds %struct.GPR, %struct.GPR* %6795, i32 0, i32 33
  %6797 = getelementptr inbounds %struct.Reg, %struct.Reg* %6796, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6797 to i64*
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 1
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %6800 to i64*
  %6801 = load i64, i64* %PC.i146
  %6802 = add i64 %6801, 5
  store i64 %6802, i64* %PC.i146
  store i64 1, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_479183, %struct.Memory** %MEMORY
  %loadMem_479188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6804 = getelementptr inbounds %struct.GPR, %struct.GPR* %6803, i32 0, i32 33
  %6805 = getelementptr inbounds %struct.Reg, %struct.Reg* %6804, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6805 to i64*
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 1
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %6808 to i32*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 15
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %6811 to i64*
  %6812 = load i64, i64* %RBP.i145
  %6813 = sub i64 %6812, 104
  %6814 = load i32, i32* %EAX.i144
  %6815 = zext i32 %6814 to i64
  %6816 = load i64, i64* %PC.i143
  %6817 = add i64 %6816, 3
  store i64 %6817, i64* %PC.i143
  %6818 = inttoptr i64 %6813 to i32*
  store i32 %6814, i32* %6818
  store %struct.Memory* %loadMem_479188, %struct.Memory** %MEMORY
  %loadMem_47918b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6820 = getelementptr inbounds %struct.GPR, %struct.GPR* %6819, i32 0, i32 33
  %6821 = getelementptr inbounds %struct.Reg, %struct.Reg* %6820, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6821 to i64*
  %6822 = load i64, i64* %PC.i142
  %6823 = add i64 %6822, 5
  %6824 = load i64, i64* %PC.i142
  %6825 = add i64 %6824, 5
  store i64 %6825, i64* %PC.i142
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6823, i64* %6826, align 8
  store %struct.Memory* %loadMem_47918b, %struct.Memory** %MEMORY
  br label %block_.L_479190

block_.L_479190:                                  ; preds = %block_.L_479183, %block_479172
  %loadMem_479190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6828 = getelementptr inbounds %struct.GPR, %struct.GPR* %6827, i32 0, i32 33
  %6829 = getelementptr inbounds %struct.Reg, %struct.Reg* %6828, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6829 to i64*
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6831 = getelementptr inbounds %struct.GPR, %struct.GPR* %6830, i32 0, i32 1
  %6832 = getelementptr inbounds %struct.Reg, %struct.Reg* %6831, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %6832 to i64*
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6834 = getelementptr inbounds %struct.GPR, %struct.GPR* %6833, i32 0, i32 15
  %6835 = getelementptr inbounds %struct.Reg, %struct.Reg* %6834, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %6835 to i64*
  %6836 = load i64, i64* %RBP.i141
  %6837 = sub i64 %6836, 104
  %6838 = load i64, i64* %PC.i139
  %6839 = add i64 %6838, 3
  store i64 %6839, i64* %PC.i139
  %6840 = inttoptr i64 %6837 to i32*
  %6841 = load i32, i32* %6840
  %6842 = zext i32 %6841 to i64
  store i64 %6842, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_479190, %struct.Memory** %MEMORY
  %loadMem_479193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 33
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6845 to i64*
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6847 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6846, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %6847 to %"class.std::bitset"*
  %6848 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %6849 = load i64, i64* %PC.i138
  %6850 = add i64 %6849, ptrtoint (%G_0x69dbd__rip__type* @G_0x69dbd__rip_ to i64)
  %6851 = load i64, i64* %PC.i138
  %6852 = add i64 %6851, 8
  store i64 %6852, i64* %PC.i138
  %6853 = inttoptr i64 %6850 to double*
  %6854 = load double, double* %6853
  %6855 = bitcast i8* %6848 to double*
  store double %6854, double* %6855, align 1
  %6856 = getelementptr inbounds i8, i8* %6848, i64 8
  %6857 = bitcast i8* %6856 to double*
  store double 0.000000e+00, double* %6857, align 1
  store %struct.Memory* %loadMem_479193, %struct.Memory** %MEMORY
  %loadMem_47919b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 33
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6860 to i64*
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6862 = getelementptr inbounds %struct.GPR, %struct.GPR* %6861, i32 0, i32 1
  %6863 = getelementptr inbounds %struct.Reg, %struct.Reg* %6862, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %6863 to i32*
  %6864 = load i32, i32* %EAX.i137
  %6865 = zext i32 %6864 to i64
  %6866 = load i64, i64* %PC.i136
  %6867 = add i64 %6866, 7
  store i64 %6867, i64* %PC.i136
  store i32 %6864, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*)
  store %struct.Memory* %loadMem_47919b, %struct.Memory** %MEMORY
  %loadMem_4791a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 33
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6870 to i64*
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6872 = getelementptr inbounds %struct.GPR, %struct.GPR* %6871, i32 0, i32 15
  %6873 = getelementptr inbounds %struct.Reg, %struct.Reg* %6872, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6873 to i64*
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6875 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6874, i64 0, i64 1
  %YMM1.i135 = bitcast %union.VectorReg* %6875 to %"class.std::bitset"*
  %6876 = bitcast %"class.std::bitset"* %YMM1.i135 to i8*
  %6877 = load i64, i64* %RBP.i134
  %6878 = sub i64 %6877, 8
  %6879 = load i64, i64* %PC.i133
  %6880 = add i64 %6879, 5
  store i64 %6880, i64* %PC.i133
  %6881 = inttoptr i64 %6878 to i32*
  %6882 = load i32, i32* %6881
  %6883 = sitofp i32 %6882 to double
  %6884 = bitcast i8* %6876 to double*
  store double %6883, double* %6884, align 1
  store %struct.Memory* %loadMem_4791a2, %struct.Memory** %MEMORY
  %loadMem1_4791a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 33
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6887 to i64*
  %6888 = load i64, i64* %PC.i132
  %6889 = add i64 %6888, -491815
  %6890 = load i64, i64* %PC.i132
  %6891 = add i64 %6890, 5
  %6892 = load i64, i64* %PC.i132
  %6893 = add i64 %6892, 5
  store i64 %6893, i64* %PC.i132
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6895 = load i64, i64* %6894, align 8
  %6896 = add i64 %6895, -8
  %6897 = inttoptr i64 %6896 to i64*
  store i64 %6891, i64* %6897
  store i64 %6896, i64* %6894, align 8
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6889, i64* %6898, align 8
  store %struct.Memory* %loadMem1_4791a7, %struct.Memory** %MEMORY
  %loadMem2_4791a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4791a7 = load i64, i64* %3
  %6899 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_4791a7)
  store %struct.Memory* %6899, %struct.Memory** %MEMORY
  %loadMem_4791ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 33
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6902 to i64*
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6904 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6903, i64 0, i64 1
  %YMM1.i129 = bitcast %union.VectorReg* %6904 to %"class.std::bitset"*
  %6905 = bitcast %"class.std::bitset"* %YMM1.i129 to i8*
  %6906 = load i64, i64* %PC.i128
  %6907 = add i64 %6906, ptrtoint (%G_0x69d84__rip__type* @G_0x69d84__rip_ to i64)
  %6908 = load i64, i64* %PC.i128
  %6909 = add i64 %6908, 8
  store i64 %6909, i64* %PC.i128
  %6910 = inttoptr i64 %6907 to double*
  %6911 = load double, double* %6910
  %6912 = bitcast i8* %6905 to double*
  store double %6911, double* %6912, align 1
  %6913 = getelementptr inbounds i8, i8* %6905, i64 8
  %6914 = bitcast i8* %6913 to double*
  store double 0.000000e+00, double* %6914, align 1
  store %struct.Memory* %loadMem_4791ac, %struct.Memory** %MEMORY
  %loadMem_4791b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6916 = getelementptr inbounds %struct.GPR, %struct.GPR* %6915, i32 0, i32 33
  %6917 = getelementptr inbounds %struct.Reg, %struct.Reg* %6916, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6917 to i64*
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6919 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6918, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %6919 to %"class.std::bitset"*
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6921 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6920, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %6921 to %union.vec128_t*
  %6922 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6923 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6924 = bitcast %union.vec128_t* %XMM0.i to i8*
  %6925 = load i64, i64* %PC.i127
  %6926 = add i64 %6925, 4
  store i64 %6926, i64* %PC.i127
  %6927 = bitcast i8* %6923 to double*
  %6928 = load double, double* %6927, align 1
  %6929 = getelementptr inbounds i8, i8* %6923, i64 8
  %6930 = bitcast i8* %6929 to i64*
  %6931 = load i64, i64* %6930, align 1
  %6932 = bitcast i8* %6924 to double*
  %6933 = load double, double* %6932, align 1
  %6934 = fmul double %6928, %6933
  %6935 = bitcast i8* %6922 to double*
  store double %6934, double* %6935, align 1
  %6936 = getelementptr inbounds i8, i8* %6922, i64 8
  %6937 = bitcast i8* %6936 to i64*
  store i64 %6931, i64* %6937, align 1
  store %struct.Memory* %loadMem_4791b4, %struct.Memory** %MEMORY
  %loadMem_4791b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 33
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6940 to i64*
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 1
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %6943 to i64*
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6944, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %6945 to %union.vec128_t*
  %6946 = bitcast %union.vec128_t* %XMM1.i to i8*
  %6947 = load i64, i64* %PC.i125
  %6948 = add i64 %6947, 4
  store i64 %6948, i64* %PC.i125
  %6949 = bitcast i8* %6946 to double*
  %6950 = load double, double* %6949, align 1
  %6951 = call double @llvm.trunc.f64(double %6950)
  %6952 = call double @llvm.fabs.f64(double %6951)
  %6953 = fcmp ogt double %6952, 0x41DFFFFFFFC00000
  %6954 = fptosi double %6951 to i32
  %6955 = zext i32 %6954 to i64
  %6956 = select i1 %6953, i64 2147483648, i64 %6955
  store i64 %6956, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_4791b8, %struct.Memory** %MEMORY
  %loadMem_4791bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6958 = getelementptr inbounds %struct.GPR, %struct.GPR* %6957, i32 0, i32 33
  %6959 = getelementptr inbounds %struct.Reg, %struct.Reg* %6958, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6959 to i64*
  %6960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6961 = getelementptr inbounds %struct.GPR, %struct.GPR* %6960, i32 0, i32 1
  %6962 = getelementptr inbounds %struct.Reg, %struct.Reg* %6961, i32 0, i32 0
  %EAX.i124 = bitcast %union.anon* %6962 to i32*
  %6963 = load i32, i32* %EAX.i124
  %6964 = zext i32 %6963 to i64
  %6965 = load i64, i64* %PC.i123
  %6966 = add i64 %6965, 7
  store i64 %6966, i64* %PC.i123
  store i32 %6963, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  store %struct.Memory* %loadMem_4791bc, %struct.Memory** %MEMORY
  %loadMem_4791c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 33
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6969 to i64*
  %6970 = load i64, i64* %PC.i122
  %6971 = add i64 %6970, 117
  %6972 = load i64, i64* %PC.i122
  %6973 = add i64 %6972, 5
  store i64 %6973, i64* %PC.i122
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6971, i64* %6974, align 8
  store %struct.Memory* %loadMem_4791c3, %struct.Memory** %MEMORY
  br label %block_.L_479238

block_.L_4791c8:                                  ; preds = %block_.L_479152
  %loadMem_4791c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6976 = getelementptr inbounds %struct.GPR, %struct.GPR* %6975, i32 0, i32 33
  %6977 = getelementptr inbounds %struct.Reg, %struct.Reg* %6976, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6977 to i64*
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6979 = getelementptr inbounds %struct.GPR, %struct.GPR* %6978, i32 0, i32 1
  %6980 = getelementptr inbounds %struct.Reg, %struct.Reg* %6979, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %6980 to i64*
  %6981 = load i64, i64* %PC.i120
  %6982 = add i64 %6981, 5
  store i64 %6982, i64* %PC.i120
  store i64 20, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_4791c8, %struct.Memory** %MEMORY
  %loadMem_4791cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 33
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6985 to i64*
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6987 = getelementptr inbounds %struct.GPR, %struct.GPR* %6986, i32 0, i32 5
  %6988 = getelementptr inbounds %struct.Reg, %struct.Reg* %6987, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %6988 to i64*
  %6989 = load i64, i64* %PC.i118
  %6990 = add i64 %6989, 5
  store i64 %6990, i64* %PC.i118
  store i64 10, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_4791cd, %struct.Memory** %MEMORY
  %loadMem_4791d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6992 = getelementptr inbounds %struct.GPR, %struct.GPR* %6991, i32 0, i32 33
  %6993 = getelementptr inbounds %struct.Reg, %struct.Reg* %6992, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6993 to i64*
  %6994 = load i64, i64* %PC.i117
  %6995 = add i64 %6994, 11
  store i64 %6995, i64* %PC.i117
  store i32 0, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*)
  store %struct.Memory* %loadMem_4791d2, %struct.Memory** %MEMORY
  %loadMem_4791dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 33
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %6998 to i64*
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 5
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %7001 to i64*
  %7002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7003 = getelementptr inbounds %struct.GPR, %struct.GPR* %7002, i32 0, i32 15
  %7004 = getelementptr inbounds %struct.Reg, %struct.Reg* %7003, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %7004 to i64*
  %7005 = load i64, i64* %RCX.i115
  %7006 = load i64, i64* %RBP.i116
  %7007 = sub i64 %7006, 4
  %7008 = load i64, i64* %PC.i114
  %7009 = add i64 %7008, 3
  store i64 %7009, i64* %PC.i114
  %7010 = trunc i64 %7005 to i32
  %7011 = inttoptr i64 %7007 to i32*
  %7012 = load i32, i32* %7011
  %7013 = sub i32 %7010, %7012
  %7014 = zext i32 %7013 to i64
  store i64 %7014, i64* %RCX.i115, align 8
  %7015 = icmp ult i32 %7010, %7012
  %7016 = zext i1 %7015 to i8
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7016, i8* %7017, align 1
  %7018 = and i32 %7013, 255
  %7019 = call i32 @llvm.ctpop.i32(i32 %7018)
  %7020 = trunc i32 %7019 to i8
  %7021 = and i8 %7020, 1
  %7022 = xor i8 %7021, 1
  %7023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7022, i8* %7023, align 1
  %7024 = xor i32 %7012, %7010
  %7025 = xor i32 %7024, %7013
  %7026 = lshr i32 %7025, 4
  %7027 = trunc i32 %7026 to i8
  %7028 = and i8 %7027, 1
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7028, i8* %7029, align 1
  %7030 = icmp eq i32 %7013, 0
  %7031 = zext i1 %7030 to i8
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7031, i8* %7032, align 1
  %7033 = lshr i32 %7013, 31
  %7034 = trunc i32 %7033 to i8
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7034, i8* %7035, align 1
  %7036 = lshr i32 %7010, 31
  %7037 = lshr i32 %7012, 31
  %7038 = xor i32 %7037, %7036
  %7039 = xor i32 %7033, %7036
  %7040 = add i32 %7039, %7038
  %7041 = icmp eq i32 %7040, 2
  %7042 = zext i1 %7041 to i8
  %7043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7042, i8* %7043, align 1
  store %struct.Memory* %loadMem_4791dd, %struct.Memory** %MEMORY
  %loadMem_4791e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 33
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7046 to i64*
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7048 = getelementptr inbounds %struct.GPR, %struct.GPR* %7047, i32 0, i32 5
  %7049 = getelementptr inbounds %struct.Reg, %struct.Reg* %7048, i32 0, i32 0
  %ECX.i112 = bitcast %union.anon* %7049 to i32*
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7051 = getelementptr inbounds %struct.GPR, %struct.GPR* %7050, i32 0, i32 7
  %7052 = getelementptr inbounds %struct.Reg, %struct.Reg* %7051, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %7052 to i64*
  %7053 = load i32, i32* %ECX.i112
  %7054 = zext i32 %7053 to i64
  %7055 = load i64, i64* %PC.i111
  %7056 = add i64 %7055, 3
  store i64 %7056, i64* %PC.i111
  %7057 = shl i64 %7054, 32
  %7058 = ashr exact i64 %7057, 32
  store i64 %7058, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_4791e0, %struct.Memory** %MEMORY
  %loadMem_4791e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7060 = getelementptr inbounds %struct.GPR, %struct.GPR* %7059, i32 0, i32 33
  %7061 = getelementptr inbounds %struct.Reg, %struct.Reg* %7060, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %7061 to i64*
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7063 = getelementptr inbounds %struct.GPR, %struct.GPR* %7062, i32 0, i32 5
  %7064 = getelementptr inbounds %struct.Reg, %struct.Reg* %7063, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7064 to i64*
  %7065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7066 = getelementptr inbounds %struct.GPR, %struct.GPR* %7065, i32 0, i32 7
  %7067 = getelementptr inbounds %struct.Reg, %struct.Reg* %7066, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7067 to i64*
  %7068 = load i64, i64* %RDX.i
  %7069 = mul i64 %7068, 4
  %7070 = add i64 %7069, 8060384
  %7071 = load i64, i64* %PC.i110
  %7072 = add i64 %7071, 11
  store i64 %7072, i64* %PC.i110
  %7073 = inttoptr i64 %7070 to i32*
  %7074 = load i32, i32* %7073
  %7075 = sext i32 %7074 to i64
  %7076 = mul i64 %7075, 1000
  %7077 = trunc i64 %7076 to i32
  %7078 = and i64 %7076, 4294967295
  store i64 %7078, i64* %RCX.i, align 8
  %7079 = shl i64 %7076, 32
  %7080 = ashr exact i64 %7079, 32
  %7081 = icmp ne i64 %7080, %7076
  %7082 = zext i1 %7081 to i8
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7082, i8* %7083, align 1
  %7084 = and i32 %7077, 255
  %7085 = call i32 @llvm.ctpop.i32(i32 %7084)
  %7086 = trunc i32 %7085 to i8
  %7087 = and i8 %7086, 1
  %7088 = xor i8 %7087, 1
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7088, i8* %7089, align 1
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7090, align 1
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7091, align 1
  %7092 = lshr i32 %7077, 31
  %7093 = trunc i32 %7092 to i8
  %7094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7093, i8* %7094, align 1
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7082, i8* %7095, align 1
  store %struct.Memory* %loadMem_4791e3, %struct.Memory** %MEMORY
  %loadMem_4791ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 33
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %7098 to i64*
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7100 = getelementptr inbounds %struct.GPR, %struct.GPR* %7099, i32 0, i32 1
  %7101 = getelementptr inbounds %struct.Reg, %struct.Reg* %7100, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %7101 to i32*
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7103 = getelementptr inbounds %struct.GPR, %struct.GPR* %7102, i32 0, i32 15
  %7104 = getelementptr inbounds %struct.Reg, %struct.Reg* %7103, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %7104 to i64*
  %7105 = load i64, i64* %RBP.i109
  %7106 = sub i64 %7105, 108
  %7107 = load i32, i32* %EAX.i108
  %7108 = zext i32 %7107 to i64
  %7109 = load i64, i64* %PC.i107
  %7110 = add i64 %7109, 3
  store i64 %7110, i64* %PC.i107
  %7111 = inttoptr i64 %7106 to i32*
  store i32 %7107, i32* %7111
  store %struct.Memory* %loadMem_4791ee, %struct.Memory** %MEMORY
  %loadMem_4791f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 33
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7114 to i64*
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 5
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7117 to i32*
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 1
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %7120 to i64*
  %7121 = load i32, i32* %ECX.i
  %7122 = zext i32 %7121 to i64
  %7123 = load i64, i64* %PC.i105
  %7124 = add i64 %7123, 2
  store i64 %7124, i64* %PC.i105
  %7125 = and i64 %7122, 4294967295
  store i64 %7125, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_4791f1, %struct.Memory** %MEMORY
  %loadMem_4791f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7127 = getelementptr inbounds %struct.GPR, %struct.GPR* %7126, i32 0, i32 33
  %7128 = getelementptr inbounds %struct.Reg, %struct.Reg* %7127, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %7128 to i64*
  %7129 = load i64, i64* %PC.i104
  %7130 = add i64 %7129, 1
  store i64 %7130, i64* %PC.i104
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7133 = bitcast %union.anon* %7132 to i32*
  %7134 = load i32, i32* %7133, align 8
  %7135 = sext i32 %7134 to i64
  %7136 = lshr i64 %7135, 32
  store i64 %7136, i64* %7131, align 8
  store %struct.Memory* %loadMem_4791f3, %struct.Memory** %MEMORY
  %loadMem_4791f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7138 = getelementptr inbounds %struct.GPR, %struct.GPR* %7137, i32 0, i32 33
  %7139 = getelementptr inbounds %struct.Reg, %struct.Reg* %7138, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %7139 to i64*
  %7140 = load i64, i64* %PC.i100
  %7141 = add i64 %7140, 7
  store i64 %7141, i64* %PC.i100
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7143 = bitcast %union.anon* %7142 to i32*
  %7144 = load i32, i32* %7143, align 8
  %7145 = zext i32 %7144 to i64
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %7147 = bitcast %union.anon* %7146 to i32*
  %7148 = load i32, i32* %7147, align 8
  %7149 = zext i32 %7148 to i64
  %7150 = load i32, i32* bitcast (%G_0x7afde0_type* @G_0x7afde0 to i32*)
  %7151 = sext i32 %7150 to i64
  %7152 = shl i64 %7149, 32
  %7153 = or i64 %7152, %7145
  %7154 = sdiv i64 %7153, %7151
  %7155 = shl i64 %7154, 32
  %7156 = ashr exact i64 %7155, 32
  %7157 = icmp eq i64 %7154, %7156
  br i1 %7157, label %7162, label %7158

; <label>:7158:                                   ; preds = %block_.L_4791c8
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7160 = load i64, i64* %7159, align 8
  %7161 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7160, %struct.Memory* %loadMem_4791f4)
  br label %routine_idivl_0x7afde0.exit

; <label>:7162:                                   ; preds = %block_.L_4791c8
  %7163 = srem i64 %7153, %7151
  %7164 = getelementptr inbounds %union.anon, %union.anon* %7142, i64 0, i32 0
  %7165 = and i64 %7154, 4294967295
  store i64 %7165, i64* %7164, align 8
  %7166 = getelementptr inbounds %union.anon, %union.anon* %7146, i64 0, i32 0
  %7167 = and i64 %7163, 4294967295
  store i64 %7167, i64* %7166, align 8
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7168, align 1
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %7169, align 1
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7170, align 1
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7171, align 1
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7172, align 1
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7173, align 1
  br label %routine_idivl_0x7afde0.exit

routine_idivl_0x7afde0.exit:                      ; preds = %7158, %7162
  %7174 = phi %struct.Memory* [ %7161, %7158 ], [ %loadMem_4791f4, %7162 ]
  store %struct.Memory* %7174, %struct.Memory** %MEMORY
  %loadMem_4791fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7176 = getelementptr inbounds %struct.GPR, %struct.GPR* %7175, i32 0, i32 33
  %7177 = getelementptr inbounds %struct.Reg, %struct.Reg* %7176, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7177 to i64*
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7179 = getelementptr inbounds %struct.GPR, %struct.GPR* %7178, i32 0, i32 1
  %7180 = getelementptr inbounds %struct.Reg, %struct.Reg* %7179, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %7180 to i32*
  %7181 = load i32, i32* %EAX.i99
  %7182 = zext i32 %7181 to i64
  %7183 = load i64, i64* %PC.i98
  %7184 = add i64 %7183, 7
  store i64 %7184, i64* %PC.i98
  store i32 %7181, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  store %struct.Memory* %loadMem_4791fb, %struct.Memory** %MEMORY
  %loadMem_479202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7186 = getelementptr inbounds %struct.GPR, %struct.GPR* %7185, i32 0, i32 33
  %7187 = getelementptr inbounds %struct.Reg, %struct.Reg* %7186, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7187 to i64*
  %7188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7189 = getelementptr inbounds %struct.GPR, %struct.GPR* %7188, i32 0, i32 1
  %7190 = getelementptr inbounds %struct.Reg, %struct.Reg* %7189, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %7190 to i64*
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 15
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %7193 to i64*
  %7194 = load i64, i64* %RBP.i97
  %7195 = sub i64 %7194, 108
  %7196 = load i64, i64* %PC.i95
  %7197 = add i64 %7196, 3
  store i64 %7197, i64* %PC.i95
  %7198 = inttoptr i64 %7195 to i32*
  %7199 = load i32, i32* %7198
  %7200 = zext i32 %7199 to i64
  store i64 %7200, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_479202, %struct.Memory** %MEMORY
  %loadMem_479205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 33
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7203 to i64*
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7205 = getelementptr inbounds %struct.GPR, %struct.GPR* %7204, i32 0, i32 1
  %7206 = getelementptr inbounds %struct.Reg, %struct.Reg* %7205, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %7206 to i32*
  %7207 = load i32, i32* %EAX.i94
  %7208 = zext i32 %7207 to i64
  %7209 = load i64, i64* %PC.i93
  %7210 = add i64 %7209, 7
  store i64 %7210, i64* %PC.i93
  %7211 = load i32, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  %7212 = sub i32 %7207, %7211
  %7213 = icmp ult i32 %7207, %7211
  %7214 = zext i1 %7213 to i8
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7214, i8* %7215, align 1
  %7216 = and i32 %7212, 255
  %7217 = call i32 @llvm.ctpop.i32(i32 %7216)
  %7218 = trunc i32 %7217 to i8
  %7219 = and i8 %7218, 1
  %7220 = xor i8 %7219, 1
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7220, i8* %7221, align 1
  %7222 = xor i32 %7211, %7207
  %7223 = xor i32 %7222, %7212
  %7224 = lshr i32 %7223, 4
  %7225 = trunc i32 %7224 to i8
  %7226 = and i8 %7225, 1
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7226, i8* %7227, align 1
  %7228 = icmp eq i32 %7212, 0
  %7229 = zext i1 %7228 to i8
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7229, i8* %7230, align 1
  %7231 = lshr i32 %7212, 31
  %7232 = trunc i32 %7231 to i8
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7232, i8* %7233, align 1
  %7234 = lshr i32 %7207, 31
  %7235 = lshr i32 %7211, 31
  %7236 = xor i32 %7235, %7234
  %7237 = xor i32 %7231, %7234
  %7238 = add i32 %7237, %7236
  %7239 = icmp eq i32 %7238, 2
  %7240 = zext i1 %7239 to i8
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7240, i8* %7241, align 1
  store %struct.Memory* %loadMem_479205, %struct.Memory** %MEMORY
  %loadMem_47920c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7243 = getelementptr inbounds %struct.GPR, %struct.GPR* %7242, i32 0, i32 33
  %7244 = getelementptr inbounds %struct.Reg, %struct.Reg* %7243, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %7244 to i64*
  %7245 = load i64, i64* %PC.i92
  %7246 = add i64 %7245, 21
  %7247 = load i64, i64* %PC.i92
  %7248 = add i64 %7247, 6
  %7249 = load i64, i64* %PC.i92
  %7250 = add i64 %7249, 6
  store i64 %7250, i64* %PC.i92
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7252 = load i8, i8* %7251, align 1
  %7253 = icmp ne i8 %7252, 0
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7255 = load i8, i8* %7254, align 1
  %7256 = icmp ne i8 %7255, 0
  %7257 = xor i1 %7253, %7256
  %7258 = xor i1 %7257, true
  %7259 = zext i1 %7258 to i8
  store i8 %7259, i8* %BRANCH_TAKEN, align 1
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7261 = select i1 %7257, i64 %7248, i64 %7246
  store i64 %7261, i64* %7260, align 8
  store %struct.Memory* %loadMem_47920c, %struct.Memory** %MEMORY
  %loadBr_47920c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47920c = icmp eq i8 %loadBr_47920c, 1
  br i1 %cmpBr_47920c, label %block_.L_479221, label %block_479212

block_479212:                                     ; preds = %routine_idivl_0x7afde0.exit
  %loadMem_479212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7263 = getelementptr inbounds %struct.GPR, %struct.GPR* %7262, i32 0, i32 33
  %7264 = getelementptr inbounds %struct.Reg, %struct.Reg* %7263, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7264 to i64*
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7266 = getelementptr inbounds %struct.GPR, %struct.GPR* %7265, i32 0, i32 1
  %7267 = getelementptr inbounds %struct.Reg, %struct.Reg* %7266, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %7267 to i64*
  %7268 = load i64, i64* %PC.i90
  %7269 = add i64 %7268, 7
  store i64 %7269, i64* %PC.i90
  %7270 = load i32, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  %7271 = zext i32 %7270 to i64
  store i64 %7271, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_479212, %struct.Memory** %MEMORY
  %loadMem_479219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7273 = getelementptr inbounds %struct.GPR, %struct.GPR* %7272, i32 0, i32 33
  %7274 = getelementptr inbounds %struct.Reg, %struct.Reg* %7273, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %7274 to i64*
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7276 = getelementptr inbounds %struct.GPR, %struct.GPR* %7275, i32 0, i32 1
  %7277 = getelementptr inbounds %struct.Reg, %struct.Reg* %7276, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %7277 to i32*
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 15
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %7280 to i64*
  %7281 = load i64, i64* %RBP.i89
  %7282 = sub i64 %7281, 112
  %7283 = load i32, i32* %EAX.i88
  %7284 = zext i32 %7283 to i64
  %7285 = load i64, i64* %PC.i87
  %7286 = add i64 %7285, 3
  store i64 %7286, i64* %PC.i87
  %7287 = inttoptr i64 %7282 to i32*
  store i32 %7283, i32* %7287
  store %struct.Memory* %loadMem_479219, %struct.Memory** %MEMORY
  %loadMem_47921c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7289 = getelementptr inbounds %struct.GPR, %struct.GPR* %7288, i32 0, i32 33
  %7290 = getelementptr inbounds %struct.Reg, %struct.Reg* %7289, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7290 to i64*
  %7291 = load i64, i64* %PC.i86
  %7292 = add i64 %7291, 18
  %7293 = load i64, i64* %PC.i86
  %7294 = add i64 %7293, 5
  store i64 %7294, i64* %PC.i86
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7292, i64* %7295, align 8
  store %struct.Memory* %loadMem_47921c, %struct.Memory** %MEMORY
  br label %block_.L_47922e

block_.L_479221:                                  ; preds = %routine_idivl_0x7afde0.exit
  %loadMem_479221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 33
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7298 to i64*
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7300 = getelementptr inbounds %struct.GPR, %struct.GPR* %7299, i32 0, i32 1
  %7301 = getelementptr inbounds %struct.Reg, %struct.Reg* %7300, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %7301 to i64*
  %7302 = load i64, i64* %PC.i84
  %7303 = add i64 %7302, 5
  store i64 %7303, i64* %PC.i84
  store i64 20, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_479221, %struct.Memory** %MEMORY
  %loadMem_479226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7305 = getelementptr inbounds %struct.GPR, %struct.GPR* %7304, i32 0, i32 33
  %7306 = getelementptr inbounds %struct.Reg, %struct.Reg* %7305, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7306 to i64*
  %7307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7308 = getelementptr inbounds %struct.GPR, %struct.GPR* %7307, i32 0, i32 1
  %7309 = getelementptr inbounds %struct.Reg, %struct.Reg* %7308, i32 0, i32 0
  %EAX.i82 = bitcast %union.anon* %7309 to i32*
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7311 = getelementptr inbounds %struct.GPR, %struct.GPR* %7310, i32 0, i32 15
  %7312 = getelementptr inbounds %struct.Reg, %struct.Reg* %7311, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %7312 to i64*
  %7313 = load i64, i64* %RBP.i83
  %7314 = sub i64 %7313, 112
  %7315 = load i32, i32* %EAX.i82
  %7316 = zext i32 %7315 to i64
  %7317 = load i64, i64* %PC.i81
  %7318 = add i64 %7317, 3
  store i64 %7318, i64* %PC.i81
  %7319 = inttoptr i64 %7314 to i32*
  store i32 %7315, i32* %7319
  store %struct.Memory* %loadMem_479226, %struct.Memory** %MEMORY
  %loadMem_479229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 33
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %7322 to i64*
  %7323 = load i64, i64* %PC.i80
  %7324 = add i64 %7323, 5
  %7325 = load i64, i64* %PC.i80
  %7326 = add i64 %7325, 5
  store i64 %7326, i64* %PC.i80
  %7327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7324, i64* %7327, align 8
  store %struct.Memory* %loadMem_479229, %struct.Memory** %MEMORY
  br label %block_.L_47922e

block_.L_47922e:                                  ; preds = %block_.L_479221, %block_479212
  %loadMem_47922e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7329 = getelementptr inbounds %struct.GPR, %struct.GPR* %7328, i32 0, i32 33
  %7330 = getelementptr inbounds %struct.Reg, %struct.Reg* %7329, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %7330 to i64*
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7332 = getelementptr inbounds %struct.GPR, %struct.GPR* %7331, i32 0, i32 1
  %7333 = getelementptr inbounds %struct.Reg, %struct.Reg* %7332, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %7333 to i64*
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7335 = getelementptr inbounds %struct.GPR, %struct.GPR* %7334, i32 0, i32 15
  %7336 = getelementptr inbounds %struct.Reg, %struct.Reg* %7335, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %7336 to i64*
  %7337 = load i64, i64* %RBP.i79
  %7338 = sub i64 %7337, 112
  %7339 = load i64, i64* %PC.i77
  %7340 = add i64 %7339, 3
  store i64 %7340, i64* %PC.i77
  %7341 = inttoptr i64 %7338 to i32*
  %7342 = load i32, i32* %7341
  %7343 = zext i32 %7342 to i64
  store i64 %7343, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_47922e, %struct.Memory** %MEMORY
  %loadMem_479231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 33
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7346 to i64*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 1
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %7349 to i32*
  %7350 = load i32, i32* %EAX.i76
  %7351 = zext i32 %7350 to i64
  %7352 = load i64, i64* %PC.i75
  %7353 = add i64 %7352, 7
  store i64 %7353, i64* %PC.i75
  store i32 %7350, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  store %struct.Memory* %loadMem_479231, %struct.Memory** %MEMORY
  br label %block_.L_479238

block_.L_479238:                                  ; preds = %block_.L_47922e, %block_.L_479190
  %loadMem_479238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7355 = getelementptr inbounds %struct.GPR, %struct.GPR* %7354, i32 0, i32 33
  %7356 = getelementptr inbounds %struct.Reg, %struct.Reg* %7355, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %7356 to i64*
  %7357 = load i64, i64* %PC.i74
  %7358 = add i64 %7357, 8
  store i64 %7358, i64* %PC.i74
  %7359 = load i32, i32* bitcast (%G_0xb9a090_type* @G_0xb9a090 to i32*)
  %7360 = sub i32 %7359, -1
  %7361 = icmp ult i32 %7359, -1
  %7362 = zext i1 %7361 to i8
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7362, i8* %7363, align 1
  %7364 = and i32 %7360, 255
  %7365 = call i32 @llvm.ctpop.i32(i32 %7364)
  %7366 = trunc i32 %7365 to i8
  %7367 = and i8 %7366, 1
  %7368 = xor i8 %7367, 1
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7368, i8* %7369, align 1
  %7370 = xor i32 %7359, -1
  %7371 = xor i32 %7370, %7360
  %7372 = lshr i32 %7371, 4
  %7373 = trunc i32 %7372 to i8
  %7374 = and i8 %7373, 1
  %7375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7374, i8* %7375, align 1
  %7376 = icmp eq i32 %7360, 0
  %7377 = zext i1 %7376 to i8
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7377, i8* %7378, align 1
  %7379 = lshr i32 %7360, 31
  %7380 = trunc i32 %7379 to i8
  %7381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7380, i8* %7381, align 1
  %7382 = lshr i32 %7359, 31
  %7383 = xor i32 %7382, 1
  %7384 = xor i32 %7379, %7382
  %7385 = add i32 %7384, %7383
  %7386 = icmp eq i32 %7385, 2
  %7387 = zext i1 %7386 to i8
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7387, i8* %7388, align 1
  store %struct.Memory* %loadMem_479238, %struct.Memory** %MEMORY
  %loadMem_479240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 33
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %7391 to i64*
  %7392 = load i64, i64* %PC.i73
  %7393 = add i64 %7392, 20
  %7394 = load i64, i64* %PC.i73
  %7395 = add i64 %7394, 6
  %7396 = load i64, i64* %PC.i73
  %7397 = add i64 %7396, 6
  store i64 %7397, i64* %PC.i73
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7399 = load i8, i8* %7398, align 1
  store i8 %7399, i8* %BRANCH_TAKEN, align 1
  %7400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7401 = icmp ne i8 %7399, 0
  %7402 = select i1 %7401, i64 %7393, i64 %7395
  store i64 %7402, i64* %7400, align 8
  store %struct.Memory* %loadMem_479240, %struct.Memory** %MEMORY
  %loadBr_479240 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479240 = icmp eq i8 %loadBr_479240, 1
  br i1 %cmpBr_479240, label %block_.L_479254, label %block_479246

block_479246:                                     ; preds = %block_.L_479238
  %loadMem_479246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7404 = getelementptr inbounds %struct.GPR, %struct.GPR* %7403, i32 0, i32 33
  %7405 = getelementptr inbounds %struct.Reg, %struct.Reg* %7404, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %7405 to i64*
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 1
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %7408 to i64*
  %7409 = load i64, i64* %PC.i71
  %7410 = add i64 %7409, 7
  store i64 %7410, i64* %PC.i71
  %7411 = load i32, i32* bitcast (%G_0xb9a090_type* @G_0xb9a090 to i32*)
  %7412 = zext i32 %7411 to i64
  store i64 %7412, i64* %RAX.i72, align 8
  store %struct.Memory* %loadMem_479246, %struct.Memory** %MEMORY
  %loadMem_47924d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7414 = getelementptr inbounds %struct.GPR, %struct.GPR* %7413, i32 0, i32 33
  %7415 = getelementptr inbounds %struct.Reg, %struct.Reg* %7414, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7415 to i64*
  %7416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7417 = getelementptr inbounds %struct.GPR, %struct.GPR* %7416, i32 0, i32 1
  %7418 = getelementptr inbounds %struct.Reg, %struct.Reg* %7417, i32 0, i32 0
  %EAX.i70 = bitcast %union.anon* %7418 to i32*
  %7419 = load i32, i32* %EAX.i70
  %7420 = zext i32 %7419 to i64
  %7421 = load i64, i64* %PC.i69
  %7422 = add i64 %7421, 7
  store i64 %7422, i64* %PC.i69
  store i32 %7419, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  store %struct.Memory* %loadMem_47924d, %struct.Memory** %MEMORY
  br label %block_.L_479254

block_.L_479254:                                  ; preds = %block_479246, %block_.L_479238
  %loadMem_479254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7424 = getelementptr inbounds %struct.GPR, %struct.GPR* %7423, i32 0, i32 33
  %7425 = getelementptr inbounds %struct.Reg, %struct.Reg* %7424, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %7425 to i64*
  %7426 = load i64, i64* %PC.i68
  %7427 = add i64 %7426, 8
  store i64 %7427, i64* %PC.i68
  %7428 = load i32, i32* bitcast (%G_0xb63088_type* @G_0xb63088 to i32*)
  %7429 = sub i32 %7428, -1
  %7430 = icmp ult i32 %7428, -1
  %7431 = zext i1 %7430 to i8
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7431, i8* %7432, align 1
  %7433 = and i32 %7429, 255
  %7434 = call i32 @llvm.ctpop.i32(i32 %7433)
  %7435 = trunc i32 %7434 to i8
  %7436 = and i8 %7435, 1
  %7437 = xor i8 %7436, 1
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7437, i8* %7438, align 1
  %7439 = xor i32 %7428, -1
  %7440 = xor i32 %7439, %7429
  %7441 = lshr i32 %7440, 4
  %7442 = trunc i32 %7441 to i8
  %7443 = and i8 %7442, 1
  %7444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7443, i8* %7444, align 1
  %7445 = icmp eq i32 %7429, 0
  %7446 = zext i1 %7445 to i8
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7446, i8* %7447, align 1
  %7448 = lshr i32 %7429, 31
  %7449 = trunc i32 %7448 to i8
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7449, i8* %7450, align 1
  %7451 = lshr i32 %7428, 31
  %7452 = xor i32 %7451, 1
  %7453 = xor i32 %7448, %7451
  %7454 = add i32 %7453, %7452
  %7455 = icmp eq i32 %7454, 2
  %7456 = zext i1 %7455 to i8
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7456, i8* %7457, align 1
  store %struct.Memory* %loadMem_479254, %struct.Memory** %MEMORY
  %loadMem_47925c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7459 = getelementptr inbounds %struct.GPR, %struct.GPR* %7458, i32 0, i32 33
  %7460 = getelementptr inbounds %struct.Reg, %struct.Reg* %7459, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %7460 to i64*
  %7461 = load i64, i64* %PC.i67
  %7462 = add i64 %7461, 20
  %7463 = load i64, i64* %PC.i67
  %7464 = add i64 %7463, 6
  %7465 = load i64, i64* %PC.i67
  %7466 = add i64 %7465, 6
  store i64 %7466, i64* %PC.i67
  %7467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7468 = load i8, i8* %7467, align 1
  store i8 %7468, i8* %BRANCH_TAKEN, align 1
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7470 = icmp ne i8 %7468, 0
  %7471 = select i1 %7470, i64 %7462, i64 %7464
  store i64 %7471, i64* %7469, align 8
  store %struct.Memory* %loadMem_47925c, %struct.Memory** %MEMORY
  %loadBr_47925c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47925c = icmp eq i8 %loadBr_47925c, 1
  br i1 %cmpBr_47925c, label %block_.L_479270, label %block_479262

block_479262:                                     ; preds = %block_.L_479254
  %loadMem_479262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7473 = getelementptr inbounds %struct.GPR, %struct.GPR* %7472, i32 0, i32 33
  %7474 = getelementptr inbounds %struct.Reg, %struct.Reg* %7473, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7474 to i64*
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 1
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %7477 to i64*
  %7478 = load i64, i64* %PC.i65
  %7479 = add i64 %7478, 7
  store i64 %7479, i64* %PC.i65
  %7480 = load i32, i32* bitcast (%G_0xb63088_type* @G_0xb63088 to i32*)
  %7481 = zext i32 %7480 to i64
  store i64 %7481, i64* %RAX.i66, align 8
  store %struct.Memory* %loadMem_479262, %struct.Memory** %MEMORY
  %loadMem_479269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7483 = getelementptr inbounds %struct.GPR, %struct.GPR* %7482, i32 0, i32 33
  %7484 = getelementptr inbounds %struct.Reg, %struct.Reg* %7483, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7484 to i64*
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7486 = getelementptr inbounds %struct.GPR, %struct.GPR* %7485, i32 0, i32 1
  %7487 = getelementptr inbounds %struct.Reg, %struct.Reg* %7486, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %7487 to i32*
  %7488 = load i32, i32* %EAX.i64
  %7489 = zext i32 %7488 to i64
  %7490 = load i64, i64* %PC.i63
  %7491 = add i64 %7490, 7
  store i64 %7491, i64* %PC.i63
  store i32 %7488, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*)
  store %struct.Memory* %loadMem_479269, %struct.Memory** %MEMORY
  br label %block_.L_479270

block_.L_479270:                                  ; preds = %block_479262, %block_.L_479254
  %loadMem_479270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7493 = getelementptr inbounds %struct.GPR, %struct.GPR* %7492, i32 0, i32 33
  %7494 = getelementptr inbounds %struct.Reg, %struct.Reg* %7493, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %7494 to i64*
  %7495 = load i64, i64* %PC.i62
  %7496 = add i64 %7495, 8
  store i64 %7496, i64* %PC.i62
  %7497 = load i32, i32* bitcast (%G_0xb8a008_type* @G_0xb8a008 to i32*)
  %7498 = sub i32 %7497, -1
  %7499 = icmp ult i32 %7497, -1
  %7500 = zext i1 %7499 to i8
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7500, i8* %7501, align 1
  %7502 = and i32 %7498, 255
  %7503 = call i32 @llvm.ctpop.i32(i32 %7502)
  %7504 = trunc i32 %7503 to i8
  %7505 = and i8 %7504, 1
  %7506 = xor i8 %7505, 1
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7506, i8* %7507, align 1
  %7508 = xor i32 %7497, -1
  %7509 = xor i32 %7508, %7498
  %7510 = lshr i32 %7509, 4
  %7511 = trunc i32 %7510 to i8
  %7512 = and i8 %7511, 1
  %7513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7512, i8* %7513, align 1
  %7514 = icmp eq i32 %7498, 0
  %7515 = zext i1 %7514 to i8
  %7516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7515, i8* %7516, align 1
  %7517 = lshr i32 %7498, 31
  %7518 = trunc i32 %7517 to i8
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7518, i8* %7519, align 1
  %7520 = lshr i32 %7497, 31
  %7521 = xor i32 %7520, 1
  %7522 = xor i32 %7517, %7520
  %7523 = add i32 %7522, %7521
  %7524 = icmp eq i32 %7523, 2
  %7525 = zext i1 %7524 to i8
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7525, i8* %7526, align 1
  store %struct.Memory* %loadMem_479270, %struct.Memory** %MEMORY
  %loadMem_479278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7528 = getelementptr inbounds %struct.GPR, %struct.GPR* %7527, i32 0, i32 33
  %7529 = getelementptr inbounds %struct.Reg, %struct.Reg* %7528, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %7529 to i64*
  %7530 = load i64, i64* %PC.i61
  %7531 = add i64 %7530, 20
  %7532 = load i64, i64* %PC.i61
  %7533 = add i64 %7532, 6
  %7534 = load i64, i64* %PC.i61
  %7535 = add i64 %7534, 6
  store i64 %7535, i64* %PC.i61
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7537 = load i8, i8* %7536, align 1
  store i8 %7537, i8* %BRANCH_TAKEN, align 1
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7539 = icmp ne i8 %7537, 0
  %7540 = select i1 %7539, i64 %7531, i64 %7533
  store i64 %7540, i64* %7538, align 8
  store %struct.Memory* %loadMem_479278, %struct.Memory** %MEMORY
  %loadBr_479278 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479278 = icmp eq i8 %loadBr_479278, 1
  br i1 %cmpBr_479278, label %block_.L_47928c, label %block_47927e

block_47927e:                                     ; preds = %block_.L_479270
  %loadMem_47927e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7542 = getelementptr inbounds %struct.GPR, %struct.GPR* %7541, i32 0, i32 33
  %7543 = getelementptr inbounds %struct.Reg, %struct.Reg* %7542, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7543 to i64*
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7545 = getelementptr inbounds %struct.GPR, %struct.GPR* %7544, i32 0, i32 1
  %7546 = getelementptr inbounds %struct.Reg, %struct.Reg* %7545, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %7546 to i64*
  %7547 = load i64, i64* %PC.i59
  %7548 = add i64 %7547, 7
  store i64 %7548, i64* %PC.i59
  %7549 = load i32, i32* bitcast (%G_0xb8a008_type* @G_0xb8a008 to i32*)
  %7550 = zext i32 %7549 to i64
  store i64 %7550, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_47927e, %struct.Memory** %MEMORY
  %loadMem_479285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7552 = getelementptr inbounds %struct.GPR, %struct.GPR* %7551, i32 0, i32 33
  %7553 = getelementptr inbounds %struct.Reg, %struct.Reg* %7552, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7553 to i64*
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7555 = getelementptr inbounds %struct.GPR, %struct.GPR* %7554, i32 0, i32 1
  %7556 = getelementptr inbounds %struct.Reg, %struct.Reg* %7555, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %7556 to i32*
  %7557 = load i32, i32* %EAX.i58
  %7558 = zext i32 %7557 to i64
  %7559 = load i64, i64* %PC.i57
  %7560 = add i64 %7559, 7
  store i64 %7560, i64* %PC.i57
  store i32 %7557, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*)
  store %struct.Memory* %loadMem_479285, %struct.Memory** %MEMORY
  br label %block_.L_47928c

block_.L_47928c:                                  ; preds = %block_47927e, %block_.L_479270
  %loadMem_47928c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7562 = getelementptr inbounds %struct.GPR, %struct.GPR* %7561, i32 0, i32 33
  %7563 = getelementptr inbounds %struct.Reg, %struct.Reg* %7562, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7563 to i64*
  %7564 = load i64, i64* %PC.i56
  %7565 = add i64 %7564, 8
  store i64 %7565, i64* %PC.i56
  %7566 = load i32, i32* bitcast (%G_0xb8a00c_type* @G_0xb8a00c to i32*)
  %7567 = sub i32 %7566, -1
  %7568 = icmp ult i32 %7566, -1
  %7569 = zext i1 %7568 to i8
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7569, i8* %7570, align 1
  %7571 = and i32 %7567, 255
  %7572 = call i32 @llvm.ctpop.i32(i32 %7571)
  %7573 = trunc i32 %7572 to i8
  %7574 = and i8 %7573, 1
  %7575 = xor i8 %7574, 1
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7575, i8* %7576, align 1
  %7577 = xor i32 %7566, -1
  %7578 = xor i32 %7577, %7567
  %7579 = lshr i32 %7578, 4
  %7580 = trunc i32 %7579 to i8
  %7581 = and i8 %7580, 1
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7581, i8* %7582, align 1
  %7583 = icmp eq i32 %7567, 0
  %7584 = zext i1 %7583 to i8
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7584, i8* %7585, align 1
  %7586 = lshr i32 %7567, 31
  %7587 = trunc i32 %7586 to i8
  %7588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7587, i8* %7588, align 1
  %7589 = lshr i32 %7566, 31
  %7590 = xor i32 %7589, 1
  %7591 = xor i32 %7586, %7589
  %7592 = add i32 %7591, %7590
  %7593 = icmp eq i32 %7592, 2
  %7594 = zext i1 %7593 to i8
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7594, i8* %7595, align 1
  store %struct.Memory* %loadMem_47928c, %struct.Memory** %MEMORY
  %loadMem_479294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7597 = getelementptr inbounds %struct.GPR, %struct.GPR* %7596, i32 0, i32 33
  %7598 = getelementptr inbounds %struct.Reg, %struct.Reg* %7597, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7598 to i64*
  %7599 = load i64, i64* %PC.i55
  %7600 = add i64 %7599, 20
  %7601 = load i64, i64* %PC.i55
  %7602 = add i64 %7601, 6
  %7603 = load i64, i64* %PC.i55
  %7604 = add i64 %7603, 6
  store i64 %7604, i64* %PC.i55
  %7605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7606 = load i8, i8* %7605, align 1
  store i8 %7606, i8* %BRANCH_TAKEN, align 1
  %7607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7608 = icmp ne i8 %7606, 0
  %7609 = select i1 %7608, i64 %7600, i64 %7602
  store i64 %7609, i64* %7607, align 8
  store %struct.Memory* %loadMem_479294, %struct.Memory** %MEMORY
  %loadBr_479294 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479294 = icmp eq i8 %loadBr_479294, 1
  br i1 %cmpBr_479294, label %block_.L_4792a8, label %block_47929a

block_47929a:                                     ; preds = %block_.L_47928c
  %loadMem_47929a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7611 = getelementptr inbounds %struct.GPR, %struct.GPR* %7610, i32 0, i32 33
  %7612 = getelementptr inbounds %struct.Reg, %struct.Reg* %7611, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7612 to i64*
  %7613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7614 = getelementptr inbounds %struct.GPR, %struct.GPR* %7613, i32 0, i32 1
  %7615 = getelementptr inbounds %struct.Reg, %struct.Reg* %7614, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %7615 to i64*
  %7616 = load i64, i64* %PC.i53
  %7617 = add i64 %7616, 7
  store i64 %7617, i64* %PC.i53
  %7618 = load i32, i32* bitcast (%G_0xb8a00c_type* @G_0xb8a00c to i32*)
  %7619 = zext i32 %7618 to i64
  store i64 %7619, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_47929a, %struct.Memory** %MEMORY
  %loadMem_4792a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7621 = getelementptr inbounds %struct.GPR, %struct.GPR* %7620, i32 0, i32 33
  %7622 = getelementptr inbounds %struct.Reg, %struct.Reg* %7621, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7622 to i64*
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7624 = getelementptr inbounds %struct.GPR, %struct.GPR* %7623, i32 0, i32 1
  %7625 = getelementptr inbounds %struct.Reg, %struct.Reg* %7624, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %7625 to i32*
  %7626 = load i32, i32* %EAX.i52
  %7627 = zext i32 %7626 to i64
  %7628 = load i64, i64* %PC.i51
  %7629 = add i64 %7628, 7
  store i64 %7629, i64* %PC.i51
  store i32 %7626, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*)
  store %struct.Memory* %loadMem_4792a1, %struct.Memory** %MEMORY
  br label %block_.L_4792a8

block_.L_4792a8:                                  ; preds = %block_47929a, %block_.L_47928c
  %loadMem_4792a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7631 = getelementptr inbounds %struct.GPR, %struct.GPR* %7630, i32 0, i32 33
  %7632 = getelementptr inbounds %struct.Reg, %struct.Reg* %7631, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %7632 to i64*
  %7633 = load i64, i64* %PC.i50
  %7634 = add i64 %7633, 8
  store i64 %7634, i64* %PC.i50
  %7635 = load i32, i32* bitcast (%G_0xb01170_type* @G_0xb01170 to i32*)
  %7636 = sub i32 %7635, -1
  %7637 = icmp ult i32 %7635, -1
  %7638 = zext i1 %7637 to i8
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7638, i8* %7639, align 1
  %7640 = and i32 %7636, 255
  %7641 = call i32 @llvm.ctpop.i32(i32 %7640)
  %7642 = trunc i32 %7641 to i8
  %7643 = and i8 %7642, 1
  %7644 = xor i8 %7643, 1
  %7645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7644, i8* %7645, align 1
  %7646 = xor i32 %7635, -1
  %7647 = xor i32 %7646, %7636
  %7648 = lshr i32 %7647, 4
  %7649 = trunc i32 %7648 to i8
  %7650 = and i8 %7649, 1
  %7651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7650, i8* %7651, align 1
  %7652 = icmp eq i32 %7636, 0
  %7653 = zext i1 %7652 to i8
  %7654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7653, i8* %7654, align 1
  %7655 = lshr i32 %7636, 31
  %7656 = trunc i32 %7655 to i8
  %7657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7656, i8* %7657, align 1
  %7658 = lshr i32 %7635, 31
  %7659 = xor i32 %7658, 1
  %7660 = xor i32 %7655, %7658
  %7661 = add i32 %7660, %7659
  %7662 = icmp eq i32 %7661, 2
  %7663 = zext i1 %7662 to i8
  %7664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7663, i8* %7664, align 1
  store %struct.Memory* %loadMem_4792a8, %struct.Memory** %MEMORY
  %loadMem_4792b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7666 = getelementptr inbounds %struct.GPR, %struct.GPR* %7665, i32 0, i32 33
  %7667 = getelementptr inbounds %struct.Reg, %struct.Reg* %7666, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7667 to i64*
  %7668 = load i64, i64* %PC.i49
  %7669 = add i64 %7668, 20
  %7670 = load i64, i64* %PC.i49
  %7671 = add i64 %7670, 6
  %7672 = load i64, i64* %PC.i49
  %7673 = add i64 %7672, 6
  store i64 %7673, i64* %PC.i49
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7675 = load i8, i8* %7674, align 1
  store i8 %7675, i8* %BRANCH_TAKEN, align 1
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7677 = icmp ne i8 %7675, 0
  %7678 = select i1 %7677, i64 %7669, i64 %7671
  store i64 %7678, i64* %7676, align 8
  store %struct.Memory* %loadMem_4792b0, %struct.Memory** %MEMORY
  %loadBr_4792b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4792b0 = icmp eq i8 %loadBr_4792b0, 1
  br i1 %cmpBr_4792b0, label %block_.L_4792c4, label %block_4792b6

block_4792b6:                                     ; preds = %block_.L_4792a8
  %loadMem_4792b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7680 = getelementptr inbounds %struct.GPR, %struct.GPR* %7679, i32 0, i32 33
  %7681 = getelementptr inbounds %struct.Reg, %struct.Reg* %7680, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %7681 to i64*
  %7682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7683 = getelementptr inbounds %struct.GPR, %struct.GPR* %7682, i32 0, i32 1
  %7684 = getelementptr inbounds %struct.Reg, %struct.Reg* %7683, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %7684 to i64*
  %7685 = load i64, i64* %PC.i47
  %7686 = add i64 %7685, 7
  store i64 %7686, i64* %PC.i47
  %7687 = load i32, i32* bitcast (%G_0xb01170_type* @G_0xb01170 to i32*)
  %7688 = zext i32 %7687 to i64
  store i64 %7688, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_4792b6, %struct.Memory** %MEMORY
  %loadMem_4792bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 33
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7691 to i64*
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 1
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %EAX.i46 = bitcast %union.anon* %7694 to i32*
  %7695 = load i32, i32* %EAX.i46
  %7696 = zext i32 %7695 to i64
  %7697 = load i64, i64* %PC.i45
  %7698 = add i64 %7697, 7
  store i64 %7698, i64* %PC.i45
  store i32 %7695, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  store %struct.Memory* %loadMem_4792bd, %struct.Memory** %MEMORY
  br label %block_.L_4792c4

block_.L_4792c4:                                  ; preds = %block_4792b6, %block_.L_4792a8
  %loadMem_4792c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7700 = getelementptr inbounds %struct.GPR, %struct.GPR* %7699, i32 0, i32 33
  %7701 = getelementptr inbounds %struct.Reg, %struct.Reg* %7700, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7701 to i64*
  %7702 = load i64, i64* %PC.i44
  %7703 = add i64 %7702, 8
  store i64 %7703, i64* %PC.i44
  %7704 = load i32, i32* bitcast (%G_0xb72710_type* @G_0xb72710 to i32*)
  %7705 = sub i32 %7704, -1
  %7706 = icmp ult i32 %7704, -1
  %7707 = zext i1 %7706 to i8
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7707, i8* %7708, align 1
  %7709 = and i32 %7705, 255
  %7710 = call i32 @llvm.ctpop.i32(i32 %7709)
  %7711 = trunc i32 %7710 to i8
  %7712 = and i8 %7711, 1
  %7713 = xor i8 %7712, 1
  %7714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7713, i8* %7714, align 1
  %7715 = xor i32 %7704, -1
  %7716 = xor i32 %7715, %7705
  %7717 = lshr i32 %7716, 4
  %7718 = trunc i32 %7717 to i8
  %7719 = and i8 %7718, 1
  %7720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7719, i8* %7720, align 1
  %7721 = icmp eq i32 %7705, 0
  %7722 = zext i1 %7721 to i8
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7722, i8* %7723, align 1
  %7724 = lshr i32 %7705, 31
  %7725 = trunc i32 %7724 to i8
  %7726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7725, i8* %7726, align 1
  %7727 = lshr i32 %7704, 31
  %7728 = xor i32 %7727, 1
  %7729 = xor i32 %7724, %7727
  %7730 = add i32 %7729, %7728
  %7731 = icmp eq i32 %7730, 2
  %7732 = zext i1 %7731 to i8
  %7733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7732, i8* %7733, align 1
  store %struct.Memory* %loadMem_4792c4, %struct.Memory** %MEMORY
  %loadMem_4792cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7735 = getelementptr inbounds %struct.GPR, %struct.GPR* %7734, i32 0, i32 33
  %7736 = getelementptr inbounds %struct.Reg, %struct.Reg* %7735, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7736 to i64*
  %7737 = load i64, i64* %PC.i43
  %7738 = add i64 %7737, 20
  %7739 = load i64, i64* %PC.i43
  %7740 = add i64 %7739, 6
  %7741 = load i64, i64* %PC.i43
  %7742 = add i64 %7741, 6
  store i64 %7742, i64* %PC.i43
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7744 = load i8, i8* %7743, align 1
  store i8 %7744, i8* %BRANCH_TAKEN, align 1
  %7745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7746 = icmp ne i8 %7744, 0
  %7747 = select i1 %7746, i64 %7738, i64 %7740
  store i64 %7747, i64* %7745, align 8
  store %struct.Memory* %loadMem_4792cc, %struct.Memory** %MEMORY
  %loadBr_4792cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4792cc = icmp eq i8 %loadBr_4792cc, 1
  br i1 %cmpBr_4792cc, label %block_.L_4792e0, label %block_4792d2

block_4792d2:                                     ; preds = %block_.L_4792c4
  %loadMem_4792d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7749 = getelementptr inbounds %struct.GPR, %struct.GPR* %7748, i32 0, i32 33
  %7750 = getelementptr inbounds %struct.Reg, %struct.Reg* %7749, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %7750 to i64*
  %7751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7752 = getelementptr inbounds %struct.GPR, %struct.GPR* %7751, i32 0, i32 1
  %7753 = getelementptr inbounds %struct.Reg, %struct.Reg* %7752, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %7753 to i64*
  %7754 = load i64, i64* %PC.i41
  %7755 = add i64 %7754, 7
  store i64 %7755, i64* %PC.i41
  %7756 = load i32, i32* bitcast (%G_0xb72710_type* @G_0xb72710 to i32*)
  %7757 = zext i32 %7756 to i64
  store i64 %7757, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_4792d2, %struct.Memory** %MEMORY
  %loadMem_4792d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7759 = getelementptr inbounds %struct.GPR, %struct.GPR* %7758, i32 0, i32 33
  %7760 = getelementptr inbounds %struct.Reg, %struct.Reg* %7759, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7760 to i64*
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7762 = getelementptr inbounds %struct.GPR, %struct.GPR* %7761, i32 0, i32 1
  %7763 = getelementptr inbounds %struct.Reg, %struct.Reg* %7762, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %7763 to i32*
  %7764 = load i32, i32* %EAX.i40
  %7765 = zext i32 %7764 to i64
  %7766 = load i64, i64* %PC.i39
  %7767 = add i64 %7766, 7
  store i64 %7767, i64* %PC.i39
  store i32 %7764, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  store %struct.Memory* %loadMem_4792d9, %struct.Memory** %MEMORY
  br label %block_.L_4792e0

block_.L_4792e0:                                  ; preds = %block_4792d2, %block_.L_4792c4
  %loadMem_4792e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7769 = getelementptr inbounds %struct.GPR, %struct.GPR* %7768, i32 0, i32 33
  %7770 = getelementptr inbounds %struct.Reg, %struct.Reg* %7769, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7770 to i64*
  %7771 = load i64, i64* %PC.i38
  %7772 = add i64 %7771, 8
  store i64 %7772, i64* %PC.i38
  %7773 = load i32, i32* bitcast (%G_0xb6eec8_type* @G_0xb6eec8 to i32*)
  %7774 = sub i32 %7773, -1
  %7775 = icmp ult i32 %7773, -1
  %7776 = zext i1 %7775 to i8
  %7777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7776, i8* %7777, align 1
  %7778 = and i32 %7774, 255
  %7779 = call i32 @llvm.ctpop.i32(i32 %7778)
  %7780 = trunc i32 %7779 to i8
  %7781 = and i8 %7780, 1
  %7782 = xor i8 %7781, 1
  %7783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7782, i8* %7783, align 1
  %7784 = xor i32 %7773, -1
  %7785 = xor i32 %7784, %7774
  %7786 = lshr i32 %7785, 4
  %7787 = trunc i32 %7786 to i8
  %7788 = and i8 %7787, 1
  %7789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7788, i8* %7789, align 1
  %7790 = icmp eq i32 %7774, 0
  %7791 = zext i1 %7790 to i8
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7791, i8* %7792, align 1
  %7793 = lshr i32 %7774, 31
  %7794 = trunc i32 %7793 to i8
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7794, i8* %7795, align 1
  %7796 = lshr i32 %7773, 31
  %7797 = xor i32 %7796, 1
  %7798 = xor i32 %7793, %7796
  %7799 = add i32 %7798, %7797
  %7800 = icmp eq i32 %7799, 2
  %7801 = zext i1 %7800 to i8
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7801, i8* %7802, align 1
  store %struct.Memory* %loadMem_4792e0, %struct.Memory** %MEMORY
  %loadMem_4792e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7804 = getelementptr inbounds %struct.GPR, %struct.GPR* %7803, i32 0, i32 33
  %7805 = getelementptr inbounds %struct.Reg, %struct.Reg* %7804, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7805 to i64*
  %7806 = load i64, i64* %PC.i37
  %7807 = add i64 %7806, 20
  %7808 = load i64, i64* %PC.i37
  %7809 = add i64 %7808, 6
  %7810 = load i64, i64* %PC.i37
  %7811 = add i64 %7810, 6
  store i64 %7811, i64* %PC.i37
  %7812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7813 = load i8, i8* %7812, align 1
  store i8 %7813, i8* %BRANCH_TAKEN, align 1
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7815 = icmp ne i8 %7813, 0
  %7816 = select i1 %7815, i64 %7807, i64 %7809
  store i64 %7816, i64* %7814, align 8
  store %struct.Memory* %loadMem_4792e8, %struct.Memory** %MEMORY
  %loadBr_4792e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4792e8 = icmp eq i8 %loadBr_4792e8, 1
  br i1 %cmpBr_4792e8, label %block_.L_4792fc, label %block_4792ee

block_4792ee:                                     ; preds = %block_.L_4792e0
  %loadMem_4792ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7818 = getelementptr inbounds %struct.GPR, %struct.GPR* %7817, i32 0, i32 33
  %7819 = getelementptr inbounds %struct.Reg, %struct.Reg* %7818, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7819 to i64*
  %7820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7821 = getelementptr inbounds %struct.GPR, %struct.GPR* %7820, i32 0, i32 1
  %7822 = getelementptr inbounds %struct.Reg, %struct.Reg* %7821, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %7822 to i64*
  %7823 = load i64, i64* %PC.i35
  %7824 = add i64 %7823, 7
  store i64 %7824, i64* %PC.i35
  %7825 = load i32, i32* bitcast (%G_0xb6eec8_type* @G_0xb6eec8 to i32*)
  %7826 = zext i32 %7825 to i64
  store i64 %7826, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_4792ee, %struct.Memory** %MEMORY
  %loadMem_4792f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7828 = getelementptr inbounds %struct.GPR, %struct.GPR* %7827, i32 0, i32 33
  %7829 = getelementptr inbounds %struct.Reg, %struct.Reg* %7828, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7829 to i64*
  %7830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7831 = getelementptr inbounds %struct.GPR, %struct.GPR* %7830, i32 0, i32 1
  %7832 = getelementptr inbounds %struct.Reg, %struct.Reg* %7831, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %7832 to i32*
  %7833 = load i32, i32* %EAX.i34
  %7834 = zext i32 %7833 to i64
  %7835 = load i64, i64* %PC.i33
  %7836 = add i64 %7835, 7
  store i64 %7836, i64* %PC.i33
  store i32 %7833, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*)
  store %struct.Memory* %loadMem_4792f5, %struct.Memory** %MEMORY
  br label %block_.L_4792fc

block_.L_4792fc:                                  ; preds = %block_4792ee, %block_.L_4792e0
  %loadMem_4792fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7838 = getelementptr inbounds %struct.GPR, %struct.GPR* %7837, i32 0, i32 33
  %7839 = getelementptr inbounds %struct.Reg, %struct.Reg* %7838, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7839 to i64*
  %7840 = load i64, i64* %PC.i32
  %7841 = add i64 %7840, 8
  store i64 %7841, i64* %PC.i32
  %7842 = load i32, i32* bitcast (%G_0xafdfb4_type* @G_0xafdfb4 to i32*)
  %7843 = sub i32 %7842, -1
  %7844 = icmp ult i32 %7842, -1
  %7845 = zext i1 %7844 to i8
  %7846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7845, i8* %7846, align 1
  %7847 = and i32 %7843, 255
  %7848 = call i32 @llvm.ctpop.i32(i32 %7847)
  %7849 = trunc i32 %7848 to i8
  %7850 = and i8 %7849, 1
  %7851 = xor i8 %7850, 1
  %7852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7851, i8* %7852, align 1
  %7853 = xor i32 %7842, -1
  %7854 = xor i32 %7853, %7843
  %7855 = lshr i32 %7854, 4
  %7856 = trunc i32 %7855 to i8
  %7857 = and i8 %7856, 1
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7857, i8* %7858, align 1
  %7859 = icmp eq i32 %7843, 0
  %7860 = zext i1 %7859 to i8
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7860, i8* %7861, align 1
  %7862 = lshr i32 %7843, 31
  %7863 = trunc i32 %7862 to i8
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7863, i8* %7864, align 1
  %7865 = lshr i32 %7842, 31
  %7866 = xor i32 %7865, 1
  %7867 = xor i32 %7862, %7865
  %7868 = add i32 %7867, %7866
  %7869 = icmp eq i32 %7868, 2
  %7870 = zext i1 %7869 to i8
  %7871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7870, i8* %7871, align 1
  store %struct.Memory* %loadMem_4792fc, %struct.Memory** %MEMORY
  %loadMem_479304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7873 = getelementptr inbounds %struct.GPR, %struct.GPR* %7872, i32 0, i32 33
  %7874 = getelementptr inbounds %struct.Reg, %struct.Reg* %7873, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7874 to i64*
  %7875 = load i64, i64* %PC.i31
  %7876 = add i64 %7875, 20
  %7877 = load i64, i64* %PC.i31
  %7878 = add i64 %7877, 6
  %7879 = load i64, i64* %PC.i31
  %7880 = add i64 %7879, 6
  store i64 %7880, i64* %PC.i31
  %7881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7882 = load i8, i8* %7881, align 1
  store i8 %7882, i8* %BRANCH_TAKEN, align 1
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7884 = icmp ne i8 %7882, 0
  %7885 = select i1 %7884, i64 %7876, i64 %7878
  store i64 %7885, i64* %7883, align 8
  store %struct.Memory* %loadMem_479304, %struct.Memory** %MEMORY
  %loadBr_479304 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479304 = icmp eq i8 %loadBr_479304, 1
  br i1 %cmpBr_479304, label %block_.L_479318, label %block_47930a

block_47930a:                                     ; preds = %block_.L_4792fc
  %loadMem_47930a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7887 = getelementptr inbounds %struct.GPR, %struct.GPR* %7886, i32 0, i32 33
  %7888 = getelementptr inbounds %struct.Reg, %struct.Reg* %7887, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7888 to i64*
  %7889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7890 = getelementptr inbounds %struct.GPR, %struct.GPR* %7889, i32 0, i32 1
  %7891 = getelementptr inbounds %struct.Reg, %struct.Reg* %7890, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7891 to i64*
  %7892 = load i64, i64* %PC.i29
  %7893 = add i64 %7892, 7
  store i64 %7893, i64* %PC.i29
  %7894 = load i32, i32* bitcast (%G_0xafdfb4_type* @G_0xafdfb4 to i32*)
  %7895 = zext i32 %7894 to i64
  store i64 %7895, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_47930a, %struct.Memory** %MEMORY
  %loadMem_479311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7897 = getelementptr inbounds %struct.GPR, %struct.GPR* %7896, i32 0, i32 33
  %7898 = getelementptr inbounds %struct.Reg, %struct.Reg* %7897, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7898 to i64*
  %7899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7900 = getelementptr inbounds %struct.GPR, %struct.GPR* %7899, i32 0, i32 1
  %7901 = getelementptr inbounds %struct.Reg, %struct.Reg* %7900, i32 0, i32 0
  %EAX.i28 = bitcast %union.anon* %7901 to i32*
  %7902 = load i32, i32* %EAX.i28
  %7903 = zext i32 %7902 to i64
  %7904 = load i64, i64* %PC.i27
  %7905 = add i64 %7904, 7
  store i64 %7905, i64* %PC.i27
  store i32 %7902, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*)
  store %struct.Memory* %loadMem_479311, %struct.Memory** %MEMORY
  br label %block_.L_479318

block_.L_479318:                                  ; preds = %block_47930a, %block_.L_4792fc
  %loadMem_479318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7907 = getelementptr inbounds %struct.GPR, %struct.GPR* %7906, i32 0, i32 33
  %7908 = getelementptr inbounds %struct.Reg, %struct.Reg* %7907, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7908 to i64*
  %7909 = load i64, i64* %PC.i26
  %7910 = add i64 %7909, 8
  store i64 %7910, i64* %PC.i26
  %7911 = load i32, i32* bitcast (%G_0xb9d8e0_type* @G_0xb9d8e0 to i32*)
  %7912 = sub i32 %7911, -1
  %7913 = icmp ult i32 %7911, -1
  %7914 = zext i1 %7913 to i8
  %7915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7914, i8* %7915, align 1
  %7916 = and i32 %7912, 255
  %7917 = call i32 @llvm.ctpop.i32(i32 %7916)
  %7918 = trunc i32 %7917 to i8
  %7919 = and i8 %7918, 1
  %7920 = xor i8 %7919, 1
  %7921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7920, i8* %7921, align 1
  %7922 = xor i32 %7911, -1
  %7923 = xor i32 %7922, %7912
  %7924 = lshr i32 %7923, 4
  %7925 = trunc i32 %7924 to i8
  %7926 = and i8 %7925, 1
  %7927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7926, i8* %7927, align 1
  %7928 = icmp eq i32 %7912, 0
  %7929 = zext i1 %7928 to i8
  %7930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7929, i8* %7930, align 1
  %7931 = lshr i32 %7912, 31
  %7932 = trunc i32 %7931 to i8
  %7933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7932, i8* %7933, align 1
  %7934 = lshr i32 %7911, 31
  %7935 = xor i32 %7934, 1
  %7936 = xor i32 %7931, %7934
  %7937 = add i32 %7936, %7935
  %7938 = icmp eq i32 %7937, 2
  %7939 = zext i1 %7938 to i8
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7939, i8* %7940, align 1
  store %struct.Memory* %loadMem_479318, %struct.Memory** %MEMORY
  %loadMem_479320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7942 = getelementptr inbounds %struct.GPR, %struct.GPR* %7941, i32 0, i32 33
  %7943 = getelementptr inbounds %struct.Reg, %struct.Reg* %7942, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7943 to i64*
  %7944 = load i64, i64* %PC.i25
  %7945 = add i64 %7944, 20
  %7946 = load i64, i64* %PC.i25
  %7947 = add i64 %7946, 6
  %7948 = load i64, i64* %PC.i25
  %7949 = add i64 %7948, 6
  store i64 %7949, i64* %PC.i25
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7951 = load i8, i8* %7950, align 1
  store i8 %7951, i8* %BRANCH_TAKEN, align 1
  %7952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7953 = icmp ne i8 %7951, 0
  %7954 = select i1 %7953, i64 %7945, i64 %7947
  store i64 %7954, i64* %7952, align 8
  store %struct.Memory* %loadMem_479320, %struct.Memory** %MEMORY
  %loadBr_479320 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479320 = icmp eq i8 %loadBr_479320, 1
  br i1 %cmpBr_479320, label %block_.L_479334, label %block_479326

block_479326:                                     ; preds = %block_.L_479318
  %loadMem_479326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7956 = getelementptr inbounds %struct.GPR, %struct.GPR* %7955, i32 0, i32 33
  %7957 = getelementptr inbounds %struct.Reg, %struct.Reg* %7956, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7957 to i64*
  %7958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7959 = getelementptr inbounds %struct.GPR, %struct.GPR* %7958, i32 0, i32 1
  %7960 = getelementptr inbounds %struct.Reg, %struct.Reg* %7959, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %7960 to i64*
  %7961 = load i64, i64* %PC.i23
  %7962 = add i64 %7961, 7
  store i64 %7962, i64* %PC.i23
  %7963 = load i32, i32* bitcast (%G_0xb9d8e0_type* @G_0xb9d8e0 to i32*)
  %7964 = zext i32 %7963 to i64
  store i64 %7964, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_479326, %struct.Memory** %MEMORY
  %loadMem_47932d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7966 = getelementptr inbounds %struct.GPR, %struct.GPR* %7965, i32 0, i32 33
  %7967 = getelementptr inbounds %struct.Reg, %struct.Reg* %7966, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7967 to i64*
  %7968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7969 = getelementptr inbounds %struct.GPR, %struct.GPR* %7968, i32 0, i32 1
  %7970 = getelementptr inbounds %struct.Reg, %struct.Reg* %7969, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %7970 to i32*
  %7971 = load i32, i32* %EAX.i22
  %7972 = zext i32 %7971 to i64
  %7973 = load i64, i64* %PC.i21
  %7974 = add i64 %7973, 7
  store i64 %7974, i64* %PC.i21
  store i32 %7971, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*)
  store %struct.Memory* %loadMem_47932d, %struct.Memory** %MEMORY
  br label %block_.L_479334

block_.L_479334:                                  ; preds = %block_479326, %block_.L_479318
  %loadMem_479334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7976 = getelementptr inbounds %struct.GPR, %struct.GPR* %7975, i32 0, i32 33
  %7977 = getelementptr inbounds %struct.Reg, %struct.Reg* %7976, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %7977 to i64*
  %7978 = load i64, i64* %PC.i20
  %7979 = add i64 %7978, 8
  store i64 %7979, i64* %PC.i20
  %7980 = load i32, i32* bitcast (%G_0xb4bd1c_type* @G_0xb4bd1c to i32*)
  %7981 = sub i32 %7980, -1
  %7982 = icmp ult i32 %7980, -1
  %7983 = zext i1 %7982 to i8
  %7984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7983, i8* %7984, align 1
  %7985 = and i32 %7981, 255
  %7986 = call i32 @llvm.ctpop.i32(i32 %7985)
  %7987 = trunc i32 %7986 to i8
  %7988 = and i8 %7987, 1
  %7989 = xor i8 %7988, 1
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7989, i8* %7990, align 1
  %7991 = xor i32 %7980, -1
  %7992 = xor i32 %7991, %7981
  %7993 = lshr i32 %7992, 4
  %7994 = trunc i32 %7993 to i8
  %7995 = and i8 %7994, 1
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7995, i8* %7996, align 1
  %7997 = icmp eq i32 %7981, 0
  %7998 = zext i1 %7997 to i8
  %7999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7998, i8* %7999, align 1
  %8000 = lshr i32 %7981, 31
  %8001 = trunc i32 %8000 to i8
  %8002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8001, i8* %8002, align 1
  %8003 = lshr i32 %7980, 31
  %8004 = xor i32 %8003, 1
  %8005 = xor i32 %8000, %8003
  %8006 = add i32 %8005, %8004
  %8007 = icmp eq i32 %8006, 2
  %8008 = zext i1 %8007 to i8
  %8009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8008, i8* %8009, align 1
  store %struct.Memory* %loadMem_479334, %struct.Memory** %MEMORY
  %loadMem_47933c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8011 = getelementptr inbounds %struct.GPR, %struct.GPR* %8010, i32 0, i32 33
  %8012 = getelementptr inbounds %struct.Reg, %struct.Reg* %8011, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8012 to i64*
  %8013 = load i64, i64* %PC.i19
  %8014 = add i64 %8013, 20
  %8015 = load i64, i64* %PC.i19
  %8016 = add i64 %8015, 6
  %8017 = load i64, i64* %PC.i19
  %8018 = add i64 %8017, 6
  store i64 %8018, i64* %PC.i19
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8020 = load i8, i8* %8019, align 1
  store i8 %8020, i8* %BRANCH_TAKEN, align 1
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8022 = icmp ne i8 %8020, 0
  %8023 = select i1 %8022, i64 %8014, i64 %8016
  store i64 %8023, i64* %8021, align 8
  store %struct.Memory* %loadMem_47933c, %struct.Memory** %MEMORY
  %loadBr_47933c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47933c = icmp eq i8 %loadBr_47933c, 1
  br i1 %cmpBr_47933c, label %block_.L_479350, label %block_479342

block_479342:                                     ; preds = %block_.L_479334
  %loadMem_479342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8025 = getelementptr inbounds %struct.GPR, %struct.GPR* %8024, i32 0, i32 33
  %8026 = getelementptr inbounds %struct.Reg, %struct.Reg* %8025, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %8026 to i64*
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8028 = getelementptr inbounds %struct.GPR, %struct.GPR* %8027, i32 0, i32 1
  %8029 = getelementptr inbounds %struct.Reg, %struct.Reg* %8028, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %8029 to i64*
  %8030 = load i64, i64* %PC.i17
  %8031 = add i64 %8030, 7
  store i64 %8031, i64* %PC.i17
  %8032 = load i32, i32* bitcast (%G_0xb4bd1c_type* @G_0xb4bd1c to i32*)
  %8033 = zext i32 %8032 to i64
  store i64 %8033, i64* %RAX.i18, align 8
  store %struct.Memory* %loadMem_479342, %struct.Memory** %MEMORY
  %loadMem_479349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8035 = getelementptr inbounds %struct.GPR, %struct.GPR* %8034, i32 0, i32 33
  %8036 = getelementptr inbounds %struct.Reg, %struct.Reg* %8035, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8036 to i64*
  %8037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8038 = getelementptr inbounds %struct.GPR, %struct.GPR* %8037, i32 0, i32 1
  %8039 = getelementptr inbounds %struct.Reg, %struct.Reg* %8038, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %8039 to i32*
  %8040 = load i32, i32* %EAX.i16
  %8041 = zext i32 %8040 to i64
  %8042 = load i64, i64* %PC.i15
  %8043 = add i64 %8042, 7
  store i64 %8043, i64* %PC.i15
  store i32 %8040, i32* bitcast (%G_0xb6e910_type* @G_0xb6e910 to i32*)
  store %struct.Memory* %loadMem_479349, %struct.Memory** %MEMORY
  br label %block_.L_479350

block_.L_479350:                                  ; preds = %block_479342, %block_.L_479334
  %loadMem_479350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8045 = getelementptr inbounds %struct.GPR, %struct.GPR* %8044, i32 0, i32 33
  %8046 = getelementptr inbounds %struct.Reg, %struct.Reg* %8045, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8046 to i64*
  %8047 = load i64, i64* %PC.i14
  %8048 = add i64 %8047, 8
  store i64 %8048, i64* %PC.i14
  %8049 = load i32, i32* bitcast (%G_0xb8af24_type* @G_0xb8af24 to i32*)
  %8050 = sub i32 %8049, -1
  %8051 = icmp ult i32 %8049, -1
  %8052 = zext i1 %8051 to i8
  %8053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8052, i8* %8053, align 1
  %8054 = and i32 %8050, 255
  %8055 = call i32 @llvm.ctpop.i32(i32 %8054)
  %8056 = trunc i32 %8055 to i8
  %8057 = and i8 %8056, 1
  %8058 = xor i8 %8057, 1
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8058, i8* %8059, align 1
  %8060 = xor i32 %8049, -1
  %8061 = xor i32 %8060, %8050
  %8062 = lshr i32 %8061, 4
  %8063 = trunc i32 %8062 to i8
  %8064 = and i8 %8063, 1
  %8065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8064, i8* %8065, align 1
  %8066 = icmp eq i32 %8050, 0
  %8067 = zext i1 %8066 to i8
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8067, i8* %8068, align 1
  %8069 = lshr i32 %8050, 31
  %8070 = trunc i32 %8069 to i8
  %8071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8070, i8* %8071, align 1
  %8072 = lshr i32 %8049, 31
  %8073 = xor i32 %8072, 1
  %8074 = xor i32 %8069, %8072
  %8075 = add i32 %8074, %8073
  %8076 = icmp eq i32 %8075, 2
  %8077 = zext i1 %8076 to i8
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8077, i8* %8078, align 1
  store %struct.Memory* %loadMem_479350, %struct.Memory** %MEMORY
  %loadMem_479358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8080 = getelementptr inbounds %struct.GPR, %struct.GPR* %8079, i32 0, i32 33
  %8081 = getelementptr inbounds %struct.Reg, %struct.Reg* %8080, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8081 to i64*
  %8082 = load i64, i64* %PC.i13
  %8083 = add i64 %8082, 20
  %8084 = load i64, i64* %PC.i13
  %8085 = add i64 %8084, 6
  %8086 = load i64, i64* %PC.i13
  %8087 = add i64 %8086, 6
  store i64 %8087, i64* %PC.i13
  %8088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8089 = load i8, i8* %8088, align 1
  store i8 %8089, i8* %BRANCH_TAKEN, align 1
  %8090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8091 = icmp ne i8 %8089, 0
  %8092 = select i1 %8091, i64 %8083, i64 %8085
  store i64 %8092, i64* %8090, align 8
  store %struct.Memory* %loadMem_479358, %struct.Memory** %MEMORY
  %loadBr_479358 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479358 = icmp eq i8 %loadBr_479358, 1
  br i1 %cmpBr_479358, label %block_.L_47936c, label %block_47935e

block_47935e:                                     ; preds = %block_.L_479350
  %loadMem_47935e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8094 = getelementptr inbounds %struct.GPR, %struct.GPR* %8093, i32 0, i32 33
  %8095 = getelementptr inbounds %struct.Reg, %struct.Reg* %8094, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8095 to i64*
  %8096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8097 = getelementptr inbounds %struct.GPR, %struct.GPR* %8096, i32 0, i32 1
  %8098 = getelementptr inbounds %struct.Reg, %struct.Reg* %8097, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %8098 to i64*
  %8099 = load i64, i64* %PC.i11
  %8100 = add i64 %8099, 7
  store i64 %8100, i64* %PC.i11
  %8101 = load i32, i32* bitcast (%G_0xb8af24_type* @G_0xb8af24 to i32*)
  %8102 = zext i32 %8101 to i64
  store i64 %8102, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_47935e, %struct.Memory** %MEMORY
  %loadMem_479365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8104 = getelementptr inbounds %struct.GPR, %struct.GPR* %8103, i32 0, i32 33
  %8105 = getelementptr inbounds %struct.Reg, %struct.Reg* %8104, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8105 to i64*
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8107 = getelementptr inbounds %struct.GPR, %struct.GPR* %8106, i32 0, i32 1
  %8108 = getelementptr inbounds %struct.Reg, %struct.Reg* %8107, i32 0, i32 0
  %EAX.i10 = bitcast %union.anon* %8108 to i32*
  %8109 = load i32, i32* %EAX.i10
  %8110 = zext i32 %8109 to i64
  %8111 = load i64, i64* %PC.i9
  %8112 = add i64 %8111, 7
  store i64 %8112, i64* %PC.i9
  store i32 %8109, i32* bitcast (%G_0xb8af1c_type* @G_0xb8af1c to i32*)
  store %struct.Memory* %loadMem_479365, %struct.Memory** %MEMORY
  br label %block_.L_47936c

block_.L_47936c:                                  ; preds = %block_47935e, %block_.L_479350
  %loadMem_47936c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8114 = getelementptr inbounds %struct.GPR, %struct.GPR* %8113, i32 0, i32 33
  %8115 = getelementptr inbounds %struct.Reg, %struct.Reg* %8114, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8115 to i64*
  %8116 = load i64, i64* %PC.i8
  %8117 = add i64 %8116, 8
  store i64 %8117, i64* %PC.i8
  %8118 = load i32, i32* bitcast (%G_0xb4a018_type* @G_0xb4a018 to i32*)
  %8119 = sub i32 %8118, -1
  %8120 = icmp ult i32 %8118, -1
  %8121 = zext i1 %8120 to i8
  %8122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8121, i8* %8122, align 1
  %8123 = and i32 %8119, 255
  %8124 = call i32 @llvm.ctpop.i32(i32 %8123)
  %8125 = trunc i32 %8124 to i8
  %8126 = and i8 %8125, 1
  %8127 = xor i8 %8126, 1
  %8128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8127, i8* %8128, align 1
  %8129 = xor i32 %8118, -1
  %8130 = xor i32 %8129, %8119
  %8131 = lshr i32 %8130, 4
  %8132 = trunc i32 %8131 to i8
  %8133 = and i8 %8132, 1
  %8134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8133, i8* %8134, align 1
  %8135 = icmp eq i32 %8119, 0
  %8136 = zext i1 %8135 to i8
  %8137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8136, i8* %8137, align 1
  %8138 = lshr i32 %8119, 31
  %8139 = trunc i32 %8138 to i8
  %8140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8139, i8* %8140, align 1
  %8141 = lshr i32 %8118, 31
  %8142 = xor i32 %8141, 1
  %8143 = xor i32 %8138, %8141
  %8144 = add i32 %8143, %8142
  %8145 = icmp eq i32 %8144, 2
  %8146 = zext i1 %8145 to i8
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8146, i8* %8147, align 1
  store %struct.Memory* %loadMem_47936c, %struct.Memory** %MEMORY
  %loadMem_479374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8149 = getelementptr inbounds %struct.GPR, %struct.GPR* %8148, i32 0, i32 33
  %8150 = getelementptr inbounds %struct.Reg, %struct.Reg* %8149, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %8150 to i64*
  %8151 = load i64, i64* %PC.i7
  %8152 = add i64 %8151, 20
  %8153 = load i64, i64* %PC.i7
  %8154 = add i64 %8153, 6
  %8155 = load i64, i64* %PC.i7
  %8156 = add i64 %8155, 6
  store i64 %8156, i64* %PC.i7
  %8157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8158 = load i8, i8* %8157, align 1
  store i8 %8158, i8* %BRANCH_TAKEN, align 1
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8160 = icmp ne i8 %8158, 0
  %8161 = select i1 %8160, i64 %8152, i64 %8154
  store i64 %8161, i64* %8159, align 8
  store %struct.Memory* %loadMem_479374, %struct.Memory** %MEMORY
  %loadBr_479374 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479374 = icmp eq i8 %loadBr_479374, 1
  br i1 %cmpBr_479374, label %block_.L_479388, label %block_47937a

block_47937a:                                     ; preds = %block_.L_47936c
  %loadMem_47937a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8163 = getelementptr inbounds %struct.GPR, %struct.GPR* %8162, i32 0, i32 33
  %8164 = getelementptr inbounds %struct.Reg, %struct.Reg* %8163, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8164 to i64*
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8166 = getelementptr inbounds %struct.GPR, %struct.GPR* %8165, i32 0, i32 1
  %8167 = getelementptr inbounds %struct.Reg, %struct.Reg* %8166, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8167 to i64*
  %8168 = load i64, i64* %PC.i6
  %8169 = add i64 %8168, 7
  store i64 %8169, i64* %PC.i6
  %8170 = load i32, i32* bitcast (%G_0xb4a018_type* @G_0xb4a018 to i32*)
  %8171 = zext i32 %8170 to i64
  store i64 %8171, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_47937a, %struct.Memory** %MEMORY
  %loadMem_479381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8173 = getelementptr inbounds %struct.GPR, %struct.GPR* %8172, i32 0, i32 33
  %8174 = getelementptr inbounds %struct.Reg, %struct.Reg* %8173, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8174 to i64*
  %8175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8176 = getelementptr inbounds %struct.GPR, %struct.GPR* %8175, i32 0, i32 1
  %8177 = getelementptr inbounds %struct.Reg, %struct.Reg* %8176, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8177 to i32*
  %8178 = load i32, i32* %EAX.i
  %8179 = zext i32 %8178 to i64
  %8180 = load i64, i64* %PC.i5
  %8181 = add i64 %8180, 7
  store i64 %8181, i64* %PC.i5
  store i32 %8178, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  store %struct.Memory* %loadMem_479381, %struct.Memory** %MEMORY
  br label %block_.L_479388

block_.L_479388:                                  ; preds = %block_47937a, %block_.L_47936c
  %loadMem_479388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8183 = getelementptr inbounds %struct.GPR, %struct.GPR* %8182, i32 0, i32 33
  %8184 = getelementptr inbounds %struct.Reg, %struct.Reg* %8183, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8184 to i64*
  %8185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8186 = getelementptr inbounds %struct.GPR, %struct.GPR* %8185, i32 0, i32 13
  %8187 = getelementptr inbounds %struct.Reg, %struct.Reg* %8186, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8187 to i64*
  %8188 = load i64, i64* %RSP.i
  %8189 = load i64, i64* %PC.i4
  %8190 = add i64 %8189, 4
  store i64 %8190, i64* %PC.i4
  %8191 = add i64 112, %8188
  store i64 %8191, i64* %RSP.i, align 8
  %8192 = icmp ult i64 %8191, %8188
  %8193 = icmp ult i64 %8191, 112
  %8194 = or i1 %8192, %8193
  %8195 = zext i1 %8194 to i8
  %8196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8195, i8* %8196, align 1
  %8197 = trunc i64 %8191 to i32
  %8198 = and i32 %8197, 255
  %8199 = call i32 @llvm.ctpop.i32(i32 %8198)
  %8200 = trunc i32 %8199 to i8
  %8201 = and i8 %8200, 1
  %8202 = xor i8 %8201, 1
  %8203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8202, i8* %8203, align 1
  %8204 = xor i64 112, %8188
  %8205 = xor i64 %8204, %8191
  %8206 = lshr i64 %8205, 4
  %8207 = trunc i64 %8206 to i8
  %8208 = and i8 %8207, 1
  %8209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8208, i8* %8209, align 1
  %8210 = icmp eq i64 %8191, 0
  %8211 = zext i1 %8210 to i8
  %8212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8211, i8* %8212, align 1
  %8213 = lshr i64 %8191, 63
  %8214 = trunc i64 %8213 to i8
  %8215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8214, i8* %8215, align 1
  %8216 = lshr i64 %8188, 63
  %8217 = xor i64 %8213, %8216
  %8218 = add i64 %8217, %8213
  %8219 = icmp eq i64 %8218, 2
  %8220 = zext i1 %8219 to i8
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8220, i8* %8221, align 1
  store %struct.Memory* %loadMem_479388, %struct.Memory** %MEMORY
  %loadMem_47938c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8223 = getelementptr inbounds %struct.GPR, %struct.GPR* %8222, i32 0, i32 33
  %8224 = getelementptr inbounds %struct.Reg, %struct.Reg* %8223, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8224 to i64*
  %8225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8226 = getelementptr inbounds %struct.GPR, %struct.GPR* %8225, i32 0, i32 15
  %8227 = getelementptr inbounds %struct.Reg, %struct.Reg* %8226, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8227 to i64*
  %8228 = load i64, i64* %PC.i2
  %8229 = add i64 %8228, 1
  store i64 %8229, i64* %PC.i2
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8231 = load i64, i64* %8230, align 8
  %8232 = add i64 %8231, 8
  %8233 = inttoptr i64 %8231 to i64*
  %8234 = load i64, i64* %8233
  store i64 %8234, i64* %RBP.i3, align 8
  store i64 %8232, i64* %8230, align 8
  store %struct.Memory* %loadMem_47938c, %struct.Memory** %MEMORY
  %loadMem_47938d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8236 = getelementptr inbounds %struct.GPR, %struct.GPR* %8235, i32 0, i32 33
  %8237 = getelementptr inbounds %struct.Reg, %struct.Reg* %8236, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8237 to i64*
  %8238 = load i64, i64* %PC.i1
  %8239 = add i64 %8238, 1
  store i64 %8239, i64* %PC.i1
  %8240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8242 = load i64, i64* %8241, align 8
  %8243 = inttoptr i64 %8242 to i64*
  %8244 = load i64, i64* %8243
  store i64 %8244, i64* %8240, align 8
  %8245 = add i64 %8242, 8
  store i64 %8245, i64* %8241, align 8
  store %struct.Memory* %loadMem_47938d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47938d
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 112
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 112
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
  %23 = xor i64 112, %9
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

define %struct.Memory* @routine_cmpl__0xa__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
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
  %25 = xor i32 %14, 10
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

define %struct.Memory* @routine_jl_.L_478cd3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0xa___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 10
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
  %24 = xor i64 10, %9
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

define %struct.Memory* @routine_jmpq_.L_478cf9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jl_.L_478ceb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x9___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 9
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 9
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
  %24 = xor i64 9, %9
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

define %struct.Memory* @routine_jmpq_.L_478cf4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 8
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 8
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
  %24 = xor i64 8, %9
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

define %struct.Memory* @routine_movl__0x6___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x10___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 16, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 16
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
  %26 = xor i64 16, %9
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = sub i32 %12, %14
  %19 = icmp ult i32 %12, %14
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %15, %13
  %29 = trunc i64 %28 to i32
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %14, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_478d1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 16, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 16
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
  %26 = xor i64 16, %9
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

define %struct.Memory* @routine_jmpq_.L_478d27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8b854(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 12, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 12
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
  %26 = xor i64 12, %9
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

define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = sub i32 %12, %14
  %19 = icmp ult i32 %12, %14
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = xor i64 %15, %13
  %29 = trunc i64 %28 to i32
  %30 = xor i32 %29, %18
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %18, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %18, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %14, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_478d52(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_478d5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0xb060b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 5, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 5
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
  %26 = xor i64 5, %9
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

define %struct.Memory* @routine_jge_.L_478d8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_478d97(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0xb8af28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 13, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 13
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
  %26 = xor i64 13, %9
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

define %struct.Memory* @routine_jge_.L_478dc2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_478dcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb6308c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_478e40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xc___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 12, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 12
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
  %26 = xor i64 12, %9
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_478e24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xc___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 12, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 12
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
  %26 = xor i64 12, %9
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_478e31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__0xb4bd18(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_478e98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0xb___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 11, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 11
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
  %26 = xor i64 11, %9
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_478e81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xb___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 11, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 11
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
  %26 = xor i64 11, %9
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_478e8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_478ed4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_478ee1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0xb6e910(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb6e910_type* @G_0xb6e910 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x28___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 40, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 40
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
  %26 = xor i64 40, %9
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

define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_jge_.L_478f2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x28___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 40, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 40
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
  %26 = xor i64 40, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_478f37(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8af1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8af1c_type* @G_0xb8af1c to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xab0f20(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xab0f20_type* @G_0xab0f20 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_478f93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0xa___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 10
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
  %24 = xor i64 10, %9
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

define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 6, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 6
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
  %26 = xor i64 6, %9
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

define %struct.Memory* @routine_jge_.L_478f7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x6___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 6, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 6
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
  %26 = xor i64 6, %9
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

define %struct.Memory* @routine_jmpq_.L_478f84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__0xb54ce8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb54ce8_type* @G_0xb54ce8 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_478fcb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x9___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 9
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 9
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
  %24 = xor i64 9, %9
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

define %struct.Memory* @routine_jge_.L_478fb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_478fc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jl_.L_479018(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_478ffc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 8, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_479009(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb8b850(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4790a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x7__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_479065(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_479049(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_479056(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4790a3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 8
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 8
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
  %24 = xor i64 8, %9
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

define %struct.Memory* @routine_jge_.L_47908c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_479099(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_4790f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x7___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 7, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 7
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
  %26 = xor i64 7, %9
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

define %struct.Memory* @routine_jge_.L_4790d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 7, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 7
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
  %26 = xor i64 7, %9
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

define %struct.Memory* @routine_jmpq_.L_4790e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb54ce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_479152(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jl_.L_47910f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7__0xb54ce0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 7, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47914d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl__0x7___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 7
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 7
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
  %24 = xor i64 7, %9
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

define %struct.Memory* @routine_jge_.L_479136(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 7
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 7
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
  %24 = xor i64 7, %9
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

define %struct.Memory* @routine_jmpq_.L_479143(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_4791c8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_479183(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_479190(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x69dbd__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x69dbd__rip__type* @G_0x69dbd__rip_ to i64)
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

define %struct.Memory* @routine_movl__eax__0xafd960(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x69d84__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x69d84__rip__type* @G_0x69d84__rip_ to i64)
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_cvttsd2si__xmm1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to double*
  %15 = load double, double* %14, align 1
  %16 = call double @llvm.trunc.f64(double %15)
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = fcmp ogt double %17, 0x41DFFFFFFFC00000
  %19 = fptosi double %16 to i32
  %20 = zext i32 %19 to i64
  %21 = select i1 %18, i64 2147483648, i64 %20
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xb6eecc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_479238(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0xa___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xafd960(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x3e8__0x7afde0___rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8060384
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 11
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1000
  %21 = trunc i64 %20 to i32
  %22 = and i64 %20, 4294967295
  store i64 %22, i64* %RCX, align 8
  %23 = shl i64 %20, 32
  %24 = ashr exact i64 %23, 32
  %25 = icmp ne i64 %24, %20
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = lshr i32 %21, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %26, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x7afde0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = load i32, i32* bitcast (%G_0x7afde0_type* @G_0x7afde0 to i32*)
  %17 = sext i32 %16 to i64
  %18 = shl i64 %15, 32
  %19 = or i64 %18, %11
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %26, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:28:                                     ; preds = %block_400488
  %29 = srem i64 %19, %17
  %30 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %31 = and i64 %20, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %33 = and i64 %29, 4294967295
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %28
  %40 = phi %struct.Memory* [ %27, %24 ], [ %2, %28 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb6eecc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
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

define %struct.Memory* @routine_jge_.L_479221(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb6eecc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb6eecc_type* @G_0xb6eecc to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47922e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb9a090(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb9a090_type* @G_0xb9a090 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_479254(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb9a090___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb9a090_type* @G_0xb9a090 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb63088(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb63088_type* @G_0xb63088 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_479270(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb63088___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb63088_type* @G_0xb63088 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb8a008(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb8a008_type* @G_0xb8a008 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_47928c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb8a008___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8a008_type* @G_0xb8a008 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb8a00c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb8a00c_type* @G_0xb8a00c to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4792a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb8a00c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8a00c_type* @G_0xb8a00c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb01170(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb01170_type* @G_0xb01170 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4792c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb01170___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb01170_type* @G_0xb01170 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb72710(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb72710_type* @G_0xb72710 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4792e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb72710___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb72710_type* @G_0xb72710 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb6eec8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb6eec8_type* @G_0xb6eec8 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4792fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb6eec8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb6eec8_type* @G_0xb6eec8 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xafdfb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xafdfb4_type* @G_0xafdfb4 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_479318(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xafdfb4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xafdfb4_type* @G_0xafdfb4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb9d8e0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb9d8e0_type* @G_0xb9d8e0 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_479334(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb9d8e0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb9d8e0_type* @G_0xb9d8e0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb4bd1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb4bd1c_type* @G_0xb4bd1c to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_479350(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb4bd1c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb4bd1c_type* @G_0xb4bd1c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb8af24(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb8af24_type* @G_0xb8af24 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_47936c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb8af24___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb8af24_type* @G_0xb8af24 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__0xb4a018(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb4a018_type* @G_0xb4a018 to i32*)
  %9 = sub i32 %8, -1
  %10 = icmp ult i32 %8, -1
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
  %19 = xor i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_479388(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xb4a018___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xb4a018_type* @G_0xb4a018 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 112, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 112
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
  %25 = xor i64 112, %9
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
