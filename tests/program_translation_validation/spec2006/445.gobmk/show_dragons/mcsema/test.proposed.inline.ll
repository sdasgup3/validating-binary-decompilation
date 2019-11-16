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
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0x579c45_type = type <{ [8 x i8] }>
%G__0x579e06_type = type <{ [8 x i8] }>
%G__0x57a353_type = type <{ [8 x i8] }>
%G__0x57b444_type = type <{ [8 x i8] }>
%G__0x57b48a_type = type <{ [8 x i8] }>
%G__0x57b4ad_type = type <{ [8 x i8] }>
%G__0x57b4c6_type = type <{ [8 x i8] }>
%G__0x57b4d8_type = type <{ [8 x i8] }>
%G__0x57b4ff_type = type <{ [8 x i8] }>
%G__0x57b526_type = type <{ [8 x i8] }>
%G__0x57b557_type = type <{ [8 x i8] }>
%G__0x57b58a_type = type <{ [8 x i8] }>
%G__0x57b5aa_type = type <{ [8 x i8] }>
%G__0x57b5bc_type = type <{ [8 x i8] }>
%G__0x57b5cd_type = type <{ [8 x i8] }>
%G__0x57b5de_type = type <{ [8 x i8] }>
%G__0x57b687_type = type <{ [8 x i8] }>
%G__0x57b698_type = type <{ [8 x i8] }>
%G__0x57b6bc_type = type <{ [8 x i8] }>
%G__0x57b6e0_type = type <{ [8 x i8] }>
%G__0x57e7b5_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0xab0fe0 = global %G_0xab0fe0_type zeroinitializer
@G__0x579c45 = global %G__0x579c45_type zeroinitializer
@G__0x579e06 = global %G__0x579e06_type zeroinitializer
@G__0x57a353 = global %G__0x57a353_type zeroinitializer
@G__0x57b444 = global %G__0x57b444_type zeroinitializer
@G__0x57b48a = global %G__0x57b48a_type zeroinitializer
@G__0x57b4ad = global %G__0x57b4ad_type zeroinitializer
@G__0x57b4c6 = global %G__0x57b4c6_type zeroinitializer
@G__0x57b4d8 = global %G__0x57b4d8_type zeroinitializer
@G__0x57b4ff = global %G__0x57b4ff_type zeroinitializer
@G__0x57b526 = global %G__0x57b526_type zeroinitializer
@G__0x57b557 = global %G__0x57b557_type zeroinitializer
@G__0x57b58a = global %G__0x57b58a_type zeroinitializer
@G__0x57b5aa = global %G__0x57b5aa_type zeroinitializer
@G__0x57b5bc = global %G__0x57b5bc_type zeroinitializer
@G__0x57b5cd = global %G__0x57b5cd_type zeroinitializer
@G__0x57b5de = global %G__0x57b5de_type zeroinitializer
@G__0x57b687 = global %G__0x57b687_type zeroinitializer
@G__0x57b698 = global %G__0x57b698_type zeroinitializer
@G__0x57b6bc = global %G__0x57b6bc_type zeroinitializer
@G__0x57b6e0 = global %G__0x57b6e0_type zeroinitializer
@G__0x57e7b5 = global %G__0x57e7b5_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

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

declare %struct.Memory* @sub_451ce0.color_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_415900.is_ko_point(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @show_dragons(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4229a0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4229a0, %struct.Memory** %MEMORY
  %loadMem_4229a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i917 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i918 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i917
  %27 = load i64, i64* %PC.i916
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i916
  store i64 %26, i64* %RBP.i918, align 8
  store %struct.Memory* %loadMem_4229a1, %struct.Memory** %MEMORY
  %loadMem_4229a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 31
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R15.i915 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R15.i915
  %36 = load i64, i64* %PC.i914
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i914
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_4229a4, %struct.Memory** %MEMORY
  %loadMem_4229a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14.i913 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %R14.i913
  %49 = load i64, i64* %PC.i912
  %50 = add i64 %49, 2
  store i64 %50, i64* %PC.i912
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_4229a6, %struct.Memory** %MEMORY
  %loadMem_4229a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RBX.i911 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RBX.i911
  %62 = load i64, i64* %PC.i910
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC.i910
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8
  store %struct.Memory* %loadMem_4229a8, %struct.Memory** %MEMORY
  %loadMem_4229a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %69 = getelementptr inbounds %struct.GPR, %struct.GPR* %68, i32 0, i32 33
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %69, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %70 to i64*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %RSP.i909 = bitcast %union.anon* %73 to i64*
  %74 = load i64, i64* %RSP.i909
  %75 = load i64, i64* %PC.i908
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i908
  %77 = sub i64 %74, 232
  store i64 %77, i64* %RSP.i909, align 8
  %78 = icmp ult i64 %74, 232
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %79, i8* %80, align 1
  %81 = trunc i64 %77 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %86, i8* %87, align 1
  %88 = xor i64 232, %74
  %89 = xor i64 %88, %77
  %90 = lshr i64 %89, 4
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %92, i8* %93, align 1
  %94 = icmp eq i64 %77, 0
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %95, i8* %96, align 1
  %97 = lshr i64 %77, 63
  %98 = trunc i64 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %98, i8* %99, align 1
  %100 = lshr i64 %74, 63
  %101 = xor i64 %97, %100
  %102 = add i64 %101, %100
  %103 = icmp eq i64 %102, 2
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %104, i8* %105, align 1
  store %struct.Memory* %loadMem_4229a9, %struct.Memory** %MEMORY
  %loadMem_4229b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i907 = bitcast %union.anon* %111 to i64*
  %112 = load i64, i64* %RBP.i907
  %113 = sub i64 %112, 28
  %114 = load i64, i64* %PC.i906
  %115 = add i64 %114, 7
  store i64 %115, i64* %PC.i906
  %116 = inttoptr i64 %113 to i32*
  store i32 21, i32* %116
  store %struct.Memory* %loadMem_4229b0, %struct.Memory** %MEMORY
  br label %block_.L_4229b7

block_.L_4229b7:                                  ; preds = %block_.L_422dd5, %entry
  %loadMem_4229b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 33
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i905 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i905
  %124 = sub i64 %123, 28
  %125 = load i64, i64* %PC.i904
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC.i904
  %127 = inttoptr i64 %124 to i32*
  %128 = load i32, i32* %127
  %129 = sub i32 %128, 400
  %130 = icmp ult i32 %128, 400
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %131, i8* %132, align 1
  %133 = and i32 %129, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %133)
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = xor i8 %136, 1
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %137, i8* %138, align 1
  %139 = xor i32 %128, 400
  %140 = xor i32 %139, %129
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %143, i8* %144, align 1
  %145 = icmp eq i32 %129, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1
  %148 = lshr i32 %129, 31
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %149, i8* %150, align 1
  %151 = lshr i32 %128, 31
  %152 = xor i32 %148, %151
  %153 = add i32 %152, %151
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %155, i8* %156, align 1
  store %struct.Memory* %loadMem_4229b7, %struct.Memory** %MEMORY
  %loadMem_4229be = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %PC.i903
  %161 = add i64 %160, 1061
  %162 = load i64, i64* %PC.i903
  %163 = add i64 %162, 6
  %164 = load i64, i64* %PC.i903
  %165 = add i64 %164, 6
  store i64 %165, i64* %PC.i903
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %167 = load i8, i8* %166, align 1
  %168 = icmp ne i8 %167, 0
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %170 = load i8, i8* %169, align 1
  %171 = icmp ne i8 %170, 0
  %172 = xor i1 %168, %171
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %BRANCH_TAKEN, align 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %176 = select i1 %172, i64 %163, i64 %161
  store i64 %176, i64* %175, align 8
  store %struct.Memory* %loadMem_4229be, %struct.Memory** %MEMORY
  %loadBr_4229be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4229be = icmp eq i8 %loadBr_4229be, 1
  br i1 %cmpBr_4229be, label %block_.L_422de3, label %block_4229c4

block_4229c4:                                     ; preds = %block_.L_4229b7
  %loadMem_4229c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RAX.i902 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %PC.i901
  %184 = add i64 %183, 10
  store i64 %184, i64* %PC.i901
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i902, align 8
  store %struct.Memory* %loadMem_4229c4, %struct.Memory** %MEMORY
  %loadMem_4229ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RCX.i899 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i900
  %195 = sub i64 %194, 28
  %196 = load i64, i64* %PC.i898
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC.i898
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %RCX.i899, align 8
  store %struct.Memory* %loadMem_4229ce, %struct.Memory** %MEMORY
  %loadMem_4229d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RCX.i897 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RCX.i897
  %208 = load i64, i64* %PC.i896
  %209 = add i64 %208, 7
  store i64 %209, i64* %PC.i896
  %210 = sext i64 %207 to i128
  %211 = and i128 %210, -18446744073709551616
  %212 = zext i64 %207 to i128
  %213 = or i128 %211, %212
  %214 = mul i128 380, %213
  %215 = trunc i128 %214 to i64
  store i64 %215, i64* %RCX.i897, align 8
  %216 = sext i64 %215 to i128
  %217 = icmp ne i128 %216, %214
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %218, i8* %219, align 1
  %220 = trunc i128 %214 to i32
  %221 = and i32 %220, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %227, align 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %228, align 1
  %229 = lshr i64 %215, 63
  %230 = trunc i64 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %230, i8* %231, align 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %218, i8* %232, align 1
  store %struct.Memory* %loadMem_4229d2, %struct.Memory** %MEMORY
  %loadMem_4229d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RCX.i895 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RAX.i894
  %243 = load i64, i64* %RCX.i895
  %244 = load i64, i64* %PC.i893
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC.i893
  %246 = add i64 %243, %242
  store i64 %246, i64* %RAX.i894, align 8
  %247 = icmp ult i64 %246, %242
  %248 = icmp ult i64 %246, %243
  %249 = or i1 %247, %248
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %250, i8* %251, align 1
  %252 = trunc i64 %246 to i32
  %253 = and i32 %252, 255
  %254 = call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %257, i8* %258, align 1
  %259 = xor i64 %243, %242
  %260 = xor i64 %259, %246
  %261 = lshr i64 %260, 4
  %262 = trunc i64 %261 to i8
  %263 = and i8 %262, 1
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %263, i8* %264, align 1
  %265 = icmp eq i64 %246, 0
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %266, i8* %267, align 1
  %268 = lshr i64 %246, 63
  %269 = trunc i64 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %269, i8* %270, align 1
  %271 = lshr i64 %242, 63
  %272 = lshr i64 %243, 63
  %273 = xor i64 %268, %271
  %274 = xor i64 %268, %272
  %275 = add i64 %273, %274
  %276 = icmp eq i64 %275, 2
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %277, i8* %278, align 1
  store %struct.Memory* %loadMem_4229d9, %struct.Memory** %MEMORY
  %loadMem_4229dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RAX.i891 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 15
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RBP.i892 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %RBP.i892
  %289 = sub i64 %288, 40
  %290 = load i64, i64* %RAX.i891
  %291 = load i64, i64* %PC.i890
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC.i890
  %293 = inttoptr i64 %289 to i64*
  store i64 %290, i64* %293
  store %struct.Memory* %loadMem_4229dc, %struct.Memory** %MEMORY
  %loadMem_4229e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RAX.i888 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 15
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RBP.i889 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %RBP.i889
  %304 = sub i64 %303, 28
  %305 = load i64, i64* %PC.i887
  %306 = add i64 %305, 4
  store i64 %306, i64* %PC.i887
  %307 = inttoptr i64 %304 to i32*
  %308 = load i32, i32* %307
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %RAX.i888, align 8
  store %struct.Memory* %loadMem_4229e0, %struct.Memory** %MEMORY
  %loadMem_4229e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 33
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RAX.i885 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 7
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RDX.i886 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %RAX.i885
  %320 = add i64 %319, 12099168
  %321 = load i64, i64* %PC.i884
  %322 = add i64 %321, 8
  store i64 %322, i64* %PC.i884
  %323 = inttoptr i64 %320 to i8*
  %324 = load i8, i8* %323
  %325 = zext i8 %324 to i64
  store i64 %325, i64* %RDX.i886, align 8
  store %struct.Memory* %loadMem_4229e4, %struct.Memory** %MEMORY
  %loadMem_4229ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 7
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %EDX.i883 = bitcast %union.anon* %331 to i32*
  %332 = load i32, i32* %EDX.i883
  %333 = zext i32 %332 to i64
  %334 = load i64, i64* %PC.i882
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i882
  %336 = sub i32 %332, 1
  %337 = icmp ult i32 %332, 1
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %338, i8* %339, align 1
  %340 = and i32 %336, 255
  %341 = call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %344, i8* %345, align 1
  %346 = xor i64 1, %333
  %347 = trunc i64 %346 to i32
  %348 = xor i32 %347, %336
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %351, i8* %352, align 1
  %353 = icmp eq i32 %336, 0
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %354, i8* %355, align 1
  %356 = lshr i32 %336, 31
  %357 = trunc i32 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %357, i8* %358, align 1
  %359 = lshr i32 %332, 31
  %360 = xor i32 %356, %359
  %361 = add i32 %360, %359
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %363, i8* %364, align 1
  store %struct.Memory* %loadMem_4229ec, %struct.Memory** %MEMORY
  %loadMem_4229ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %PC.i881
  %369 = add i64 %368, 32
  %370 = load i64, i64* %PC.i881
  %371 = add i64 %370, 6
  %372 = load i64, i64* %PC.i881
  %373 = add i64 %372, 6
  store i64 %373, i64* %PC.i881
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %375 = load i8, i8* %374, align 1
  store i8 %375, i8* %BRANCH_TAKEN, align 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %377 = icmp ne i8 %375, 0
  %378 = select i1 %377, i64 %369, i64 %371
  store i64 %378, i64* %376, align 8
  store %struct.Memory* %loadMem_4229ef, %struct.Memory** %MEMORY
  %loadBr_4229ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4229ef = icmp eq i8 %loadBr_4229ef, 1
  br i1 %cmpBr_4229ef, label %block_.L_422a0f, label %block_4229f5

block_4229f5:                                     ; preds = %block_4229c4
  %loadMem_4229f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RAX.i879 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 15
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RBP.i880 = bitcast %union.anon* %387 to i64*
  %388 = load i64, i64* %RBP.i880
  %389 = sub i64 %388, 28
  %390 = load i64, i64* %PC.i878
  %391 = add i64 %390, 4
  store i64 %391, i64* %PC.i878
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392
  %394 = sext i32 %393 to i64
  store i64 %394, i64* %RAX.i879, align 8
  store %struct.Memory* %loadMem_4229f5, %struct.Memory** %MEMORY
  %loadMem_4229f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 33
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %397 to i64*
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %RAX.i876 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RCX.i877 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %RAX.i876
  %405 = add i64 %404, 12099168
  %406 = load i64, i64* %PC.i875
  %407 = add i64 %406, 8
  store i64 %407, i64* %PC.i875
  %408 = inttoptr i64 %405 to i8*
  %409 = load i8, i8* %408
  %410 = zext i8 %409 to i64
  store i64 %410, i64* %RCX.i877, align 8
  store %struct.Memory* %loadMem_4229f9, %struct.Memory** %MEMORY
  %loadMem_422a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %ECX.i874 = bitcast %union.anon* %416 to i32*
  %417 = load i32, i32* %ECX.i874
  %418 = zext i32 %417 to i64
  %419 = load i64, i64* %PC.i873
  %420 = add i64 %419, 3
  store i64 %420, i64* %PC.i873
  %421 = sub i32 %417, 2
  %422 = icmp ult i32 %417, 2
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %423, i8* %424, align 1
  %425 = and i32 %421, 255
  %426 = call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %429, i8* %430, align 1
  %431 = xor i64 2, %418
  %432 = trunc i64 %431 to i32
  %433 = xor i32 %432, %421
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %436, i8* %437, align 1
  %438 = icmp eq i32 %421, 0
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %439, i8* %440, align 1
  %441 = lshr i32 %421, 31
  %442 = trunc i32 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %442, i8* %443, align 1
  %444 = lshr i32 %417, 31
  %445 = xor i32 %441, %444
  %446 = add i32 %445, %444
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %448, i8* %449, align 1
  store %struct.Memory* %loadMem_422a01, %struct.Memory** %MEMORY
  %loadMem_422a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %PC.i872
  %454 = add i64 %453, 11
  %455 = load i64, i64* %PC.i872
  %456 = add i64 %455, 6
  %457 = load i64, i64* %PC.i872
  %458 = add i64 %457, 6
  store i64 %458, i64* %PC.i872
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %460 = load i8, i8* %459, align 1
  store i8 %460, i8* %BRANCH_TAKEN, align 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %462 = icmp ne i8 %460, 0
  %463 = select i1 %462, i64 %454, i64 %456
  store i64 %463, i64* %461, align 8
  store %struct.Memory* %loadMem_422a04, %struct.Memory** %MEMORY
  %loadBr_422a04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422a04 = icmp eq i8 %loadBr_422a04, 1
  br i1 %cmpBr_422a04, label %block_.L_422a0f, label %block_422a0a

block_422a0a:                                     ; preds = %block_4229f5
  %loadMem_422a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %PC.i871
  %468 = add i64 %467, 971
  %469 = load i64, i64* %PC.i871
  %470 = add i64 %469, 5
  store i64 %470, i64* %PC.i871
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %468, i64* %471, align 8
  store %struct.Memory* %loadMem_422a0a, %struct.Memory** %MEMORY
  br label %block_.L_422dd5

block_.L_422a0f:                                  ; preds = %block_4229f5, %block_4229c4
  %loadMem_422a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RAX.i869 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 15
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %RBP.i870
  %482 = sub i64 %481, 40
  %483 = load i64, i64* %PC.i868
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC.i868
  %485 = inttoptr i64 %482 to i64*
  %486 = load i64, i64* %485
  store i64 %486, i64* %RAX.i869, align 8
  store %struct.Memory* %loadMem_422a0f, %struct.Memory** %MEMORY
  %loadMem_422a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RAX.i866 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 5
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RCX.i867 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %RAX.i866
  %497 = add i64 %496, 12
  %498 = load i64, i64* %PC.i865
  %499 = add i64 %498, 3
  store i64 %499, i64* %PC.i865
  %500 = inttoptr i64 %497 to i32*
  %501 = load i32, i32* %500
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RCX.i867, align 8
  store %struct.Memory* %loadMem_422a13, %struct.Memory** %MEMORY
  %loadMem_422a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 5
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %ECX.i863 = bitcast %union.anon* %508 to i32*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 15
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RBP.i864 = bitcast %union.anon* %511 to i64*
  %512 = load i32, i32* %ECX.i863
  %513 = zext i32 %512 to i64
  %514 = load i64, i64* %RBP.i864
  %515 = sub i64 %514, 28
  %516 = load i64, i64* %PC.i862
  %517 = add i64 %516, 3
  store i64 %517, i64* %PC.i862
  %518 = inttoptr i64 %515 to i32*
  %519 = load i32, i32* %518
  %520 = sub i32 %512, %519
  %521 = icmp ult i32 %512, %519
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %522, i8* %523, align 1
  %524 = and i32 %520, 255
  %525 = call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %528, i8* %529, align 1
  %530 = xor i32 %519, %512
  %531 = xor i32 %530, %520
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %534, i8* %535, align 1
  %536 = icmp eq i32 %520, 0
  %537 = zext i1 %536 to i8
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %537, i8* %538, align 1
  %539 = lshr i32 %520, 31
  %540 = trunc i32 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %540, i8* %541, align 1
  %542 = lshr i32 %512, 31
  %543 = lshr i32 %519, 31
  %544 = xor i32 %543, %542
  %545 = xor i32 %539, %542
  %546 = add i32 %545, %544
  %547 = icmp eq i32 %546, 2
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %548, i8* %549, align 1
  store %struct.Memory* %loadMem_422a16, %struct.Memory** %MEMORY
  %loadMem_422a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 33
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %552 to i64*
  %553 = load i64, i64* %PC.i861
  %554 = add i64 %553, 951
  %555 = load i64, i64* %PC.i861
  %556 = add i64 %555, 6
  %557 = load i64, i64* %PC.i861
  %558 = add i64 %557, 6
  store i64 %558, i64* %PC.i861
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %560 = load i8, i8* %559, align 1
  %561 = icmp eq i8 %560, 0
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %BRANCH_TAKEN, align 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %564 = select i1 %561, i64 %554, i64 %556
  store i64 %564, i64* %563, align 8
  store %struct.Memory* %loadMem_422a19, %struct.Memory** %MEMORY
  %loadBr_422a19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422a19 = icmp eq i8 %loadBr_422a19, 1
  br i1 %cmpBr_422a19, label %block_.L_422dd0, label %block_422a1f

block_422a1f:                                     ; preds = %block_.L_422a0f
  %loadMem_422a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RAX.i860 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %PC.i859
  %572 = add i64 %571, 10
  store i64 %572, i64* %PC.i859
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i860, align 8
  store %struct.Memory* %loadMem_422a1f, %struct.Memory** %MEMORY
  %loadMem_422a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 9
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RSI.i857 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RBP.i858
  %583 = sub i64 %582, 28
  %584 = load i64, i64* %PC.i856
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC.i856
  %586 = inttoptr i64 %583 to i32*
  %587 = load i32, i32* %586
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RSI.i857, align 8
  store %struct.Memory* %loadMem_422a29, %struct.Memory** %MEMORY
  %loadMem_422a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 5
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 15
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %597 to i64*
  %598 = load i64, i64* %RBP.i855
  %599 = sub i64 %598, 28
  %600 = load i64, i64* %PC.i853
  %601 = add i64 %600, 4
  store i64 %601, i64* %PC.i853
  %602 = inttoptr i64 %599 to i32*
  %603 = load i32, i32* %602
  %604 = sext i32 %603 to i64
  store i64 %604, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_422a2c, %struct.Memory** %MEMORY
  %loadMem_422a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %606 = getelementptr inbounds %struct.GPR, %struct.GPR* %605, i32 0, i32 33
  %607 = getelementptr inbounds %struct.Reg, %struct.Reg* %606, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %607 to i64*
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %609 = getelementptr inbounds %struct.GPR, %struct.GPR* %608, i32 0, i32 5
  %610 = getelementptr inbounds %struct.Reg, %struct.Reg* %609, i32 0, i32 0
  %RCX.i852 = bitcast %union.anon* %610 to i64*
  %611 = load i64, i64* %RCX.i852
  %612 = load i64, i64* %PC.i851
  %613 = add i64 %612, 4
  store i64 %613, i64* %PC.i851
  %614 = sext i64 %611 to i128
  %615 = and i128 %614, -18446744073709551616
  %616 = zext i64 %611 to i128
  %617 = or i128 %615, %616
  %618 = mul i128 76, %617
  %619 = trunc i128 %618 to i64
  store i64 %619, i64* %RCX.i852, align 8
  %620 = sext i64 %619 to i128
  %621 = icmp ne i128 %620, %618
  %622 = zext i1 %621 to i8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %622, i8* %623, align 1
  %624 = trunc i128 %618 to i32
  %625 = and i32 %624, 255
  %626 = call i32 @llvm.ctpop.i32(i32 %625)
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %629, i8* %630, align 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %631, align 1
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %632, align 1
  %633 = lshr i64 %619, 63
  %634 = trunc i64 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %634, i8* %635, align 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %622, i8* %636, align 1
  store %struct.Memory* %loadMem_422a30, %struct.Memory** %MEMORY
  %loadMem_422a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 1
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RAX.i849 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 5
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RAX.i849
  %647 = load i64, i64* %RCX.i850
  %648 = load i64, i64* %PC.i848
  %649 = add i64 %648, 3
  store i64 %649, i64* %PC.i848
  %650 = add i64 %647, %646
  store i64 %650, i64* %RAX.i849, align 8
  %651 = icmp ult i64 %650, %646
  %652 = icmp ult i64 %650, %647
  %653 = or i1 %651, %652
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %654, i8* %655, align 1
  %656 = trunc i64 %650 to i32
  %657 = and i32 %656, 255
  %658 = call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %661, i8* %662, align 1
  %663 = xor i64 %647, %646
  %664 = xor i64 %663, %650
  %665 = lshr i64 %664, 4
  %666 = trunc i64 %665 to i8
  %667 = and i8 %666, 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %667, i8* %668, align 1
  %669 = icmp eq i64 %650, 0
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %670, i8* %671, align 1
  %672 = lshr i64 %650, 63
  %673 = trunc i64 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %673, i8* %674, align 1
  %675 = lshr i64 %646, 63
  %676 = lshr i64 %647, 63
  %677 = xor i64 %672, %675
  %678 = xor i64 %672, %676
  %679 = add i64 %677, %678
  %680 = icmp eq i64 %679, 2
  %681 = zext i1 %680 to i8
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %681, i8* %682, align 1
  store %struct.Memory* %loadMem_422a34, %struct.Memory** %MEMORY
  %loadMem_422a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 7
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RDX.i847 = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %RAX.i846
  %693 = add i64 %692, 8
  %694 = load i64, i64* %PC.i845
  %695 = add i64 %694, 3
  store i64 %695, i64* %PC.i845
  %696 = inttoptr i64 %693 to i32*
  %697 = load i32, i32* %696
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RDX.i847, align 8
  store %struct.Memory* %loadMem_422a37, %struct.Memory** %MEMORY
  %loadMem_422a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 1
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 15
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %707 to i64*
  %708 = load i64, i64* %RBP.i844
  %709 = sub i64 %708, 28
  %710 = load i64, i64* %PC.i842
  %711 = add i64 %710, 4
  store i64 %711, i64* %PC.i842
  %712 = inttoptr i64 %709 to i32*
  %713 = load i32, i32* %712
  %714 = sext i32 %713 to i64
  store i64 %714, i64* %RAX.i843, align 8
  store %struct.Memory* %loadMem_422a3a, %struct.Memory** %MEMORY
  %loadMem_422a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 1
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 11
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RDI.i841 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %RAX.i840
  %725 = add i64 %724, 12099168
  %726 = load i64, i64* %PC.i839
  %727 = add i64 %726, 8
  store i64 %727, i64* %PC.i839
  %728 = inttoptr i64 %725 to i8*
  %729 = load i8, i8* %728
  %730 = zext i8 %729 to i64
  store i64 %730, i64* %RDI.i841, align 8
  store %struct.Memory* %loadMem_422a3e, %struct.Memory** %MEMORY
  %loadMem_422a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 33
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 9
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %ESI.i837 = bitcast %union.anon* %736 to i32*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 15
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RBP.i838 = bitcast %union.anon* %739 to i64*
  %740 = load i64, i64* %RBP.i838
  %741 = sub i64 %740, 64
  %742 = load i32, i32* %ESI.i837
  %743 = zext i32 %742 to i64
  %744 = load i64, i64* %PC.i836
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC.i836
  %746 = inttoptr i64 %741 to i32*
  store i32 %742, i32* %746
  store %struct.Memory* %loadMem_422a46, %struct.Memory** %MEMORY
  %loadMem_422a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 33
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 7
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %EDX.i834 = bitcast %union.anon* %752 to i32*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 15
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %755 to i64*
  %756 = load i64, i64* %RBP.i835
  %757 = sub i64 %756, 68
  %758 = load i32, i32* %EDX.i834
  %759 = zext i32 %758 to i64
  %760 = load i64, i64* %PC.i833
  %761 = add i64 %760, 3
  store i64 %761, i64* %PC.i833
  %762 = inttoptr i64 %757 to i32*
  store i32 %758, i32* %762
  store %struct.Memory* %loadMem_422a49, %struct.Memory** %MEMORY
  %loadMem1_422a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %765 to i64*
  %766 = load i64, i64* %PC.i832
  %767 = add i64 %766, 193172
  %768 = load i64, i64* %PC.i832
  %769 = add i64 %768, 5
  %770 = load i64, i64* %PC.i832
  %771 = add i64 %770, 5
  store i64 %771, i64* %PC.i832
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %773 = load i64, i64* %772, align 8
  %774 = add i64 %773, -8
  %775 = inttoptr i64 %774 to i64*
  store i64 %769, i64* %775
  store i64 %774, i64* %772, align 8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %767, i64* %776, align 8
  store %struct.Memory* %loadMem1_422a4c, %struct.Memory** %MEMORY
  %loadMem2_422a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422a4c = load i64, i64* %3
  %call2_422a4c = call %struct.Memory* @sub_451ce0.color_to_string(%struct.State* %0, i64 %loadPC_422a4c, %struct.Memory* %loadMem2_422a4c)
  store %struct.Memory* %call2_422a4c, %struct.Memory** %MEMORY
  %loadMem_422a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 11
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RDI.i831 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %PC.i830
  %784 = add i64 %783, 10
  store i64 %784, i64* %PC.i830
  store i64 ptrtoint (%G__0x57b444_type* @G__0x57b444 to i64), i64* %RDI.i831, align 8
  store %struct.Memory* %loadMem_422a51, %struct.Memory** %MEMORY
  %loadMem_422a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 5
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 15
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %RBP.i829
  %795 = sub i64 %794, 40
  %796 = load i64, i64* %PC.i827
  %797 = add i64 %796, 4
  store i64 %797, i64* %PC.i827
  %798 = inttoptr i64 %795 to i64*
  %799 = load i64, i64* %798
  store i64 %799, i64* %RCX.i828, align 8
  store %struct.Memory* %loadMem_422a5b, %struct.Memory** %MEMORY
  %loadMem_422a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 17
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %805 to i32*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 5
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %808 to i64*
  %809 = bitcast i32* %R8D.i to i64*
  %810 = load i64, i64* %RCX.i826
  %811 = add i64 %810, 4
  %812 = load i64, i64* %PC.i825
  %813 = add i64 %812, 4
  store i64 %813, i64* %PC.i825
  %814 = inttoptr i64 %811 to i32*
  %815 = load i32, i32* %814
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %809, align 8
  store %struct.Memory* %loadMem_422a5f, %struct.Memory** %MEMORY
  %loadMem_422a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 33
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %819 to i64*
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 5
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %RCX.i823 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 15
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %RBP.i824
  %827 = sub i64 %826, 40
  %828 = load i64, i64* %PC.i822
  %829 = add i64 %828, 4
  store i64 %829, i64* %PC.i822
  %830 = inttoptr i64 %827 to i64*
  %831 = load i64, i64* %830
  store i64 %831, i64* %RCX.i823, align 8
  store %struct.Memory* %loadMem_422a63, %struct.Memory** %MEMORY
  %loadMem_422a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 5
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %839 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %838, i64 0, i64 0
  %YMM0.i821 = bitcast %union.VectorReg* %839 to %"class.std::bitset"*
  %840 = bitcast %"class.std::bitset"* %YMM0.i821 to i8*
  %841 = load i64, i64* %RCX.i820
  %842 = add i64 %841, 8
  %843 = load i64, i64* %PC.i819
  %844 = add i64 %843, 5
  store i64 %844, i64* %PC.i819
  %845 = inttoptr i64 %842 to float*
  %846 = load float, float* %845
  %847 = fpext float %846 to double
  %848 = bitcast i8* %840 to double*
  store double %847, double* %848, align 1
  store %struct.Memory* %loadMem_422a67, %struct.Memory** %MEMORY
  %loadMem_422a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 5
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RCX.i817 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 15
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %857 to i64*
  %858 = load i64, i64* %RBP.i818
  %859 = sub i64 %858, 40
  %860 = load i64, i64* %PC.i816
  %861 = add i64 %860, 4
  store i64 %861, i64* %PC.i816
  %862 = inttoptr i64 %859 to i64*
  %863 = load i64, i64* %862
  store i64 %863, i64* %RCX.i817, align 8
  store %struct.Memory* %loadMem_422a6c, %struct.Memory** %MEMORY
  %loadMem_422a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 19
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %R9D.i814 = bitcast %union.anon* %869 to i32*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 5
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RCX.i815 = bitcast %union.anon* %872 to i64*
  %873 = bitcast i32* %R9D.i814 to i64*
  %874 = load i64, i64* %RCX.i815
  %875 = add i64 %874, 44
  %876 = load i64, i64* %PC.i813
  %877 = add i64 %876, 4
  store i64 %877, i64* %PC.i813
  %878 = inttoptr i64 %875 to i32*
  %879 = load i32, i32* %878
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %873, align 8
  store %struct.Memory* %loadMem_422a70, %struct.Memory** %MEMORY
  %loadMem_422a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 5
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RCX.i811 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RBP.i812
  %891 = sub i64 %890, 40
  %892 = load i64, i64* %PC.i810
  %893 = add i64 %892, 4
  store i64 %893, i64* %PC.i810
  %894 = inttoptr i64 %891 to i64*
  %895 = load i64, i64* %894
  store i64 %895, i64* %RCX.i811, align 8
  store %struct.Memory* %loadMem_422a74, %struct.Memory** %MEMORY
  %loadMem_422a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 33
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %898 to i64*
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 5
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 7
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RDX.i809 = bitcast %union.anon* %904 to i64*
  %905 = load i64, i64* %RCX.i808
  %906 = add i64 %905, 16
  %907 = load i64, i64* %PC.i807
  %908 = add i64 %907, 3
  store i64 %908, i64* %PC.i807
  %909 = inttoptr i64 %906 to i32*
  %910 = load i32, i32* %909
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RDX.i809, align 8
  store %struct.Memory* %loadMem_422a78, %struct.Memory** %MEMORY
  %loadMem_422a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 5
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RCX.i805 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 15
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %RBP.i806
  %922 = sub i64 %921, 40
  %923 = load i64, i64* %PC.i804
  %924 = add i64 %923, 4
  store i64 %924, i64* %PC.i804
  %925 = inttoptr i64 %922 to i64*
  %926 = load i64, i64* %925
  store i64 %926, i64* %RCX.i805, align 8
  store %struct.Memory* %loadMem_422a7b, %struct.Memory** %MEMORY
  %loadMem_422a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 5
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RCX.i802 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 9
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RSI.i803 = bitcast %union.anon* %935 to i64*
  %936 = load i64, i64* %RCX.i802
  %937 = add i64 %936, 20
  %938 = load i64, i64* %PC.i801
  %939 = add i64 %938, 3
  store i64 %939, i64* %PC.i801
  %940 = inttoptr i64 %937 to i32*
  %941 = load i32, i32* %940
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RSI.i803, align 8
  store %struct.Memory* %loadMem_422a7f, %struct.Memory** %MEMORY
  %loadMem_422a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 5
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RCX.i799 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 15
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RBP.i800 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RBP.i800
  %953 = sub i64 %952, 40
  %954 = load i64, i64* %PC.i798
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC.i798
  %956 = inttoptr i64 %953 to i64*
  %957 = load i64, i64* %956
  store i64 %957, i64* %RCX.i799, align 8
  store %struct.Memory* %loadMem_422a82, %struct.Memory** %MEMORY
  %loadMem_422a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 21
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %R10D.i796 = bitcast %union.anon* %963 to i32*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 5
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %966 to i64*
  %967 = bitcast i32* %R10D.i796 to i64*
  %968 = load i64, i64* %RCX.i797
  %969 = add i64 %968, 24
  %970 = load i64, i64* %PC.i795
  %971 = add i64 %970, 4
  store i64 %971, i64* %PC.i795
  %972 = inttoptr i64 %969 to i32*
  %973 = load i32, i32* %972
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %967, align 8
  store %struct.Memory* %loadMem_422a86, %struct.Memory** %MEMORY
  %loadMem_422a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 5
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 15
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RBP.i794
  %985 = sub i64 %984, 40
  %986 = load i64, i64* %PC.i792
  %987 = add i64 %986, 4
  store i64 %987, i64* %PC.i792
  %988 = inttoptr i64 %985 to i64*
  %989 = load i64, i64* %988
  store i64 %989, i64* %RCX.i793, align 8
  store %struct.Memory* %loadMem_422a8a, %struct.Memory** %MEMORY
  %loadMem_422a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 33
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %992 to i64*
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 23
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %R11D.i790 = bitcast %union.anon* %995 to i32*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %998 to i64*
  %999 = bitcast i32* %R11D.i790 to i64*
  %1000 = load i64, i64* %RCX.i791
  %1001 = add i64 %1000, 28
  %1002 = load i64, i64* %PC.i789
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC.i789
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %999, align 8
  store %struct.Memory* %loadMem_422a8e, %struct.Memory** %MEMORY
  %loadMem_422a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 33
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 3
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBX.i787 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 15
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %1015 to i64*
  %1016 = load i64, i64* %RBP.i788
  %1017 = sub i64 %1016, 64
  %1018 = load i64, i64* %PC.i786
  %1019 = add i64 %1018, 3
  store i64 %1019, i64* %PC.i786
  %1020 = inttoptr i64 %1017 to i32*
  %1021 = load i32, i32* %1020
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RBX.i787, align 8
  store %struct.Memory* %loadMem_422a92, %struct.Memory** %MEMORY
  %loadMem_422a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 9
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %ESI.i784 = bitcast %union.anon* %1028 to i32*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RBP.i785
  %1033 = sub i64 %1032, 72
  %1034 = load i32, i32* %ESI.i784
  %1035 = zext i32 %1034 to i64
  %1036 = load i64, i64* %PC.i783
  %1037 = add i64 %1036, 3
  store i64 %1037, i64* %PC.i783
  %1038 = inttoptr i64 %1033 to i32*
  store i32 %1034, i32* %1038
  store %struct.Memory* %loadMem_422a95, %struct.Memory** %MEMORY
  %loadMem_422a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 3
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %EBX.i781 = bitcast %union.anon* %1044 to i32*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 9
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RSI.i782 = bitcast %union.anon* %1047 to i64*
  %1048 = load i32, i32* %EBX.i781
  %1049 = zext i32 %1048 to i64
  %1050 = load i64, i64* %PC.i780
  %1051 = add i64 %1050, 2
  store i64 %1051, i64* %PC.i780
  %1052 = and i64 %1049, 4294967295
  store i64 %1052, i64* %RSI.i782, align 8
  store %struct.Memory* %loadMem_422a98, %struct.Memory** %MEMORY
  %loadMem_422a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 29
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %R14D.i778 = bitcast %union.anon* %1058 to i32*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %1061 to i64*
  %1062 = bitcast i32* %R14D.i778 to i64*
  %1063 = load i64, i64* %RBP.i779
  %1064 = sub i64 %1063, 68
  %1065 = load i64, i64* %PC.i777
  %1066 = add i64 %1065, 4
  store i64 %1066, i64* %PC.i777
  %1067 = inttoptr i64 %1064 to i32*
  %1068 = load i32, i32* %1067
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %1062, align 8
  store %struct.Memory* %loadMem_422a9a, %struct.Memory** %MEMORY
  %loadMem_422a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 7
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %EDX.i775 = bitcast %union.anon* %1075 to i32*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 15
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RBP.i776
  %1080 = sub i64 %1079, 76
  %1081 = load i32, i32* %EDX.i775
  %1082 = zext i32 %1081 to i64
  %1083 = load i64, i64* %PC.i774
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC.i774
  %1085 = inttoptr i64 %1080 to i32*
  store i32 %1081, i32* %1085
  store %struct.Memory* %loadMem_422a9e, %struct.Memory** %MEMORY
  %loadMem_422aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 29
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %R14D.i772 = bitcast %union.anon* %1091 to i32*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 7
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RDX.i773 = bitcast %union.anon* %1094 to i64*
  %1095 = load i32, i32* %R14D.i772
  %1096 = zext i32 %1095 to i64
  %1097 = load i64, i64* %PC.i771
  %1098 = add i64 %1097, 3
  store i64 %1098, i64* %PC.i771
  %1099 = and i64 %1096, 4294967295
  store i64 %1099, i64* %RDX.i773, align 8
  store %struct.Memory* %loadMem_422aa1, %struct.Memory** %MEMORY
  %loadMem_422aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 1
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RAX.i769 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 5
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %RAX.i769
  %1110 = load i64, i64* %PC.i768
  %1111 = add i64 %1110, 3
  store i64 %1111, i64* %PC.i768
  store i64 %1109, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_422aa4, %struct.Memory** %MEMORY
  %loadMem_422aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 31
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %R15D.i766 = bitcast %union.anon* %1117 to i32*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 15
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %1120 to i64*
  %1121 = bitcast i32* %R15D.i766 to i64*
  %1122 = load i64, i64* %RBP.i767
  %1123 = sub i64 %1122, 76
  %1124 = load i64, i64* %PC.i765
  %1125 = add i64 %1124, 4
  store i64 %1125, i64* %PC.i765
  %1126 = inttoptr i64 %1123 to i32*
  %1127 = load i32, i32* %1126
  %1128 = zext i32 %1127 to i64
  store i64 %1128, i64* %1121, align 8
  store %struct.Memory* %loadMem_422aa7, %struct.Memory** %MEMORY
  %loadMem_422aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 31
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %R15D.i763 = bitcast %union.anon* %1134 to i32*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 13
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RSP.i764 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RSP.i764
  %1139 = load i32, i32* %R15D.i763
  %1140 = zext i32 %1139 to i64
  %1141 = load i64, i64* %PC.i762
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %PC.i762
  %1143 = inttoptr i64 %1138 to i32*
  store i32 %1139, i32* %1143
  store %struct.Memory* %loadMem_422aab, %struct.Memory** %MEMORY
  %loadMem_422aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 31
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %R15D.i760 = bitcast %union.anon* %1149 to i32*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 15
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1152 to i64*
  %1153 = bitcast i32* %R15D.i760 to i64*
  %1154 = load i64, i64* %RBP.i761
  %1155 = sub i64 %1154, 72
  %1156 = load i64, i64* %PC.i759
  %1157 = add i64 %1156, 4
  store i64 %1157, i64* %PC.i759
  %1158 = inttoptr i64 %1155 to i32*
  %1159 = load i32, i32* %1158
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %1153, align 8
  store %struct.Memory* %loadMem_422aaf, %struct.Memory** %MEMORY
  %loadMem_422ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 31
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %1166 to i32*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 13
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RSP.i758 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RSP.i758
  %1171 = add i64 %1170, 8
  %1172 = load i32, i32* %R15D.i
  %1173 = zext i32 %1172 to i64
  %1174 = load i64, i64* %PC.i757
  %1175 = add i64 %1174, 5
  store i64 %1175, i64* %PC.i757
  %1176 = inttoptr i64 %1171 to i32*
  store i32 %1172, i32* %1176
  store %struct.Memory* %loadMem_422ab3, %struct.Memory** %MEMORY
  %loadMem_422ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 21
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %1182 to i32*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 13
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RSP.i756 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RSP.i756
  %1187 = add i64 %1186, 16
  %1188 = load i32, i32* %R10D.i
  %1189 = zext i32 %1188 to i64
  %1190 = load i64, i64* %PC.i755
  %1191 = add i64 %1190, 5
  store i64 %1191, i64* %PC.i755
  %1192 = inttoptr i64 %1187 to i32*
  store i32 %1188, i32* %1192
  store %struct.Memory* %loadMem_422ab8, %struct.Memory** %MEMORY
  %loadMem_422abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 23
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %1198 to i32*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 13
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RSP.i754 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %RSP.i754
  %1203 = add i64 %1202, 24
  %1204 = load i32, i32* %R11D.i
  %1205 = zext i32 %1204 to i64
  %1206 = load i64, i64* %PC.i753
  %1207 = add i64 %1206, 5
  store i64 %1207, i64* %PC.i753
  %1208 = inttoptr i64 %1203 to i32*
  store i32 %1204, i32* %1208
  store %struct.Memory* %loadMem_422abd, %struct.Memory** %MEMORY
  %loadMem_422ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 1
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %1215 = bitcast %union.anon* %1214 to %struct.anon.2*
  %AL.i752 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1215, i32 0, i32 0
  %1216 = load i64, i64* %PC.i751
  %1217 = add i64 %1216, 2
  store i64 %1217, i64* %PC.i751
  store i8 1, i8* %AL.i752, align 1
  store %struct.Memory* %loadMem_422ac2, %struct.Memory** %MEMORY
  %loadMem1_422ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1220 to i64*
  %1221 = load i64, i64* %PC.i750
  %1222 = add i64 %1221, 193260
  %1223 = load i64, i64* %PC.i750
  %1224 = add i64 %1223, 5
  %1225 = load i64, i64* %PC.i750
  %1226 = add i64 %1225, 5
  store i64 %1226, i64* %PC.i750
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1228 = load i64, i64* %1227, align 8
  %1229 = add i64 %1228, -8
  %1230 = inttoptr i64 %1229 to i64*
  store i64 %1224, i64* %1230
  store i64 %1229, i64* %1227, align 8
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1222, i64* %1231, align 8
  store %struct.Memory* %loadMem1_422ac4, %struct.Memory** %MEMORY
  %loadMem2_422ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ac4 = load i64, i64* %3
  %call2_422ac4 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422ac4, %struct.Memory* %loadMem2_422ac4)
  store %struct.Memory* %call2_422ac4, %struct.Memory** %MEMORY
  %loadMem_422ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 5
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RCX.i748 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RBP.i749
  %1242 = sub i64 %1241, 40
  %1243 = load i64, i64* %PC.i747
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC.i747
  %1245 = inttoptr i64 %1242 to i64*
  %1246 = load i64, i64* %1245
  store i64 %1246, i64* %RCX.i748, align 8
  store %struct.Memory* %loadMem_422ac9, %struct.Memory** %MEMORY
  %loadMem_422acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 5
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RCX.i746 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %RCX.i746
  %1254 = add i64 %1253, 36
  %1255 = load i64, i64* %PC.i745
  %1256 = add i64 %1255, 4
  store i64 %1256, i64* %PC.i745
  %1257 = inttoptr i64 %1254 to i32*
  %1258 = load i32, i32* %1257
  %1259 = sub i32 %1258, 1
  %1260 = icmp ult i32 %1258, 1
  %1261 = zext i1 %1260 to i8
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1261, i8* %1262, align 1
  %1263 = and i32 %1259, 255
  %1264 = call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1267, i8* %1268, align 1
  %1269 = xor i32 %1258, 1
  %1270 = xor i32 %1269, %1259
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1273, i8* %1274, align 1
  %1275 = icmp eq i32 %1259, 0
  %1276 = zext i1 %1275 to i8
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1276, i8* %1277, align 1
  %1278 = lshr i32 %1259, 31
  %1279 = trunc i32 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1279, i8* %1280, align 1
  %1281 = lshr i32 %1258, 31
  %1282 = xor i32 %1278, %1281
  %1283 = add i32 %1282, %1281
  %1284 = icmp eq i32 %1283, 2
  %1285 = zext i1 %1284 to i8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1285, i8* %1286, align 1
  store %struct.Memory* %loadMem_422acd, %struct.Memory** %MEMORY
  %loadMem_422ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1288 = getelementptr inbounds %struct.GPR, %struct.GPR* %1287, i32 0, i32 33
  %1289 = getelementptr inbounds %struct.Reg, %struct.Reg* %1288, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1289 to i64*
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 1
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %EAX.i743 = bitcast %union.anon* %1292 to i32*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 15
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %1295 to i64*
  %1296 = load i64, i64* %RBP.i744
  %1297 = sub i64 %1296, 80
  %1298 = load i32, i32* %EAX.i743
  %1299 = zext i32 %1298 to i64
  %1300 = load i64, i64* %PC.i742
  %1301 = add i64 %1300, 3
  store i64 %1301, i64* %PC.i742
  %1302 = inttoptr i64 %1297 to i32*
  store i32 %1298, i32* %1302
  store %struct.Memory* %loadMem_422ad1, %struct.Memory** %MEMORY
  %loadMem_422ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 33
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %1305 to i64*
  %1306 = load i64, i64* %PC.i741
  %1307 = add i64 %1306, 31
  %1308 = load i64, i64* %PC.i741
  %1309 = add i64 %1308, 6
  %1310 = load i64, i64* %PC.i741
  %1311 = add i64 %1310, 6
  store i64 %1311, i64* %PC.i741
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1313 = load i8, i8* %1312, align 1
  %1314 = icmp eq i8 %1313, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %BRANCH_TAKEN, align 1
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1317 = select i1 %1314, i64 %1307, i64 %1309
  store i64 %1317, i64* %1316, align 8
  store %struct.Memory* %loadMem_422ad4, %struct.Memory** %MEMORY
  %loadBr_422ad4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422ad4 = icmp eq i8 %loadBr_422ad4, 1
  br i1 %cmpBr_422ad4, label %block_.L_422af3, label %block_422ada

block_422ada:                                     ; preds = %block_422a1f
  %loadMem_422ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 33
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 11
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RDI.i740 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %PC.i739
  %1325 = add i64 %1324, 10
  store i64 %1325, i64* %PC.i739
  store i64 ptrtoint (%G__0x57b48a_type* @G__0x57b48a to i64), i64* %RDI.i740, align 8
  store %struct.Memory* %loadMem_422ada, %struct.Memory** %MEMORY
  %loadMem_422ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 1
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %1332 = bitcast %union.anon* %1331 to %struct.anon.2*
  %AL.i738 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1332, i32 0, i32 0
  %1333 = load i64, i64* %PC.i737
  %1334 = add i64 %1333, 2
  store i64 %1334, i64* %PC.i737
  store i8 0, i8* %AL.i738, align 1
  store %struct.Memory* %loadMem_422ae4, %struct.Memory** %MEMORY
  %loadMem1_422ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %PC.i736
  %1339 = add i64 %1338, 193226
  %1340 = load i64, i64* %PC.i736
  %1341 = add i64 %1340, 5
  %1342 = load i64, i64* %PC.i736
  %1343 = add i64 %1342, 5
  store i64 %1343, i64* %PC.i736
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1345 = load i64, i64* %1344, align 8
  %1346 = add i64 %1345, -8
  %1347 = inttoptr i64 %1346 to i64*
  store i64 %1341, i64* %1347
  store i64 %1346, i64* %1344, align 8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1339, i64* %1348, align 8
  store %struct.Memory* %loadMem1_422ae6, %struct.Memory** %MEMORY
  %loadMem2_422ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ae6 = load i64, i64* %3
  %call2_422ae6 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422ae6, %struct.Memory* %loadMem2_422ae6)
  store %struct.Memory* %call2_422ae6, %struct.Memory** %MEMORY
  %loadMem_422aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 1
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %EAX.i734 = bitcast %union.anon* %1354 to i32*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 15
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %RBP.i735
  %1359 = sub i64 %1358, 84
  %1360 = load i32, i32* %EAX.i734
  %1361 = zext i32 %1360 to i64
  %1362 = load i64, i64* %PC.i733
  %1363 = add i64 %1362, 3
  store i64 %1363, i64* %PC.i733
  %1364 = inttoptr i64 %1359 to i32*
  store i32 %1360, i32* %1364
  store %struct.Memory* %loadMem_422aeb, %struct.Memory** %MEMORY
  %loadMem_422aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %PC.i732
  %1369 = add i64 %1368, 69
  %1370 = load i64, i64* %PC.i732
  %1371 = add i64 %1370, 5
  store i64 %1371, i64* %PC.i732
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1369, i64* %1372, align 8
  store %struct.Memory* %loadMem_422aee, %struct.Memory** %MEMORY
  br label %block_.L_422b33

block_.L_422af3:                                  ; preds = %block_422a1f
  %loadMem_422af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 1
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 15
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RBP.i731
  %1383 = sub i64 %1382, 40
  %1384 = load i64, i64* %PC.i729
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i729
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386
  store i64 %1387, i64* %RAX.i730, align 8
  store %struct.Memory* %loadMem_422af3, %struct.Memory** %MEMORY
  %loadMem_422af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 1
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %1393 to i64*
  %1394 = load i64, i64* %RAX.i728
  %1395 = add i64 %1394, 36
  %1396 = load i64, i64* %PC.i727
  %1397 = add i64 %1396, 4
  store i64 %1397, i64* %PC.i727
  %1398 = inttoptr i64 %1395 to i32*
  %1399 = load i32, i32* %1398
  %1400 = sub i32 %1399, 2
  %1401 = icmp ult i32 %1399, 2
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1402, i8* %1403, align 1
  %1404 = and i32 %1400, 255
  %1405 = call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1408, i8* %1409, align 1
  %1410 = xor i32 %1399, 2
  %1411 = xor i32 %1410, %1400
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1414, i8* %1415, align 1
  %1416 = icmp eq i32 %1400, 0
  %1417 = zext i1 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1417, i8* %1418, align 1
  %1419 = lshr i32 %1400, 31
  %1420 = trunc i32 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1420, i8* %1421, align 1
  %1422 = lshr i32 %1399, 31
  %1423 = xor i32 %1419, %1422
  %1424 = add i32 %1423, %1422
  %1425 = icmp eq i32 %1424, 2
  %1426 = zext i1 %1425 to i8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1426, i8* %1427, align 1
  store %struct.Memory* %loadMem_422af7, %struct.Memory** %MEMORY
  %loadMem_422afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1430 to i64*
  %1431 = load i64, i64* %PC.i726
  %1432 = add i64 %1431, 31
  %1433 = load i64, i64* %PC.i726
  %1434 = add i64 %1433, 6
  %1435 = load i64, i64* %PC.i726
  %1436 = add i64 %1435, 6
  store i64 %1436, i64* %PC.i726
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1438 = load i8, i8* %1437, align 1
  %1439 = icmp eq i8 %1438, 0
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %BRANCH_TAKEN, align 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1442 = select i1 %1439, i64 %1432, i64 %1434
  store i64 %1442, i64* %1441, align 8
  store %struct.Memory* %loadMem_422afb, %struct.Memory** %MEMORY
  %loadBr_422afb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422afb = icmp eq i8 %loadBr_422afb, 1
  br i1 %cmpBr_422afb, label %block_.L_422b1a, label %block_422b01

block_422b01:                                     ; preds = %block_.L_422af3
  %loadMem_422b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 11
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RDI.i725 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %PC.i724
  %1450 = add i64 %1449, 10
  store i64 %1450, i64* %PC.i724
  store i64 ptrtoint (%G__0x57b4ad_type* @G__0x57b4ad to i64), i64* %RDI.i725, align 8
  store %struct.Memory* %loadMem_422b01, %struct.Memory** %MEMORY
  %loadMem_422b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 1
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %1457 = bitcast %union.anon* %1456 to %struct.anon.2*
  %AL.i723 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1457, i32 0, i32 0
  %1458 = load i64, i64* %PC.i722
  %1459 = add i64 %1458, 2
  store i64 %1459, i64* %PC.i722
  store i8 0, i8* %AL.i723, align 1
  store %struct.Memory* %loadMem_422b0b, %struct.Memory** %MEMORY
  %loadMem1_422b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %PC.i721
  %1464 = add i64 %1463, 193187
  %1465 = load i64, i64* %PC.i721
  %1466 = add i64 %1465, 5
  %1467 = load i64, i64* %PC.i721
  %1468 = add i64 %1467, 5
  store i64 %1468, i64* %PC.i721
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1470 = load i64, i64* %1469, align 8
  %1471 = add i64 %1470, -8
  %1472 = inttoptr i64 %1471 to i64*
  store i64 %1466, i64* %1472
  store i64 %1471, i64* %1469, align 8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1464, i64* %1473, align 8
  store %struct.Memory* %loadMem1_422b0d, %struct.Memory** %MEMORY
  %loadMem2_422b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b0d = load i64, i64* %3
  %call2_422b0d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422b0d, %struct.Memory* %loadMem2_422b0d)
  store %struct.Memory* %call2_422b0d, %struct.Memory** %MEMORY
  %loadMem_422b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 1
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %EAX.i719 = bitcast %union.anon* %1479 to i32*
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 15
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %1482 to i64*
  %1483 = load i64, i64* %RBP.i720
  %1484 = sub i64 %1483, 88
  %1485 = load i32, i32* %EAX.i719
  %1486 = zext i32 %1485 to i64
  %1487 = load i64, i64* %PC.i718
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %PC.i718
  %1489 = inttoptr i64 %1484 to i32*
  store i32 %1485, i32* %1489
  store %struct.Memory* %loadMem_422b12, %struct.Memory** %MEMORY
  %loadMem_422b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1492 to i64*
  %1493 = load i64, i64* %PC.i717
  %1494 = add i64 %1493, 25
  %1495 = load i64, i64* %PC.i717
  %1496 = add i64 %1495, 5
  store i64 %1496, i64* %PC.i717
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1494, i64* %1497, align 8
  store %struct.Memory* %loadMem_422b15, %struct.Memory** %MEMORY
  br label %block_.L_422b2e

block_.L_422b1a:                                  ; preds = %block_.L_422af3
  %loadMem_422b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 11
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RDI.i716 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %PC.i715
  %1505 = add i64 %1504, 10
  store i64 %1505, i64* %PC.i715
  store i64 ptrtoint (%G__0x57a353_type* @G__0x57a353 to i64), i64* %RDI.i716, align 8
  store %struct.Memory* %loadMem_422b1a, %struct.Memory** %MEMORY
  %loadMem_422b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %1512 = bitcast %union.anon* %1511 to %struct.anon.2*
  %AL.i714 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1512, i32 0, i32 0
  %1513 = load i64, i64* %PC.i713
  %1514 = add i64 %1513, 2
  store i64 %1514, i64* %PC.i713
  store i8 0, i8* %AL.i714, align 1
  store %struct.Memory* %loadMem_422b24, %struct.Memory** %MEMORY
  %loadMem1_422b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1516 = getelementptr inbounds %struct.GPR, %struct.GPR* %1515, i32 0, i32 33
  %1517 = getelementptr inbounds %struct.Reg, %struct.Reg* %1516, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1517 to i64*
  %1518 = load i64, i64* %PC.i712
  %1519 = add i64 %1518, 193162
  %1520 = load i64, i64* %PC.i712
  %1521 = add i64 %1520, 5
  %1522 = load i64, i64* %PC.i712
  %1523 = add i64 %1522, 5
  store i64 %1523, i64* %PC.i712
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1525 = load i64, i64* %1524, align 8
  %1526 = add i64 %1525, -8
  %1527 = inttoptr i64 %1526 to i64*
  store i64 %1521, i64* %1527
  store i64 %1526, i64* %1524, align 8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1519, i64* %1528, align 8
  store %struct.Memory* %loadMem1_422b26, %struct.Memory** %MEMORY
  %loadMem2_422b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b26 = load i64, i64* %3
  %call2_422b26 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422b26, %struct.Memory* %loadMem2_422b26)
  store %struct.Memory* %call2_422b26, %struct.Memory** %MEMORY
  %loadMem_422b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 1
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %EAX.i710 = bitcast %union.anon* %1534 to i32*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %RBP.i711
  %1539 = sub i64 %1538, 92
  %1540 = load i32, i32* %EAX.i710
  %1541 = zext i32 %1540 to i64
  %1542 = load i64, i64* %PC.i709
  %1543 = add i64 %1542, 3
  store i64 %1543, i64* %PC.i709
  %1544 = inttoptr i64 %1539 to i32*
  store i32 %1540, i32* %1544
  store %struct.Memory* %loadMem_422b2b, %struct.Memory** %MEMORY
  br label %block_.L_422b2e

block_.L_422b2e:                                  ; preds = %block_.L_422b1a, %block_422b01
  %loadMem_422b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %PC.i708
  %1549 = add i64 %1548, 5
  %1550 = load i64, i64* %PC.i708
  %1551 = add i64 %1550, 5
  store i64 %1551, i64* %PC.i708
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1549, i64* %1552, align 8
  store %struct.Memory* %loadMem_422b2e, %struct.Memory** %MEMORY
  br label %block_.L_422b33

block_.L_422b33:                                  ; preds = %block_.L_422b2e, %block_422ada
  %loadMem_422b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 1
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 15
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %RBP.i707
  %1563 = sub i64 %1562, 40
  %1564 = load i64, i64* %PC.i705
  %1565 = add i64 %1564, 4
  store i64 %1565, i64* %PC.i705
  %1566 = inttoptr i64 %1563 to i64*
  %1567 = load i64, i64* %1566
  store i64 %1567, i64* %RAX.i706, align 8
  store %struct.Memory* %loadMem_422b33, %struct.Memory** %MEMORY
  %loadMem_422b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 1
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %1573 to i64*
  %1574 = load i64, i64* %RAX.i704
  %1575 = add i64 %1574, 40
  %1576 = load i64, i64* %PC.i703
  %1577 = add i64 %1576, 4
  store i64 %1577, i64* %PC.i703
  %1578 = inttoptr i64 %1575 to i32*
  %1579 = load i32, i32* %1578
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1580, align 1
  %1581 = and i32 %1579, 255
  %1582 = call i32 @llvm.ctpop.i32(i32 %1581)
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1585, i8* %1586, align 1
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1587, align 1
  %1588 = icmp eq i32 %1579, 0
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1589, i8* %1590, align 1
  %1591 = lshr i32 %1579, 31
  %1592 = trunc i32 %1591 to i8
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1592, i8* %1593, align 1
  %1594 = lshr i32 %1579, 31
  %1595 = xor i32 %1591, %1594
  %1596 = add i32 %1595, %1594
  %1597 = icmp eq i32 %1596, 2
  %1598 = zext i1 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1598, i8* %1599, align 1
  store %struct.Memory* %loadMem_422b37, %struct.Memory** %MEMORY
  %loadMem_422b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1602 to i64*
  %1603 = load i64, i64* %PC.i702
  %1604 = add i64 %1603, 33
  %1605 = load i64, i64* %PC.i702
  %1606 = add i64 %1605, 6
  %1607 = load i64, i64* %PC.i702
  %1608 = add i64 %1607, 6
  store i64 %1608, i64* %PC.i702
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1610 = load i8, i8* %1609, align 1
  %1611 = icmp ne i8 %1610, 0
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1613 = load i8, i8* %1612, align 1
  %1614 = icmp ne i8 %1613, 0
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1616 = load i8, i8* %1615, align 1
  %1617 = icmp ne i8 %1616, 0
  %1618 = xor i1 %1614, %1617
  %1619 = or i1 %1611, %1618
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %BRANCH_TAKEN, align 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1622 = select i1 %1619, i64 %1604, i64 %1606
  store i64 %1622, i64* %1621, align 8
  store %struct.Memory* %loadMem_422b3b, %struct.Memory** %MEMORY
  %loadBr_422b3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422b3b = icmp eq i8 %loadBr_422b3b, 1
  br i1 %cmpBr_422b3b, label %block_.L_422b5c, label %block_422b41

block_422b41:                                     ; preds = %block_.L_422b33
  %loadMem_422b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 11
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RDI.i701 = bitcast %union.anon* %1628 to i64*
  %1629 = load i64, i64* %PC.i700
  %1630 = add i64 %1629, 10
  store i64 %1630, i64* %PC.i700
  store i64 ptrtoint (%G__0x57b4c6_type* @G__0x57b4c6 to i64), i64* %RDI.i701, align 8
  store %struct.Memory* %loadMem_422b41, %struct.Memory** %MEMORY
  %loadMem_422b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 33
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 1
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 15
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RBP.i699
  %1641 = sub i64 %1640, 40
  %1642 = load i64, i64* %PC.i697
  %1643 = add i64 %1642, 4
  store i64 %1643, i64* %PC.i697
  %1644 = inttoptr i64 %1641 to i64*
  %1645 = load i64, i64* %1644
  store i64 %1645, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_422b4b, %struct.Memory** %MEMORY
  %loadMem_422b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 1
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RAX.i695 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 9
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RSI.i696 = bitcast %union.anon* %1654 to i64*
  %1655 = load i64, i64* %RAX.i695
  %1656 = add i64 %1655, 40
  %1657 = load i64, i64* %PC.i694
  %1658 = add i64 %1657, 3
  store i64 %1658, i64* %PC.i694
  %1659 = inttoptr i64 %1656 to i32*
  %1660 = load i32, i32* %1659
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RSI.i696, align 8
  store %struct.Memory* %loadMem_422b4f, %struct.Memory** %MEMORY
  %loadMem_422b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 1
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %1668 = bitcast %union.anon* %1667 to %struct.anon.2*
  %AL.i693 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1668, i32 0, i32 0
  %1669 = load i64, i64* %PC.i692
  %1670 = add i64 %1669, 2
  store i64 %1670, i64* %PC.i692
  store i8 0, i8* %AL.i693, align 1
  store %struct.Memory* %loadMem_422b52, %struct.Memory** %MEMORY
  %loadMem1_422b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 33
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %PC.i691
  %1675 = add i64 %1674, 193116
  %1676 = load i64, i64* %PC.i691
  %1677 = add i64 %1676, 5
  %1678 = load i64, i64* %PC.i691
  %1679 = add i64 %1678, 5
  store i64 %1679, i64* %PC.i691
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1681 = load i64, i64* %1680, align 8
  %1682 = add i64 %1681, -8
  %1683 = inttoptr i64 %1682 to i64*
  store i64 %1677, i64* %1683
  store i64 %1682, i64* %1680, align 8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1675, i64* %1684, align 8
  store %struct.Memory* %loadMem1_422b54, %struct.Memory** %MEMORY
  %loadMem2_422b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422b54 = load i64, i64* %3
  %call2_422b54 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422b54, %struct.Memory* %loadMem2_422b54)
  store %struct.Memory* %call2_422b54, %struct.Memory** %MEMORY
  %loadMem_422b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 33
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 1
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %EAX.i689 = bitcast %union.anon* %1690 to i32*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 15
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %1693 to i64*
  %1694 = load i64, i64* %RBP.i690
  %1695 = sub i64 %1694, 96
  %1696 = load i32, i32* %EAX.i689
  %1697 = zext i32 %1696 to i64
  %1698 = load i64, i64* %PC.i688
  %1699 = add i64 %1698, 3
  store i64 %1699, i64* %PC.i688
  %1700 = inttoptr i64 %1695 to i32*
  store i32 %1696, i32* %1700
  store %struct.Memory* %loadMem_422b59, %struct.Memory** %MEMORY
  br label %block_.L_422b5c

block_.L_422b5c:                                  ; preds = %block_422b41, %block_.L_422b33
  %loadMem_422b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 33
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 15
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %RBP.i687
  %1708 = sub i64 %1707, 32
  %1709 = load i64, i64* %PC.i686
  %1710 = add i64 %1709, 7
  store i64 %1710, i64* %PC.i686
  %1711 = inttoptr i64 %1708 to i32*
  store i32 0, i32* %1711
  store %struct.Memory* %loadMem_422b5c, %struct.Memory** %MEMORY
  br label %block_.L_422b63

block_.L_422b63:                                  ; preds = %block_.L_422b85, %block_.L_422b5c
  %loadMem_422b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 15
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %RBP.i685
  %1719 = sub i64 %1718, 32
  %1720 = load i64, i64* %PC.i684
  %1721 = add i64 %1720, 4
  store i64 %1721, i64* %PC.i684
  %1722 = inttoptr i64 %1719 to i32*
  %1723 = load i32, i32* %1722
  %1724 = sub i32 %1723, 10
  %1725 = icmp ult i32 %1723, 10
  %1726 = zext i1 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1726, i8* %1727, align 1
  %1728 = and i32 %1724, 255
  %1729 = call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1732, i8* %1733, align 1
  %1734 = xor i32 %1723, 10
  %1735 = xor i32 %1734, %1724
  %1736 = lshr i32 %1735, 4
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1738, i8* %1739, align 1
  %1740 = icmp eq i32 %1724, 0
  %1741 = zext i1 %1740 to i8
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1741, i8* %1742, align 1
  %1743 = lshr i32 %1724, 31
  %1744 = trunc i32 %1743 to i8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1744, i8* %1745, align 1
  %1746 = lshr i32 %1723, 31
  %1747 = xor i32 %1743, %1746
  %1748 = add i32 %1747, %1746
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1750, i8* %1751, align 1
  store %struct.Memory* %loadMem_422b63, %struct.Memory** %MEMORY
  %loadMem_422b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %PC.i683
  %1756 = add i64 %1755, 88
  %1757 = load i64, i64* %PC.i683
  %1758 = add i64 %1757, 6
  %1759 = load i64, i64* %PC.i683
  %1760 = add i64 %1759, 6
  store i64 %1760, i64* %PC.i683
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1762 = load i8, i8* %1761, align 1
  %1763 = icmp ne i8 %1762, 0
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1765 = load i8, i8* %1764, align 1
  %1766 = icmp ne i8 %1765, 0
  %1767 = xor i1 %1763, %1766
  %1768 = xor i1 %1767, true
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %BRANCH_TAKEN, align 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1771 = select i1 %1767, i64 %1758, i64 %1756
  store i64 %1771, i64* %1770, align 8
  store %struct.Memory* %loadMem_422b67, %struct.Memory** %MEMORY
  %loadBr_422b67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422b67 = icmp eq i8 %loadBr_422b67, 1
  br i1 %cmpBr_422b67, label %block_.L_422bbf, label %block_422b6d

block_422b6d:                                     ; preds = %block_.L_422b63
  %loadMem_422b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 33
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 1
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RAX.i681 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 15
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %1780 to i64*
  %1781 = load i64, i64* %RBP.i682
  %1782 = sub i64 %1781, 40
  %1783 = load i64, i64* %PC.i680
  %1784 = add i64 %1783, 4
  store i64 %1784, i64* %PC.i680
  %1785 = inttoptr i64 %1782 to i64*
  %1786 = load i64, i64* %1785
  store i64 %1786, i64* %RAX.i681, align 8
  store %struct.Memory* %loadMem_422b6d, %struct.Memory** %MEMORY
  %loadMem_422b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 5
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RCX.i678 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 15
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RBP.i679 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %RBP.i679
  %1797 = sub i64 %1796, 32
  %1798 = load i64, i64* %PC.i677
  %1799 = add i64 %1798, 4
  store i64 %1799, i64* %PC.i677
  %1800 = inttoptr i64 %1797 to i32*
  %1801 = load i32, i32* %1800
  %1802 = sext i32 %1801 to i64
  store i64 %1802, i64* %RCX.i678, align 8
  store %struct.Memory* %loadMem_422b71, %struct.Memory** %MEMORY
  %loadMem_422b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 1
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 5
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RCX.i676 = bitcast %union.anon* %1811 to i64*
  %1812 = load i64, i64* %RAX.i675
  %1813 = load i64, i64* %RCX.i676
  %1814 = mul i64 %1813, 4
  %1815 = add i64 %1812, 100
  %1816 = add i64 %1815, %1814
  %1817 = load i64, i64* %PC.i674
  %1818 = add i64 %1817, 5
  store i64 %1818, i64* %PC.i674
  %1819 = inttoptr i64 %1816 to i32*
  %1820 = load i32, i32* %1819
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1821, align 1
  %1822 = and i32 %1820, 255
  %1823 = call i32 @llvm.ctpop.i32(i32 %1822)
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  %1826 = xor i8 %1825, 1
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1826, i8* %1827, align 1
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1828, align 1
  %1829 = icmp eq i32 %1820, 0
  %1830 = zext i1 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1830, i8* %1831, align 1
  %1832 = lshr i32 %1820, 31
  %1833 = trunc i32 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1833, i8* %1834, align 1
  %1835 = lshr i32 %1820, 31
  %1836 = xor i32 %1832, %1835
  %1837 = add i32 %1836, %1835
  %1838 = icmp eq i32 %1837, 2
  %1839 = zext i1 %1838 to i8
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1839, i8* %1840, align 1
  store %struct.Memory* %loadMem_422b75, %struct.Memory** %MEMORY
  %loadMem_422b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %PC.i673
  %1845 = add i64 %1844, 11
  %1846 = load i64, i64* %PC.i673
  %1847 = add i64 %1846, 6
  %1848 = load i64, i64* %PC.i673
  %1849 = add i64 %1848, 6
  store i64 %1849, i64* %PC.i673
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1851 = load i8, i8* %1850, align 1
  %1852 = icmp eq i8 %1851, 0
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %BRANCH_TAKEN, align 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1855 = select i1 %1852, i64 %1845, i64 %1847
  store i64 %1855, i64* %1854, align 8
  store %struct.Memory* %loadMem_422b7a, %struct.Memory** %MEMORY
  %loadBr_422b7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422b7a = icmp eq i8 %loadBr_422b7a, 1
  br i1 %cmpBr_422b7a, label %block_.L_422b85, label %block_422b80

block_422b80:                                     ; preds = %block_422b6d
  %loadMem_422b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %PC.i672
  %1860 = add i64 %1859, 63
  %1861 = load i64, i64* %PC.i672
  %1862 = add i64 %1861, 5
  store i64 %1862, i64* %PC.i672
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1860, i64* %1863, align 8
  store %struct.Memory* %loadMem_422b80, %struct.Memory** %MEMORY
  br label %block_.L_422bbf

block_.L_422b85:                                  ; preds = %block_422b6d
  %loadMem_422b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 11
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RDI.i671 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %PC.i670
  %1871 = add i64 %1870, 10
  store i64 %1871, i64* %PC.i670
  store i64 ptrtoint (%G__0x57b4d8_type* @G__0x57b4d8 to i64), i64* %RDI.i671, align 8
  store %struct.Memory* %loadMem_422b85, %struct.Memory** %MEMORY
  %loadMem_422b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 1
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 15
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %1880 to i64*
  %1881 = load i64, i64* %RBP.i669
  %1882 = sub i64 %1881, 40
  %1883 = load i64, i64* %PC.i667
  %1884 = add i64 %1883, 4
  store i64 %1884, i64* %PC.i667
  %1885 = inttoptr i64 %1882 to i64*
  %1886 = load i64, i64* %1885
  store i64 %1886, i64* %RAX.i668, align 8
  store %struct.Memory* %loadMem_422b8f, %struct.Memory** %MEMORY
  %loadMem_422b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 5
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 15
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %RBP.i666
  %1897 = sub i64 %1896, 32
  %1898 = load i64, i64* %PC.i664
  %1899 = add i64 %1898, 4
  store i64 %1899, i64* %PC.i664
  %1900 = inttoptr i64 %1897 to i32*
  %1901 = load i32, i32* %1900
  %1902 = sext i32 %1901 to i64
  store i64 %1902, i64* %RCX.i665, align 8
  store %struct.Memory* %loadMem_422b93, %struct.Memory** %MEMORY
  %loadMem_422b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 1
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 5
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RCX.i662 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 9
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RSI.i663 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %RAX.i661
  %1916 = load i64, i64* %RCX.i662
  %1917 = mul i64 %1916, 4
  %1918 = add i64 %1915, 60
  %1919 = add i64 %1918, %1917
  %1920 = load i64, i64* %PC.i660
  %1921 = add i64 %1920, 4
  store i64 %1921, i64* %PC.i660
  %1922 = inttoptr i64 %1919 to i32*
  %1923 = load i32, i32* %1922
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RSI.i663, align 8
  store %struct.Memory* %loadMem_422b97, %struct.Memory** %MEMORY
  %loadMem_422b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 1
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 15
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %RBP.i659
  %1935 = sub i64 %1934, 40
  %1936 = load i64, i64* %PC.i657
  %1937 = add i64 %1936, 4
  store i64 %1937, i64* %PC.i657
  %1938 = inttoptr i64 %1935 to i64*
  %1939 = load i64, i64* %1938
  store i64 %1939, i64* %RAX.i658, align 8
  store %struct.Memory* %loadMem_422b9b, %struct.Memory** %MEMORY
  %loadMem_422b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 5
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RCX.i655 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 15
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %1948 to i64*
  %1949 = load i64, i64* %RBP.i656
  %1950 = sub i64 %1949, 32
  %1951 = load i64, i64* %PC.i654
  %1952 = add i64 %1951, 4
  store i64 %1952, i64* %PC.i654
  %1953 = inttoptr i64 %1950 to i32*
  %1954 = load i32, i32* %1953
  %1955 = sext i32 %1954 to i64
  store i64 %1955, i64* %RCX.i655, align 8
  store %struct.Memory* %loadMem_422b9f, %struct.Memory** %MEMORY
  %loadMem_422ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 33
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1958 to i64*
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 1
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 5
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 7
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RDX.i653 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RAX.i651
  %1969 = load i64, i64* %RCX.i652
  %1970 = mul i64 %1969, 4
  %1971 = add i64 %1968, 100
  %1972 = add i64 %1971, %1970
  %1973 = load i64, i64* %PC.i650
  %1974 = add i64 %1973, 4
  store i64 %1974, i64* %PC.i650
  %1975 = inttoptr i64 %1972 to i32*
  %1976 = load i32, i32* %1975
  %1977 = zext i32 %1976 to i64
  store i64 %1977, i64* %RDX.i653, align 8
  store %struct.Memory* %loadMem_422ba3, %struct.Memory** %MEMORY
  %loadMem_422ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 33
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 1
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %1984 = bitcast %union.anon* %1983 to %struct.anon.2*
  %AL.i649 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1984, i32 0, i32 0
  %1985 = load i64, i64* %PC.i648
  %1986 = add i64 %1985, 2
  store i64 %1986, i64* %PC.i648
  store i8 0, i8* %AL.i649, align 1
  store %struct.Memory* %loadMem_422ba7, %struct.Memory** %MEMORY
  %loadMem1_422ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1989 to i64*
  %1990 = load i64, i64* %PC.i647
  %1991 = add i64 %1990, 193031
  %1992 = load i64, i64* %PC.i647
  %1993 = add i64 %1992, 5
  %1994 = load i64, i64* %PC.i647
  %1995 = add i64 %1994, 5
  store i64 %1995, i64* %PC.i647
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1997 = load i64, i64* %1996, align 8
  %1998 = add i64 %1997, -8
  %1999 = inttoptr i64 %1998 to i64*
  store i64 %1993, i64* %1999
  store i64 %1998, i64* %1996, align 8
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1991, i64* %2000, align 8
  store %struct.Memory* %loadMem1_422ba9, %struct.Memory** %MEMORY
  %loadMem2_422ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ba9 = load i64, i64* %3
  %call2_422ba9 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422ba9, %struct.Memory* %loadMem2_422ba9)
  store %struct.Memory* %call2_422ba9, %struct.Memory** %MEMORY
  %loadMem_422bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 1
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %EAX.i645 = bitcast %union.anon* %2006 to i32*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 15
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %2009 to i64*
  %2010 = load i64, i64* %RBP.i646
  %2011 = sub i64 %2010, 100
  %2012 = load i32, i32* %EAX.i645
  %2013 = zext i32 %2012 to i64
  %2014 = load i64, i64* %PC.i644
  %2015 = add i64 %2014, 3
  store i64 %2015, i64* %PC.i644
  %2016 = inttoptr i64 %2011 to i32*
  store i32 %2012, i32* %2016
  store %struct.Memory* %loadMem_422bae, %struct.Memory** %MEMORY
  %loadMem_422bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 1
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 15
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %2025 to i64*
  %2026 = load i64, i64* %RBP.i643
  %2027 = sub i64 %2026, 32
  %2028 = load i64, i64* %PC.i641
  %2029 = add i64 %2028, 3
  store i64 %2029, i64* %PC.i641
  %2030 = inttoptr i64 %2027 to i32*
  %2031 = load i32, i32* %2030
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RAX.i642, align 8
  store %struct.Memory* %loadMem_422bb1, %struct.Memory** %MEMORY
  %loadMem_422bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 1
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %2038 to i64*
  %2039 = load i64, i64* %RAX.i640
  %2040 = load i64, i64* %PC.i639
  %2041 = add i64 %2040, 3
  store i64 %2041, i64* %PC.i639
  %2042 = trunc i64 %2039 to i32
  %2043 = add i32 1, %2042
  %2044 = zext i32 %2043 to i64
  store i64 %2044, i64* %RAX.i640, align 8
  %2045 = icmp ult i32 %2043, %2042
  %2046 = icmp ult i32 %2043, 1
  %2047 = or i1 %2045, %2046
  %2048 = zext i1 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2048, i8* %2049, align 1
  %2050 = and i32 %2043, 255
  %2051 = call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2054, i8* %2055, align 1
  %2056 = xor i64 1, %2039
  %2057 = trunc i64 %2056 to i32
  %2058 = xor i32 %2057, %2043
  %2059 = lshr i32 %2058, 4
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2061, i8* %2062, align 1
  %2063 = icmp eq i32 %2043, 0
  %2064 = zext i1 %2063 to i8
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2064, i8* %2065, align 1
  %2066 = lshr i32 %2043, 31
  %2067 = trunc i32 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2067, i8* %2068, align 1
  %2069 = lshr i32 %2042, 31
  %2070 = xor i32 %2066, %2069
  %2071 = add i32 %2070, %2066
  %2072 = icmp eq i32 %2071, 2
  %2073 = zext i1 %2072 to i8
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2073, i8* %2074, align 1
  store %struct.Memory* %loadMem_422bb4, %struct.Memory** %MEMORY
  %loadMem_422bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 1
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %EAX.i637 = bitcast %union.anon* %2080 to i32*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 15
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RBP.i638
  %2085 = sub i64 %2084, 32
  %2086 = load i32, i32* %EAX.i637
  %2087 = zext i32 %2086 to i64
  %2088 = load i64, i64* %PC.i636
  %2089 = add i64 %2088, 3
  store i64 %2089, i64* %PC.i636
  %2090 = inttoptr i64 %2085 to i32*
  store i32 %2086, i32* %2090
  store %struct.Memory* %loadMem_422bb7, %struct.Memory** %MEMORY
  %loadMem_422bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 33
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %PC.i635
  %2095 = add i64 %2094, -87
  %2096 = load i64, i64* %PC.i635
  %2097 = add i64 %2096, 5
  store i64 %2097, i64* %PC.i635
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2095, i64* %2098, align 8
  store %struct.Memory* %loadMem_422bba, %struct.Memory** %MEMORY
  br label %block_.L_422b63

block_.L_422bbf:                                  ; preds = %block_422b80, %block_.L_422b63
  %loadMem_422bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 33
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 15
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RBP.i634
  %2106 = sub i64 %2105, 32
  %2107 = load i64, i64* %PC.i633
  %2108 = add i64 %2107, 7
  store i64 %2108, i64* %PC.i633
  %2109 = inttoptr i64 %2106 to i32*
  store i32 0, i32* %2109
  store %struct.Memory* %loadMem_422bbf, %struct.Memory** %MEMORY
  br label %block_.L_422bc6

block_.L_422bc6:                                  ; preds = %block_.L_422c38, %block_.L_422bbf
  %loadMem_422bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 15
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RBP.i632
  %2117 = sub i64 %2116, 32
  %2118 = load i64, i64* %PC.i631
  %2119 = add i64 %2118, 4
  store i64 %2119, i64* %PC.i631
  %2120 = inttoptr i64 %2117 to i32*
  %2121 = load i32, i32* %2120
  %2122 = sub i32 %2121, 10
  %2123 = icmp ult i32 %2121, 10
  %2124 = zext i1 %2123 to i8
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2124, i8* %2125, align 1
  %2126 = and i32 %2122, 255
  %2127 = call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2130, i8* %2131, align 1
  %2132 = xor i32 %2121, 10
  %2133 = xor i32 %2132, %2122
  %2134 = lshr i32 %2133, 4
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2136, i8* %2137, align 1
  %2138 = icmp eq i32 %2122, 0
  %2139 = zext i1 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2139, i8* %2140, align 1
  %2141 = lshr i32 %2122, 31
  %2142 = trunc i32 %2141 to i8
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2142, i8* %2143, align 1
  %2144 = lshr i32 %2121, 31
  %2145 = xor i32 %2141, %2144
  %2146 = add i32 %2145, %2144
  %2147 = icmp eq i32 %2146, 2
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2148, i8* %2149, align 1
  store %struct.Memory* %loadMem_422bc6, %struct.Memory** %MEMORY
  %loadMem_422bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %PC.i630
  %2154 = add i64 %2153, 124
  %2155 = load i64, i64* %PC.i630
  %2156 = add i64 %2155, 6
  %2157 = load i64, i64* %PC.i630
  %2158 = add i64 %2157, 6
  store i64 %2158, i64* %PC.i630
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2160 = load i8, i8* %2159, align 1
  %2161 = icmp ne i8 %2160, 0
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2163 = load i8, i8* %2162, align 1
  %2164 = icmp ne i8 %2163, 0
  %2165 = xor i1 %2161, %2164
  %2166 = xor i1 %2165, true
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %BRANCH_TAKEN, align 1
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2169 = select i1 %2165, i64 %2156, i64 %2154
  store i64 %2169, i64* %2168, align 8
  store %struct.Memory* %loadMem_422bca, %struct.Memory** %MEMORY
  %loadBr_422bca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422bca = icmp eq i8 %loadBr_422bca, 1
  br i1 %cmpBr_422bca, label %block_.L_422c46, label %block_422bd0

block_422bd0:                                     ; preds = %block_.L_422bc6
  %loadMem_422bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 1
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 15
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %2178 to i64*
  %2179 = load i64, i64* %RBP.i629
  %2180 = sub i64 %2179, 40
  %2181 = load i64, i64* %PC.i627
  %2182 = add i64 %2181, 4
  store i64 %2182, i64* %PC.i627
  %2183 = inttoptr i64 %2180 to i64*
  %2184 = load i64, i64* %2183
  store i64 %2184, i64* %RAX.i628, align 8
  store %struct.Memory* %loadMem_422bd0, %struct.Memory** %MEMORY
  %loadMem_422bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2186 = getelementptr inbounds %struct.GPR, %struct.GPR* %2185, i32 0, i32 33
  %2187 = getelementptr inbounds %struct.Reg, %struct.Reg* %2186, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2187 to i64*
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 5
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 15
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %2193 to i64*
  %2194 = load i64, i64* %RBP.i626
  %2195 = sub i64 %2194, 32
  %2196 = load i64, i64* %PC.i624
  %2197 = add i64 %2196, 4
  store i64 %2197, i64* %PC.i624
  %2198 = inttoptr i64 %2195 to i32*
  %2199 = load i32, i32* %2198
  %2200 = sext i32 %2199 to i64
  store i64 %2200, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_422bd4, %struct.Memory** %MEMORY
  %loadMem_422bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 33
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 1
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 5
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %2209 to i64*
  %2210 = load i64, i64* %RAX.i622
  %2211 = load i64, i64* %RCX.i623
  %2212 = mul i64 %2211, 4
  %2213 = add i64 %2210, 180
  %2214 = add i64 %2213, %2212
  %2215 = load i64, i64* %PC.i621
  %2216 = add i64 %2215, 8
  store i64 %2216, i64* %PC.i621
  %2217 = inttoptr i64 %2214 to i32*
  %2218 = load i32, i32* %2217
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2219, align 1
  %2220 = and i32 %2218, 255
  %2221 = call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2224, i8* %2225, align 1
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2226, align 1
  %2227 = icmp eq i32 %2218, 0
  %2228 = zext i1 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2228, i8* %2229, align 1
  %2230 = lshr i32 %2218, 31
  %2231 = trunc i32 %2230 to i8
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2231, i8* %2232, align 1
  %2233 = lshr i32 %2218, 31
  %2234 = xor i32 %2230, %2233
  %2235 = add i32 %2234, %2233
  %2236 = icmp eq i32 %2235, 2
  %2237 = zext i1 %2236 to i8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2237, i8* %2238, align 1
  store %struct.Memory* %loadMem_422bd8, %struct.Memory** %MEMORY
  %loadMem_422be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2241 to i64*
  %2242 = load i64, i64* %PC.i620
  %2243 = add i64 %2242, 11
  %2244 = load i64, i64* %PC.i620
  %2245 = add i64 %2244, 6
  %2246 = load i64, i64* %PC.i620
  %2247 = add i64 %2246, 6
  store i64 %2247, i64* %PC.i620
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2249 = load i8, i8* %2248, align 1
  %2250 = icmp eq i8 %2249, 0
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %BRANCH_TAKEN, align 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2253 = select i1 %2250, i64 %2243, i64 %2245
  store i64 %2253, i64* %2252, align 8
  store %struct.Memory* %loadMem_422be0, %struct.Memory** %MEMORY
  %loadBr_422be0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422be0 = icmp eq i8 %loadBr_422be0, 1
  br i1 %cmpBr_422be0, label %block_.L_422beb, label %block_422be6

block_422be6:                                     ; preds = %block_422bd0
  %loadMem_422be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2256 to i64*
  %2257 = load i64, i64* %PC.i619
  %2258 = add i64 %2257, 96
  %2259 = load i64, i64* %PC.i619
  %2260 = add i64 %2259, 5
  store i64 %2260, i64* %PC.i619
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2258, i64* %2261, align 8
  store %struct.Memory* %loadMem_422be6, %struct.Memory** %MEMORY
  br label %block_.L_422c46

block_.L_422beb:                                  ; preds = %block_422bd0
  %loadMem_422beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 33
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2264 to i64*
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 1
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 15
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %2270 to i64*
  %2271 = load i64, i64* %RBP.i618
  %2272 = sub i64 %2271, 40
  %2273 = load i64, i64* %PC.i616
  %2274 = add i64 %2273, 4
  store i64 %2274, i64* %PC.i616
  %2275 = inttoptr i64 %2272 to i64*
  %2276 = load i64, i64* %2275
  store i64 %2276, i64* %RAX.i617, align 8
  store %struct.Memory* %loadMem_422beb, %struct.Memory** %MEMORY
  %loadMem_422bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 5
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 15
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %2285 to i64*
  %2286 = load i64, i64* %RBP.i615
  %2287 = sub i64 %2286, 32
  %2288 = load i64, i64* %PC.i613
  %2289 = add i64 %2288, 4
  store i64 %2289, i64* %PC.i613
  %2290 = inttoptr i64 %2287 to i32*
  %2291 = load i32, i32* %2290
  %2292 = sext i32 %2291 to i64
  store i64 %2292, i64* %RCX.i614, align 8
  store %struct.Memory* %loadMem_422bef, %struct.Memory** %MEMORY
  %loadMem_422bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 1
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 5
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RCX.i612 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RAX.i611
  %2303 = load i64, i64* %RCX.i612
  %2304 = mul i64 %2303, 4
  %2305 = add i64 %2302, 180
  %2306 = add i64 %2305, %2304
  %2307 = load i64, i64* %PC.i610
  %2308 = add i64 %2307, 8
  store i64 %2308, i64* %PC.i610
  %2309 = inttoptr i64 %2306 to i32*
  %2310 = load i32, i32* %2309
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2311, align 1
  %2312 = and i32 %2310, 255
  %2313 = call i32 @llvm.ctpop.i32(i32 %2312)
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  %2316 = xor i8 %2315, 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2316, i8* %2317, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2318, align 1
  %2319 = icmp eq i32 %2310, 0
  %2320 = zext i1 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2320, i8* %2321, align 1
  %2322 = lshr i32 %2310, 31
  %2323 = trunc i32 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2323, i8* %2324, align 1
  %2325 = lshr i32 %2310, 31
  %2326 = xor i32 %2322, %2325
  %2327 = add i32 %2326, %2325
  %2328 = icmp eq i32 %2327, 2
  %2329 = zext i1 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2329, i8* %2330, align 1
  store %struct.Memory* %loadMem_422bf3, %struct.Memory** %MEMORY
  %loadMem_422bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2333 to i64*
  %2334 = load i64, i64* %PC.i609
  %2335 = add i64 %2334, 56
  %2336 = load i64, i64* %PC.i609
  %2337 = add i64 %2336, 6
  %2338 = load i64, i64* %PC.i609
  %2339 = add i64 %2338, 6
  store i64 %2339, i64* %PC.i609
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2341 = load i8, i8* %2340, align 1
  store i8 %2341, i8* %BRANCH_TAKEN, align 1
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2343 = icmp ne i8 %2341, 0
  %2344 = select i1 %2343, i64 %2335, i64 %2337
  store i64 %2344, i64* %2342, align 8
  store %struct.Memory* %loadMem_422bfb, %struct.Memory** %MEMORY
  %loadBr_422bfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422bfb = icmp eq i8 %loadBr_422bfb, 1
  br i1 %cmpBr_422bfb, label %block_.L_422c33, label %block_422c01

block_422c01:                                     ; preds = %block_.L_422beb
  %loadMem_422c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 11
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RDI.i608 = bitcast %union.anon* %2350 to i64*
  %2351 = load i64, i64* %PC.i607
  %2352 = add i64 %2351, 10
  store i64 %2352, i64* %PC.i607
  store i64 ptrtoint (%G__0x57b4ff_type* @G__0x57b4ff to i64), i64* %RDI.i608, align 8
  store %struct.Memory* %loadMem_422c01, %struct.Memory** %MEMORY
  %loadMem_422c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 1
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 15
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RBP.i606
  %2363 = sub i64 %2362, 40
  %2364 = load i64, i64* %PC.i604
  %2365 = add i64 %2364, 4
  store i64 %2365, i64* %PC.i604
  %2366 = inttoptr i64 %2363 to i64*
  %2367 = load i64, i64* %2366
  store i64 %2367, i64* %RAX.i605, align 8
  store %struct.Memory* %loadMem_422c0b, %struct.Memory** %MEMORY
  %loadMem_422c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 5
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RCX.i602 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 15
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %RBP.i603
  %2378 = sub i64 %2377, 32
  %2379 = load i64, i64* %PC.i601
  %2380 = add i64 %2379, 4
  store i64 %2380, i64* %PC.i601
  %2381 = inttoptr i64 %2378 to i32*
  %2382 = load i32, i32* %2381
  %2383 = sext i32 %2382 to i64
  store i64 %2383, i64* %RCX.i602, align 8
  store %struct.Memory* %loadMem_422c0f, %struct.Memory** %MEMORY
  %loadMem_422c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 1
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 5
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 9
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RSI.i600 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RAX.i598
  %2397 = load i64, i64* %RCX.i599
  %2398 = mul i64 %2397, 4
  %2399 = add i64 %2396, 140
  %2400 = add i64 %2399, %2398
  %2401 = load i64, i64* %PC.i597
  %2402 = add i64 %2401, 7
  store i64 %2402, i64* %PC.i597
  %2403 = inttoptr i64 %2400 to i32*
  %2404 = load i32, i32* %2403
  %2405 = zext i32 %2404 to i64
  store i64 %2405, i64* %RSI.i600, align 8
  store %struct.Memory* %loadMem_422c13, %struct.Memory** %MEMORY
  %loadMem_422c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 1
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 15
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %2414 to i64*
  %2415 = load i64, i64* %RBP.i596
  %2416 = sub i64 %2415, 40
  %2417 = load i64, i64* %PC.i594
  %2418 = add i64 %2417, 4
  store i64 %2418, i64* %PC.i594
  %2419 = inttoptr i64 %2416 to i64*
  %2420 = load i64, i64* %2419
  store i64 %2420, i64* %RAX.i595, align 8
  store %struct.Memory* %loadMem_422c1a, %struct.Memory** %MEMORY
  %loadMem_422c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2422 = getelementptr inbounds %struct.GPR, %struct.GPR* %2421, i32 0, i32 33
  %2423 = getelementptr inbounds %struct.Reg, %struct.Reg* %2422, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2423 to i64*
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2425 = getelementptr inbounds %struct.GPR, %struct.GPR* %2424, i32 0, i32 5
  %2426 = getelementptr inbounds %struct.Reg, %struct.Reg* %2425, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %2426 to i64*
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 15
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %2429 to i64*
  %2430 = load i64, i64* %RBP.i593
  %2431 = sub i64 %2430, 32
  %2432 = load i64, i64* %PC.i591
  %2433 = add i64 %2432, 4
  store i64 %2433, i64* %PC.i591
  %2434 = inttoptr i64 %2431 to i32*
  %2435 = load i32, i32* %2434
  %2436 = sext i32 %2435 to i64
  store i64 %2436, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_422c1e, %struct.Memory** %MEMORY
  %loadMem_422c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 1
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %RAX.i588 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 5
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 7
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RDX.i590 = bitcast %union.anon* %2448 to i64*
  %2449 = load i64, i64* %RAX.i588
  %2450 = load i64, i64* %RCX.i589
  %2451 = mul i64 %2450, 4
  %2452 = add i64 %2449, 180
  %2453 = add i64 %2452, %2451
  %2454 = load i64, i64* %PC.i587
  %2455 = add i64 %2454, 7
  store i64 %2455, i64* %PC.i587
  %2456 = inttoptr i64 %2453 to i32*
  %2457 = load i32, i32* %2456
  %2458 = zext i32 %2457 to i64
  store i64 %2458, i64* %RDX.i590, align 8
  store %struct.Memory* %loadMem_422c22, %struct.Memory** %MEMORY
  %loadMem_422c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 1
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %2465 = bitcast %union.anon* %2464 to %struct.anon.2*
  %AL.i586 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2465, i32 0, i32 0
  %2466 = load i64, i64* %PC.i585
  %2467 = add i64 %2466, 2
  store i64 %2467, i64* %PC.i585
  store i8 0, i8* %AL.i586, align 1
  store %struct.Memory* %loadMem_422c29, %struct.Memory** %MEMORY
  %loadMem1_422c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2470 to i64*
  %2471 = load i64, i64* %PC.i584
  %2472 = add i64 %2471, 192901
  %2473 = load i64, i64* %PC.i584
  %2474 = add i64 %2473, 5
  %2475 = load i64, i64* %PC.i584
  %2476 = add i64 %2475, 5
  store i64 %2476, i64* %PC.i584
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2478 = load i64, i64* %2477, align 8
  %2479 = add i64 %2478, -8
  %2480 = inttoptr i64 %2479 to i64*
  store i64 %2474, i64* %2480
  store i64 %2479, i64* %2477, align 8
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2472, i64* %2481, align 8
  store %struct.Memory* %loadMem1_422c2b, %struct.Memory** %MEMORY
  %loadMem2_422c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422c2b = load i64, i64* %3
  %call2_422c2b = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422c2b, %struct.Memory* %loadMem2_422c2b)
  store %struct.Memory* %call2_422c2b, %struct.Memory** %MEMORY
  %loadMem_422c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 1
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %2487 to i32*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i583
  %2492 = sub i64 %2491, 104
  %2493 = load i32, i32* %EAX.i582
  %2494 = zext i32 %2493 to i64
  %2495 = load i64, i64* %PC.i581
  %2496 = add i64 %2495, 3
  store i64 %2496, i64* %PC.i581
  %2497 = inttoptr i64 %2492 to i32*
  store i32 %2493, i32* %2497
  store %struct.Memory* %loadMem_422c30, %struct.Memory** %MEMORY
  br label %block_.L_422c33

block_.L_422c33:                                  ; preds = %block_422c01, %block_.L_422beb
  %loadMem_422c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i580
  %2502 = add i64 %2501, 5
  %2503 = load i64, i64* %PC.i580
  %2504 = add i64 %2503, 5
  store i64 %2504, i64* %PC.i580
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2502, i64* %2505, align 8
  store %struct.Memory* %loadMem_422c33, %struct.Memory** %MEMORY
  br label %block_.L_422c38

block_.L_422c38:                                  ; preds = %block_.L_422c33
  %loadMem_422c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 1
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 15
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RBP.i579
  %2516 = sub i64 %2515, 32
  %2517 = load i64, i64* %PC.i577
  %2518 = add i64 %2517, 3
  store i64 %2518, i64* %PC.i577
  %2519 = inttoptr i64 %2516 to i32*
  %2520 = load i32, i32* %2519
  %2521 = zext i32 %2520 to i64
  store i64 %2521, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_422c38, %struct.Memory** %MEMORY
  %loadMem_422c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 1
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RAX.i576 = bitcast %union.anon* %2527 to i64*
  %2528 = load i64, i64* %RAX.i576
  %2529 = load i64, i64* %PC.i575
  %2530 = add i64 %2529, 3
  store i64 %2530, i64* %PC.i575
  %2531 = trunc i64 %2528 to i32
  %2532 = add i32 1, %2531
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RAX.i576, align 8
  %2534 = icmp ult i32 %2532, %2531
  %2535 = icmp ult i32 %2532, 1
  %2536 = or i1 %2534, %2535
  %2537 = zext i1 %2536 to i8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2537, i8* %2538, align 1
  %2539 = and i32 %2532, 255
  %2540 = call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2543, i8* %2544, align 1
  %2545 = xor i64 1, %2528
  %2546 = trunc i64 %2545 to i32
  %2547 = xor i32 %2546, %2532
  %2548 = lshr i32 %2547, 4
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2550, i8* %2551, align 1
  %2552 = icmp eq i32 %2532, 0
  %2553 = zext i1 %2552 to i8
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2553, i8* %2554, align 1
  %2555 = lshr i32 %2532, 31
  %2556 = trunc i32 %2555 to i8
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2556, i8* %2557, align 1
  %2558 = lshr i32 %2531, 31
  %2559 = xor i32 %2555, %2558
  %2560 = add i32 %2559, %2555
  %2561 = icmp eq i32 %2560, 2
  %2562 = zext i1 %2561 to i8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2562, i8* %2563, align 1
  store %struct.Memory* %loadMem_422c3b, %struct.Memory** %MEMORY
  %loadMem_422c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 1
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %EAX.i573 = bitcast %union.anon* %2569 to i32*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 15
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %RBP.i574
  %2574 = sub i64 %2573, 32
  %2575 = load i32, i32* %EAX.i573
  %2576 = zext i32 %2575 to i64
  %2577 = load i64, i64* %PC.i572
  %2578 = add i64 %2577, 3
  store i64 %2578, i64* %PC.i572
  %2579 = inttoptr i64 %2574 to i32*
  store i32 %2575, i32* %2579
  store %struct.Memory* %loadMem_422c3e, %struct.Memory** %MEMORY
  %loadMem_422c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2582 to i64*
  %2583 = load i64, i64* %PC.i571
  %2584 = add i64 %2583, -123
  %2585 = load i64, i64* %PC.i571
  %2586 = add i64 %2585, 5
  store i64 %2586, i64* %PC.i571
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2584, i64* %2587, align 8
  store %struct.Memory* %loadMem_422c41, %struct.Memory** %MEMORY
  br label %block_.L_422bc6

block_.L_422c46:                                  ; preds = %block_422be6, %block_.L_422bc6
  %loadMem_422c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 33
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 15
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RBP.i570 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %RBP.i570
  %2595 = sub i64 %2594, 32
  %2596 = load i64, i64* %PC.i569
  %2597 = add i64 %2596, 7
  store i64 %2597, i64* %PC.i569
  %2598 = inttoptr i64 %2595 to i32*
  store i32 0, i32* %2598
  store %struct.Memory* %loadMem_422c46, %struct.Memory** %MEMORY
  br label %block_.L_422c4d

block_.L_422c4d:                                  ; preds = %block_.L_422c72, %block_.L_422c46
  %loadMem_422c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 15
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %2604 to i64*
  %2605 = load i64, i64* %RBP.i568
  %2606 = sub i64 %2605, 32
  %2607 = load i64, i64* %PC.i567
  %2608 = add i64 %2607, 4
  store i64 %2608, i64* %PC.i567
  %2609 = inttoptr i64 %2606 to i32*
  %2610 = load i32, i32* %2609
  %2611 = sub i32 %2610, 10
  %2612 = icmp ult i32 %2610, 10
  %2613 = zext i1 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2613, i8* %2614, align 1
  %2615 = and i32 %2611, 255
  %2616 = call i32 @llvm.ctpop.i32(i32 %2615)
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  %2619 = xor i8 %2618, 1
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2619, i8* %2620, align 1
  %2621 = xor i32 %2610, 10
  %2622 = xor i32 %2621, %2611
  %2623 = lshr i32 %2622, 4
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2625, i8* %2626, align 1
  %2627 = icmp eq i32 %2611, 0
  %2628 = zext i1 %2627 to i8
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2628, i8* %2629, align 1
  %2630 = lshr i32 %2611, 31
  %2631 = trunc i32 %2630 to i8
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2631, i8* %2632, align 1
  %2633 = lshr i32 %2610, 31
  %2634 = xor i32 %2630, %2633
  %2635 = add i32 %2634, %2633
  %2636 = icmp eq i32 %2635, 2
  %2637 = zext i1 %2636 to i8
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2637, i8* %2638, align 1
  store %struct.Memory* %loadMem_422c4d, %struct.Memory** %MEMORY
  %loadMem_422c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 33
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %PC.i566
  %2643 = add i64 %2642, 97
  %2644 = load i64, i64* %PC.i566
  %2645 = add i64 %2644, 6
  %2646 = load i64, i64* %PC.i566
  %2647 = add i64 %2646, 6
  store i64 %2647, i64* %PC.i566
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2649 = load i8, i8* %2648, align 1
  %2650 = icmp ne i8 %2649, 0
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2652 = load i8, i8* %2651, align 1
  %2653 = icmp ne i8 %2652, 0
  %2654 = xor i1 %2650, %2653
  %2655 = xor i1 %2654, true
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %BRANCH_TAKEN, align 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2658 = select i1 %2654, i64 %2645, i64 %2643
  store i64 %2658, i64* %2657, align 8
  store %struct.Memory* %loadMem_422c51, %struct.Memory** %MEMORY
  %loadBr_422c51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422c51 = icmp eq i8 %loadBr_422c51, 1
  br i1 %cmpBr_422c51, label %block_.L_422cb2, label %block_422c57

block_422c57:                                     ; preds = %block_.L_422c4d
  %loadMem_422c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 1
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 15
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %2667 to i64*
  %2668 = load i64, i64* %RBP.i565
  %2669 = sub i64 %2668, 40
  %2670 = load i64, i64* %PC.i563
  %2671 = add i64 %2670, 4
  store i64 %2671, i64* %PC.i563
  %2672 = inttoptr i64 %2669 to i64*
  %2673 = load i64, i64* %2672
  store i64 %2673, i64* %RAX.i564, align 8
  store %struct.Memory* %loadMem_422c57, %struct.Memory** %MEMORY
  %loadMem_422c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 5
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RCX.i561 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RBP.i562
  %2684 = sub i64 %2683, 32
  %2685 = load i64, i64* %PC.i560
  %2686 = add i64 %2685, 4
  store i64 %2686, i64* %PC.i560
  %2687 = inttoptr i64 %2684 to i32*
  %2688 = load i32, i32* %2687
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %RCX.i561, align 8
  store %struct.Memory* %loadMem_422c5b, %struct.Memory** %MEMORY
  %loadMem_422c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 1
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 5
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RAX.i558
  %2700 = load i64, i64* %RCX.i559
  %2701 = mul i64 %2700, 4
  %2702 = add i64 %2699, 260
  %2703 = add i64 %2702, %2701
  %2704 = load i64, i64* %PC.i557
  %2705 = add i64 %2704, 8
  store i64 %2705, i64* %PC.i557
  %2706 = inttoptr i64 %2703 to i32*
  %2707 = load i32, i32* %2706
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2708, align 1
  %2709 = and i32 %2707, 255
  %2710 = call i32 @llvm.ctpop.i32(i32 %2709)
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = xor i8 %2712, 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2713, i8* %2714, align 1
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2715, align 1
  %2716 = icmp eq i32 %2707, 0
  %2717 = zext i1 %2716 to i8
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2717, i8* %2718, align 1
  %2719 = lshr i32 %2707, 31
  %2720 = trunc i32 %2719 to i8
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2720, i8* %2721, align 1
  %2722 = lshr i32 %2707, 31
  %2723 = xor i32 %2719, %2722
  %2724 = add i32 %2723, %2722
  %2725 = icmp eq i32 %2724, 2
  %2726 = zext i1 %2725 to i8
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2726, i8* %2727, align 1
  store %struct.Memory* %loadMem_422c5f, %struct.Memory** %MEMORY
  %loadMem_422c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %PC.i556
  %2732 = add i64 %2731, 11
  %2733 = load i64, i64* %PC.i556
  %2734 = add i64 %2733, 6
  %2735 = load i64, i64* %PC.i556
  %2736 = add i64 %2735, 6
  store i64 %2736, i64* %PC.i556
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2738 = load i8, i8* %2737, align 1
  %2739 = icmp eq i8 %2738, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %BRANCH_TAKEN, align 1
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2742 = select i1 %2739, i64 %2732, i64 %2734
  store i64 %2742, i64* %2741, align 8
  store %struct.Memory* %loadMem_422c67, %struct.Memory** %MEMORY
  %loadBr_422c67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422c67 = icmp eq i8 %loadBr_422c67, 1
  br i1 %cmpBr_422c67, label %block_.L_422c72, label %block_422c6d

block_422c6d:                                     ; preds = %block_422c57
  %loadMem_422c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 33
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %PC.i555
  %2747 = add i64 %2746, 69
  %2748 = load i64, i64* %PC.i555
  %2749 = add i64 %2748, 5
  store i64 %2749, i64* %PC.i555
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2747, i64* %2750, align 8
  store %struct.Memory* %loadMem_422c6d, %struct.Memory** %MEMORY
  br label %block_.L_422cb2

block_.L_422c72:                                  ; preds = %block_422c57
  %loadMem_422c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 11
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RDI.i554 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %PC.i553
  %2758 = add i64 %2757, 10
  store i64 %2758, i64* %PC.i553
  store i64 ptrtoint (%G__0x57b526_type* @G__0x57b526 to i64), i64* %RDI.i554, align 8
  store %struct.Memory* %loadMem_422c72, %struct.Memory** %MEMORY
  %loadMem_422c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 1
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 15
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %RBP.i552
  %2769 = sub i64 %2768, 40
  %2770 = load i64, i64* %PC.i550
  %2771 = add i64 %2770, 4
  store i64 %2771, i64* %PC.i550
  %2772 = inttoptr i64 %2769 to i64*
  %2773 = load i64, i64* %2772
  store i64 %2773, i64* %RAX.i551, align 8
  store %struct.Memory* %loadMem_422c7c, %struct.Memory** %MEMORY
  %loadMem_422c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 33
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 5
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 15
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2782 to i64*
  %2783 = load i64, i64* %RBP.i549
  %2784 = sub i64 %2783, 32
  %2785 = load i64, i64* %PC.i547
  %2786 = add i64 %2785, 4
  store i64 %2786, i64* %PC.i547
  %2787 = inttoptr i64 %2784 to i32*
  %2788 = load i32, i32* %2787
  %2789 = sext i32 %2788 to i64
  store i64 %2789, i64* %RCX.i548, align 8
  store %struct.Memory* %loadMem_422c80, %struct.Memory** %MEMORY
  %loadMem_422c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 1
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 5
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2800 = getelementptr inbounds %struct.GPR, %struct.GPR* %2799, i32 0, i32 9
  %2801 = getelementptr inbounds %struct.Reg, %struct.Reg* %2800, i32 0, i32 0
  %RSI.i546 = bitcast %union.anon* %2801 to i64*
  %2802 = load i64, i64* %RAX.i544
  %2803 = load i64, i64* %RCX.i545
  %2804 = mul i64 %2803, 4
  %2805 = add i64 %2802, 220
  %2806 = add i64 %2805, %2804
  %2807 = load i64, i64* %PC.i543
  %2808 = add i64 %2807, 7
  store i64 %2808, i64* %PC.i543
  %2809 = inttoptr i64 %2806 to i32*
  %2810 = load i32, i32* %2809
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RSI.i546, align 8
  store %struct.Memory* %loadMem_422c84, %struct.Memory** %MEMORY
  %loadMem_422c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 1
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 15
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %RBP.i542
  %2822 = sub i64 %2821, 40
  %2823 = load i64, i64* %PC.i540
  %2824 = add i64 %2823, 4
  store i64 %2824, i64* %PC.i540
  %2825 = inttoptr i64 %2822 to i64*
  %2826 = load i64, i64* %2825
  store i64 %2826, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_422c8b, %struct.Memory** %MEMORY
  %loadMem_422c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 33
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 5
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %2832 to i64*
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 15
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %RBP.i539
  %2837 = sub i64 %2836, 32
  %2838 = load i64, i64* %PC.i537
  %2839 = add i64 %2838, 4
  store i64 %2839, i64* %PC.i537
  %2840 = inttoptr i64 %2837 to i32*
  %2841 = load i32, i32* %2840
  %2842 = sext i32 %2841 to i64
  store i64 %2842, i64* %RCX.i538, align 8
  store %struct.Memory* %loadMem_422c8f, %struct.Memory** %MEMORY
  %loadMem_422c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 1
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 5
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 7
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %RAX.i534
  %2856 = load i64, i64* %RCX.i535
  %2857 = mul i64 %2856, 4
  %2858 = add i64 %2855, 260
  %2859 = add i64 %2858, %2857
  %2860 = load i64, i64* %PC.i533
  %2861 = add i64 %2860, 7
  store i64 %2861, i64* %PC.i533
  %2862 = inttoptr i64 %2859 to i32*
  %2863 = load i32, i32* %2862
  %2864 = zext i32 %2863 to i64
  store i64 %2864, i64* %RDX.i536, align 8
  store %struct.Memory* %loadMem_422c93, %struct.Memory** %MEMORY
  %loadMem_422c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 1
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %2871 = bitcast %union.anon* %2870 to %struct.anon.2*
  %AL.i532 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2871, i32 0, i32 0
  %2872 = load i64, i64* %PC.i531
  %2873 = add i64 %2872, 2
  store i64 %2873, i64* %PC.i531
  store i8 0, i8* %AL.i532, align 1
  store %struct.Memory* %loadMem_422c9a, %struct.Memory** %MEMORY
  %loadMem1_422c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 33
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2876 to i64*
  %2877 = load i64, i64* %PC.i530
  %2878 = add i64 %2877, 192788
  %2879 = load i64, i64* %PC.i530
  %2880 = add i64 %2879, 5
  %2881 = load i64, i64* %PC.i530
  %2882 = add i64 %2881, 5
  store i64 %2882, i64* %PC.i530
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2884 = load i64, i64* %2883, align 8
  %2885 = add i64 %2884, -8
  %2886 = inttoptr i64 %2885 to i64*
  store i64 %2880, i64* %2886
  store i64 %2885, i64* %2883, align 8
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2878, i64* %2887, align 8
  store %struct.Memory* %loadMem1_422c9c, %struct.Memory** %MEMORY
  %loadMem2_422c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422c9c = load i64, i64* %3
  %call2_422c9c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422c9c, %struct.Memory* %loadMem2_422c9c)
  store %struct.Memory* %call2_422c9c, %struct.Memory** %MEMORY
  %loadMem_422ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2889 = getelementptr inbounds %struct.GPR, %struct.GPR* %2888, i32 0, i32 33
  %2890 = getelementptr inbounds %struct.Reg, %struct.Reg* %2889, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2890 to i64*
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 1
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %EAX.i528 = bitcast %union.anon* %2893 to i32*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 15
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %2896 to i64*
  %2897 = load i64, i64* %RBP.i529
  %2898 = sub i64 %2897, 108
  %2899 = load i32, i32* %EAX.i528
  %2900 = zext i32 %2899 to i64
  %2901 = load i64, i64* %PC.i527
  %2902 = add i64 %2901, 3
  store i64 %2902, i64* %PC.i527
  %2903 = inttoptr i64 %2898 to i32*
  store i32 %2899, i32* %2903
  store %struct.Memory* %loadMem_422ca1, %struct.Memory** %MEMORY
  %loadMem_422ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 1
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 15
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %RBP.i526
  %2914 = sub i64 %2913, 32
  %2915 = load i64, i64* %PC.i524
  %2916 = add i64 %2915, 3
  store i64 %2916, i64* %PC.i524
  %2917 = inttoptr i64 %2914 to i32*
  %2918 = load i32, i32* %2917
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_422ca4, %struct.Memory** %MEMORY
  %loadMem_422ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 1
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %RAX.i523
  %2927 = load i64, i64* %PC.i522
  %2928 = add i64 %2927, 3
  store i64 %2928, i64* %PC.i522
  %2929 = trunc i64 %2926 to i32
  %2930 = add i32 1, %2929
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %RAX.i523, align 8
  %2932 = icmp ult i32 %2930, %2929
  %2933 = icmp ult i32 %2930, 1
  %2934 = or i1 %2932, %2933
  %2935 = zext i1 %2934 to i8
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2935, i8* %2936, align 1
  %2937 = and i32 %2930, 255
  %2938 = call i32 @llvm.ctpop.i32(i32 %2937)
  %2939 = trunc i32 %2938 to i8
  %2940 = and i8 %2939, 1
  %2941 = xor i8 %2940, 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2941, i8* %2942, align 1
  %2943 = xor i64 1, %2926
  %2944 = trunc i64 %2943 to i32
  %2945 = xor i32 %2944, %2930
  %2946 = lshr i32 %2945, 4
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2948, i8* %2949, align 1
  %2950 = icmp eq i32 %2930, 0
  %2951 = zext i1 %2950 to i8
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2951, i8* %2952, align 1
  %2953 = lshr i32 %2930, 31
  %2954 = trunc i32 %2953 to i8
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2954, i8* %2955, align 1
  %2956 = lshr i32 %2929, 31
  %2957 = xor i32 %2953, %2956
  %2958 = add i32 %2957, %2953
  %2959 = icmp eq i32 %2958, 2
  %2960 = zext i1 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2960, i8* %2961, align 1
  store %struct.Memory* %loadMem_422ca7, %struct.Memory** %MEMORY
  %loadMem_422caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 1
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %EAX.i520 = bitcast %union.anon* %2967 to i32*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 15
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RBP.i521
  %2972 = sub i64 %2971, 32
  %2973 = load i32, i32* %EAX.i520
  %2974 = zext i32 %2973 to i64
  %2975 = load i64, i64* %PC.i519
  %2976 = add i64 %2975, 3
  store i64 %2976, i64* %PC.i519
  %2977 = inttoptr i64 %2972 to i32*
  store i32 %2973, i32* %2977
  store %struct.Memory* %loadMem_422caa, %struct.Memory** %MEMORY
  %loadMem_422cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %2980 to i64*
  %2981 = load i64, i64* %PC.i518
  %2982 = add i64 %2981, -96
  %2983 = load i64, i64* %PC.i518
  %2984 = add i64 %2983, 5
  store i64 %2984, i64* %PC.i518
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2982, i64* %2985, align 8
  store %struct.Memory* %loadMem_422cad, %struct.Memory** %MEMORY
  br label %block_.L_422c4d

block_.L_422cb2:                                  ; preds = %block_422c6d, %block_.L_422c4d
  %loadMem_422cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 15
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %2991 to i64*
  %2992 = load i64, i64* %RBP.i517
  %2993 = sub i64 %2992, 32
  %2994 = load i64, i64* %PC.i516
  %2995 = add i64 %2994, 7
  store i64 %2995, i64* %PC.i516
  %2996 = inttoptr i64 %2993 to i32*
  store i32 0, i32* %2996
  store %struct.Memory* %loadMem_422cb2, %struct.Memory** %MEMORY
  br label %block_.L_422cb9

block_.L_422cb9:                                  ; preds = %block_.L_422d2b, %block_.L_422cb2
  %loadMem_422cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 15
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %3002 to i64*
  %3003 = load i64, i64* %RBP.i515
  %3004 = sub i64 %3003, 32
  %3005 = load i64, i64* %PC.i514
  %3006 = add i64 %3005, 4
  store i64 %3006, i64* %PC.i514
  %3007 = inttoptr i64 %3004 to i32*
  %3008 = load i32, i32* %3007
  %3009 = sub i32 %3008, 10
  %3010 = icmp ult i32 %3008, 10
  %3011 = zext i1 %3010 to i8
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3011, i8* %3012, align 1
  %3013 = and i32 %3009, 255
  %3014 = call i32 @llvm.ctpop.i32(i32 %3013)
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = xor i8 %3016, 1
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3017, i8* %3018, align 1
  %3019 = xor i32 %3008, 10
  %3020 = xor i32 %3019, %3009
  %3021 = lshr i32 %3020, 4
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3023, i8* %3024, align 1
  %3025 = icmp eq i32 %3009, 0
  %3026 = zext i1 %3025 to i8
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3026, i8* %3027, align 1
  %3028 = lshr i32 %3009, 31
  %3029 = trunc i32 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3029, i8* %3030, align 1
  %3031 = lshr i32 %3008, 31
  %3032 = xor i32 %3028, %3031
  %3033 = add i32 %3032, %3031
  %3034 = icmp eq i32 %3033, 2
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3035, i8* %3036, align 1
  store %struct.Memory* %loadMem_422cb9, %struct.Memory** %MEMORY
  %loadMem_422cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %PC.i513
  %3041 = add i64 %3040, 124
  %3042 = load i64, i64* %PC.i513
  %3043 = add i64 %3042, 6
  %3044 = load i64, i64* %PC.i513
  %3045 = add i64 %3044, 6
  store i64 %3045, i64* %PC.i513
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3047 = load i8, i8* %3046, align 1
  %3048 = icmp ne i8 %3047, 0
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3050 = load i8, i8* %3049, align 1
  %3051 = icmp ne i8 %3050, 0
  %3052 = xor i1 %3048, %3051
  %3053 = xor i1 %3052, true
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %BRANCH_TAKEN, align 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3056 = select i1 %3052, i64 %3043, i64 %3041
  store i64 %3056, i64* %3055, align 8
  store %struct.Memory* %loadMem_422cbd, %struct.Memory** %MEMORY
  %loadBr_422cbd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422cbd = icmp eq i8 %loadBr_422cbd, 1
  br i1 %cmpBr_422cbd, label %block_.L_422d39, label %block_422cc3

block_422cc3:                                     ; preds = %block_.L_422cb9
  %loadMem_422cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 1
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 15
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RBP.i512
  %3067 = sub i64 %3066, 40
  %3068 = load i64, i64* %PC.i510
  %3069 = add i64 %3068, 4
  store i64 %3069, i64* %PC.i510
  %3070 = inttoptr i64 %3067 to i64*
  %3071 = load i64, i64* %3070
  store i64 %3071, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_422cc3, %struct.Memory** %MEMORY
  %loadMem_422cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3074 to i64*
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3076 = getelementptr inbounds %struct.GPR, %struct.GPR* %3075, i32 0, i32 5
  %3077 = getelementptr inbounds %struct.Reg, %struct.Reg* %3076, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %3077 to i64*
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3079 = getelementptr inbounds %struct.GPR, %struct.GPR* %3078, i32 0, i32 15
  %3080 = getelementptr inbounds %struct.Reg, %struct.Reg* %3079, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %3080 to i64*
  %3081 = load i64, i64* %RBP.i509
  %3082 = sub i64 %3081, 32
  %3083 = load i64, i64* %PC.i507
  %3084 = add i64 %3083, 4
  store i64 %3084, i64* %PC.i507
  %3085 = inttoptr i64 %3082 to i32*
  %3086 = load i32, i32* %3085
  %3087 = sext i32 %3086 to i64
  store i64 %3087, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_422cc7, %struct.Memory** %MEMORY
  %loadMem_422ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 33
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3090 to i64*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 1
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 5
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %3096 to i64*
  %3097 = load i64, i64* %RAX.i505
  %3098 = load i64, i64* %RCX.i506
  %3099 = mul i64 %3098, 4
  %3100 = add i64 %3097, 340
  %3101 = add i64 %3100, %3099
  %3102 = load i64, i64* %PC.i504
  %3103 = add i64 %3102, 8
  store i64 %3103, i64* %PC.i504
  %3104 = inttoptr i64 %3101 to i32*
  %3105 = load i32, i32* %3104
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3106, align 1
  %3107 = and i32 %3105, 255
  %3108 = call i32 @llvm.ctpop.i32(i32 %3107)
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  %3111 = xor i8 %3110, 1
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3111, i8* %3112, align 1
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3113, align 1
  %3114 = icmp eq i32 %3105, 0
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3115, i8* %3116, align 1
  %3117 = lshr i32 %3105, 31
  %3118 = trunc i32 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3118, i8* %3119, align 1
  %3120 = lshr i32 %3105, 31
  %3121 = xor i32 %3117, %3120
  %3122 = add i32 %3121, %3120
  %3123 = icmp eq i32 %3122, 2
  %3124 = zext i1 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3124, i8* %3125, align 1
  store %struct.Memory* %loadMem_422ccb, %struct.Memory** %MEMORY
  %loadMem_422cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %PC.i503
  %3130 = add i64 %3129, 11
  %3131 = load i64, i64* %PC.i503
  %3132 = add i64 %3131, 6
  %3133 = load i64, i64* %PC.i503
  %3134 = add i64 %3133, 6
  store i64 %3134, i64* %PC.i503
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3136 = load i8, i8* %3135, align 1
  %3137 = icmp eq i8 %3136, 0
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %BRANCH_TAKEN, align 1
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3140 = select i1 %3137, i64 %3130, i64 %3132
  store i64 %3140, i64* %3139, align 8
  store %struct.Memory* %loadMem_422cd3, %struct.Memory** %MEMORY
  %loadBr_422cd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422cd3 = icmp eq i8 %loadBr_422cd3, 1
  br i1 %cmpBr_422cd3, label %block_.L_422cde, label %block_422cd9

block_422cd9:                                     ; preds = %block_422cc3
  %loadMem_422cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %PC.i502
  %3145 = add i64 %3144, 96
  %3146 = load i64, i64* %PC.i502
  %3147 = add i64 %3146, 5
  store i64 %3147, i64* %PC.i502
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3145, i64* %3148, align 8
  store %struct.Memory* %loadMem_422cd9, %struct.Memory** %MEMORY
  br label %block_.L_422d39

block_.L_422cde:                                  ; preds = %block_422cc3
  %loadMem_422cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 1
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %RAX.i500 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 15
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %3157 to i64*
  %3158 = load i64, i64* %RBP.i501
  %3159 = sub i64 %3158, 40
  %3160 = load i64, i64* %PC.i499
  %3161 = add i64 %3160, 4
  store i64 %3161, i64* %PC.i499
  %3162 = inttoptr i64 %3159 to i64*
  %3163 = load i64, i64* %3162
  store i64 %3163, i64* %RAX.i500, align 8
  store %struct.Memory* %loadMem_422cde, %struct.Memory** %MEMORY
  %loadMem_422ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 5
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 15
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %3172 to i64*
  %3173 = load i64, i64* %RBP.i498
  %3174 = sub i64 %3173, 32
  %3175 = load i64, i64* %PC.i496
  %3176 = add i64 %3175, 4
  store i64 %3176, i64* %PC.i496
  %3177 = inttoptr i64 %3174 to i32*
  %3178 = load i32, i32* %3177
  %3179 = sext i32 %3178 to i64
  store i64 %3179, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_422ce2, %struct.Memory** %MEMORY
  %loadMem_422ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 1
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 5
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %3188 to i64*
  %3189 = load i64, i64* %RAX.i494
  %3190 = load i64, i64* %RCX.i495
  %3191 = mul i64 %3190, 4
  %3192 = add i64 %3189, 340
  %3193 = add i64 %3192, %3191
  %3194 = load i64, i64* %PC.i493
  %3195 = add i64 %3194, 8
  store i64 %3195, i64* %PC.i493
  %3196 = inttoptr i64 %3193 to i32*
  %3197 = load i32, i32* %3196
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3198, align 1
  %3199 = and i32 %3197, 255
  %3200 = call i32 @llvm.ctpop.i32(i32 %3199)
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = xor i8 %3202, 1
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3203, i8* %3204, align 1
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3205, align 1
  %3206 = icmp eq i32 %3197, 0
  %3207 = zext i1 %3206 to i8
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3207, i8* %3208, align 1
  %3209 = lshr i32 %3197, 31
  %3210 = trunc i32 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3210, i8* %3211, align 1
  %3212 = lshr i32 %3197, 31
  %3213 = xor i32 %3209, %3212
  %3214 = add i32 %3213, %3212
  %3215 = icmp eq i32 %3214, 2
  %3216 = zext i1 %3215 to i8
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3216, i8* %3217, align 1
  store %struct.Memory* %loadMem_422ce6, %struct.Memory** %MEMORY
  %loadMem_422cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 33
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %PC.i492
  %3222 = add i64 %3221, 56
  %3223 = load i64, i64* %PC.i492
  %3224 = add i64 %3223, 6
  %3225 = load i64, i64* %PC.i492
  %3226 = add i64 %3225, 6
  store i64 %3226, i64* %PC.i492
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3228 = load i8, i8* %3227, align 1
  store i8 %3228, i8* %BRANCH_TAKEN, align 1
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3230 = icmp ne i8 %3228, 0
  %3231 = select i1 %3230, i64 %3222, i64 %3224
  store i64 %3231, i64* %3229, align 8
  store %struct.Memory* %loadMem_422cee, %struct.Memory** %MEMORY
  %loadBr_422cee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422cee = icmp eq i8 %loadBr_422cee, 1
  br i1 %cmpBr_422cee, label %block_.L_422d26, label %block_422cf4

block_422cf4:                                     ; preds = %block_.L_422cde
  %loadMem_422cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 11
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %RDI.i491 = bitcast %union.anon* %3237 to i64*
  %3238 = load i64, i64* %PC.i490
  %3239 = add i64 %3238, 10
  store i64 %3239, i64* %PC.i490
  store i64 ptrtoint (%G__0x57b557_type* @G__0x57b557 to i64), i64* %RDI.i491, align 8
  store %struct.Memory* %loadMem_422cf4, %struct.Memory** %MEMORY
  %loadMem_422cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 15
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %RBP.i489
  %3250 = sub i64 %3249, 40
  %3251 = load i64, i64* %PC.i487
  %3252 = add i64 %3251, 4
  store i64 %3252, i64* %PC.i487
  %3253 = inttoptr i64 %3250 to i64*
  %3254 = load i64, i64* %3253
  store i64 %3254, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_422cfe, %struct.Memory** %MEMORY
  %loadMem_422d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 33
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 5
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 15
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %3263 to i64*
  %3264 = load i64, i64* %RBP.i486
  %3265 = sub i64 %3264, 32
  %3266 = load i64, i64* %PC.i484
  %3267 = add i64 %3266, 4
  store i64 %3267, i64* %PC.i484
  %3268 = inttoptr i64 %3265 to i32*
  %3269 = load i32, i32* %3268
  %3270 = sext i32 %3269 to i64
  store i64 %3270, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_422d02, %struct.Memory** %MEMORY
  %loadMem_422d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 1
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 5
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 9
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RSI.i483 = bitcast %union.anon* %3282 to i64*
  %3283 = load i64, i64* %RAX.i481
  %3284 = load i64, i64* %RCX.i482
  %3285 = mul i64 %3284, 4
  %3286 = add i64 %3283, 300
  %3287 = add i64 %3286, %3285
  %3288 = load i64, i64* %PC.i480
  %3289 = add i64 %3288, 7
  store i64 %3289, i64* %PC.i480
  %3290 = inttoptr i64 %3287 to i32*
  %3291 = load i32, i32* %3290
  %3292 = zext i32 %3291 to i64
  store i64 %3292, i64* %RSI.i483, align 8
  store %struct.Memory* %loadMem_422d06, %struct.Memory** %MEMORY
  %loadMem_422d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 33
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3295 to i64*
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 1
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 15
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %3301 to i64*
  %3302 = load i64, i64* %RBP.i479
  %3303 = sub i64 %3302, 40
  %3304 = load i64, i64* %PC.i477
  %3305 = add i64 %3304, 4
  store i64 %3305, i64* %PC.i477
  %3306 = inttoptr i64 %3303 to i64*
  %3307 = load i64, i64* %3306
  store i64 %3307, i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_422d0d, %struct.Memory** %MEMORY
  %loadMem_422d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 33
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 5
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 15
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %RBP.i476
  %3318 = sub i64 %3317, 32
  %3319 = load i64, i64* %PC.i474
  %3320 = add i64 %3319, 4
  store i64 %3320, i64* %PC.i474
  %3321 = inttoptr i64 %3318 to i32*
  %3322 = load i32, i32* %3321
  %3323 = sext i32 %3322 to i64
  store i64 %3323, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_422d11, %struct.Memory** %MEMORY
  %loadMem_422d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 33
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 1
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %3329 to i64*
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3331 = getelementptr inbounds %struct.GPR, %struct.GPR* %3330, i32 0, i32 5
  %3332 = getelementptr inbounds %struct.Reg, %struct.Reg* %3331, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %3332 to i64*
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 7
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %RDX.i473 = bitcast %union.anon* %3335 to i64*
  %3336 = load i64, i64* %RAX.i471
  %3337 = load i64, i64* %RCX.i472
  %3338 = mul i64 %3337, 4
  %3339 = add i64 %3336, 340
  %3340 = add i64 %3339, %3338
  %3341 = load i64, i64* %PC.i470
  %3342 = add i64 %3341, 7
  store i64 %3342, i64* %PC.i470
  %3343 = inttoptr i64 %3340 to i32*
  %3344 = load i32, i32* %3343
  %3345 = zext i32 %3344 to i64
  store i64 %3345, i64* %RDX.i473, align 8
  store %struct.Memory* %loadMem_422d15, %struct.Memory** %MEMORY
  %loadMem_422d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 33
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3348 to i64*
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 1
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %3352 = bitcast %union.anon* %3351 to %struct.anon.2*
  %AL.i469 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3352, i32 0, i32 0
  %3353 = load i64, i64* %PC.i468
  %3354 = add i64 %3353, 2
  store i64 %3354, i64* %PC.i468
  store i8 0, i8* %AL.i469, align 1
  store %struct.Memory* %loadMem_422d1c, %struct.Memory** %MEMORY
  %loadMem1_422d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3357 to i64*
  %3358 = load i64, i64* %PC.i467
  %3359 = add i64 %3358, 192658
  %3360 = load i64, i64* %PC.i467
  %3361 = add i64 %3360, 5
  %3362 = load i64, i64* %PC.i467
  %3363 = add i64 %3362, 5
  store i64 %3363, i64* %PC.i467
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3365 = load i64, i64* %3364, align 8
  %3366 = add i64 %3365, -8
  %3367 = inttoptr i64 %3366 to i64*
  store i64 %3361, i64* %3367
  store i64 %3366, i64* %3364, align 8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3359, i64* %3368, align 8
  store %struct.Memory* %loadMem1_422d1e, %struct.Memory** %MEMORY
  %loadMem2_422d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422d1e = load i64, i64* %3
  %call2_422d1e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422d1e, %struct.Memory* %loadMem2_422d1e)
  store %struct.Memory* %call2_422d1e, %struct.Memory** %MEMORY
  %loadMem_422d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 1
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %3374 to i32*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 15
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %RBP.i466
  %3379 = sub i64 %3378, 112
  %3380 = load i32, i32* %EAX.i465
  %3381 = zext i32 %3380 to i64
  %3382 = load i64, i64* %PC.i464
  %3383 = add i64 %3382, 3
  store i64 %3383, i64* %PC.i464
  %3384 = inttoptr i64 %3379 to i32*
  store i32 %3380, i32* %3384
  store %struct.Memory* %loadMem_422d23, %struct.Memory** %MEMORY
  br label %block_.L_422d26

block_.L_422d26:                                  ; preds = %block_422cf4, %block_.L_422cde
  %loadMem_422d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3387 to i64*
  %3388 = load i64, i64* %PC.i463
  %3389 = add i64 %3388, 5
  %3390 = load i64, i64* %PC.i463
  %3391 = add i64 %3390, 5
  store i64 %3391, i64* %PC.i463
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3389, i64* %3392, align 8
  store %struct.Memory* %loadMem_422d26, %struct.Memory** %MEMORY
  br label %block_.L_422d2b

block_.L_422d2b:                                  ; preds = %block_.L_422d26
  %loadMem_422d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 33
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 1
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 15
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %3401 to i64*
  %3402 = load i64, i64* %RBP.i462
  %3403 = sub i64 %3402, 32
  %3404 = load i64, i64* %PC.i460
  %3405 = add i64 %3404, 3
  store i64 %3405, i64* %PC.i460
  %3406 = inttoptr i64 %3403 to i32*
  %3407 = load i32, i32* %3406
  %3408 = zext i32 %3407 to i64
  store i64 %3408, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_422d2b, %struct.Memory** %MEMORY
  %loadMem_422d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 33
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3411 to i64*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 1
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %3414 to i64*
  %3415 = load i64, i64* %RAX.i459
  %3416 = load i64, i64* %PC.i458
  %3417 = add i64 %3416, 3
  store i64 %3417, i64* %PC.i458
  %3418 = trunc i64 %3415 to i32
  %3419 = add i32 1, %3418
  %3420 = zext i32 %3419 to i64
  store i64 %3420, i64* %RAX.i459, align 8
  %3421 = icmp ult i32 %3419, %3418
  %3422 = icmp ult i32 %3419, 1
  %3423 = or i1 %3421, %3422
  %3424 = zext i1 %3423 to i8
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3424, i8* %3425, align 1
  %3426 = and i32 %3419, 255
  %3427 = call i32 @llvm.ctpop.i32(i32 %3426)
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = xor i8 %3429, 1
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3430, i8* %3431, align 1
  %3432 = xor i64 1, %3415
  %3433 = trunc i64 %3432 to i32
  %3434 = xor i32 %3433, %3419
  %3435 = lshr i32 %3434, 4
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3437, i8* %3438, align 1
  %3439 = icmp eq i32 %3419, 0
  %3440 = zext i1 %3439 to i8
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3440, i8* %3441, align 1
  %3442 = lshr i32 %3419, 31
  %3443 = trunc i32 %3442 to i8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3443, i8* %3444, align 1
  %3445 = lshr i32 %3418, 31
  %3446 = xor i32 %3442, %3445
  %3447 = add i32 %3446, %3442
  %3448 = icmp eq i32 %3447, 2
  %3449 = zext i1 %3448 to i8
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3449, i8* %3450, align 1
  store %struct.Memory* %loadMem_422d2e, %struct.Memory** %MEMORY
  %loadMem_422d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 1
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %EAX.i456 = bitcast %union.anon* %3456 to i32*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 15
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %3459 to i64*
  %3460 = load i64, i64* %RBP.i457
  %3461 = sub i64 %3460, 32
  %3462 = load i32, i32* %EAX.i456
  %3463 = zext i32 %3462 to i64
  %3464 = load i64, i64* %PC.i455
  %3465 = add i64 %3464, 3
  store i64 %3465, i64* %PC.i455
  %3466 = inttoptr i64 %3461 to i32*
  store i32 %3462, i32* %3466
  store %struct.Memory* %loadMem_422d31, %struct.Memory** %MEMORY
  %loadMem_422d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 33
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3469 to i64*
  %3470 = load i64, i64* %PC.i454
  %3471 = add i64 %3470, -123
  %3472 = load i64, i64* %PC.i454
  %3473 = add i64 %3472, 5
  store i64 %3473, i64* %PC.i454
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3471, i64* %3474, align 8
  store %struct.Memory* %loadMem_422d34, %struct.Memory** %MEMORY
  br label %block_.L_422cb9

block_.L_422d39:                                  ; preds = %block_422cd9, %block_.L_422cb9
  %loadMem_422d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 1
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RBP.i453
  %3485 = sub i64 %3484, 40
  %3486 = load i64, i64* %PC.i451
  %3487 = add i64 %3486, 4
  store i64 %3487, i64* %PC.i451
  %3488 = inttoptr i64 %3485 to i64*
  %3489 = load i64, i64* %3488
  store i64 %3489, i64* %RAX.i452, align 8
  store %struct.Memory* %loadMem_422d39, %struct.Memory** %MEMORY
  %loadMem_422d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 1
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %RAX.i450
  %3497 = add i64 %3496, 32
  %3498 = load i64, i64* %PC.i449
  %3499 = add i64 %3498, 4
  store i64 %3499, i64* %PC.i449
  %3500 = inttoptr i64 %3497 to i32*
  %3501 = load i32, i32* %3500
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3502, align 1
  %3503 = and i32 %3501, 255
  %3504 = call i32 @llvm.ctpop.i32(i32 %3503)
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  %3507 = xor i8 %3506, 1
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3507, i8* %3508, align 1
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3509, align 1
  %3510 = icmp eq i32 %3501, 0
  %3511 = zext i1 %3510 to i8
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3511, i8* %3512, align 1
  %3513 = lshr i32 %3501, 31
  %3514 = trunc i32 %3513 to i8
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3514, i8* %3515, align 1
  %3516 = lshr i32 %3501, 31
  %3517 = xor i32 %3513, %3516
  %3518 = add i32 %3517, %3516
  %3519 = icmp eq i32 %3518, 2
  %3520 = zext i1 %3519 to i8
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3520, i8* %3521, align 1
  store %struct.Memory* %loadMem_422d3d, %struct.Memory** %MEMORY
  %loadMem_422d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 33
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3524 to i64*
  %3525 = load i64, i64* %PC.i448
  %3526 = add i64 %3525, 33
  %3527 = load i64, i64* %PC.i448
  %3528 = add i64 %3527, 6
  %3529 = load i64, i64* %PC.i448
  %3530 = add i64 %3529, 6
  store i64 %3530, i64* %PC.i448
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3532 = load i8, i8* %3531, align 1
  store i8 %3532, i8* %BRANCH_TAKEN, align 1
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3534 = icmp ne i8 %3532, 0
  %3535 = select i1 %3534, i64 %3526, i64 %3528
  store i64 %3535, i64* %3533, align 8
  store %struct.Memory* %loadMem_422d41, %struct.Memory** %MEMORY
  %loadBr_422d41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422d41 = icmp eq i8 %loadBr_422d41, 1
  br i1 %cmpBr_422d41, label %block_.L_422d62, label %block_422d47

block_422d47:                                     ; preds = %block_.L_422d39
  %loadMem_422d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 11
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RDI.i447 = bitcast %union.anon* %3541 to i64*
  %3542 = load i64, i64* %PC.i446
  %3543 = add i64 %3542, 10
  store i64 %3543, i64* %PC.i446
  store i64 ptrtoint (%G__0x57b58a_type* @G__0x57b58a to i64), i64* %RDI.i447, align 8
  store %struct.Memory* %loadMem_422d47, %struct.Memory** %MEMORY
  %loadMem_422d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 1
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 15
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %RBP.i445
  %3554 = sub i64 %3553, 40
  %3555 = load i64, i64* %PC.i443
  %3556 = add i64 %3555, 4
  store i64 %3556, i64* %PC.i443
  %3557 = inttoptr i64 %3554 to i64*
  %3558 = load i64, i64* %3557
  store i64 %3558, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_422d51, %struct.Memory** %MEMORY
  %loadMem_422d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 1
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 9
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RSI.i442 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RAX.i441
  %3569 = add i64 %3568, 32
  %3570 = load i64, i64* %PC.i440
  %3571 = add i64 %3570, 3
  store i64 %3571, i64* %PC.i440
  %3572 = inttoptr i64 %3569 to i32*
  %3573 = load i32, i32* %3572
  %3574 = zext i32 %3573 to i64
  store i64 %3574, i64* %RSI.i442, align 8
  store %struct.Memory* %loadMem_422d55, %struct.Memory** %MEMORY
  %loadMem_422d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 1
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %3581 = bitcast %union.anon* %3580 to %struct.anon.2*
  %AL.i439 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3581, i32 0, i32 0
  %3582 = load i64, i64* %PC.i438
  %3583 = add i64 %3582, 2
  store i64 %3583, i64* %PC.i438
  store i8 0, i8* %AL.i439, align 1
  store %struct.Memory* %loadMem_422d58, %struct.Memory** %MEMORY
  %loadMem1_422d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %PC.i437
  %3588 = add i64 %3587, 192598
  %3589 = load i64, i64* %PC.i437
  %3590 = add i64 %3589, 5
  %3591 = load i64, i64* %PC.i437
  %3592 = add i64 %3591, 5
  store i64 %3592, i64* %PC.i437
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3594 = load i64, i64* %3593, align 8
  %3595 = add i64 %3594, -8
  %3596 = inttoptr i64 %3595 to i64*
  store i64 %3590, i64* %3596
  store i64 %3595, i64* %3593, align 8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3588, i64* %3597, align 8
  store %struct.Memory* %loadMem1_422d5a, %struct.Memory** %MEMORY
  %loadMem2_422d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422d5a = load i64, i64* %3
  %call2_422d5a = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422d5a, %struct.Memory* %loadMem2_422d5a)
  store %struct.Memory* %call2_422d5a, %struct.Memory** %MEMORY
  %loadMem_422d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3600 to i64*
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 1
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %EAX.i435 = bitcast %union.anon* %3603 to i32*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 15
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %RBP.i436
  %3608 = sub i64 %3607, 116
  %3609 = load i32, i32* %EAX.i435
  %3610 = zext i32 %3609 to i64
  %3611 = load i64, i64* %PC.i434
  %3612 = add i64 %3611, 3
  store i64 %3612, i64* %PC.i434
  %3613 = inttoptr i64 %3608 to i32*
  store i32 %3609, i32* %3613
  store %struct.Memory* %loadMem_422d5f, %struct.Memory** %MEMORY
  br label %block_.L_422d62

block_.L_422d62:                                  ; preds = %block_422d47, %block_.L_422d39
  %loadMem_422d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3615 = getelementptr inbounds %struct.GPR, %struct.GPR* %3614, i32 0, i32 33
  %3616 = getelementptr inbounds %struct.Reg, %struct.Reg* %3615, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3616 to i64*
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3618 = getelementptr inbounds %struct.GPR, %struct.GPR* %3617, i32 0, i32 1
  %3619 = getelementptr inbounds %struct.Reg, %struct.Reg* %3618, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %3619 to i64*
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 15
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %3622 to i64*
  %3623 = load i64, i64* %RBP.i433
  %3624 = sub i64 %3623, 40
  %3625 = load i64, i64* %PC.i431
  %3626 = add i64 %3625, 4
  store i64 %3626, i64* %PC.i431
  %3627 = inttoptr i64 %3624 to i64*
  %3628 = load i64, i64* %3627
  store i64 %3628, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_422d62, %struct.Memory** %MEMORY
  %loadMem_422d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 1
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RAX.i430
  %3636 = add i64 %3635, 48
  %3637 = load i64, i64* %PC.i429
  %3638 = add i64 %3637, 4
  store i64 %3638, i64* %PC.i429
  %3639 = inttoptr i64 %3636 to i32*
  %3640 = load i32, i32* %3639
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3641, align 1
  %3642 = and i32 %3640, 255
  %3643 = call i32 @llvm.ctpop.i32(i32 %3642)
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = xor i8 %3645, 1
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3646, i8* %3647, align 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3648, align 1
  %3649 = icmp eq i32 %3640, 0
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3650, i8* %3651, align 1
  %3652 = lshr i32 %3640, 31
  %3653 = trunc i32 %3652 to i8
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3653, i8* %3654, align 1
  %3655 = lshr i32 %3640, 31
  %3656 = xor i32 %3652, %3655
  %3657 = add i32 %3656, %3655
  %3658 = icmp eq i32 %3657, 2
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3659, i8* %3660, align 1
  store %struct.Memory* %loadMem_422d66, %struct.Memory** %MEMORY
  %loadMem_422d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %PC.i428
  %3665 = add i64 %3664, 26
  %3666 = load i64, i64* %PC.i428
  %3667 = add i64 %3666, 6
  %3668 = load i64, i64* %PC.i428
  %3669 = add i64 %3668, 6
  store i64 %3669, i64* %PC.i428
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3671 = load i8, i8* %3670, align 1
  store i8 %3671, i8* %BRANCH_TAKEN, align 1
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3673 = icmp ne i8 %3671, 0
  %3674 = select i1 %3673, i64 %3665, i64 %3667
  store i64 %3674, i64* %3672, align 8
  store %struct.Memory* %loadMem_422d6a, %struct.Memory** %MEMORY
  %loadBr_422d6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422d6a = icmp eq i8 %loadBr_422d6a, 1
  br i1 %cmpBr_422d6a, label %block_.L_422d84, label %block_422d70

block_422d70:                                     ; preds = %block_.L_422d62
  %loadMem_422d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 11
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RDI.i427 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %PC.i426
  %3682 = add i64 %3681, 10
  store i64 %3682, i64* %PC.i426
  store i64 ptrtoint (%G__0x57b5aa_type* @G__0x57b5aa to i64), i64* %RDI.i427, align 8
  store %struct.Memory* %loadMem_422d70, %struct.Memory** %MEMORY
  %loadMem_422d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 1
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %3689 = bitcast %union.anon* %3688 to %struct.anon.2*
  %AL.i425 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3689, i32 0, i32 0
  %3690 = load i64, i64* %PC.i424
  %3691 = add i64 %3690, 2
  store i64 %3691, i64* %PC.i424
  store i8 0, i8* %AL.i425, align 1
  store %struct.Memory* %loadMem_422d7a, %struct.Memory** %MEMORY
  %loadMem1_422d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 33
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3694 to i64*
  %3695 = load i64, i64* %PC.i423
  %3696 = add i64 %3695, 192564
  %3697 = load i64, i64* %PC.i423
  %3698 = add i64 %3697, 5
  %3699 = load i64, i64* %PC.i423
  %3700 = add i64 %3699, 5
  store i64 %3700, i64* %PC.i423
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3702 = load i64, i64* %3701, align 8
  %3703 = add i64 %3702, -8
  %3704 = inttoptr i64 %3703 to i64*
  store i64 %3698, i64* %3704
  store i64 %3703, i64* %3701, align 8
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3696, i64* %3705, align 8
  store %struct.Memory* %loadMem1_422d7c, %struct.Memory** %MEMORY
  %loadMem2_422d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422d7c = load i64, i64* %3
  %call2_422d7c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422d7c, %struct.Memory* %loadMem2_422d7c)
  store %struct.Memory* %call2_422d7c, %struct.Memory** %MEMORY
  %loadMem_422d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 33
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 1
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %3711 to i32*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 15
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %3714 to i64*
  %3715 = load i64, i64* %RBP.i422
  %3716 = sub i64 %3715, 120
  %3717 = load i32, i32* %EAX.i421
  %3718 = zext i32 %3717 to i64
  %3719 = load i64, i64* %PC.i420
  %3720 = add i64 %3719, 3
  store i64 %3720, i64* %PC.i420
  %3721 = inttoptr i64 %3716 to i32*
  store i32 %3717, i32* %3721
  store %struct.Memory* %loadMem_422d81, %struct.Memory** %MEMORY
  br label %block_.L_422d84

block_.L_422d84:                                  ; preds = %block_422d70, %block_.L_422d62
  %loadMem_422d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 1
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 15
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3730 to i64*
  %3731 = load i64, i64* %RBP.i419
  %3732 = sub i64 %3731, 40
  %3733 = load i64, i64* %PC.i417
  %3734 = add i64 %3733, 4
  store i64 %3734, i64* %PC.i417
  %3735 = inttoptr i64 %3732 to i64*
  %3736 = load i64, i64* %3735
  store i64 %3736, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_422d84, %struct.Memory** %MEMORY
  %loadMem_422d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 1
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %RAX.i416
  %3744 = add i64 %3743, 52
  %3745 = load i64, i64* %PC.i415
  %3746 = add i64 %3745, 4
  store i64 %3746, i64* %PC.i415
  %3747 = inttoptr i64 %3744 to i32*
  %3748 = load i32, i32* %3747
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3749, align 1
  %3750 = and i32 %3748, 255
  %3751 = call i32 @llvm.ctpop.i32(i32 %3750)
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  %3754 = xor i8 %3753, 1
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3754, i8* %3755, align 1
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3756, align 1
  %3757 = icmp eq i32 %3748, 0
  %3758 = zext i1 %3757 to i8
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3758, i8* %3759, align 1
  %3760 = lshr i32 %3748, 31
  %3761 = trunc i32 %3760 to i8
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3761, i8* %3762, align 1
  %3763 = lshr i32 %3748, 31
  %3764 = xor i32 %3760, %3763
  %3765 = add i32 %3764, %3763
  %3766 = icmp eq i32 %3765, 2
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3767, i8* %3768, align 1
  store %struct.Memory* %loadMem_422d88, %struct.Memory** %MEMORY
  %loadMem_422d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 33
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %3771 to i64*
  %3772 = load i64, i64* %PC.i414
  %3773 = add i64 %3772, 26
  %3774 = load i64, i64* %PC.i414
  %3775 = add i64 %3774, 6
  %3776 = load i64, i64* %PC.i414
  %3777 = add i64 %3776, 6
  store i64 %3777, i64* %PC.i414
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3779 = load i8, i8* %3778, align 1
  store i8 %3779, i8* %BRANCH_TAKEN, align 1
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3781 = icmp ne i8 %3779, 0
  %3782 = select i1 %3781, i64 %3773, i64 %3775
  store i64 %3782, i64* %3780, align 8
  store %struct.Memory* %loadMem_422d8c, %struct.Memory** %MEMORY
  %loadBr_422d8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422d8c = icmp eq i8 %loadBr_422d8c, 1
  br i1 %cmpBr_422d8c, label %block_.L_422da6, label %block_422d92

block_422d92:                                     ; preds = %block_.L_422d84
  %loadMem_422d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 11
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RDI.i413 = bitcast %union.anon* %3788 to i64*
  %3789 = load i64, i64* %PC.i412
  %3790 = add i64 %3789, 10
  store i64 %3790, i64* %PC.i412
  store i64 ptrtoint (%G__0x57b5bc_type* @G__0x57b5bc to i64), i64* %RDI.i413, align 8
  store %struct.Memory* %loadMem_422d92, %struct.Memory** %MEMORY
  %loadMem_422d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 33
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3793 to i64*
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3795 = getelementptr inbounds %struct.GPR, %struct.GPR* %3794, i32 0, i32 1
  %3796 = getelementptr inbounds %struct.Reg, %struct.Reg* %3795, i32 0, i32 0
  %3797 = bitcast %union.anon* %3796 to %struct.anon.2*
  %AL.i411 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3797, i32 0, i32 0
  %3798 = load i64, i64* %PC.i410
  %3799 = add i64 %3798, 2
  store i64 %3799, i64* %PC.i410
  store i8 0, i8* %AL.i411, align 1
  store %struct.Memory* %loadMem_422d9c, %struct.Memory** %MEMORY
  %loadMem1_422d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3802 to i64*
  %3803 = load i64, i64* %PC.i409
  %3804 = add i64 %3803, 192530
  %3805 = load i64, i64* %PC.i409
  %3806 = add i64 %3805, 5
  %3807 = load i64, i64* %PC.i409
  %3808 = add i64 %3807, 5
  store i64 %3808, i64* %PC.i409
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3810 = load i64, i64* %3809, align 8
  %3811 = add i64 %3810, -8
  %3812 = inttoptr i64 %3811 to i64*
  store i64 %3806, i64* %3812
  store i64 %3811, i64* %3809, align 8
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3804, i64* %3813, align 8
  store %struct.Memory* %loadMem1_422d9e, %struct.Memory** %MEMORY
  %loadMem2_422d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422d9e = load i64, i64* %3
  %call2_422d9e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422d9e, %struct.Memory* %loadMem2_422d9e)
  store %struct.Memory* %call2_422d9e, %struct.Memory** %MEMORY
  %loadMem_422da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 1
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %3819 to i32*
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 15
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %3822 to i64*
  %3823 = load i64, i64* %RBP.i408
  %3824 = sub i64 %3823, 124
  %3825 = load i32, i32* %EAX.i407
  %3826 = zext i32 %3825 to i64
  %3827 = load i64, i64* %PC.i406
  %3828 = add i64 %3827, 3
  store i64 %3828, i64* %PC.i406
  %3829 = inttoptr i64 %3824 to i32*
  store i32 %3825, i32* %3829
  store %struct.Memory* %loadMem_422da3, %struct.Memory** %MEMORY
  br label %block_.L_422da6

block_.L_422da6:                                  ; preds = %block_422d92, %block_.L_422d84
  %loadMem_422da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 11
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RDI.i404 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 15
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %RBP.i405
  %3840 = sub i64 %3839, 28
  %3841 = load i64, i64* %PC.i403
  %3842 = add i64 %3841, 3
  store i64 %3842, i64* %PC.i403
  %3843 = inttoptr i64 %3840 to i32*
  %3844 = load i32, i32* %3843
  %3845 = zext i32 %3844 to i64
  store i64 %3845, i64* %RDI.i404, align 8
  store %struct.Memory* %loadMem_422da6, %struct.Memory** %MEMORY
  %loadMem1_422da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3848 to i64*
  %3849 = load i64, i64* %PC.i402
  %3850 = add i64 %3849, -54441
  %3851 = load i64, i64* %PC.i402
  %3852 = add i64 %3851, 5
  %3853 = load i64, i64* %PC.i402
  %3854 = add i64 %3853, 5
  store i64 %3854, i64* %PC.i402
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3856 = load i64, i64* %3855, align 8
  %3857 = add i64 %3856, -8
  %3858 = inttoptr i64 %3857 to i64*
  store i64 %3852, i64* %3858
  store i64 %3857, i64* %3855, align 8
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3850, i64* %3859, align 8
  store %struct.Memory* %loadMem1_422da9, %struct.Memory** %MEMORY
  %loadMem2_422da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422da9 = load i64, i64* %3
  %call2_422da9 = call %struct.Memory* @sub_415900.is_ko_point(%struct.State* %0, i64 %loadPC_422da9, %struct.Memory* %loadMem2_422da9)
  store %struct.Memory* %call2_422da9, %struct.Memory** %MEMORY
  %loadMem_422dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 1
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %3865 to i32*
  %3866 = load i32, i32* %EAX.i401
  %3867 = zext i32 %3866 to i64
  %3868 = load i64, i64* %PC.i400
  %3869 = add i64 %3868, 3
  store i64 %3869, i64* %PC.i400
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3870, align 1
  %3871 = and i32 %3866, 255
  %3872 = call i32 @llvm.ctpop.i32(i32 %3871)
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = xor i8 %3874, 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3875, i8* %3876, align 1
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3877, align 1
  %3878 = icmp eq i32 %3866, 0
  %3879 = zext i1 %3878 to i8
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3879, i8* %3880, align 1
  %3881 = lshr i32 %3866, 31
  %3882 = trunc i32 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3882, i8* %3883, align 1
  %3884 = lshr i32 %3866, 31
  %3885 = xor i32 %3881, %3884
  %3886 = add i32 %3885, %3884
  %3887 = icmp eq i32 %3886, 2
  %3888 = zext i1 %3887 to i8
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3888, i8* %3889, align 1
  store %struct.Memory* %loadMem_422dae, %struct.Memory** %MEMORY
  %loadMem_422db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %PC.i399
  %3894 = add i64 %3893, 26
  %3895 = load i64, i64* %PC.i399
  %3896 = add i64 %3895, 6
  %3897 = load i64, i64* %PC.i399
  %3898 = add i64 %3897, 6
  store i64 %3898, i64* %PC.i399
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3900 = load i8, i8* %3899, align 1
  store i8 %3900, i8* %BRANCH_TAKEN, align 1
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3902 = icmp ne i8 %3900, 0
  %3903 = select i1 %3902, i64 %3894, i64 %3896
  store i64 %3903, i64* %3901, align 8
  store %struct.Memory* %loadMem_422db1, %struct.Memory** %MEMORY
  %loadBr_422db1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422db1 = icmp eq i8 %loadBr_422db1, 1
  br i1 %cmpBr_422db1, label %block_.L_422dcb, label %block_422db7

block_422db7:                                     ; preds = %block_.L_422da6
  %loadMem_422db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3905 = getelementptr inbounds %struct.GPR, %struct.GPR* %3904, i32 0, i32 33
  %3906 = getelementptr inbounds %struct.Reg, %struct.Reg* %3905, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3906 to i64*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 11
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %RDI.i398 = bitcast %union.anon* %3909 to i64*
  %3910 = load i64, i64* %PC.i397
  %3911 = add i64 %3910, 10
  store i64 %3911, i64* %PC.i397
  store i64 ptrtoint (%G__0x57b5cd_type* @G__0x57b5cd to i64), i64* %RDI.i398, align 8
  store %struct.Memory* %loadMem_422db7, %struct.Memory** %MEMORY
  %loadMem_422dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 1
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %3918 = bitcast %union.anon* %3917 to %struct.anon.2*
  %AL.i396 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3918, i32 0, i32 0
  %3919 = load i64, i64* %PC.i395
  %3920 = add i64 %3919, 2
  store i64 %3920, i64* %PC.i395
  store i8 0, i8* %AL.i396, align 1
  store %struct.Memory* %loadMem_422dc1, %struct.Memory** %MEMORY
  %loadMem1_422dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %PC.i394
  %3925 = add i64 %3924, 192493
  %3926 = load i64, i64* %PC.i394
  %3927 = add i64 %3926, 5
  %3928 = load i64, i64* %PC.i394
  %3929 = add i64 %3928, 5
  store i64 %3929, i64* %PC.i394
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3931 = load i64, i64* %3930, align 8
  %3932 = add i64 %3931, -8
  %3933 = inttoptr i64 %3932 to i64*
  store i64 %3927, i64* %3933
  store i64 %3932, i64* %3930, align 8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3925, i64* %3934, align 8
  store %struct.Memory* %loadMem1_422dc3, %struct.Memory** %MEMORY
  %loadMem2_422dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422dc3 = load i64, i64* %3
  %call2_422dc3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422dc3, %struct.Memory* %loadMem2_422dc3)
  store %struct.Memory* %call2_422dc3, %struct.Memory** %MEMORY
  %loadMem_422dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %EAX.i392 = bitcast %union.anon* %3940 to i32*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i393
  %3945 = sub i64 %3944, 128
  %3946 = load i32, i32* %EAX.i392
  %3947 = zext i32 %3946 to i64
  %3948 = load i64, i64* %PC.i391
  %3949 = add i64 %3948, 3
  store i64 %3949, i64* %PC.i391
  %3950 = inttoptr i64 %3945 to i32*
  store i32 %3946, i32* %3950
  store %struct.Memory* %loadMem_422dc8, %struct.Memory** %MEMORY
  br label %block_.L_422dcb

block_.L_422dcb:                                  ; preds = %block_422db7, %block_.L_422da6
  %loadMem_422dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 33
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3953 to i64*
  %3954 = load i64, i64* %PC.i390
  %3955 = add i64 %3954, 5
  %3956 = load i64, i64* %PC.i390
  %3957 = add i64 %3956, 5
  store i64 %3957, i64* %PC.i390
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3955, i64* %3958, align 8
  store %struct.Memory* %loadMem_422dcb, %struct.Memory** %MEMORY
  br label %block_.L_422dd0

block_.L_422dd0:                                  ; preds = %block_.L_422dcb, %block_.L_422a0f
  %loadMem_422dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 33
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3961 to i64*
  %3962 = load i64, i64* %PC.i389
  %3963 = add i64 %3962, 5
  %3964 = load i64, i64* %PC.i389
  %3965 = add i64 %3964, 5
  store i64 %3965, i64* %PC.i389
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3963, i64* %3966, align 8
  store %struct.Memory* %loadMem_422dd0, %struct.Memory** %MEMORY
  br label %block_.L_422dd5

block_.L_422dd5:                                  ; preds = %block_.L_422dd0, %block_422a0a
  %loadMem_422dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 1
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3974 = getelementptr inbounds %struct.GPR, %struct.GPR* %3973, i32 0, i32 15
  %3975 = getelementptr inbounds %struct.Reg, %struct.Reg* %3974, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %3975 to i64*
  %3976 = load i64, i64* %RBP.i388
  %3977 = sub i64 %3976, 28
  %3978 = load i64, i64* %PC.i386
  %3979 = add i64 %3978, 3
  store i64 %3979, i64* %PC.i386
  %3980 = inttoptr i64 %3977 to i32*
  %3981 = load i32, i32* %3980
  %3982 = zext i32 %3981 to i64
  store i64 %3982, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_422dd5, %struct.Memory** %MEMORY
  %loadMem_422dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 1
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %3988 to i64*
  %3989 = load i64, i64* %RAX.i385
  %3990 = load i64, i64* %PC.i384
  %3991 = add i64 %3990, 3
  store i64 %3991, i64* %PC.i384
  %3992 = trunc i64 %3989 to i32
  %3993 = add i32 1, %3992
  %3994 = zext i32 %3993 to i64
  store i64 %3994, i64* %RAX.i385, align 8
  %3995 = icmp ult i32 %3993, %3992
  %3996 = icmp ult i32 %3993, 1
  %3997 = or i1 %3995, %3996
  %3998 = zext i1 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3998, i8* %3999, align 1
  %4000 = and i32 %3993, 255
  %4001 = call i32 @llvm.ctpop.i32(i32 %4000)
  %4002 = trunc i32 %4001 to i8
  %4003 = and i8 %4002, 1
  %4004 = xor i8 %4003, 1
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4004, i8* %4005, align 1
  %4006 = xor i64 1, %3989
  %4007 = trunc i64 %4006 to i32
  %4008 = xor i32 %4007, %3993
  %4009 = lshr i32 %4008, 4
  %4010 = trunc i32 %4009 to i8
  %4011 = and i8 %4010, 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4011, i8* %4012, align 1
  %4013 = icmp eq i32 %3993, 0
  %4014 = zext i1 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4014, i8* %4015, align 1
  %4016 = lshr i32 %3993, 31
  %4017 = trunc i32 %4016 to i8
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4017, i8* %4018, align 1
  %4019 = lshr i32 %3992, 31
  %4020 = xor i32 %4016, %4019
  %4021 = add i32 %4020, %4016
  %4022 = icmp eq i32 %4021, 2
  %4023 = zext i1 %4022 to i8
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4023, i8* %4024, align 1
  store %struct.Memory* %loadMem_422dd8, %struct.Memory** %MEMORY
  %loadMem_422ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 33
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 1
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %4030 to i32*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 15
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %4033 to i64*
  %4034 = load i64, i64* %RBP.i383
  %4035 = sub i64 %4034, 28
  %4036 = load i32, i32* %EAX.i382
  %4037 = zext i32 %4036 to i64
  %4038 = load i64, i64* %PC.i381
  %4039 = add i64 %4038, 3
  store i64 %4039, i64* %PC.i381
  %4040 = inttoptr i64 %4035 to i32*
  store i32 %4036, i32* %4040
  store %struct.Memory* %loadMem_422ddb, %struct.Memory** %MEMORY
  %loadMem_422dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 33
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4043 to i64*
  %4044 = load i64, i64* %PC.i380
  %4045 = add i64 %4044, -1063
  %4046 = load i64, i64* %PC.i380
  %4047 = add i64 %4046, 5
  store i64 %4047, i64* %PC.i380
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4045, i64* %4048, align 8
  store %struct.Memory* %loadMem_422dde, %struct.Memory** %MEMORY
  br label %block_.L_4229b7

block_.L_422de3:                                  ; preds = %block_.L_4229b7
  %loadMem_422de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 33
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4051 to i64*
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 11
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %RDI.i379 = bitcast %union.anon* %4054 to i64*
  %4055 = load i64, i64* %PC.i378
  %4056 = add i64 %4055, 10
  store i64 %4056, i64* %PC.i378
  store i64 ptrtoint (%G__0x57a353_type* @G__0x57a353 to i64), i64* %RDI.i379, align 8
  store %struct.Memory* %loadMem_422de3, %struct.Memory** %MEMORY
  %loadMem_422ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 33
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4059 to i64*
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 1
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %4063 = bitcast %union.anon* %4062 to %struct.anon.2*
  %AL.i377 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4063, i32 0, i32 0
  %4064 = load i64, i64* %PC.i376
  %4065 = add i64 %4064, 2
  store i64 %4065, i64* %PC.i376
  store i8 0, i8* %AL.i377, align 1
  store %struct.Memory* %loadMem_422ded, %struct.Memory** %MEMORY
  %loadMem1_422def = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4068 to i64*
  %4069 = load i64, i64* %PC.i375
  %4070 = add i64 %4069, 192449
  %4071 = load i64, i64* %PC.i375
  %4072 = add i64 %4071, 5
  %4073 = load i64, i64* %PC.i375
  %4074 = add i64 %4073, 5
  store i64 %4074, i64* %PC.i375
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4076 = load i64, i64* %4075, align 8
  %4077 = add i64 %4076, -8
  %4078 = inttoptr i64 %4077 to i64*
  store i64 %4072, i64* %4078
  store i64 %4077, i64* %4075, align 8
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4070, i64* %4079, align 8
  store %struct.Memory* %loadMem1_422def, %struct.Memory** %MEMORY
  %loadMem2_422def = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422def = load i64, i64* %3
  %call2_422def = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422def, %struct.Memory* %loadMem2_422def)
  store %struct.Memory* %call2_422def, %struct.Memory** %MEMORY
  %loadMem_422df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 15
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %RBP.i374
  %4087 = sub i64 %4086, 28
  %4088 = load i64, i64* %PC.i373
  %4089 = add i64 %4088, 7
  store i64 %4089, i64* %PC.i373
  %4090 = inttoptr i64 %4087 to i32*
  store i32 21, i32* %4090
  store %struct.Memory* %loadMem_422df4, %struct.Memory** %MEMORY
  %loadMem_422dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 1
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %4096 to i32*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 15
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4099 to i64*
  %4100 = load i64, i64* %RBP.i372
  %4101 = sub i64 %4100, 132
  %4102 = load i32, i32* %EAX.i371
  %4103 = zext i32 %4102 to i64
  %4104 = load i64, i64* %PC.i370
  %4105 = add i64 %4104, 6
  store i64 %4105, i64* %PC.i370
  %4106 = inttoptr i64 %4101 to i32*
  store i32 %4102, i32* %4106
  store %struct.Memory* %loadMem_422dfb, %struct.Memory** %MEMORY
  br label %block_.L_422e01

block_.L_422e01:                                  ; preds = %block_.L_4230fd, %block_.L_422de3
  %loadMem_422e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 33
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4109 to i64*
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 15
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %RBP.i369
  %4114 = sub i64 %4113, 28
  %4115 = load i64, i64* %PC.i368
  %4116 = add i64 %4115, 7
  store i64 %4116, i64* %PC.i368
  %4117 = inttoptr i64 %4114 to i32*
  %4118 = load i32, i32* %4117
  %4119 = sub i32 %4118, 400
  %4120 = icmp ult i32 %4118, 400
  %4121 = zext i1 %4120 to i8
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4121, i8* %4122, align 1
  %4123 = and i32 %4119, 255
  %4124 = call i32 @llvm.ctpop.i32(i32 %4123)
  %4125 = trunc i32 %4124 to i8
  %4126 = and i8 %4125, 1
  %4127 = xor i8 %4126, 1
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4127, i8* %4128, align 1
  %4129 = xor i32 %4118, 400
  %4130 = xor i32 %4129, %4119
  %4131 = lshr i32 %4130, 4
  %4132 = trunc i32 %4131 to i8
  %4133 = and i8 %4132, 1
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4133, i8* %4134, align 1
  %4135 = icmp eq i32 %4119, 0
  %4136 = zext i1 %4135 to i8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4136, i8* %4137, align 1
  %4138 = lshr i32 %4119, 31
  %4139 = trunc i32 %4138 to i8
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4139, i8* %4140, align 1
  %4141 = lshr i32 %4118, 31
  %4142 = xor i32 %4138, %4141
  %4143 = add i32 %4142, %4141
  %4144 = icmp eq i32 %4143, 2
  %4145 = zext i1 %4144 to i8
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4145, i8* %4146, align 1
  store %struct.Memory* %loadMem_422e01, %struct.Memory** %MEMORY
  %loadMem_422e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %PC.i367
  %4151 = add i64 %4150, 771
  %4152 = load i64, i64* %PC.i367
  %4153 = add i64 %4152, 6
  %4154 = load i64, i64* %PC.i367
  %4155 = add i64 %4154, 6
  store i64 %4155, i64* %PC.i367
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4157 = load i8, i8* %4156, align 1
  %4158 = icmp ne i8 %4157, 0
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4160 = load i8, i8* %4159, align 1
  %4161 = icmp ne i8 %4160, 0
  %4162 = xor i1 %4158, %4161
  %4163 = xor i1 %4162, true
  %4164 = zext i1 %4163 to i8
  store i8 %4164, i8* %BRANCH_TAKEN, align 1
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4166 = select i1 %4162, i64 %4153, i64 %4151
  store i64 %4166, i64* %4165, align 8
  store %struct.Memory* %loadMem_422e08, %struct.Memory** %MEMORY
  %loadBr_422e08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422e08 = icmp eq i8 %loadBr_422e08, 1
  br i1 %cmpBr_422e08, label %block_.L_42310b, label %block_422e0e

block_422e0e:                                     ; preds = %block_.L_422e01
  %loadMem_422e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 33
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 1
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %4172 to i64*
  %4173 = load i64, i64* %PC.i365
  %4174 = add i64 %4173, 10
  store i64 %4174, i64* %PC.i365
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_422e0e, %struct.Memory** %MEMORY
  %loadMem_422e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 33
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 5
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 15
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %RBP.i364
  %4185 = sub i64 %4184, 28
  %4186 = load i64, i64* %PC.i362
  %4187 = add i64 %4186, 4
  store i64 %4187, i64* %PC.i362
  %4188 = inttoptr i64 %4185 to i32*
  %4189 = load i32, i32* %4188
  %4190 = sext i32 %4189 to i64
  store i64 %4190, i64* %RCX.i363, align 8
  store %struct.Memory* %loadMem_422e18, %struct.Memory** %MEMORY
  %loadMem_422e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 33
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 5
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %4196 to i64*
  %4197 = load i64, i64* %RCX.i361
  %4198 = load i64, i64* %PC.i360
  %4199 = add i64 %4198, 4
  store i64 %4199, i64* %PC.i360
  %4200 = sext i64 %4197 to i128
  %4201 = and i128 %4200, -18446744073709551616
  %4202 = zext i64 %4197 to i128
  %4203 = or i128 %4201, %4202
  %4204 = mul i128 76, %4203
  %4205 = trunc i128 %4204 to i64
  store i64 %4205, i64* %RCX.i361, align 8
  %4206 = sext i64 %4205 to i128
  %4207 = icmp ne i128 %4206, %4204
  %4208 = zext i1 %4207 to i8
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4208, i8* %4209, align 1
  %4210 = trunc i128 %4204 to i32
  %4211 = and i32 %4210, 255
  %4212 = call i32 @llvm.ctpop.i32(i32 %4211)
  %4213 = trunc i32 %4212 to i8
  %4214 = and i8 %4213, 1
  %4215 = xor i8 %4214, 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4215, i8* %4216, align 1
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4217, align 1
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4218, align 1
  %4219 = lshr i64 %4205, 63
  %4220 = trunc i64 %4219 to i8
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4220, i8* %4221, align 1
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4208, i8* %4222, align 1
  store %struct.Memory* %loadMem_422e1c, %struct.Memory** %MEMORY
  %loadMem_422e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 33
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %4225 to i64*
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 1
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %4228 to i64*
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 5
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %4231 to i64*
  %4232 = load i64, i64* %RAX.i358
  %4233 = load i64, i64* %RCX.i359
  %4234 = load i64, i64* %PC.i357
  %4235 = add i64 %4234, 3
  store i64 %4235, i64* %PC.i357
  %4236 = add i64 %4233, %4232
  store i64 %4236, i64* %RAX.i358, align 8
  %4237 = icmp ult i64 %4236, %4232
  %4238 = icmp ult i64 %4236, %4233
  %4239 = or i1 %4237, %4238
  %4240 = zext i1 %4239 to i8
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4240, i8* %4241, align 1
  %4242 = trunc i64 %4236 to i32
  %4243 = and i32 %4242, 255
  %4244 = call i32 @llvm.ctpop.i32(i32 %4243)
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  %4247 = xor i8 %4246, 1
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4247, i8* %4248, align 1
  %4249 = xor i64 %4233, %4232
  %4250 = xor i64 %4249, %4236
  %4251 = lshr i64 %4250, 4
  %4252 = trunc i64 %4251 to i8
  %4253 = and i8 %4252, 1
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4253, i8* %4254, align 1
  %4255 = icmp eq i64 %4236, 0
  %4256 = zext i1 %4255 to i8
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4256, i8* %4257, align 1
  %4258 = lshr i64 %4236, 63
  %4259 = trunc i64 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4259, i8* %4260, align 1
  %4261 = lshr i64 %4232, 63
  %4262 = lshr i64 %4233, 63
  %4263 = xor i64 %4258, %4261
  %4264 = xor i64 %4258, %4262
  %4265 = add i64 %4263, %4264
  %4266 = icmp eq i64 %4265, 2
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4267, i8* %4268, align 1
  store %struct.Memory* %loadMem_422e20, %struct.Memory** %MEMORY
  %loadMem_422e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 1
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %4274 to i64*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 15
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %4277 to i64*
  %4278 = load i64, i64* %RBP.i356
  %4279 = sub i64 %4278, 48
  %4280 = load i64, i64* %RAX.i355
  %4281 = load i64, i64* %PC.i354
  %4282 = add i64 %4281, 4
  store i64 %4282, i64* %PC.i354
  %4283 = inttoptr i64 %4279 to i64*
  store i64 %4280, i64* %4283
  store %struct.Memory* %loadMem_422e23, %struct.Memory** %MEMORY
  %loadMem_422e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 1
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %4289 to i64*
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4291 = getelementptr inbounds %struct.GPR, %struct.GPR* %4290, i32 0, i32 15
  %4292 = getelementptr inbounds %struct.Reg, %struct.Reg* %4291, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %4292 to i64*
  %4293 = load i64, i64* %RBP.i353
  %4294 = sub i64 %4293, 28
  %4295 = load i64, i64* %PC.i351
  %4296 = add i64 %4295, 4
  store i64 %4296, i64* %PC.i351
  %4297 = inttoptr i64 %4294 to i32*
  %4298 = load i32, i32* %4297
  %4299 = sext i32 %4298 to i64
  store i64 %4299, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_422e27, %struct.Memory** %MEMORY
  %loadMem_422e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 1
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4307 = getelementptr inbounds %struct.GPR, %struct.GPR* %4306, i32 0, i32 7
  %4308 = getelementptr inbounds %struct.Reg, %struct.Reg* %4307, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %4308 to i64*
  %4309 = load i64, i64* %RAX.i349
  %4310 = add i64 %4309, 12099168
  %4311 = load i64, i64* %PC.i348
  %4312 = add i64 %4311, 8
  store i64 %4312, i64* %PC.i348
  %4313 = inttoptr i64 %4310 to i8*
  %4314 = load i8, i8* %4313
  %4315 = zext i8 %4314 to i64
  store i64 %4315, i64* %RDX.i350, align 8
  store %struct.Memory* %loadMem_422e2b, %struct.Memory** %MEMORY
  %loadMem_422e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 7
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %EDX.i347 = bitcast %union.anon* %4321 to i32*
  %4322 = load i32, i32* %EDX.i347
  %4323 = zext i32 %4322 to i64
  %4324 = load i64, i64* %PC.i346
  %4325 = add i64 %4324, 3
  store i64 %4325, i64* %PC.i346
  %4326 = sub i32 %4322, 1
  %4327 = icmp ult i32 %4322, 1
  %4328 = zext i1 %4327 to i8
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4328, i8* %4329, align 1
  %4330 = and i32 %4326, 255
  %4331 = call i32 @llvm.ctpop.i32(i32 %4330)
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  %4334 = xor i8 %4333, 1
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4334, i8* %4335, align 1
  %4336 = xor i64 1, %4323
  %4337 = trunc i64 %4336 to i32
  %4338 = xor i32 %4337, %4326
  %4339 = lshr i32 %4338, 4
  %4340 = trunc i32 %4339 to i8
  %4341 = and i8 %4340, 1
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4341, i8* %4342, align 1
  %4343 = icmp eq i32 %4326, 0
  %4344 = zext i1 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4344, i8* %4345, align 1
  %4346 = lshr i32 %4326, 31
  %4347 = trunc i32 %4346 to i8
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4347, i8* %4348, align 1
  %4349 = lshr i32 %4322, 31
  %4350 = xor i32 %4346, %4349
  %4351 = add i32 %4350, %4349
  %4352 = icmp eq i32 %4351, 2
  %4353 = zext i1 %4352 to i8
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4353, i8* %4354, align 1
  store %struct.Memory* %loadMem_422e33, %struct.Memory** %MEMORY
  %loadMem_422e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4357 to i64*
  %4358 = load i64, i64* %PC.i345
  %4359 = add i64 %4358, 32
  %4360 = load i64, i64* %PC.i345
  %4361 = add i64 %4360, 6
  %4362 = load i64, i64* %PC.i345
  %4363 = add i64 %4362, 6
  store i64 %4363, i64* %PC.i345
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4365 = load i8, i8* %4364, align 1
  store i8 %4365, i8* %BRANCH_TAKEN, align 1
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4367 = icmp ne i8 %4365, 0
  %4368 = select i1 %4367, i64 %4359, i64 %4361
  store i64 %4368, i64* %4366, align 8
  store %struct.Memory* %loadMem_422e36, %struct.Memory** %MEMORY
  %loadBr_422e36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422e36 = icmp eq i8 %loadBr_422e36, 1
  br i1 %cmpBr_422e36, label %block_.L_422e56, label %block_422e3c

block_422e3c:                                     ; preds = %block_422e0e
  %loadMem_422e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 1
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 15
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %RBP.i344
  %4379 = sub i64 %4378, 28
  %4380 = load i64, i64* %PC.i342
  %4381 = add i64 %4380, 4
  store i64 %4381, i64* %PC.i342
  %4382 = inttoptr i64 %4379 to i32*
  %4383 = load i32, i32* %4382
  %4384 = sext i32 %4383 to i64
  store i64 %4384, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_422e3c, %struct.Memory** %MEMORY
  %loadMem_422e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 1
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 5
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %4393 to i64*
  %4394 = load i64, i64* %RAX.i340
  %4395 = add i64 %4394, 12099168
  %4396 = load i64, i64* %PC.i339
  %4397 = add i64 %4396, 8
  store i64 %4397, i64* %PC.i339
  %4398 = inttoptr i64 %4395 to i8*
  %4399 = load i8, i8* %4398
  %4400 = zext i8 %4399 to i64
  store i64 %4400, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_422e40, %struct.Memory** %MEMORY
  %loadMem_422e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 5
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %ECX.i338 = bitcast %union.anon* %4406 to i32*
  %4407 = load i32, i32* %ECX.i338
  %4408 = zext i32 %4407 to i64
  %4409 = load i64, i64* %PC.i337
  %4410 = add i64 %4409, 3
  store i64 %4410, i64* %PC.i337
  %4411 = sub i32 %4407, 2
  %4412 = icmp ult i32 %4407, 2
  %4413 = zext i1 %4412 to i8
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4413, i8* %4414, align 1
  %4415 = and i32 %4411, 255
  %4416 = call i32 @llvm.ctpop.i32(i32 %4415)
  %4417 = trunc i32 %4416 to i8
  %4418 = and i8 %4417, 1
  %4419 = xor i8 %4418, 1
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4419, i8* %4420, align 1
  %4421 = xor i64 2, %4408
  %4422 = trunc i64 %4421 to i32
  %4423 = xor i32 %4422, %4411
  %4424 = lshr i32 %4423, 4
  %4425 = trunc i32 %4424 to i8
  %4426 = and i8 %4425, 1
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4426, i8* %4427, align 1
  %4428 = icmp eq i32 %4411, 0
  %4429 = zext i1 %4428 to i8
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4429, i8* %4430, align 1
  %4431 = lshr i32 %4411, 31
  %4432 = trunc i32 %4431 to i8
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4432, i8* %4433, align 1
  %4434 = lshr i32 %4407, 31
  %4435 = xor i32 %4431, %4434
  %4436 = add i32 %4435, %4434
  %4437 = icmp eq i32 %4436, 2
  %4438 = zext i1 %4437 to i8
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4438, i8* %4439, align 1
  store %struct.Memory* %loadMem_422e48, %struct.Memory** %MEMORY
  %loadMem_422e4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 33
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4442 to i64*
  %4443 = load i64, i64* %PC.i336
  %4444 = add i64 %4443, 11
  %4445 = load i64, i64* %PC.i336
  %4446 = add i64 %4445, 6
  %4447 = load i64, i64* %PC.i336
  %4448 = add i64 %4447, 6
  store i64 %4448, i64* %PC.i336
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4450 = load i8, i8* %4449, align 1
  store i8 %4450, i8* %BRANCH_TAKEN, align 1
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4452 = icmp ne i8 %4450, 0
  %4453 = select i1 %4452, i64 %4444, i64 %4446
  store i64 %4453, i64* %4451, align 8
  store %struct.Memory* %loadMem_422e4b, %struct.Memory** %MEMORY
  %loadBr_422e4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422e4b = icmp eq i8 %loadBr_422e4b, 1
  br i1 %cmpBr_422e4b, label %block_.L_422e56, label %block_422e51

block_422e51:                                     ; preds = %block_422e3c
  %loadMem_422e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %4456 to i64*
  %4457 = load i64, i64* %PC.i335
  %4458 = add i64 %4457, 684
  %4459 = load i64, i64* %PC.i335
  %4460 = add i64 %4459, 5
  store i64 %4460, i64* %PC.i335
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4458, i64* %4461, align 8
  store %struct.Memory* %loadMem_422e51, %struct.Memory** %MEMORY
  br label %block_.L_4230fd

block_.L_422e56:                                  ; preds = %block_422e3c, %block_422e0e
  %loadMem_422e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 33
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 1
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %4467 to i64*
  %4468 = load i64, i64* %PC.i333
  %4469 = add i64 %4468, 8
  store i64 %4469, i64* %PC.i333
  %4470 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %4470, i64* %RAX.i334, align 8
  store %struct.Memory* %loadMem_422e56, %struct.Memory** %MEMORY
  %loadMem_422e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 5
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 15
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %4479 to i64*
  %4480 = load i64, i64* %RBP.i332
  %4481 = sub i64 %4480, 48
  %4482 = load i64, i64* %PC.i330
  %4483 = add i64 %4482, 4
  store i64 %4483, i64* %PC.i330
  %4484 = inttoptr i64 %4481 to i64*
  %4485 = load i64, i64* %4484
  store i64 %4485, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_422e5e, %struct.Memory** %MEMORY
  %loadMem_422e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 33
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4488 to i64*
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 5
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %4491 to i64*
  %4492 = load i64, i64* %RCX.i329
  %4493 = add i64 %4492, 4
  %4494 = load i64, i64* %PC.i328
  %4495 = add i64 %4494, 4
  store i64 %4495, i64* %PC.i328
  %4496 = inttoptr i64 %4493 to i32*
  %4497 = load i32, i32* %4496
  %4498 = sext i32 %4497 to i64
  store i64 %4498, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_422e62, %struct.Memory** %MEMORY
  %loadMem_422e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 33
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 5
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %4504 to i64*
  %4505 = load i64, i64* %RCX.i327
  %4506 = load i64, i64* %PC.i326
  %4507 = add i64 %4506, 4
  store i64 %4507, i64* %PC.i326
  %4508 = sext i64 %4505 to i128
  %4509 = and i128 %4508, -18446744073709551616
  %4510 = zext i64 %4505 to i128
  %4511 = or i128 %4509, %4510
  %4512 = mul i128 104, %4511
  %4513 = trunc i128 %4512 to i64
  store i64 %4513, i64* %RCX.i327, align 8
  %4514 = sext i64 %4513 to i128
  %4515 = icmp ne i128 %4514, %4512
  %4516 = zext i1 %4515 to i8
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4516, i8* %4517, align 1
  %4518 = trunc i128 %4512 to i32
  %4519 = and i32 %4518, 255
  %4520 = call i32 @llvm.ctpop.i32(i32 %4519)
  %4521 = trunc i32 %4520 to i8
  %4522 = and i8 %4521, 1
  %4523 = xor i8 %4522, 1
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4523, i8* %4524, align 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4525, align 1
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4526, align 1
  %4527 = lshr i64 %4513, 63
  %4528 = trunc i64 %4527 to i8
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4528, i8* %4529, align 1
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4516, i8* %4530, align 1
  store %struct.Memory* %loadMem_422e66, %struct.Memory** %MEMORY
  %loadMem_422e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 33
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 1
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %4536 to i64*
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 5
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %4539 to i64*
  %4540 = load i64, i64* %RAX.i324
  %4541 = load i64, i64* %RCX.i325
  %4542 = load i64, i64* %PC.i323
  %4543 = add i64 %4542, 3
  store i64 %4543, i64* %PC.i323
  %4544 = add i64 %4541, %4540
  store i64 %4544, i64* %RAX.i324, align 8
  %4545 = icmp ult i64 %4544, %4540
  %4546 = icmp ult i64 %4544, %4541
  %4547 = or i1 %4545, %4546
  %4548 = zext i1 %4547 to i8
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4548, i8* %4549, align 1
  %4550 = trunc i64 %4544 to i32
  %4551 = and i32 %4550, 255
  %4552 = call i32 @llvm.ctpop.i32(i32 %4551)
  %4553 = trunc i32 %4552 to i8
  %4554 = and i8 %4553, 1
  %4555 = xor i8 %4554, 1
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4555, i8* %4556, align 1
  %4557 = xor i64 %4541, %4540
  %4558 = xor i64 %4557, %4544
  %4559 = lshr i64 %4558, 4
  %4560 = trunc i64 %4559 to i8
  %4561 = and i8 %4560, 1
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4561, i8* %4562, align 1
  %4563 = icmp eq i64 %4544, 0
  %4564 = zext i1 %4563 to i8
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4564, i8* %4565, align 1
  %4566 = lshr i64 %4544, 63
  %4567 = trunc i64 %4566 to i8
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4567, i8* %4568, align 1
  %4569 = lshr i64 %4540, 63
  %4570 = lshr i64 %4541, 63
  %4571 = xor i64 %4566, %4569
  %4572 = xor i64 %4566, %4570
  %4573 = add i64 %4571, %4572
  %4574 = icmp eq i64 %4573, 2
  %4575 = zext i1 %4574 to i8
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4575, i8* %4576, align 1
  store %struct.Memory* %loadMem_422e6a, %struct.Memory** %MEMORY
  %loadMem_422e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 33
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 1
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 15
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %4585 to i64*
  %4586 = load i64, i64* %RBP.i322
  %4587 = sub i64 %4586, 56
  %4588 = load i64, i64* %RAX.i321
  %4589 = load i64, i64* %PC.i320
  %4590 = add i64 %4589, 4
  store i64 %4590, i64* %PC.i320
  %4591 = inttoptr i64 %4587 to i64*
  store i64 %4588, i64* %4591
  store %struct.Memory* %loadMem_422e6d, %struct.Memory** %MEMORY
  %loadMem_422e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 33
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 1
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %4597 to i64*
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 15
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4600 to i64*
  %4601 = load i64, i64* %RBP.i319
  %4602 = sub i64 %4601, 48
  %4603 = load i64, i64* %PC.i317
  %4604 = add i64 %4603, 4
  store i64 %4604, i64* %PC.i317
  %4605 = inttoptr i64 %4602 to i64*
  %4606 = load i64, i64* %4605
  store i64 %4606, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_422e71, %struct.Memory** %MEMORY
  %loadMem_422e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 1
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %4612 to i64*
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 7
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %4615 to i64*
  %4616 = load i64, i64* %RAX.i315
  %4617 = add i64 %4616, 8
  %4618 = load i64, i64* %PC.i314
  %4619 = add i64 %4618, 3
  store i64 %4619, i64* %PC.i314
  %4620 = inttoptr i64 %4617 to i32*
  %4621 = load i32, i32* %4620
  %4622 = zext i32 %4621 to i64
  store i64 %4622, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_422e75, %struct.Memory** %MEMORY
  %loadMem_422e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 33
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 7
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %EDX.i312 = bitcast %union.anon* %4628 to i32*
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 15
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %4631 to i64*
  %4632 = load i32, i32* %EDX.i312
  %4633 = zext i32 %4632 to i64
  %4634 = load i64, i64* %RBP.i313
  %4635 = sub i64 %4634, 28
  %4636 = load i64, i64* %PC.i311
  %4637 = add i64 %4636, 3
  store i64 %4637, i64* %PC.i311
  %4638 = inttoptr i64 %4635 to i32*
  %4639 = load i32, i32* %4638
  %4640 = sub i32 %4632, %4639
  %4641 = icmp ult i32 %4632, %4639
  %4642 = zext i1 %4641 to i8
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4642, i8* %4643, align 1
  %4644 = and i32 %4640, 255
  %4645 = call i32 @llvm.ctpop.i32(i32 %4644)
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  %4648 = xor i8 %4647, 1
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4648, i8* %4649, align 1
  %4650 = xor i32 %4639, %4632
  %4651 = xor i32 %4650, %4640
  %4652 = lshr i32 %4651, 4
  %4653 = trunc i32 %4652 to i8
  %4654 = and i8 %4653, 1
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4654, i8* %4655, align 1
  %4656 = icmp eq i32 %4640, 0
  %4657 = zext i1 %4656 to i8
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4657, i8* %4658, align 1
  %4659 = lshr i32 %4640, 31
  %4660 = trunc i32 %4659 to i8
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4660, i8* %4661, align 1
  %4662 = lshr i32 %4632, 31
  %4663 = lshr i32 %4639, 31
  %4664 = xor i32 %4663, %4662
  %4665 = xor i32 %4659, %4662
  %4666 = add i32 %4665, %4664
  %4667 = icmp eq i32 %4666, 2
  %4668 = zext i1 %4667 to i8
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4668, i8* %4669, align 1
  store %struct.Memory* %loadMem_422e78, %struct.Memory** %MEMORY
  %loadMem_422e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 33
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4672 to i64*
  %4673 = load i64, i64* %PC.i310
  %4674 = add i64 %4673, 637
  %4675 = load i64, i64* %PC.i310
  %4676 = add i64 %4675, 6
  %4677 = load i64, i64* %PC.i310
  %4678 = add i64 %4677, 6
  store i64 %4678, i64* %PC.i310
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4680 = load i8, i8* %4679, align 1
  %4681 = icmp eq i8 %4680, 0
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %BRANCH_TAKEN, align 1
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4684 = select i1 %4681, i64 %4674, i64 %4676
  store i64 %4684, i64* %4683, align 8
  store %struct.Memory* %loadMem_422e7b, %struct.Memory** %MEMORY
  %loadBr_422e7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422e7b = icmp eq i8 %loadBr_422e7b, 1
  br i1 %cmpBr_422e7b, label %block_.L_4230f8, label %block_422e81

block_422e81:                                     ; preds = %block_.L_422e56
  %loadMem_422e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 33
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 1
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %PC.i308
  %4692 = add i64 %4691, 10
  store i64 %4692, i64* %PC.i308
  store i64 ptrtoint (%G__0x579c45_type* @G__0x579c45 to i64), i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_422e81, %struct.Memory** %MEMORY
  %loadMem_422e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 5
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %PC.i306
  %4700 = add i64 %4699, 10
  store i64 %4700, i64* %PC.i306
  store i64 ptrtoint (%G__0x57e7b5_type* @G__0x57e7b5 to i64), i64* %RCX.i307, align 8
  store %struct.Memory* %loadMem_422e8b, %struct.Memory** %MEMORY
  %loadMem_422e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 9
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RSI.i304 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 15
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %RBP.i305
  %4711 = sub i64 %4710, 28
  %4712 = load i64, i64* %PC.i303
  %4713 = add i64 %4712, 3
  store i64 %4713, i64* %PC.i303
  %4714 = inttoptr i64 %4711 to i32*
  %4715 = load i32, i32* %4714
  %4716 = zext i32 %4715 to i64
  store i64 %4716, i64* %RSI.i304, align 8
  store %struct.Memory* %loadMem_422e95, %struct.Memory** %MEMORY
  %loadMem_422e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 7
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RDX.i301 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 15
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %4725 to i64*
  %4726 = load i64, i64* %RBP.i302
  %4727 = sub i64 %4726, 28
  %4728 = load i64, i64* %PC.i300
  %4729 = add i64 %4728, 4
  store i64 %4729, i64* %PC.i300
  %4730 = inttoptr i64 %4727 to i32*
  %4731 = load i32, i32* %4730
  %4732 = sext i32 %4731 to i64
  store i64 %4732, i64* %RDX.i301, align 8
  store %struct.Memory* %loadMem_422e98, %struct.Memory** %MEMORY
  %loadMem_422e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 33
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4735 to i64*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 7
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %4738 to i64*
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 11
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %RDI.i299 = bitcast %union.anon* %4741 to i64*
  %4742 = load i64, i64* %RDX.i298
  %4743 = add i64 %4742, 12099168
  %4744 = load i64, i64* %PC.i297
  %4745 = add i64 %4744, 8
  store i64 %4745, i64* %PC.i297
  %4746 = inttoptr i64 %4743 to i8*
  %4747 = load i8, i8* %4746
  %4748 = zext i8 %4747 to i64
  store i64 %4748, i64* %RDI.i299, align 8
  store %struct.Memory* %loadMem_422e9c, %struct.Memory** %MEMORY
  %loadMem_422ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 33
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 11
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4754 to i32*
  %4755 = load i32, i32* %EDI.i
  %4756 = zext i32 %4755 to i64
  %4757 = load i64, i64* %PC.i296
  %4758 = add i64 %4757, 3
  store i64 %4758, i64* %PC.i296
  %4759 = sub i32 %4755, 2
  %4760 = icmp ult i32 %4755, 2
  %4761 = zext i1 %4760 to i8
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4761, i8* %4762, align 1
  %4763 = and i32 %4759, 255
  %4764 = call i32 @llvm.ctpop.i32(i32 %4763)
  %4765 = trunc i32 %4764 to i8
  %4766 = and i8 %4765, 1
  %4767 = xor i8 %4766, 1
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4767, i8* %4768, align 1
  %4769 = xor i64 2, %4756
  %4770 = trunc i64 %4769 to i32
  %4771 = xor i32 %4770, %4759
  %4772 = lshr i32 %4771, 4
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4774, i8* %4775, align 1
  %4776 = icmp eq i32 %4759, 0
  %4777 = zext i1 %4776 to i8
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4777, i8* %4778, align 1
  %4779 = lshr i32 %4759, 31
  %4780 = trunc i32 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4780, i8* %4781, align 1
  %4782 = lshr i32 %4755, 31
  %4783 = xor i32 %4779, %4782
  %4784 = add i32 %4783, %4782
  %4785 = icmp eq i32 %4784, 2
  %4786 = zext i1 %4785 to i8
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4786, i8* %4787, align 1
  store %struct.Memory* %loadMem_422ea4, %struct.Memory** %MEMORY
  %loadMem_422ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 1
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %4793 to i64*
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 5
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %4796 to i64*
  %4797 = load i64, i64* %RCX.i295
  %4798 = load i64, i64* %PC.i293
  %4799 = add i64 %4798, 4
  store i64 %4799, i64* %PC.i293
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4801 = load i8, i8* %4800, align 1
  %4802 = icmp ne i8 %4801, 0
  %4803 = load i64, i64* %RAX.i294, align 8
  %4804 = select i1 %4802, i64 %4797, i64 %4803
  store i64 %4804, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_422ea7, %struct.Memory** %MEMORY
  %loadMem_422eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 33
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 5
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 15
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %4813 to i64*
  %4814 = load i64, i64* %RBP.i292
  %4815 = sub i64 %4814, 48
  %4816 = load i64, i64* %PC.i290
  %4817 = add i64 %4816, 4
  store i64 %4817, i64* %PC.i290
  %4818 = inttoptr i64 %4815 to i64*
  %4819 = load i64, i64* %4818
  store i64 %4819, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_422eab, %struct.Memory** %MEMORY
  %loadMem_422eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4821 = getelementptr inbounds %struct.GPR, %struct.GPR* %4820, i32 0, i32 33
  %4822 = getelementptr inbounds %struct.Reg, %struct.Reg* %4821, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4822 to i64*
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 5
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %4825 to i64*
  %4826 = load i64, i64* %RCX.i289
  %4827 = add i64 %4826, 12
  %4828 = load i64, i64* %PC.i288
  %4829 = add i64 %4828, 3
  store i64 %4829, i64* %PC.i288
  %4830 = inttoptr i64 %4827 to i32*
  %4831 = load i32, i32* %4830
  %4832 = zext i32 %4831 to i64
  store i64 %4832, i64* %RCX.i289, align 8
  store %struct.Memory* %loadMem_422eaf, %struct.Memory** %MEMORY
  %loadMem_422eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 33
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4835 to i64*
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 7
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %4838 to i64*
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 15
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %4841 to i64*
  %4842 = load i64, i64* %RBP.i287
  %4843 = sub i64 %4842, 48
  %4844 = load i64, i64* %PC.i285
  %4845 = add i64 %4844, 4
  store i64 %4845, i64* %PC.i285
  %4846 = inttoptr i64 %4843 to i64*
  %4847 = load i64, i64* %4846
  store i64 %4847, i64* %RDX.i286, align 8
  store %struct.Memory* %loadMem_422eb2, %struct.Memory** %MEMORY
  %loadMem_422eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 33
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 7
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %4853 to i64*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4855 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4854, i64 0, i64 0
  %YMM0.i284 = bitcast %union.VectorReg* %4855 to %"class.std::bitset"*
  %4856 = bitcast %"class.std::bitset"* %YMM0.i284 to i8*
  %4857 = load i64, i64* %RDX.i283
  %4858 = add i64 %4857, 16
  %4859 = load i64, i64* %PC.i282
  %4860 = add i64 %4859, 5
  store i64 %4860, i64* %PC.i282
  %4861 = inttoptr i64 %4858 to float*
  %4862 = load float, float* %4861
  %4863 = fpext float %4862 to double
  %4864 = bitcast i8* %4856 to double*
  store double %4863, double* %4864, align 1
  store %struct.Memory* %loadMem_422eb6, %struct.Memory** %MEMORY
  %loadMem_422ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 7
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %4870 to i64*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 15
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %4873 to i64*
  %4874 = load i64, i64* %RBP.i281
  %4875 = sub i64 %4874, 56
  %4876 = load i64, i64* %PC.i279
  %4877 = add i64 %4876, 4
  store i64 %4877, i64* %PC.i279
  %4878 = inttoptr i64 %4875 to i64*
  %4879 = load i64, i64* %4878
  store i64 %4879, i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_422ebb, %struct.Memory** %MEMORY
  %loadMem_422ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 33
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 7
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %4885 to i64*
  %4886 = load i64, i64* %RDX.i278
  %4887 = load i64, i64* %PC.i277
  %4888 = add i64 %4887, 4
  store i64 %4888, i64* %PC.i277
  %4889 = add i64 76, %4886
  store i64 %4889, i64* %RDX.i278, align 8
  %4890 = icmp ult i64 %4889, %4886
  %4891 = icmp ult i64 %4889, 76
  %4892 = or i1 %4890, %4891
  %4893 = zext i1 %4892 to i8
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4893, i8* %4894, align 1
  %4895 = trunc i64 %4889 to i32
  %4896 = and i32 %4895, 255
  %4897 = call i32 @llvm.ctpop.i32(i32 %4896)
  %4898 = trunc i32 %4897 to i8
  %4899 = and i8 %4898, 1
  %4900 = xor i8 %4899, 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4900, i8* %4901, align 1
  %4902 = xor i64 76, %4886
  %4903 = xor i64 %4902, %4889
  %4904 = lshr i64 %4903, 4
  %4905 = trunc i64 %4904 to i8
  %4906 = and i8 %4905, 1
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4906, i8* %4907, align 1
  %4908 = icmp eq i64 %4889, 0
  %4909 = zext i1 %4908 to i8
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4909, i8* %4910, align 1
  %4911 = lshr i64 %4889, 63
  %4912 = trunc i64 %4911 to i8
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4912, i8* %4913, align 1
  %4914 = lshr i64 %4886, 63
  %4915 = xor i64 %4911, %4914
  %4916 = add i64 %4915, %4911
  %4917 = icmp eq i64 %4916, 2
  %4918 = zext i1 %4917 to i8
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4918, i8* %4919, align 1
  store %struct.Memory* %loadMem_422ebf, %struct.Memory** %MEMORY
  %loadMem_422ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 33
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4922 to i64*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 7
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RDX.i275 = bitcast %union.anon* %4925 to i64*
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 11
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %RDI.i276 = bitcast %union.anon* %4928 to i64*
  %4929 = load i64, i64* %RDX.i275
  %4930 = load i64, i64* %PC.i274
  %4931 = add i64 %4930, 3
  store i64 %4931, i64* %PC.i274
  store i64 %4929, i64* %RDI.i276, align 8
  store %struct.Memory* %loadMem_422ec3, %struct.Memory** %MEMORY
  %loadMem_422ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 33
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 9
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4937 to i32*
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 15
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %4940 to i64*
  %4941 = load i64, i64* %RBP.i273
  %4942 = sub i64 %4941, 136
  %4943 = load i32, i32* %ESI.i
  %4944 = zext i32 %4943 to i64
  %4945 = load i64, i64* %PC.i272
  %4946 = add i64 %4945, 6
  store i64 %4946, i64* %PC.i272
  %4947 = inttoptr i64 %4942 to i32*
  store i32 %4943, i32* %4947
  store %struct.Memory* %loadMem_422ec6, %struct.Memory** %MEMORY
  %loadMem_422ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 33
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 1
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RAX.i270 = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 15
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %4956 to i64*
  %4957 = load i64, i64* %RBP.i271
  %4958 = sub i64 %4957, 144
  %4959 = load i64, i64* %RAX.i270
  %4960 = load i64, i64* %PC.i269
  %4961 = add i64 %4960, 7
  store i64 %4961, i64* %PC.i269
  %4962 = inttoptr i64 %4958 to i64*
  store i64 %4959, i64* %4962
  store %struct.Memory* %loadMem_422ecc, %struct.Memory** %MEMORY
  %loadMem_422ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 5
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %ECX.i267 = bitcast %union.anon* %4968 to i32*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 15
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %4971 to i64*
  %4972 = load i64, i64* %RBP.i268
  %4973 = sub i64 %4972, 148
  %4974 = load i32, i32* %ECX.i267
  %4975 = zext i32 %4974 to i64
  %4976 = load i64, i64* %PC.i266
  %4977 = add i64 %4976, 6
  store i64 %4977, i64* %PC.i266
  %4978 = inttoptr i64 %4973 to i32*
  store i32 %4974, i32* %4978
  store %struct.Memory* %loadMem_422ed3, %struct.Memory** %MEMORY
  %loadMem_422ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 33
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 15
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4985, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4986 to %union.vec128_t*
  %4987 = load i64, i64* %RBP.i265
  %4988 = sub i64 %4987, 160
  %4989 = bitcast %union.vec128_t* %XMM0.i to i8*
  %4990 = load i64, i64* %PC.i264
  %4991 = add i64 %4990, 8
  store i64 %4991, i64* %PC.i264
  %4992 = bitcast i8* %4989 to double*
  %4993 = load double, double* %4992, align 1
  %4994 = inttoptr i64 %4988 to double*
  store double %4993, double* %4994
  store %struct.Memory* %loadMem_422ed9, %struct.Memory** %MEMORY
  %loadMem1_422ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 33
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4997 to i64*
  %4998 = load i64, i64* %PC.i263
  %4999 = add i64 %4998, 101423
  %5000 = load i64, i64* %PC.i263
  %5001 = add i64 %5000, 5
  %5002 = load i64, i64* %PC.i263
  %5003 = add i64 %5002, 5
  store i64 %5003, i64* %PC.i263
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5005 = load i64, i64* %5004, align 8
  %5006 = add i64 %5005, -8
  %5007 = inttoptr i64 %5006 to i64*
  store i64 %5001, i64* %5007
  store i64 %5006, i64* %5004, align 8
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4999, i64* %5008, align 8
  store %struct.Memory* %loadMem1_422ee1, %struct.Memory** %MEMORY
  %loadMem2_422ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422ee1 = load i64, i64* %3
  %call2_422ee1 = call %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* %0, i64 %loadPC_422ee1, %struct.Memory* %loadMem2_422ee1)
  store %struct.Memory* %call2_422ee1, %struct.Memory** %MEMORY
  %loadMem_422ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 33
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5011 to i64*
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 11
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %RDI.i262 = bitcast %union.anon* %5014 to i64*
  %5015 = load i64, i64* %PC.i261
  %5016 = add i64 %5015, 10
  store i64 %5016, i64* %PC.i261
  store i64 ptrtoint (%G__0x57b5de_type* @G__0x57b5de to i64), i64* %RDI.i262, align 8
  store %struct.Memory* %loadMem_422ee6, %struct.Memory** %MEMORY
  %loadMem_422ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5018 = getelementptr inbounds %struct.GPR, %struct.GPR* %5017, i32 0, i32 33
  %5019 = getelementptr inbounds %struct.Reg, %struct.Reg* %5018, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5019 to i64*
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 7
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %5022 to i64*
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 15
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %5025 to i64*
  %5026 = load i64, i64* %RBP.i260
  %5027 = sub i64 %5026, 56
  %5028 = load i64, i64* %PC.i258
  %5029 = add i64 %5028, 4
  store i64 %5029, i64* %PC.i258
  %5030 = inttoptr i64 %5027 to i64*
  %5031 = load i64, i64* %5030
  store i64 %5031, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_422ef0, %struct.Memory** %MEMORY
  %loadMem_422ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 33
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 19
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %5037 to i32*
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 7
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %5040 to i64*
  %5041 = bitcast i32* %R9D.i to i64*
  %5042 = load i64, i64* %RDX.i257
  %5043 = add i64 %5042, 72
  %5044 = load i64, i64* %PC.i256
  %5045 = add i64 %5044, 4
  store i64 %5045, i64* %PC.i256
  %5046 = inttoptr i64 %5043 to i32*
  %5047 = load i32, i32* %5046
  %5048 = zext i32 %5047 to i64
  store i64 %5048, i64* %5041, align 8
  store %struct.Memory* %loadMem_422ef4, %struct.Memory** %MEMORY
  %loadMem_422ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 33
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5051 to i64*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 7
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 15
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %5057 to i64*
  %5058 = load i64, i64* %RBP.i255
  %5059 = sub i64 %5058, 48
  %5060 = load i64, i64* %PC.i253
  %5061 = add i64 %5060, 4
  store i64 %5061, i64* %PC.i253
  %5062 = inttoptr i64 %5059 to i64*
  %5063 = load i64, i64* %5062
  store i64 %5063, i64* %RDX.i254, align 8
  store %struct.Memory* %loadMem_422ef8, %struct.Memory** %MEMORY
  %loadMem_422efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 33
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 7
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RDX.i252 = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RDX.i252
  %5071 = add i64 %5070, 20
  %5072 = load i64, i64* %PC.i251
  %5073 = add i64 %5072, 4
  store i64 %5073, i64* %PC.i251
  %5074 = inttoptr i64 %5071 to i32*
  %5075 = load i32, i32* %5074
  %5076 = sext i32 %5075 to i64
  store i64 %5076, i64* %RDX.i252, align 8
  store %struct.Memory* %loadMem_422efc, %struct.Memory** %MEMORY
  %loadMem_422f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 7
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %5082 to i64*
  %5083 = load i64, i64* %RDX.i250
  %5084 = mul i64 %5083, 8
  %5085 = add i64 %5084, 8053504
  %5086 = load i64, i64* %PC.i249
  %5087 = add i64 %5086, 8
  store i64 %5087, i64* %PC.i249
  %5088 = inttoptr i64 %5085 to i64*
  %5089 = load i64, i64* %5088
  store i64 %5089, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_422f00, %struct.Memory** %MEMORY
  %loadMem_422f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 33
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 15
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 17
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %R8.i248 = bitcast %union.anon* %5098 to i64*
  %5099 = load i64, i64* %RBP.i247
  %5100 = sub i64 %5099, 48
  %5101 = load i64, i64* %PC.i246
  %5102 = add i64 %5101, 4
  store i64 %5102, i64* %PC.i246
  %5103 = inttoptr i64 %5100 to i64*
  %5104 = load i64, i64* %5103
  store i64 %5104, i64* %R8.i248, align 8
  store %struct.Memory* %loadMem_422f08, %struct.Memory** %MEMORY
  %loadMem_422f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 33
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 17
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %R8.i245 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %R8.i245
  %5112 = add i64 %5111, 64
  %5113 = load i64, i64* %PC.i244
  %5114 = add i64 %5113, 4
  store i64 %5114, i64* %PC.i244
  %5115 = inttoptr i64 %5112 to i32*
  %5116 = load i32, i32* %5115
  %5117 = sext i32 %5116 to i64
  store i64 %5117, i64* %R8.i245, align 8
  store %struct.Memory* %loadMem_422f0c, %struct.Memory** %MEMORY
  %loadMem_422f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 33
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5120 to i64*
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 17
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %R8.i243 = bitcast %union.anon* %5123 to i64*
  %5124 = load i64, i64* %R8.i243
  %5125 = mul i64 %5124, 8
  %5126 = add i64 %5125, 8053504
  %5127 = load i64, i64* %PC.i242
  %5128 = add i64 %5127, 8
  store i64 %5128, i64* %PC.i242
  %5129 = inttoptr i64 %5126 to i64*
  %5130 = load i64, i64* %5129
  store i64 %5130, i64* %R8.i243, align 8
  store %struct.Memory* %loadMem_422f10, %struct.Memory** %MEMORY
  %loadMem_422f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 33
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 15
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %5136 to i64*
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 21
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %R10.i241 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %RBP.i240
  %5141 = sub i64 %5140, 56
  %5142 = load i64, i64* %PC.i239
  %5143 = add i64 %5142, 4
  store i64 %5143, i64* %PC.i239
  %5144 = inttoptr i64 %5141 to i64*
  %5145 = load i64, i64* %5144
  store i64 %5145, i64* %R10.i241, align 8
  store %struct.Memory* %loadMem_422f18, %struct.Memory** %MEMORY
  %loadMem_422f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 33
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5148 to i64*
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 5
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %5151 to i64*
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 21
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %R10.i238 = bitcast %union.anon* %5154 to i64*
  %5155 = load i64, i64* %R10.i238
  %5156 = add i64 %5155, 52
  %5157 = load i64, i64* %PC.i236
  %5158 = add i64 %5157, 4
  store i64 %5158, i64* %PC.i236
  %5159 = inttoptr i64 %5156 to i32*
  %5160 = load i32, i32* %5159
  %5161 = zext i32 %5160 to i64
  store i64 %5161, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_422f1c, %struct.Memory** %MEMORY
  %loadMem_422f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 33
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5164 to i64*
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 15
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 21
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %R10.i235 = bitcast %union.anon* %5170 to i64*
  %5171 = load i64, i64* %RBP.i234
  %5172 = sub i64 %5171, 56
  %5173 = load i64, i64* %PC.i233
  %5174 = add i64 %5173, 4
  store i64 %5174, i64* %PC.i233
  %5175 = inttoptr i64 %5172 to i64*
  %5176 = load i64, i64* %5175
  store i64 %5176, i64* %R10.i235, align 8
  store %struct.Memory* %loadMem_422f20, %struct.Memory** %MEMORY
  %loadMem_422f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 33
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 21
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %R10.i232 = bitcast %union.anon* %5182 to i64*
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5184 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5183, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5184 to %"class.std::bitset"*
  %5185 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5186 = load i64, i64* %R10.i232
  %5187 = add i64 %5186, 56
  %5188 = load i64, i64* %PC.i231
  %5189 = add i64 %5188, 6
  store i64 %5189, i64* %PC.i231
  %5190 = inttoptr i64 %5187 to float*
  %5191 = load float, float* %5190
  %5192 = fpext float %5191 to double
  %5193 = bitcast i8* %5185 to double*
  store double %5192, double* %5193, align 1
  store %struct.Memory* %loadMem_422f24, %struct.Memory** %MEMORY
  %loadMem_422f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 33
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 15
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5199 to i64*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 21
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %R10.i230 = bitcast %union.anon* %5202 to i64*
  %5203 = load i64, i64* %RBP.i229
  %5204 = sub i64 %5203, 56
  %5205 = load i64, i64* %PC.i228
  %5206 = add i64 %5205, 4
  store i64 %5206, i64* %PC.i228
  %5207 = inttoptr i64 %5204 to i64*
  %5208 = load i64, i64* %5207
  store i64 %5208, i64* %R10.i230, align 8
  store %struct.Memory* %loadMem_422f2a, %struct.Memory** %MEMORY
  %loadMem_422f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 21
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %R10.i227 = bitcast %union.anon* %5214 to i64*
  %5215 = load i64, i64* %R10.i227
  %5216 = add i64 %5215, 60
  %5217 = load i64, i64* %PC.i226
  %5218 = add i64 %5217, 4
  store i64 %5218, i64* %PC.i226
  %5219 = inttoptr i64 %5216 to i32*
  %5220 = load i32, i32* %5219
  %5221 = sext i32 %5220 to i64
  store i64 %5221, i64* %R10.i227, align 8
  store %struct.Memory* %loadMem_422f2e, %struct.Memory** %MEMORY
  %loadMem_422f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 21
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %R10.i225 = bitcast %union.anon* %5227 to i64*
  %5228 = load i64, i64* %R10.i225
  %5229 = mul i64 %5228, 8
  %5230 = add i64 %5229, 8053552
  %5231 = load i64, i64* %PC.i224
  %5232 = add i64 %5231, 8
  store i64 %5232, i64* %PC.i224
  %5233 = inttoptr i64 %5230 to i64*
  %5234 = load i64, i64* %5233
  store i64 %5234, i64* %R10.i225, align 8
  store %struct.Memory* %loadMem_422f32, %struct.Memory** %MEMORY
  %loadMem_422f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5236 = getelementptr inbounds %struct.GPR, %struct.GPR* %5235, i32 0, i32 33
  %5237 = getelementptr inbounds %struct.Reg, %struct.Reg* %5236, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5237 to i64*
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 15
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %5240 to i64*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 23
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %R11.i223 = bitcast %union.anon* %5243 to i64*
  %5244 = load i64, i64* %RBP.i222
  %5245 = sub i64 %5244, 56
  %5246 = load i64, i64* %PC.i221
  %5247 = add i64 %5246, 4
  store i64 %5247, i64* %PC.i221
  %5248 = inttoptr i64 %5245 to i64*
  %5249 = load i64, i64* %5248
  store i64 %5249, i64* %R11.i223, align 8
  store %struct.Memory* %loadMem_422f3a, %struct.Memory** %MEMORY
  %loadMem_422f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 33
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 23
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %R11.i220 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5256, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %5257 to %"class.std::bitset"*
  %5258 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %5259 = load i64, i64* %R11.i220
  %5260 = add i64 %5259, 68
  %5261 = load i64, i64* %PC.i219
  %5262 = add i64 %5261, 6
  store i64 %5262, i64* %PC.i219
  %5263 = inttoptr i64 %5260 to float*
  %5264 = load float, float* %5263
  %5265 = fpext float %5264 to double
  %5266 = bitcast i8* %5258 to double*
  store double %5265, double* %5266, align 1
  store %struct.Memory* %loadMem_422f3e, %struct.Memory** %MEMORY
  %loadMem_422f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 33
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5269 to i64*
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 15
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 23
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %R11.i218 = bitcast %union.anon* %5275 to i64*
  %5276 = load i64, i64* %RBP.i217
  %5277 = sub i64 %5276, 56
  %5278 = load i64, i64* %PC.i216
  %5279 = add i64 %5278, 4
  store i64 %5279, i64* %PC.i216
  %5280 = inttoptr i64 %5277 to i64*
  %5281 = load i64, i64* %5280
  store i64 %5281, i64* %R11.i218, align 8
  store %struct.Memory* %loadMem_422f44, %struct.Memory** %MEMORY
  %loadMem_422f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 33
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5284 to i64*
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 23
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %R11.i215 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5288, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %5289 to %"class.std::bitset"*
  %5290 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %5291 = load i64, i64* %R11.i215
  %5292 = add i64 %5291, 64
  %5293 = load i64, i64* %PC.i214
  %5294 = add i64 %5293, 6
  store i64 %5294, i64* %PC.i214
  %5295 = inttoptr i64 %5292 to float*
  %5296 = load float, float* %5295
  %5297 = fpext float %5296 to double
  %5298 = bitcast i8* %5290 to double*
  store double %5297, double* %5298, align 1
  store %struct.Memory* %loadMem_422f48, %struct.Memory** %MEMORY
  %loadMem_422f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 9
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RSI.i212 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 15
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %RBP.i213
  %5309 = sub i64 %5308, 136
  %5310 = load i64, i64* %PC.i211
  %5311 = add i64 %5310, 6
  store i64 %5311, i64* %PC.i211
  %5312 = inttoptr i64 %5309 to i32*
  %5313 = load i32, i32* %5312
  %5314 = zext i32 %5313 to i64
  store i64 %5314, i64* %RSI.i212, align 8
  store %struct.Memory* %loadMem_422f4e, %struct.Memory** %MEMORY
  %loadMem_422f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 33
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 15
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 23
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %R11.i210 = bitcast %union.anon* %5323 to i64*
  %5324 = load i64, i64* %RBP.i209
  %5325 = sub i64 %5324, 144
  %5326 = load i64, i64* %PC.i208
  %5327 = add i64 %5326, 7
  store i64 %5327, i64* %PC.i208
  %5328 = inttoptr i64 %5325 to i64*
  %5329 = load i64, i64* %5328
  store i64 %5329, i64* %R11.i210, align 8
  store %struct.Memory* %loadMem_422f54, %struct.Memory** %MEMORY
  %loadMem_422f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 33
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5332 to i64*
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 7
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %5335 to i64*
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5337 = getelementptr inbounds %struct.GPR, %struct.GPR* %5336, i32 0, i32 15
  %5338 = getelementptr inbounds %struct.Reg, %struct.Reg* %5337, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5338 to i64*
  %5339 = load i64, i64* %RBP.i207
  %5340 = sub i64 %5339, 168
  %5341 = load i64, i64* %RDX.i206
  %5342 = load i64, i64* %PC.i205
  %5343 = add i64 %5342, 7
  store i64 %5343, i64* %PC.i205
  %5344 = inttoptr i64 %5340 to i64*
  store i64 %5341, i64* %5344
  store %struct.Memory* %loadMem_422f5b, %struct.Memory** %MEMORY
  %loadMem_422f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 33
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 7
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RDX.i204 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 23
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %R11.i = bitcast %union.anon* %5353 to i64*
  %5354 = load i64, i64* %R11.i
  %5355 = load i64, i64* %PC.i203
  %5356 = add i64 %5355, 3
  store i64 %5356, i64* %PC.i203
  store i64 %5354, i64* %RDX.i204, align 8
  store %struct.Memory* %loadMem_422f62, %struct.Memory** %MEMORY
  %loadMem_422f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5358 = getelementptr inbounds %struct.GPR, %struct.GPR* %5357, i32 0, i32 33
  %5359 = getelementptr inbounds %struct.Reg, %struct.Reg* %5358, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5359 to i64*
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 3
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %RBX.i201 = bitcast %union.anon* %5362 to i64*
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 15
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5365 to i64*
  %5366 = load i64, i64* %RBP.i202
  %5367 = sub i64 %5366, 148
  %5368 = load i64, i64* %PC.i200
  %5369 = add i64 %5368, 6
  store i64 %5369, i64* %PC.i200
  %5370 = inttoptr i64 %5367 to i32*
  %5371 = load i32, i32* %5370
  %5372 = zext i32 %5371 to i64
  store i64 %5372, i64* %RBX.i201, align 8
  store %struct.Memory* %loadMem_422f65, %struct.Memory** %MEMORY
  %loadMem_422f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 33
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %5375 to i64*
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 5
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5378 to i32*
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5380 = getelementptr inbounds %struct.GPR, %struct.GPR* %5379, i32 0, i32 15
  %5381 = getelementptr inbounds %struct.Reg, %struct.Reg* %5380, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %5381 to i64*
  %5382 = load i64, i64* %RBP.i199
  %5383 = sub i64 %5382, 172
  %5384 = load i32, i32* %ECX.i
  %5385 = zext i32 %5384 to i64
  %5386 = load i64, i64* %PC.i198
  %5387 = add i64 %5386, 6
  store i64 %5387, i64* %PC.i198
  %5388 = inttoptr i64 %5383 to i32*
  store i32 %5384, i32* %5388
  store %struct.Memory* %loadMem_422f6b, %struct.Memory** %MEMORY
  %loadMem_422f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 33
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5391 to i64*
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 3
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %5394 to i32*
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5396 = getelementptr inbounds %struct.GPR, %struct.GPR* %5395, i32 0, i32 5
  %5397 = getelementptr inbounds %struct.Reg, %struct.Reg* %5396, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %5397 to i64*
  %5398 = load i32, i32* %EBX.i
  %5399 = zext i32 %5398 to i64
  %5400 = load i64, i64* %PC.i196
  %5401 = add i64 %5400, 2
  store i64 %5401, i64* %PC.i196
  %5402 = and i64 %5399, 4294967295
  store i64 %5402, i64* %RCX.i197, align 8
  store %struct.Memory* %loadMem_422f71, %struct.Memory** %MEMORY
  %loadMem_422f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 33
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 15
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %5408 to i64*
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5409, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5410 to %"class.std::bitset"*
  %5411 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5412 = load i64, i64* %RBP.i195
  %5413 = sub i64 %5412, 160
  %5414 = load i64, i64* %PC.i194
  %5415 = add i64 %5414, 8
  store i64 %5415, i64* %PC.i194
  %5416 = inttoptr i64 %5413 to double*
  %5417 = load double, double* %5416
  %5418 = bitcast i8* %5411 to double*
  store double %5417, double* %5418, align 1
  %5419 = getelementptr inbounds i8, i8* %5411, i64 8
  %5420 = bitcast i8* %5419 to double*
  store double 0.000000e+00, double* %5420, align 1
  store %struct.Memory* %loadMem_422f73, %struct.Memory** %MEMORY
  %loadMem_422f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 33
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5423 to i64*
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 15
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 17
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %R8.i193 = bitcast %union.anon* %5429 to i64*
  %5430 = load i64, i64* %RBP.i192
  %5431 = sub i64 %5430, 184
  %5432 = load i64, i64* %R8.i193
  %5433 = load i64, i64* %PC.i191
  %5434 = add i64 %5433, 7
  store i64 %5434, i64* %PC.i191
  %5435 = inttoptr i64 %5431 to i64*
  store i64 %5432, i64* %5435
  store %struct.Memory* %loadMem_422f7b, %struct.Memory** %MEMORY
  %loadMem_422f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 33
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5438 to i64*
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 1
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %5441 to i64*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 17
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %R8.i = bitcast %union.anon* %5444 to i64*
  %5445 = load i64, i64* %RAX.i190
  %5446 = load i64, i64* %PC.i189
  %5447 = add i64 %5446, 3
  store i64 %5447, i64* %PC.i189
  store i64 %5445, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_422f82, %struct.Memory** %MEMORY
  %loadMem_422f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5449 = getelementptr inbounds %struct.GPR, %struct.GPR* %5448, i32 0, i32 33
  %5450 = getelementptr inbounds %struct.Reg, %struct.Reg* %5449, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %5450 to i64*
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5452 = getelementptr inbounds %struct.GPR, %struct.GPR* %5451, i32 0, i32 1
  %5453 = getelementptr inbounds %struct.Reg, %struct.Reg* %5452, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %5453 to i64*
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 15
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %5456 to i64*
  %5457 = load i64, i64* %RBP.i188
  %5458 = sub i64 %5457, 168
  %5459 = load i64, i64* %PC.i186
  %5460 = add i64 %5459, 7
  store i64 %5460, i64* %PC.i186
  %5461 = inttoptr i64 %5458 to i64*
  %5462 = load i64, i64* %5461
  store i64 %5462, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_422f85, %struct.Memory** %MEMORY
  %loadMem_422f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 33
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 1
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 13
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %RSP.i185 = bitcast %union.anon* %5471 to i64*
  %5472 = load i64, i64* %RSP.i185
  %5473 = load i64, i64* %RAX.i184
  %5474 = load i64, i64* %PC.i183
  %5475 = add i64 %5474, 4
  store i64 %5475, i64* %PC.i183
  %5476 = inttoptr i64 %5472 to i64*
  store i64 %5473, i64* %5476
  store %struct.Memory* %loadMem_422f8c, %struct.Memory** %MEMORY
  %loadMem_422f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 1
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 15
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %5485 to i64*
  %5486 = load i64, i64* %RBP.i182
  %5487 = sub i64 %5486, 184
  %5488 = load i64, i64* %PC.i180
  %5489 = add i64 %5488, 7
  store i64 %5489, i64* %PC.i180
  %5490 = inttoptr i64 %5487 to i64*
  %5491 = load i64, i64* %5490
  store i64 %5491, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_422f90, %struct.Memory** %MEMORY
  %loadMem_422f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 33
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %5494 to i64*
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 1
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 13
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %RSP.i179 = bitcast %union.anon* %5500 to i64*
  %5501 = load i64, i64* %RSP.i179
  %5502 = add i64 %5501, 8
  %5503 = load i64, i64* %RAX.i178
  %5504 = load i64, i64* %PC.i177
  %5505 = add i64 %5504, 5
  store i64 %5505, i64* %PC.i177
  %5506 = inttoptr i64 %5502 to i64*
  store i64 %5503, i64* %5506
  store %struct.Memory* %loadMem_422f97, %struct.Memory** %MEMORY
  %loadMem_422f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 33
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %5509 to i64*
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 29
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %R14D.i175 = bitcast %union.anon* %5512 to i32*
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 15
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %5515 to i64*
  %5516 = bitcast i32* %R14D.i175 to i64*
  %5517 = load i64, i64* %RBP.i176
  %5518 = sub i64 %5517, 172
  %5519 = load i64, i64* %PC.i174
  %5520 = add i64 %5519, 7
  store i64 %5520, i64* %PC.i174
  %5521 = inttoptr i64 %5518 to i32*
  %5522 = load i32, i32* %5521
  %5523 = zext i32 %5522 to i64
  store i64 %5523, i64* %5516, align 8
  store %struct.Memory* %loadMem_422f9c, %struct.Memory** %MEMORY
  %loadMem_422fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 33
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 29
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %5529 to i32*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 13
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %RSP.i173 = bitcast %union.anon* %5532 to i64*
  %5533 = load i64, i64* %RSP.i173
  %5534 = add i64 %5533, 16
  %5535 = load i32, i32* %R14D.i
  %5536 = zext i32 %5535 to i64
  %5537 = load i64, i64* %PC.i172
  %5538 = add i64 %5537, 5
  store i64 %5538, i64* %PC.i172
  %5539 = inttoptr i64 %5534 to i32*
  store i32 %5535, i32* %5539
  store %struct.Memory* %loadMem_422fa3, %struct.Memory** %MEMORY
  %loadMem_422fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 33
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5542 to i64*
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 13
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %RSP.i171 = bitcast %union.anon* %5545 to i64*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 21
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %R10.i = bitcast %union.anon* %5548 to i64*
  %5549 = load i64, i64* %RSP.i171
  %5550 = add i64 %5549, 24
  %5551 = load i64, i64* %R10.i
  %5552 = load i64, i64* %PC.i170
  %5553 = add i64 %5552, 5
  store i64 %5553, i64* %PC.i170
  %5554 = inttoptr i64 %5550 to i64*
  store i64 %5551, i64* %5554
  store %struct.Memory* %loadMem_422fa8, %struct.Memory** %MEMORY
  %loadMem_422fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5557 to i64*
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5559 = getelementptr inbounds %struct.GPR, %struct.GPR* %5558, i32 0, i32 1
  %5560 = getelementptr inbounds %struct.Reg, %struct.Reg* %5559, i32 0, i32 0
  %5561 = bitcast %union.anon* %5560 to %struct.anon.2*
  %AL.i169 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5561, i32 0, i32 0
  %5562 = load i64, i64* %PC.i168
  %5563 = add i64 %5562, 2
  store i64 %5563, i64* %PC.i168
  store i8 4, i8* %AL.i169, align 1
  store %struct.Memory* %loadMem_422fad, %struct.Memory** %MEMORY
  %loadMem1_422faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 33
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %5566 to i64*
  %5567 = load i64, i64* %PC.i167
  %5568 = add i64 %5567, 192001
  %5569 = load i64, i64* %PC.i167
  %5570 = add i64 %5569, 5
  %5571 = load i64, i64* %PC.i167
  %5572 = add i64 %5571, 5
  store i64 %5572, i64* %PC.i167
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5574 = load i64, i64* %5573, align 8
  %5575 = add i64 %5574, -8
  %5576 = inttoptr i64 %5575 to i64*
  store i64 %5570, i64* %5576
  store i64 %5575, i64* %5573, align 8
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5568, i64* %5577, align 8
  store %struct.Memory* %loadMem1_422faf, %struct.Memory** %MEMORY
  %loadMem2_422faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422faf = load i64, i64* %3
  %call2_422faf = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422faf, %struct.Memory* %loadMem2_422faf)
  store %struct.Memory* %call2_422faf, %struct.Memory** %MEMORY
  %loadMem_422fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5579 = getelementptr inbounds %struct.GPR, %struct.GPR* %5578, i32 0, i32 33
  %5580 = getelementptr inbounds %struct.Reg, %struct.Reg* %5579, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5580 to i64*
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 11
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %RDI.i166 = bitcast %union.anon* %5583 to i64*
  %5584 = load i64, i64* %PC.i165
  %5585 = add i64 %5584, 10
  store i64 %5585, i64* %PC.i165
  store i64 ptrtoint (%G__0x57b687_type* @G__0x57b687 to i64), i64* %RDI.i166, align 8
  store %struct.Memory* %loadMem_422fb4, %struct.Memory** %MEMORY
  %loadMem_422fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 33
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5588 to i64*
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5590 = getelementptr inbounds %struct.GPR, %struct.GPR* %5589, i32 0, i32 7
  %5591 = getelementptr inbounds %struct.Reg, %struct.Reg* %5590, i32 0, i32 0
  %RDX.i163 = bitcast %union.anon* %5591 to i64*
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 15
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %5594 to i64*
  %5595 = load i64, i64* %RBP.i164
  %5596 = sub i64 %5595, 48
  %5597 = load i64, i64* %PC.i162
  %5598 = add i64 %5597, 4
  store i64 %5598, i64* %PC.i162
  %5599 = inttoptr i64 %5596 to i64*
  %5600 = load i64, i64* %5599
  store i64 %5600, i64* %RDX.i163, align 8
  store %struct.Memory* %loadMem_422fbe, %struct.Memory** %MEMORY
  %loadMem_422fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 33
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5603 to i64*
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5605 = getelementptr inbounds %struct.GPR, %struct.GPR* %5604, i32 0, i32 7
  %5606 = getelementptr inbounds %struct.Reg, %struct.Reg* %5605, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %5606 to i64*
  %5607 = load i64, i64* %RDX.i161
  %5608 = add i64 %5607, 28
  %5609 = load i64, i64* %PC.i160
  %5610 = add i64 %5609, 4
  store i64 %5610, i64* %PC.i160
  %5611 = inttoptr i64 %5608 to i32*
  %5612 = load i32, i32* %5611
  %5613 = sext i32 %5612 to i64
  store i64 %5613, i64* %RDX.i161, align 8
  store %struct.Memory* %loadMem_422fc2, %struct.Memory** %MEMORY
  %loadMem_422fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 33
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5616 to i64*
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 7
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %RDX.i158 = bitcast %union.anon* %5619 to i64*
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 9
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %RSI.i159 = bitcast %union.anon* %5622 to i64*
  %5623 = load i64, i64* %RDX.i158
  %5624 = mul i64 %5623, 8
  %5625 = add i64 %5624, 8053504
  %5626 = load i64, i64* %PC.i157
  %5627 = add i64 %5626, 8
  store i64 %5627, i64* %PC.i157
  %5628 = inttoptr i64 %5625 to i64*
  %5629 = load i64, i64* %5628
  store i64 %5629, i64* %RSI.i159, align 8
  store %struct.Memory* %loadMem_422fc6, %struct.Memory** %MEMORY
  %loadMem_422fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 33
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 1
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %5635 to i32*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 15
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %5638 to i64*
  %5639 = load i64, i64* %RBP.i156
  %5640 = sub i64 %5639, 188
  %5641 = load i32, i32* %EAX.i155
  %5642 = zext i32 %5641 to i64
  %5643 = load i64, i64* %PC.i154
  %5644 = add i64 %5643, 6
  store i64 %5644, i64* %PC.i154
  %5645 = inttoptr i64 %5640 to i32*
  store i32 %5641, i32* %5645
  store %struct.Memory* %loadMem_422fce, %struct.Memory** %MEMORY
  %loadMem_422fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 33
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5648 to i64*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 1
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %5652 = bitcast %union.anon* %5651 to %struct.anon.2*
  %AL.i153 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5652, i32 0, i32 0
  %5653 = load i64, i64* %PC.i152
  %5654 = add i64 %5653, 2
  store i64 %5654, i64* %PC.i152
  store i8 0, i8* %AL.i153, align 1
  store %struct.Memory* %loadMem_422fd4, %struct.Memory** %MEMORY
  %loadMem1_422fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 33
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5657 to i64*
  %5658 = load i64, i64* %PC.i151
  %5659 = add i64 %5658, 191962
  %5660 = load i64, i64* %PC.i151
  %5661 = add i64 %5660, 5
  %5662 = load i64, i64* %PC.i151
  %5663 = add i64 %5662, 5
  store i64 %5663, i64* %PC.i151
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5665 = load i64, i64* %5664, align 8
  %5666 = add i64 %5665, -8
  %5667 = inttoptr i64 %5666 to i64*
  store i64 %5661, i64* %5667
  store i64 %5666, i64* %5664, align 8
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5659, i64* %5668, align 8
  store %struct.Memory* %loadMem1_422fd6, %struct.Memory** %MEMORY
  %loadMem2_422fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422fd6 = load i64, i64* %3
  %call2_422fd6 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_422fd6, %struct.Memory* %loadMem2_422fd6)
  store %struct.Memory* %call2_422fd6, %struct.Memory** %MEMORY
  %loadMem_422fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 33
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5671 to i64*
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 7
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 15
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %5677 to i64*
  %5678 = load i64, i64* %RBP.i150
  %5679 = sub i64 %5678, 48
  %5680 = load i64, i64* %PC.i148
  %5681 = add i64 %5680, 4
  store i64 %5681, i64* %PC.i148
  %5682 = inttoptr i64 %5679 to i64*
  %5683 = load i64, i64* %5682
  store i64 %5683, i64* %RDX.i149, align 8
  store %struct.Memory* %loadMem_422fdb, %struct.Memory** %MEMORY
  %loadMem_422fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 33
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %5686 to i64*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5688 = getelementptr inbounds %struct.GPR, %struct.GPR* %5687, i32 0, i32 7
  %5689 = getelementptr inbounds %struct.Reg, %struct.Reg* %5688, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %5689 to i64*
  %5690 = load i64, i64* %RDX.i147
  %5691 = add i64 %5690, 28
  %5692 = load i64, i64* %PC.i146
  %5693 = add i64 %5692, 4
  store i64 %5693, i64* %PC.i146
  %5694 = inttoptr i64 %5691 to i32*
  %5695 = load i32, i32* %5694
  %5696 = sub i32 %5695, 2
  %5697 = icmp ult i32 %5695, 2
  %5698 = zext i1 %5697 to i8
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5698, i8* %5699, align 1
  %5700 = and i32 %5696, 255
  %5701 = call i32 @llvm.ctpop.i32(i32 %5700)
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  %5704 = xor i8 %5703, 1
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5704, i8* %5705, align 1
  %5706 = xor i32 %5695, 2
  %5707 = xor i32 %5706, %5696
  %5708 = lshr i32 %5707, 4
  %5709 = trunc i32 %5708 to i8
  %5710 = and i8 %5709, 1
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5710, i8* %5711, align 1
  %5712 = icmp eq i32 %5696, 0
  %5713 = zext i1 %5712 to i8
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5713, i8* %5714, align 1
  %5715 = lshr i32 %5696, 31
  %5716 = trunc i32 %5715 to i8
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5716, i8* %5717, align 1
  %5718 = lshr i32 %5695, 31
  %5719 = xor i32 %5715, %5718
  %5720 = add i32 %5719, %5718
  %5721 = icmp eq i32 %5720, 2
  %5722 = zext i1 %5721 to i8
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5722, i8* %5723, align 1
  store %struct.Memory* %loadMem_422fdf, %struct.Memory** %MEMORY
  %loadMem_422fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 33
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %5726 to i64*
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5728 = getelementptr inbounds %struct.GPR, %struct.GPR* %5727, i32 0, i32 1
  %5729 = getelementptr inbounds %struct.Reg, %struct.Reg* %5728, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %5729 to i32*
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 15
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %5732 to i64*
  %5733 = load i64, i64* %RBP.i145
  %5734 = sub i64 %5733, 192
  %5735 = load i32, i32* %EAX.i144
  %5736 = zext i32 %5735 to i64
  %5737 = load i64, i64* %PC.i143
  %5738 = add i64 %5737, 6
  store i64 %5738, i64* %PC.i143
  %5739 = inttoptr i64 %5734 to i32*
  store i32 %5735, i32* %5739
  store %struct.Memory* %loadMem_422fe3, %struct.Memory** %MEMORY
  %loadMem_422fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 33
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5742 to i64*
  %5743 = load i64, i64* %PC.i142
  %5744 = add i64 %5743, 80
  %5745 = load i64, i64* %PC.i142
  %5746 = add i64 %5745, 6
  %5747 = load i64, i64* %PC.i142
  %5748 = add i64 %5747, 6
  store i64 %5748, i64* %PC.i142
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5750 = load i8, i8* %5749, align 1
  %5751 = icmp eq i8 %5750, 0
  %5752 = zext i1 %5751 to i8
  store i8 %5752, i8* %BRANCH_TAKEN, align 1
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5754 = select i1 %5751, i64 %5744, i64 %5746
  store i64 %5754, i64* %5753, align 8
  store %struct.Memory* %loadMem_422fe9, %struct.Memory** %MEMORY
  %loadBr_422fe9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422fe9 = icmp eq i8 %loadBr_422fe9, 1
  br i1 %cmpBr_422fe9, label %block_.L_423039, label %block_422fef

block_422fef:                                     ; preds = %block_422e81
  %loadMem_422fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5756 = getelementptr inbounds %struct.GPR, %struct.GPR* %5755, i32 0, i32 33
  %5757 = getelementptr inbounds %struct.Reg, %struct.Reg* %5756, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5757 to i64*
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 11
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %RDI.i141 = bitcast %union.anon* %5760 to i64*
  %5761 = load i64, i64* %PC.i140
  %5762 = add i64 %5761, 10
  store i64 %5762, i64* %PC.i140
  store i64 ptrtoint (%G__0x57b698_type* @G__0x57b698 to i64), i64* %RDI.i141, align 8
  store %struct.Memory* %loadMem_422fef, %struct.Memory** %MEMORY
  %loadMem_422ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 33
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 1
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %5768 to i64*
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 15
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %5771 to i64*
  %5772 = load i64, i64* %RBP.i139
  %5773 = sub i64 %5772, 48
  %5774 = load i64, i64* %PC.i137
  %5775 = add i64 %5774, 4
  store i64 %5775, i64* %PC.i137
  %5776 = inttoptr i64 %5773 to i64*
  %5777 = load i64, i64* %5776
  store i64 %5777, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_422ff9, %struct.Memory** %MEMORY
  %loadMem_422ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5779 = getelementptr inbounds %struct.GPR, %struct.GPR* %5778, i32 0, i32 33
  %5780 = getelementptr inbounds %struct.Reg, %struct.Reg* %5779, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5780 to i64*
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5782 = getelementptr inbounds %struct.GPR, %struct.GPR* %5781, i32 0, i32 1
  %5783 = getelementptr inbounds %struct.Reg, %struct.Reg* %5782, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %5783 to i64*
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 9
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %RSI.i136 = bitcast %union.anon* %5786 to i64*
  %5787 = load i64, i64* %RAX.i135
  %5788 = add i64 %5787, 32
  %5789 = load i64, i64* %PC.i134
  %5790 = add i64 %5789, 3
  store i64 %5790, i64* %PC.i134
  %5791 = inttoptr i64 %5788 to i32*
  %5792 = load i32, i32* %5791
  %5793 = zext i32 %5792 to i64
  store i64 %5793, i64* %RSI.i136, align 8
  store %struct.Memory* %loadMem_422ffd, %struct.Memory** %MEMORY
  %loadMem_423000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 33
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %5796 to i64*
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 1
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %5799 to i64*
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 15
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %5802 to i64*
  %5803 = load i64, i64* %RBP.i133
  %5804 = sub i64 %5803, 48
  %5805 = load i64, i64* %PC.i131
  %5806 = add i64 %5805, 4
  store i64 %5806, i64* %PC.i131
  %5807 = inttoptr i64 %5804 to i64*
  %5808 = load i64, i64* %5807
  store i64 %5808, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_423000, %struct.Memory** %MEMORY
  %loadMem_423004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5810 = getelementptr inbounds %struct.GPR, %struct.GPR* %5809, i32 0, i32 33
  %5811 = getelementptr inbounds %struct.Reg, %struct.Reg* %5810, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %5811 to i64*
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 1
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %5814 to i64*
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 7
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %RDX.i130 = bitcast %union.anon* %5817 to i64*
  %5818 = load i64, i64* %RAX.i129
  %5819 = add i64 %5818, 36
  %5820 = load i64, i64* %PC.i128
  %5821 = add i64 %5820, 3
  store i64 %5821, i64* %PC.i128
  %5822 = inttoptr i64 %5819 to i32*
  %5823 = load i32, i32* %5822
  %5824 = zext i32 %5823 to i64
  store i64 %5824, i64* %RDX.i130, align 8
  store %struct.Memory* %loadMem_423004, %struct.Memory** %MEMORY
  %loadMem_423007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 33
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 1
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %5831 = bitcast %union.anon* %5830 to %struct.anon.2*
  %AL.i127 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5831, i32 0, i32 0
  %5832 = load i64, i64* %PC.i126
  %5833 = add i64 %5832, 2
  store i64 %5833, i64* %PC.i126
  store i8 0, i8* %AL.i127, align 1
  store %struct.Memory* %loadMem_423007, %struct.Memory** %MEMORY
  %loadMem1_423009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 33
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %5836 to i64*
  %5837 = load i64, i64* %PC.i125
  %5838 = add i64 %5837, 191911
  %5839 = load i64, i64* %PC.i125
  %5840 = add i64 %5839, 5
  %5841 = load i64, i64* %PC.i125
  %5842 = add i64 %5841, 5
  store i64 %5842, i64* %PC.i125
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5844 = load i64, i64* %5843, align 8
  %5845 = add i64 %5844, -8
  %5846 = inttoptr i64 %5845 to i64*
  store i64 %5840, i64* %5846
  store i64 %5845, i64* %5843, align 8
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5838, i64* %5847, align 8
  store %struct.Memory* %loadMem1_423009, %struct.Memory** %MEMORY
  %loadMem2_423009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423009 = load i64, i64* %3
  %call2_423009 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_423009, %struct.Memory* %loadMem2_423009)
  store %struct.Memory* %call2_423009, %struct.Memory** %MEMORY
  %loadMem_42300e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5849 = getelementptr inbounds %struct.GPR, %struct.GPR* %5848, i32 0, i32 33
  %5850 = getelementptr inbounds %struct.Reg, %struct.Reg* %5849, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5850 to i64*
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5852 = getelementptr inbounds %struct.GPR, %struct.GPR* %5851, i32 0, i32 11
  %5853 = getelementptr inbounds %struct.Reg, %struct.Reg* %5852, i32 0, i32 0
  %RDI.i124 = bitcast %union.anon* %5853 to i64*
  %5854 = load i64, i64* %PC.i123
  %5855 = add i64 %5854, 10
  store i64 %5855, i64* %PC.i123
  store i64 ptrtoint (%G__0x57b6bc_type* @G__0x57b6bc to i64), i64* %RDI.i124, align 8
  store %struct.Memory* %loadMem_42300e, %struct.Memory** %MEMORY
  %loadMem_423018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 33
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5858 to i64*
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 5
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %5861 to i64*
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 15
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5864 to i64*
  %5865 = load i64, i64* %RBP.i122
  %5866 = sub i64 %5865, 48
  %5867 = load i64, i64* %PC.i120
  %5868 = add i64 %5867, 4
  store i64 %5868, i64* %PC.i120
  %5869 = inttoptr i64 %5866 to i64*
  %5870 = load i64, i64* %5869
  store i64 %5870, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_423018, %struct.Memory** %MEMORY
  %loadMem_42301c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 5
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 9
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RSI.i119 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RCX.i118
  %5881 = add i64 %5880, 48
  %5882 = load i64, i64* %PC.i117
  %5883 = add i64 %5882, 3
  store i64 %5883, i64* %PC.i117
  %5884 = inttoptr i64 %5881 to i32*
  %5885 = load i32, i32* %5884
  %5886 = zext i32 %5885 to i64
  store i64 %5886, i64* %RSI.i119, align 8
  store %struct.Memory* %loadMem_42301c, %struct.Memory** %MEMORY
  %loadMem_42301f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 5
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %5892 to i64*
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 15
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %5895 to i64*
  %5896 = load i64, i64* %RBP.i116
  %5897 = sub i64 %5896, 48
  %5898 = load i64, i64* %PC.i114
  %5899 = add i64 %5898, 4
  store i64 %5899, i64* %PC.i114
  %5900 = inttoptr i64 %5897 to i64*
  %5901 = load i64, i64* %5900
  store i64 %5901, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_42301f, %struct.Memory** %MEMORY
  %loadMem_423023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5903 = getelementptr inbounds %struct.GPR, %struct.GPR* %5902, i32 0, i32 33
  %5904 = getelementptr inbounds %struct.Reg, %struct.Reg* %5903, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5904 to i64*
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 5
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %RCX.i112 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 7
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %5910 to i64*
  %5911 = load i64, i64* %RCX.i112
  %5912 = add i64 %5911, 52
  %5913 = load i64, i64* %PC.i111
  %5914 = add i64 %5913, 3
  store i64 %5914, i64* %PC.i111
  %5915 = inttoptr i64 %5912 to i32*
  %5916 = load i32, i32* %5915
  %5917 = zext i32 %5916 to i64
  store i64 %5917, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_423023, %struct.Memory** %MEMORY
  %loadMem_423026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5919 = getelementptr inbounds %struct.GPR, %struct.GPR* %5918, i32 0, i32 33
  %5920 = getelementptr inbounds %struct.Reg, %struct.Reg* %5919, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5920 to i64*
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 1
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %EAX.i109 = bitcast %union.anon* %5923 to i32*
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 15
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %5926 to i64*
  %5927 = load i64, i64* %RBP.i110
  %5928 = sub i64 %5927, 196
  %5929 = load i32, i32* %EAX.i109
  %5930 = zext i32 %5929 to i64
  %5931 = load i64, i64* %PC.i108
  %5932 = add i64 %5931, 6
  store i64 %5932, i64* %PC.i108
  %5933 = inttoptr i64 %5928 to i32*
  store i32 %5929, i32* %5933
  store %struct.Memory* %loadMem_423026, %struct.Memory** %MEMORY
  %loadMem_42302c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5935 = getelementptr inbounds %struct.GPR, %struct.GPR* %5934, i32 0, i32 33
  %5936 = getelementptr inbounds %struct.Reg, %struct.Reg* %5935, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5936 to i64*
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5938 = getelementptr inbounds %struct.GPR, %struct.GPR* %5937, i32 0, i32 1
  %5939 = getelementptr inbounds %struct.Reg, %struct.Reg* %5938, i32 0, i32 0
  %5940 = bitcast %union.anon* %5939 to %struct.anon.2*
  %AL.i107 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5940, i32 0, i32 0
  %5941 = load i64, i64* %PC.i106
  %5942 = add i64 %5941, 2
  store i64 %5942, i64* %PC.i106
  store i8 0, i8* %AL.i107, align 1
  store %struct.Memory* %loadMem_42302c, %struct.Memory** %MEMORY
  %loadMem1_42302e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 33
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5945 to i64*
  %5946 = load i64, i64* %PC.i105
  %5947 = add i64 %5946, 191874
  %5948 = load i64, i64* %PC.i105
  %5949 = add i64 %5948, 5
  %5950 = load i64, i64* %PC.i105
  %5951 = add i64 %5950, 5
  store i64 %5951, i64* %PC.i105
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5953 = load i64, i64* %5952, align 8
  %5954 = add i64 %5953, -8
  %5955 = inttoptr i64 %5954 to i64*
  store i64 %5949, i64* %5955
  store i64 %5954, i64* %5952, align 8
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5947, i64* %5956, align 8
  store %struct.Memory* %loadMem1_42302e, %struct.Memory** %MEMORY
  %loadMem2_42302e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42302e = load i64, i64* %3
  %call2_42302e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_42302e, %struct.Memory* %loadMem2_42302e)
  store %struct.Memory* %call2_42302e, %struct.Memory** %MEMORY
  %loadMem_423033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 33
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %5959 to i64*
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5961 = getelementptr inbounds %struct.GPR, %struct.GPR* %5960, i32 0, i32 1
  %5962 = getelementptr inbounds %struct.Reg, %struct.Reg* %5961, i32 0, i32 0
  %EAX.i103 = bitcast %union.anon* %5962 to i32*
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 15
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %5965 to i64*
  %5966 = load i64, i64* %RBP.i104
  %5967 = sub i64 %5966, 200
  %5968 = load i32, i32* %EAX.i103
  %5969 = zext i32 %5968 to i64
  %5970 = load i64, i64* %PC.i102
  %5971 = add i64 %5970, 6
  store i64 %5971, i64* %PC.i102
  %5972 = inttoptr i64 %5967 to i32*
  store i32 %5968, i32* %5972
  store %struct.Memory* %loadMem_423033, %struct.Memory** %MEMORY
  br label %block_.L_423039

block_.L_423039:                                  ; preds = %block_422fef, %block_422e81
  %loadMem_423039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 33
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 11
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %5978 to i64*
  %5979 = load i64, i64* %PC.i100
  %5980 = add i64 %5979, 10
  store i64 %5980, i64* %PC.i100
  store i64 ptrtoint (%G__0x57b6e0_type* @G__0x57b6e0 to i64), i64* %RDI.i101, align 8
  store %struct.Memory* %loadMem_423039, %struct.Memory** %MEMORY
  %loadMem_423043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 33
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 1
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %5987 = bitcast %union.anon* %5986 to %struct.anon.2*
  %AL.i99 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5987, i32 0, i32 0
  %5988 = load i64, i64* %PC.i98
  %5989 = add i64 %5988, 2
  store i64 %5989, i64* %PC.i98
  store i8 0, i8* %AL.i99, align 1
  store %struct.Memory* %loadMem_423043, %struct.Memory** %MEMORY
  %loadMem1_423045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 33
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5992 to i64*
  %5993 = load i64, i64* %PC.i97
  %5994 = add i64 %5993, 191851
  %5995 = load i64, i64* %PC.i97
  %5996 = add i64 %5995, 5
  %5997 = load i64, i64* %PC.i97
  %5998 = add i64 %5997, 5
  store i64 %5998, i64* %PC.i97
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6000 = load i64, i64* %5999, align 8
  %6001 = add i64 %6000, -8
  %6002 = inttoptr i64 %6001 to i64*
  store i64 %5996, i64* %6002
  store i64 %6001, i64* %5999, align 8
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5994, i64* %6003, align 8
  store %struct.Memory* %loadMem1_423045, %struct.Memory** %MEMORY
  %loadMem2_423045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423045 = load i64, i64* %3
  %call2_423045 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_423045, %struct.Memory* %loadMem2_423045)
  store %struct.Memory* %call2_423045, %struct.Memory** %MEMORY
  %loadMem_42304a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6005 = getelementptr inbounds %struct.GPR, %struct.GPR* %6004, i32 0, i32 33
  %6006 = getelementptr inbounds %struct.Reg, %struct.Reg* %6005, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6006 to i64*
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6008 = getelementptr inbounds %struct.GPR, %struct.GPR* %6007, i32 0, i32 15
  %6009 = getelementptr inbounds %struct.Reg, %struct.Reg* %6008, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %6009 to i64*
  %6010 = load i64, i64* %RBP.i96
  %6011 = sub i64 %6010, 32
  %6012 = load i64, i64* %PC.i95
  %6013 = add i64 %6012, 7
  store i64 %6013, i64* %PC.i95
  %6014 = inttoptr i64 %6011 to i32*
  store i32 0, i32* %6014
  store %struct.Memory* %loadMem_42304a, %struct.Memory** %MEMORY
  %loadMem_423051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 33
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6017 to i64*
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 1
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %6020 to i32*
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 15
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %6023 to i64*
  %6024 = load i64, i64* %RBP.i94
  %6025 = sub i64 %6024, 204
  %6026 = load i32, i32* %EAX.i93
  %6027 = zext i32 %6026 to i64
  %6028 = load i64, i64* %PC.i92
  %6029 = add i64 %6028, 6
  store i64 %6029, i64* %PC.i92
  %6030 = inttoptr i64 %6025 to i32*
  store i32 %6026, i32* %6030
  store %struct.Memory* %loadMem_423051, %struct.Memory** %MEMORY
  br label %block_.L_423057

block_.L_423057:                                  ; preds = %block_423067, %block_.L_423039
  %loadMem_423057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 33
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6033 to i64*
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 1
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 15
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %6039 to i64*
  %6040 = load i64, i64* %RBP.i91
  %6041 = sub i64 %6040, 32
  %6042 = load i64, i64* %PC.i89
  %6043 = add i64 %6042, 3
  store i64 %6043, i64* %PC.i89
  %6044 = inttoptr i64 %6041 to i32*
  %6045 = load i32, i32* %6044
  %6046 = zext i32 %6045 to i64
  store i64 %6046, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_423057, %struct.Memory** %MEMORY
  %loadMem_42305a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6048 = getelementptr inbounds %struct.GPR, %struct.GPR* %6047, i32 0, i32 33
  %6049 = getelementptr inbounds %struct.Reg, %struct.Reg* %6048, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6049 to i64*
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 5
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %6052 to i64*
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6054 = getelementptr inbounds %struct.GPR, %struct.GPR* %6053, i32 0, i32 15
  %6055 = getelementptr inbounds %struct.Reg, %struct.Reg* %6054, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %6055 to i64*
  %6056 = load i64, i64* %RBP.i88
  %6057 = sub i64 %6056, 56
  %6058 = load i64, i64* %PC.i86
  %6059 = add i64 %6058, 4
  store i64 %6059, i64* %PC.i86
  %6060 = inttoptr i64 %6057 to i64*
  %6061 = load i64, i64* %6060
  store i64 %6061, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_42305a, %struct.Memory** %MEMORY
  %loadMem_42305e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 33
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6064 to i64*
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 1
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %EAX.i84 = bitcast %union.anon* %6067 to i32*
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6069 = getelementptr inbounds %struct.GPR, %struct.GPR* %6068, i32 0, i32 5
  %6070 = getelementptr inbounds %struct.Reg, %struct.Reg* %6069, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %6070 to i64*
  %6071 = load i32, i32* %EAX.i84
  %6072 = zext i32 %6071 to i64
  %6073 = load i64, i64* %RCX.i85
  %6074 = add i64 %6073, 44
  %6075 = load i64, i64* %PC.i83
  %6076 = add i64 %6075, 3
  store i64 %6076, i64* %PC.i83
  %6077 = inttoptr i64 %6074 to i32*
  %6078 = load i32, i32* %6077
  %6079 = sub i32 %6071, %6078
  %6080 = icmp ult i32 %6071, %6078
  %6081 = zext i1 %6080 to i8
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6081, i8* %6082, align 1
  %6083 = and i32 %6079, 255
  %6084 = call i32 @llvm.ctpop.i32(i32 %6083)
  %6085 = trunc i32 %6084 to i8
  %6086 = and i8 %6085, 1
  %6087 = xor i8 %6086, 1
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6087, i8* %6088, align 1
  %6089 = xor i32 %6078, %6071
  %6090 = xor i32 %6089, %6079
  %6091 = lshr i32 %6090, 4
  %6092 = trunc i32 %6091 to i8
  %6093 = and i8 %6092, 1
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6093, i8* %6094, align 1
  %6095 = icmp eq i32 %6079, 0
  %6096 = zext i1 %6095 to i8
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6096, i8* %6097, align 1
  %6098 = lshr i32 %6079, 31
  %6099 = trunc i32 %6098 to i8
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6099, i8* %6100, align 1
  %6101 = lshr i32 %6071, 31
  %6102 = lshr i32 %6078, 31
  %6103 = xor i32 %6102, %6101
  %6104 = xor i32 %6098, %6101
  %6105 = add i32 %6104, %6103
  %6106 = icmp eq i32 %6105, 2
  %6107 = zext i1 %6106 to i8
  %6108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6107, i8* %6108, align 1
  store %struct.Memory* %loadMem_42305e, %struct.Memory** %MEMORY
  %loadMem_423061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 33
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6111 to i64*
  %6112 = load i64, i64* %PC.i82
  %6113 = add i64 %6112, 79
  %6114 = load i64, i64* %PC.i82
  %6115 = add i64 %6114, 6
  %6116 = load i64, i64* %PC.i82
  %6117 = add i64 %6116, 6
  store i64 %6117, i64* %PC.i82
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6119 = load i8, i8* %6118, align 1
  %6120 = icmp ne i8 %6119, 0
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6122 = load i8, i8* %6121, align 1
  %6123 = icmp ne i8 %6122, 0
  %6124 = xor i1 %6120, %6123
  %6125 = xor i1 %6124, true
  %6126 = zext i1 %6125 to i8
  store i8 %6126, i8* %BRANCH_TAKEN, align 1
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6128 = select i1 %6124, i64 %6115, i64 %6113
  store i64 %6128, i64* %6127, align 8
  store %struct.Memory* %loadMem_423061, %struct.Memory** %MEMORY
  %loadBr_423061 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423061 = icmp eq i8 %loadBr_423061, 1
  br i1 %cmpBr_423061, label %block_.L_4230b0, label %block_423067

block_423067:                                     ; preds = %block_.L_423057
  %loadMem_423067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 33
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 11
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %RDI.i81 = bitcast %union.anon* %6134 to i64*
  %6135 = load i64, i64* %PC.i80
  %6136 = add i64 %6135, 10
  store i64 %6136, i64* %PC.i80
  store i64 ptrtoint (%G__0x579e06_type* @G__0x579e06 to i64), i64* %RDI.i81, align 8
  store %struct.Memory* %loadMem_423067, %struct.Memory** %MEMORY
  %loadMem_423071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6138 = getelementptr inbounds %struct.GPR, %struct.GPR* %6137, i32 0, i32 33
  %6139 = getelementptr inbounds %struct.Reg, %struct.Reg* %6138, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %6139 to i64*
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6141 = getelementptr inbounds %struct.GPR, %struct.GPR* %6140, i32 0, i32 1
  %6142 = getelementptr inbounds %struct.Reg, %struct.Reg* %6141, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %6142 to i64*
  %6143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6144 = getelementptr inbounds %struct.GPR, %struct.GPR* %6143, i32 0, i32 15
  %6145 = getelementptr inbounds %struct.Reg, %struct.Reg* %6144, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %6145 to i64*
  %6146 = load i64, i64* %RBP.i79
  %6147 = sub i64 %6146, 56
  %6148 = load i64, i64* %PC.i77
  %6149 = add i64 %6148, 4
  store i64 %6149, i64* %PC.i77
  %6150 = inttoptr i64 %6147 to i64*
  %6151 = load i64, i64* %6150
  store i64 %6151, i64* %RAX.i78, align 8
  store %struct.Memory* %loadMem_423071, %struct.Memory** %MEMORY
  %loadMem_423075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 33
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %6154 to i64*
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6156 = getelementptr inbounds %struct.GPR, %struct.GPR* %6155, i32 0, i32 5
  %6157 = getelementptr inbounds %struct.Reg, %struct.Reg* %6156, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %6157 to i64*
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 15
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %6160 to i64*
  %6161 = load i64, i64* %RBP.i76
  %6162 = sub i64 %6161, 32
  %6163 = load i64, i64* %PC.i74
  %6164 = add i64 %6163, 4
  store i64 %6164, i64* %PC.i74
  %6165 = inttoptr i64 %6162 to i32*
  %6166 = load i32, i32* %6165
  %6167 = sext i32 %6166 to i64
  store i64 %6167, i64* %RCX.i75, align 8
  store %struct.Memory* %loadMem_423075, %struct.Memory** %MEMORY
  %loadMem_423079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 33
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6170 to i64*
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 1
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %6173 to i64*
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6175 = getelementptr inbounds %struct.GPR, %struct.GPR* %6174, i32 0, i32 5
  %6176 = getelementptr inbounds %struct.Reg, %struct.Reg* %6175, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %6176 to i64*
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6178 = getelementptr inbounds %struct.GPR, %struct.GPR* %6177, i32 0, i32 7
  %6179 = getelementptr inbounds %struct.Reg, %struct.Reg* %6178, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6179 to i64*
  %6180 = load i64, i64* %RAX.i72
  %6181 = load i64, i64* %RCX.i73
  %6182 = mul i64 %6181, 4
  %6183 = add i64 %6180, 4
  %6184 = add i64 %6183, %6182
  %6185 = load i64, i64* %PC.i71
  %6186 = add i64 %6185, 4
  store i64 %6186, i64* %PC.i71
  %6187 = inttoptr i64 %6184 to i32*
  %6188 = load i32, i32* %6187
  %6189 = zext i32 %6188 to i64
  store i64 %6189, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_423079, %struct.Memory** %MEMORY
  %loadMem_42307d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6191 = getelementptr inbounds %struct.GPR, %struct.GPR* %6190, i32 0, i32 33
  %6192 = getelementptr inbounds %struct.Reg, %struct.Reg* %6191, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %6192 to i64*
  %6193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6194 = getelementptr inbounds %struct.GPR, %struct.GPR* %6193, i32 0, i32 7
  %6195 = getelementptr inbounds %struct.Reg, %struct.Reg* %6194, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6195 to i32*
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 15
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %6198 to i64*
  %6199 = load i64, i64* %RBP.i70
  %6200 = sub i64 %6199, 60
  %6201 = load i32, i32* %EDX.i
  %6202 = zext i32 %6201 to i64
  %6203 = load i64, i64* %PC.i69
  %6204 = add i64 %6203, 3
  store i64 %6204, i64* %PC.i69
  %6205 = inttoptr i64 %6200 to i32*
  store i32 %6201, i32* %6205
  store %struct.Memory* %loadMem_42307d, %struct.Memory** %MEMORY
  %loadMem_423080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 33
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6208 to i64*
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 1
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %6211 to i64*
  %6212 = load i64, i64* %PC.i67
  %6213 = add i64 %6212, 8
  store i64 %6213, i64* %PC.i67
  %6214 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %6214, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_423080, %struct.Memory** %MEMORY
  %loadMem_423088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 33
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6217 to i64*
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 5
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 15
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %6223 to i64*
  %6224 = load i64, i64* %RBP.i66
  %6225 = sub i64 %6224, 60
  %6226 = load i64, i64* %PC.i64
  %6227 = add i64 %6226, 4
  store i64 %6227, i64* %PC.i64
  %6228 = inttoptr i64 %6225 to i32*
  %6229 = load i32, i32* %6228
  %6230 = sext i32 %6229 to i64
  store i64 %6230, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_423088, %struct.Memory** %MEMORY
  %loadMem_42308c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6232 = getelementptr inbounds %struct.GPR, %struct.GPR* %6231, i32 0, i32 33
  %6233 = getelementptr inbounds %struct.Reg, %struct.Reg* %6232, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6233 to i64*
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 5
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %6236 to i64*
  %6237 = load i64, i64* %RCX.i63
  %6238 = load i64, i64* %PC.i62
  %6239 = add i64 %6238, 4
  store i64 %6239, i64* %PC.i62
  %6240 = sext i64 %6237 to i128
  %6241 = and i128 %6240, -18446744073709551616
  %6242 = zext i64 %6237 to i128
  %6243 = or i128 %6241, %6242
  %6244 = mul i128 104, %6243
  %6245 = trunc i128 %6244 to i64
  store i64 %6245, i64* %RCX.i63, align 8
  %6246 = sext i64 %6245 to i128
  %6247 = icmp ne i128 %6246, %6244
  %6248 = zext i1 %6247 to i8
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6248, i8* %6249, align 1
  %6250 = trunc i128 %6244 to i32
  %6251 = and i32 %6250, 255
  %6252 = call i32 @llvm.ctpop.i32(i32 %6251)
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = xor i8 %6254, 1
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6255, i8* %6256, align 1
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6257, align 1
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6258, align 1
  %6259 = lshr i64 %6245, 63
  %6260 = trunc i64 %6259 to i8
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6260, i8* %6261, align 1
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6248, i8* %6262, align 1
  store %struct.Memory* %loadMem_42308c, %struct.Memory** %MEMORY
  %loadMem_423090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 33
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %6265 to i64*
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 1
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %6268 to i64*
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 5
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6271 to i64*
  %6272 = load i64, i64* %RAX.i61
  %6273 = load i64, i64* %RCX.i
  %6274 = load i64, i64* %PC.i60
  %6275 = add i64 %6274, 3
  store i64 %6275, i64* %PC.i60
  %6276 = add i64 %6273, %6272
  store i64 %6276, i64* %RAX.i61, align 8
  %6277 = icmp ult i64 %6276, %6272
  %6278 = icmp ult i64 %6276, %6273
  %6279 = or i1 %6277, %6278
  %6280 = zext i1 %6279 to i8
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6280, i8* %6281, align 1
  %6282 = trunc i64 %6276 to i32
  %6283 = and i32 %6282, 255
  %6284 = call i32 @llvm.ctpop.i32(i32 %6283)
  %6285 = trunc i32 %6284 to i8
  %6286 = and i8 %6285, 1
  %6287 = xor i8 %6286, 1
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6287, i8* %6288, align 1
  %6289 = xor i64 %6273, %6272
  %6290 = xor i64 %6289, %6276
  %6291 = lshr i64 %6290, 4
  %6292 = trunc i64 %6291 to i8
  %6293 = and i8 %6292, 1
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6293, i8* %6294, align 1
  %6295 = icmp eq i64 %6276, 0
  %6296 = zext i1 %6295 to i8
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6296, i8* %6297, align 1
  %6298 = lshr i64 %6276, 63
  %6299 = trunc i64 %6298 to i8
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6299, i8* %6300, align 1
  %6301 = lshr i64 %6272, 63
  %6302 = lshr i64 %6273, 63
  %6303 = xor i64 %6298, %6301
  %6304 = xor i64 %6298, %6302
  %6305 = add i64 %6303, %6304
  %6306 = icmp eq i64 %6305, 2
  %6307 = zext i1 %6306 to i8
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6307, i8* %6308, align 1
  store %struct.Memory* %loadMem_423090, %struct.Memory** %MEMORY
  %loadMem_423093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6310 = getelementptr inbounds %struct.GPR, %struct.GPR* %6309, i32 0, i32 33
  %6311 = getelementptr inbounds %struct.Reg, %struct.Reg* %6310, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %6311 to i64*
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6313 = getelementptr inbounds %struct.GPR, %struct.GPR* %6312, i32 0, i32 1
  %6314 = getelementptr inbounds %struct.Reg, %struct.Reg* %6313, i32 0, i32 0
  %RAX.i58 = bitcast %union.anon* %6314 to i64*
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6316 = getelementptr inbounds %struct.GPR, %struct.GPR* %6315, i32 0, i32 9
  %6317 = getelementptr inbounds %struct.Reg, %struct.Reg* %6316, i32 0, i32 0
  %RSI.i59 = bitcast %union.anon* %6317 to i64*
  %6318 = load i64, i64* %RAX.i58
  %6319 = load i64, i64* %PC.i57
  %6320 = add i64 %6319, 2
  store i64 %6320, i64* %PC.i57
  %6321 = inttoptr i64 %6318 to i32*
  %6322 = load i32, i32* %6321
  %6323 = zext i32 %6322 to i64
  store i64 %6323, i64* %RSI.i59, align 8
  store %struct.Memory* %loadMem_423093, %struct.Memory** %MEMORY
  %loadMem_423095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 33
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6326 to i64*
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 1
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %6330 = bitcast %union.anon* %6329 to %struct.anon.2*
  %AL.i56 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6330, i32 0, i32 0
  %6331 = load i64, i64* %PC.i55
  %6332 = add i64 %6331, 2
  store i64 %6332, i64* %PC.i55
  store i8 0, i8* %AL.i56, align 1
  store %struct.Memory* %loadMem_423095, %struct.Memory** %MEMORY
  %loadMem1_423097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6334 = getelementptr inbounds %struct.GPR, %struct.GPR* %6333, i32 0, i32 33
  %6335 = getelementptr inbounds %struct.Reg, %struct.Reg* %6334, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %6335 to i64*
  %6336 = load i64, i64* %PC.i54
  %6337 = add i64 %6336, 191769
  %6338 = load i64, i64* %PC.i54
  %6339 = add i64 %6338, 5
  %6340 = load i64, i64* %PC.i54
  %6341 = add i64 %6340, 5
  store i64 %6341, i64* %PC.i54
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6343 = load i64, i64* %6342, align 8
  %6344 = add i64 %6343, -8
  %6345 = inttoptr i64 %6344 to i64*
  store i64 %6339, i64* %6345
  store i64 %6344, i64* %6342, align 8
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6337, i64* %6346, align 8
  store %struct.Memory* %loadMem1_423097, %struct.Memory** %MEMORY
  %loadMem2_423097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423097 = load i64, i64* %3
  %call2_423097 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_423097, %struct.Memory* %loadMem2_423097)
  store %struct.Memory* %call2_423097, %struct.Memory** %MEMORY
  %loadMem_42309c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 33
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %6349 to i64*
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 1
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %6352 to i32*
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6354 = getelementptr inbounds %struct.GPR, %struct.GPR* %6353, i32 0, i32 15
  %6355 = getelementptr inbounds %struct.Reg, %struct.Reg* %6354, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %6355 to i64*
  %6356 = load i64, i64* %RBP.i53
  %6357 = sub i64 %6356, 208
  %6358 = load i32, i32* %EAX.i52
  %6359 = zext i32 %6358 to i64
  %6360 = load i64, i64* %PC.i51
  %6361 = add i64 %6360, 6
  store i64 %6361, i64* %PC.i51
  %6362 = inttoptr i64 %6357 to i32*
  store i32 %6358, i32* %6362
  store %struct.Memory* %loadMem_42309c, %struct.Memory** %MEMORY
  %loadMem_4230a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 33
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %6365 to i64*
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 1
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %6368 to i64*
  %6369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6370 = getelementptr inbounds %struct.GPR, %struct.GPR* %6369, i32 0, i32 15
  %6371 = getelementptr inbounds %struct.Reg, %struct.Reg* %6370, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %6371 to i64*
  %6372 = load i64, i64* %RBP.i50
  %6373 = sub i64 %6372, 32
  %6374 = load i64, i64* %PC.i48
  %6375 = add i64 %6374, 3
  store i64 %6375, i64* %PC.i48
  %6376 = inttoptr i64 %6373 to i32*
  %6377 = load i32, i32* %6376
  %6378 = zext i32 %6377 to i64
  store i64 %6378, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_4230a2, %struct.Memory** %MEMORY
  %loadMem_4230a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6380 = getelementptr inbounds %struct.GPR, %struct.GPR* %6379, i32 0, i32 33
  %6381 = getelementptr inbounds %struct.Reg, %struct.Reg* %6380, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6381 to i64*
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6383 = getelementptr inbounds %struct.GPR, %struct.GPR* %6382, i32 0, i32 1
  %6384 = getelementptr inbounds %struct.Reg, %struct.Reg* %6383, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %6384 to i64*
  %6385 = load i64, i64* %RAX.i47
  %6386 = load i64, i64* %PC.i46
  %6387 = add i64 %6386, 3
  store i64 %6387, i64* %PC.i46
  %6388 = trunc i64 %6385 to i32
  %6389 = add i32 1, %6388
  %6390 = zext i32 %6389 to i64
  store i64 %6390, i64* %RAX.i47, align 8
  %6391 = icmp ult i32 %6389, %6388
  %6392 = icmp ult i32 %6389, 1
  %6393 = or i1 %6391, %6392
  %6394 = zext i1 %6393 to i8
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6394, i8* %6395, align 1
  %6396 = and i32 %6389, 255
  %6397 = call i32 @llvm.ctpop.i32(i32 %6396)
  %6398 = trunc i32 %6397 to i8
  %6399 = and i8 %6398, 1
  %6400 = xor i8 %6399, 1
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6400, i8* %6401, align 1
  %6402 = xor i64 1, %6385
  %6403 = trunc i64 %6402 to i32
  %6404 = xor i32 %6403, %6389
  %6405 = lshr i32 %6404, 4
  %6406 = trunc i32 %6405 to i8
  %6407 = and i8 %6406, 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6407, i8* %6408, align 1
  %6409 = icmp eq i32 %6389, 0
  %6410 = zext i1 %6409 to i8
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6410, i8* %6411, align 1
  %6412 = lshr i32 %6389, 31
  %6413 = trunc i32 %6412 to i8
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6413, i8* %6414, align 1
  %6415 = lshr i32 %6388, 31
  %6416 = xor i32 %6412, %6415
  %6417 = add i32 %6416, %6412
  %6418 = icmp eq i32 %6417, 2
  %6419 = zext i1 %6418 to i8
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6419, i8* %6420, align 1
  store %struct.Memory* %loadMem_4230a5, %struct.Memory** %MEMORY
  %loadMem_4230a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 33
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 1
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %EAX.i44 = bitcast %union.anon* %6426 to i32*
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6428 = getelementptr inbounds %struct.GPR, %struct.GPR* %6427, i32 0, i32 15
  %6429 = getelementptr inbounds %struct.Reg, %struct.Reg* %6428, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %6429 to i64*
  %6430 = load i64, i64* %RBP.i45
  %6431 = sub i64 %6430, 32
  %6432 = load i32, i32* %EAX.i44
  %6433 = zext i32 %6432 to i64
  %6434 = load i64, i64* %PC.i43
  %6435 = add i64 %6434, 3
  store i64 %6435, i64* %PC.i43
  %6436 = inttoptr i64 %6431 to i32*
  store i32 %6432, i32* %6436
  store %struct.Memory* %loadMem_4230a8, %struct.Memory** %MEMORY
  %loadMem_4230ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 33
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6439 to i64*
  %6440 = load i64, i64* %PC.i42
  %6441 = add i64 %6440, -84
  %6442 = load i64, i64* %PC.i42
  %6443 = add i64 %6442, 5
  store i64 %6443, i64* %PC.i42
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6441, i64* %6444, align 8
  store %struct.Memory* %loadMem_4230ab, %struct.Memory** %MEMORY
  br label %block_.L_423057

block_.L_4230b0:                                  ; preds = %block_.L_423057
  %loadMem_4230b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 33
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %6447 to i64*
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 11
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %RDI.i41 = bitcast %union.anon* %6450 to i64*
  %6451 = load i64, i64* %PC.i40
  %6452 = add i64 %6451, 10
  store i64 %6452, i64* %PC.i40
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i41, align 8
  store %struct.Memory* %loadMem_4230b0, %struct.Memory** %MEMORY
  %loadMem_4230ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 33
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6455 to i64*
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 1
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %6459 = bitcast %union.anon* %6458 to %struct.anon.2*
  %AL.i39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6459, i32 0, i32 0
  %6460 = load i64, i64* %PC.i38
  %6461 = add i64 %6460, 2
  store i64 %6461, i64* %PC.i38
  store i8 0, i8* %AL.i39, align 1
  store %struct.Memory* %loadMem_4230ba, %struct.Memory** %MEMORY
  %loadMem1_4230bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 33
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6464 to i64*
  %6465 = load i64, i64* %PC.i37
  %6466 = add i64 %6465, 191732
  %6467 = load i64, i64* %PC.i37
  %6468 = add i64 %6467, 5
  %6469 = load i64, i64* %PC.i37
  %6470 = add i64 %6469, 5
  store i64 %6470, i64* %PC.i37
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6472 = load i64, i64* %6471, align 8
  %6473 = add i64 %6472, -8
  %6474 = inttoptr i64 %6473 to i64*
  store i64 %6468, i64* %6474
  store i64 %6473, i64* %6471, align 8
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6466, i64* %6475, align 8
  store %struct.Memory* %loadMem1_4230bc, %struct.Memory** %MEMORY
  %loadMem2_4230bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4230bc = load i64, i64* %3
  %call2_4230bc = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_4230bc, %struct.Memory* %loadMem2_4230bc)
  store %struct.Memory* %call2_4230bc, %struct.Memory** %MEMORY
  %loadMem_4230c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 11
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %6481 to i64*
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 15
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %6484 to i64*
  %6485 = load i64, i64* %RBP.i36
  %6486 = sub i64 %6485, 56
  %6487 = load i64, i64* %PC.i34
  %6488 = add i64 %6487, 4
  store i64 %6488, i64* %PC.i34
  %6489 = inttoptr i64 %6486 to i64*
  %6490 = load i64, i64* %6489
  store i64 %6490, i64* %RDI.i35, align 8
  store %struct.Memory* %loadMem_4230c1, %struct.Memory** %MEMORY
  %loadMem_4230c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 33
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6493 to i64*
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 11
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %RDI.i33 = bitcast %union.anon* %6496 to i64*
  %6497 = load i64, i64* %RDI.i33
  %6498 = add i64 %6497, 84
  %6499 = load i64, i64* %PC.i32
  %6500 = add i64 %6499, 4
  store i64 %6500, i64* %PC.i32
  %6501 = inttoptr i64 %6498 to i32*
  %6502 = load i32, i32* %6501
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6503, align 1
  %6504 = and i32 %6502, 255
  %6505 = call i32 @llvm.ctpop.i32(i32 %6504)
  %6506 = trunc i32 %6505 to i8
  %6507 = and i8 %6506, 1
  %6508 = xor i8 %6507, 1
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6508, i8* %6509, align 1
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6510, align 1
  %6511 = icmp eq i32 %6502, 0
  %6512 = zext i1 %6511 to i8
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6512, i8* %6513, align 1
  %6514 = lshr i32 %6502, 31
  %6515 = trunc i32 %6514 to i8
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6515, i8* %6516, align 1
  %6517 = lshr i32 %6502, 31
  %6518 = xor i32 %6514, %6517
  %6519 = add i32 %6518, %6517
  %6520 = icmp eq i32 %6519, 2
  %6521 = zext i1 %6520 to i8
  %6522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6521, i8* %6522, align 1
  store %struct.Memory* %loadMem_4230c5, %struct.Memory** %MEMORY
  %loadMem_4230c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6524 = getelementptr inbounds %struct.GPR, %struct.GPR* %6523, i32 0, i32 33
  %6525 = getelementptr inbounds %struct.Reg, %struct.Reg* %6524, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6525 to i64*
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6527 = getelementptr inbounds %struct.GPR, %struct.GPR* %6526, i32 0, i32 1
  %6528 = getelementptr inbounds %struct.Reg, %struct.Reg* %6527, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %6528 to i32*
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6530 = getelementptr inbounds %struct.GPR, %struct.GPR* %6529, i32 0, i32 15
  %6531 = getelementptr inbounds %struct.Reg, %struct.Reg* %6530, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %6531 to i64*
  %6532 = load i64, i64* %RBP.i31
  %6533 = sub i64 %6532, 212
  %6534 = load i32, i32* %EAX.i30
  %6535 = zext i32 %6534 to i64
  %6536 = load i64, i64* %PC.i29
  %6537 = add i64 %6536, 6
  store i64 %6537, i64* %PC.i29
  %6538 = inttoptr i64 %6533 to i32*
  store i32 %6534, i32* %6538
  store %struct.Memory* %loadMem_4230c9, %struct.Memory** %MEMORY
  %loadMem_4230cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 33
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6541 to i64*
  %6542 = load i64, i64* %PC.i28
  %6543 = add i64 %6542, 36
  %6544 = load i64, i64* %PC.i28
  %6545 = add i64 %6544, 6
  %6546 = load i64, i64* %PC.i28
  %6547 = add i64 %6546, 6
  store i64 %6547, i64* %PC.i28
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6549 = load i8, i8* %6548, align 1
  store i8 %6549, i8* %BRANCH_TAKEN, align 1
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6551 = icmp ne i8 %6549, 0
  %6552 = select i1 %6551, i64 %6543, i64 %6545
  store i64 %6552, i64* %6550, align 8
  store %struct.Memory* %loadMem_4230cf, %struct.Memory** %MEMORY
  %loadBr_4230cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4230cf = icmp eq i8 %loadBr_4230cf, 1
  br i1 %cmpBr_4230cf, label %block_.L_4230f3, label %block_4230d5

block_4230d5:                                     ; preds = %block_.L_4230b0
  %loadMem_4230d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 33
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6555 to i64*
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 11
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6558 to i64*
  %6559 = load i64, i64* %PC.i27
  %6560 = add i64 %6559, 10
  store i64 %6560, i64* %PC.i27
  store i64 ptrtoint (%G__0x57b58a_type* @G__0x57b58a to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4230d5, %struct.Memory** %MEMORY
  %loadMem_4230df = load %struct.Memory*, %struct.Memory** %MEMORY
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 33
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %6563 to i64*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 1
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %6566 to i64*
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6568 = getelementptr inbounds %struct.GPR, %struct.GPR* %6567, i32 0, i32 15
  %6569 = getelementptr inbounds %struct.Reg, %struct.Reg* %6568, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %6569 to i64*
  %6570 = load i64, i64* %RBP.i26
  %6571 = sub i64 %6570, 56
  %6572 = load i64, i64* %PC.i24
  %6573 = add i64 %6572, 4
  store i64 %6573, i64* %PC.i24
  %6574 = inttoptr i64 %6571 to i64*
  %6575 = load i64, i64* %6574
  store i64 %6575, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_4230df, %struct.Memory** %MEMORY
  %loadMem_4230e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6577 = getelementptr inbounds %struct.GPR, %struct.GPR* %6576, i32 0, i32 33
  %6578 = getelementptr inbounds %struct.Reg, %struct.Reg* %6577, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6578 to i64*
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 1
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %6581 to i64*
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 9
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6584 to i64*
  %6585 = load i64, i64* %RAX.i23
  %6586 = add i64 %6585, 84
  %6587 = load i64, i64* %PC.i22
  %6588 = add i64 %6587, 3
  store i64 %6588, i64* %PC.i22
  %6589 = inttoptr i64 %6586 to i32*
  %6590 = load i32, i32* %6589
  %6591 = zext i32 %6590 to i64
  store i64 %6591, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4230e3, %struct.Memory** %MEMORY
  %loadMem_4230e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6593 = getelementptr inbounds %struct.GPR, %struct.GPR* %6592, i32 0, i32 33
  %6594 = getelementptr inbounds %struct.Reg, %struct.Reg* %6593, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6594 to i64*
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 1
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %6598 = bitcast %union.anon* %6597 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6598, i32 0, i32 0
  %6599 = load i64, i64* %PC.i21
  %6600 = add i64 %6599, 2
  store i64 %6600, i64* %PC.i21
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4230e6, %struct.Memory** %MEMORY
  %loadMem1_4230e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 33
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %6603 to i64*
  %6604 = load i64, i64* %PC.i20
  %6605 = add i64 %6604, 191688
  %6606 = load i64, i64* %PC.i20
  %6607 = add i64 %6606, 5
  %6608 = load i64, i64* %PC.i20
  %6609 = add i64 %6608, 5
  store i64 %6609, i64* %PC.i20
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6611 = load i64, i64* %6610, align 8
  %6612 = add i64 %6611, -8
  %6613 = inttoptr i64 %6612 to i64*
  store i64 %6607, i64* %6613
  store i64 %6612, i64* %6610, align 8
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6605, i64* %6614, align 8
  store %struct.Memory* %loadMem1_4230e8, %struct.Memory** %MEMORY
  %loadMem2_4230e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4230e8 = load i64, i64* %3
  %call2_4230e8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_4230e8, %struct.Memory* %loadMem2_4230e8)
  store %struct.Memory* %call2_4230e8, %struct.Memory** %MEMORY
  %loadMem_4230ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 33
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6617 to i64*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 1
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %EAX.i18 = bitcast %union.anon* %6620 to i32*
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 15
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %6623 to i64*
  %6624 = load i64, i64* %RBP.i19
  %6625 = sub i64 %6624, 216
  %6626 = load i32, i32* %EAX.i18
  %6627 = zext i32 %6626 to i64
  %6628 = load i64, i64* %PC.i17
  %6629 = add i64 %6628, 6
  store i64 %6629, i64* %PC.i17
  %6630 = inttoptr i64 %6625 to i32*
  store i32 %6626, i32* %6630
  store %struct.Memory* %loadMem_4230ed, %struct.Memory** %MEMORY
  br label %block_.L_4230f3

block_.L_4230f3:                                  ; preds = %block_4230d5, %block_.L_4230b0
  %loadMem_4230f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 33
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6633 to i64*
  %6634 = load i64, i64* %PC.i16
  %6635 = add i64 %6634, 5
  %6636 = load i64, i64* %PC.i16
  %6637 = add i64 %6636, 5
  store i64 %6637, i64* %PC.i16
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6635, i64* %6638, align 8
  store %struct.Memory* %loadMem_4230f3, %struct.Memory** %MEMORY
  br label %block_.L_4230f8

block_.L_4230f8:                                  ; preds = %block_.L_4230f3, %block_.L_422e56
  %loadMem_4230f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 33
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6641 to i64*
  %6642 = load i64, i64* %PC.i15
  %6643 = add i64 %6642, 5
  %6644 = load i64, i64* %PC.i15
  %6645 = add i64 %6644, 5
  store i64 %6645, i64* %PC.i15
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6643, i64* %6646, align 8
  store %struct.Memory* %loadMem_4230f8, %struct.Memory** %MEMORY
  br label %block_.L_4230fd

block_.L_4230fd:                                  ; preds = %block_.L_4230f8, %block_422e51
  %loadMem_4230fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 33
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6649 to i64*
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 1
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %6652 to i64*
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 15
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %6655 to i64*
  %6656 = load i64, i64* %RBP.i14
  %6657 = sub i64 %6656, 28
  %6658 = load i64, i64* %PC.i12
  %6659 = add i64 %6658, 3
  store i64 %6659, i64* %PC.i12
  %6660 = inttoptr i64 %6657 to i32*
  %6661 = load i32, i32* %6660
  %6662 = zext i32 %6661 to i64
  store i64 %6662, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_4230fd, %struct.Memory** %MEMORY
  %loadMem_423100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 33
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %6665 to i64*
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 1
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6668 to i64*
  %6669 = load i64, i64* %RAX.i
  %6670 = load i64, i64* %PC.i11
  %6671 = add i64 %6670, 3
  store i64 %6671, i64* %PC.i11
  %6672 = trunc i64 %6669 to i32
  %6673 = add i32 1, %6672
  %6674 = zext i32 %6673 to i64
  store i64 %6674, i64* %RAX.i, align 8
  %6675 = icmp ult i32 %6673, %6672
  %6676 = icmp ult i32 %6673, 1
  %6677 = or i1 %6675, %6676
  %6678 = zext i1 %6677 to i8
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6678, i8* %6679, align 1
  %6680 = and i32 %6673, 255
  %6681 = call i32 @llvm.ctpop.i32(i32 %6680)
  %6682 = trunc i32 %6681 to i8
  %6683 = and i8 %6682, 1
  %6684 = xor i8 %6683, 1
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6684, i8* %6685, align 1
  %6686 = xor i64 1, %6669
  %6687 = trunc i64 %6686 to i32
  %6688 = xor i32 %6687, %6673
  %6689 = lshr i32 %6688, 4
  %6690 = trunc i32 %6689 to i8
  %6691 = and i8 %6690, 1
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6691, i8* %6692, align 1
  %6693 = icmp eq i32 %6673, 0
  %6694 = zext i1 %6693 to i8
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6694, i8* %6695, align 1
  %6696 = lshr i32 %6673, 31
  %6697 = trunc i32 %6696 to i8
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6697, i8* %6698, align 1
  %6699 = lshr i32 %6672, 31
  %6700 = xor i32 %6696, %6699
  %6701 = add i32 %6700, %6696
  %6702 = icmp eq i32 %6701, 2
  %6703 = zext i1 %6702 to i8
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6703, i8* %6704, align 1
  store %struct.Memory* %loadMem_423100, %struct.Memory** %MEMORY
  %loadMem_423103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6706 = getelementptr inbounds %struct.GPR, %struct.GPR* %6705, i32 0, i32 33
  %6707 = getelementptr inbounds %struct.Reg, %struct.Reg* %6706, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6707 to i64*
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 1
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6710 to i32*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 15
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %6713 to i64*
  %6714 = load i64, i64* %RBP.i10
  %6715 = sub i64 %6714, 28
  %6716 = load i32, i32* %EAX.i
  %6717 = zext i32 %6716 to i64
  %6718 = load i64, i64* %PC.i9
  %6719 = add i64 %6718, 3
  store i64 %6719, i64* %PC.i9
  %6720 = inttoptr i64 %6715 to i32*
  store i32 %6716, i32* %6720
  store %struct.Memory* %loadMem_423103, %struct.Memory** %MEMORY
  %loadMem_423106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6722 = getelementptr inbounds %struct.GPR, %struct.GPR* %6721, i32 0, i32 33
  %6723 = getelementptr inbounds %struct.Reg, %struct.Reg* %6722, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6723 to i64*
  %6724 = load i64, i64* %PC.i8
  %6725 = add i64 %6724, -773
  %6726 = load i64, i64* %PC.i8
  %6727 = add i64 %6726, 5
  store i64 %6727, i64* %PC.i8
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6725, i64* %6728, align 8
  store %struct.Memory* %loadMem_423106, %struct.Memory** %MEMORY
  br label %block_.L_422e01

block_.L_42310b:                                  ; preds = %block_.L_422e01
  %loadMem_42310b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6730 = getelementptr inbounds %struct.GPR, %struct.GPR* %6729, i32 0, i32 33
  %6731 = getelementptr inbounds %struct.Reg, %struct.Reg* %6730, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6731 to i64*
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 13
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6734 to i64*
  %6735 = load i64, i64* %RSP.i
  %6736 = load i64, i64* %PC.i7
  %6737 = add i64 %6736, 7
  store i64 %6737, i64* %PC.i7
  %6738 = add i64 232, %6735
  store i64 %6738, i64* %RSP.i, align 8
  %6739 = icmp ult i64 %6738, %6735
  %6740 = icmp ult i64 %6738, 232
  %6741 = or i1 %6739, %6740
  %6742 = zext i1 %6741 to i8
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6742, i8* %6743, align 1
  %6744 = trunc i64 %6738 to i32
  %6745 = and i32 %6744, 255
  %6746 = call i32 @llvm.ctpop.i32(i32 %6745)
  %6747 = trunc i32 %6746 to i8
  %6748 = and i8 %6747, 1
  %6749 = xor i8 %6748, 1
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6749, i8* %6750, align 1
  %6751 = xor i64 232, %6735
  %6752 = xor i64 %6751, %6738
  %6753 = lshr i64 %6752, 4
  %6754 = trunc i64 %6753 to i8
  %6755 = and i8 %6754, 1
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6755, i8* %6756, align 1
  %6757 = icmp eq i64 %6738, 0
  %6758 = zext i1 %6757 to i8
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6758, i8* %6759, align 1
  %6760 = lshr i64 %6738, 63
  %6761 = trunc i64 %6760 to i8
  %6762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6761, i8* %6762, align 1
  %6763 = lshr i64 %6735, 63
  %6764 = xor i64 %6760, %6763
  %6765 = add i64 %6764, %6760
  %6766 = icmp eq i64 %6765, 2
  %6767 = zext i1 %6766 to i8
  %6768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6767, i8* %6768, align 1
  store %struct.Memory* %loadMem_42310b, %struct.Memory** %MEMORY
  %loadMem_423112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 33
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6771 to i64*
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6773 = getelementptr inbounds %struct.GPR, %struct.GPR* %6772, i32 0, i32 3
  %6774 = getelementptr inbounds %struct.Reg, %struct.Reg* %6773, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %6774 to i64*
  %6775 = load i64, i64* %PC.i6
  %6776 = add i64 %6775, 1
  store i64 %6776, i64* %PC.i6
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6778 = load i64, i64* %6777, align 8
  %6779 = add i64 %6778, 8
  %6780 = inttoptr i64 %6778 to i64*
  %6781 = load i64, i64* %6780
  store i64 %6781, i64* %RBX.i, align 8
  store i64 %6779, i64* %6777, align 8
  store %struct.Memory* %loadMem_423112, %struct.Memory** %MEMORY
  %loadMem_423113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6783 = getelementptr inbounds %struct.GPR, %struct.GPR* %6782, i32 0, i32 33
  %6784 = getelementptr inbounds %struct.Reg, %struct.Reg* %6783, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6784 to i64*
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6786 = getelementptr inbounds %struct.GPR, %struct.GPR* %6785, i32 0, i32 29
  %6787 = getelementptr inbounds %struct.Reg, %struct.Reg* %6786, i32 0, i32 0
  %R14.i = bitcast %union.anon* %6787 to i64*
  %6788 = load i64, i64* %PC.i5
  %6789 = add i64 %6788, 2
  store i64 %6789, i64* %PC.i5
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6791 = load i64, i64* %6790, align 8
  %6792 = add i64 %6791, 8
  %6793 = inttoptr i64 %6791 to i64*
  %6794 = load i64, i64* %6793
  store i64 %6794, i64* %R14.i, align 8
  store i64 %6792, i64* %6790, align 8
  store %struct.Memory* %loadMem_423113, %struct.Memory** %MEMORY
  %loadMem_423115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6796 = getelementptr inbounds %struct.GPR, %struct.GPR* %6795, i32 0, i32 33
  %6797 = getelementptr inbounds %struct.Reg, %struct.Reg* %6796, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6797 to i64*
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 31
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %R15.i = bitcast %union.anon* %6800 to i64*
  %6801 = load i64, i64* %PC.i4
  %6802 = add i64 %6801, 2
  store i64 %6802, i64* %PC.i4
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6804 = load i64, i64* %6803, align 8
  %6805 = add i64 %6804, 8
  %6806 = inttoptr i64 %6804 to i64*
  %6807 = load i64, i64* %6806
  store i64 %6807, i64* %R15.i, align 8
  store i64 %6805, i64* %6803, align 8
  store %struct.Memory* %loadMem_423115, %struct.Memory** %MEMORY
  %loadMem_423117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 33
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6810 to i64*
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6812 = getelementptr inbounds %struct.GPR, %struct.GPR* %6811, i32 0, i32 15
  %6813 = getelementptr inbounds %struct.Reg, %struct.Reg* %6812, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6813 to i64*
  %6814 = load i64, i64* %PC.i2
  %6815 = add i64 %6814, 1
  store i64 %6815, i64* %PC.i2
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6817 = load i64, i64* %6816, align 8
  %6818 = add i64 %6817, 8
  %6819 = inttoptr i64 %6817 to i64*
  %6820 = load i64, i64* %6819
  store i64 %6820, i64* %RBP.i3, align 8
  store i64 %6818, i64* %6816, align 8
  store %struct.Memory* %loadMem_423117, %struct.Memory** %MEMORY
  %loadMem_423118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6822 = getelementptr inbounds %struct.GPR, %struct.GPR* %6821, i32 0, i32 33
  %6823 = getelementptr inbounds %struct.Reg, %struct.Reg* %6822, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6823 to i64*
  %6824 = load i64, i64* %PC.i1
  %6825 = add i64 %6824, 1
  store i64 %6825, i64* %PC.i1
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6828 = load i64, i64* %6827, align 8
  %6829 = inttoptr i64 %6828 to i64*
  %6830 = load i64, i64* %6829
  store i64 %6830, i64* %6826, align 8
  %6831 = add i64 %6828, 8
  store i64 %6831, i64* %6827, align 8
  store %struct.Memory* %loadMem_423118, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_423118
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

define %struct.Memory* @routine_subq__0xe8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 232
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 232
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
  %23 = xor i64 232, %9
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

define %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_422de3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
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

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_422a0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_422dd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jne_.L_422dd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.color_to_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b444___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b444_type* @G__0x57b444 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rcx____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x8__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
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

define %struct.Memory* @routine_movl_0x2c__rcx____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x10__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x18__rcx____r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c__rcx____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r14d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R14D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r15d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R15D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r15d____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R15D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____r15d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R15D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r15d__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i32, i32* %R15D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r10d__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl__0x1__0x24__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 36
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

define %struct.Memory* @routine_jne_.L_422af3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b48a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b48a_type* @G__0x57b48a to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_422b33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__0x24__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 36
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

define %struct.Memory* @routine_jne_.L_422b1a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b4ad___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b4ad_type* @G__0x57b4ad to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_422b2e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57a353___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57a353_type* @G__0x57a353 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
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

define %struct.Memory* @routine_jle_.L_422b5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b4c6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b4c6_type* @G__0x57b4c6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x28__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xa__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 32
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

define %struct.Memory* @routine_jge_.L_422bbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x64__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 100
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_422b85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_422bbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57b4d8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b4d8_type* @G__0x57b4d8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 60
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x64__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_422b63(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_422c46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb4__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 180
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_422beb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_422c46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_422c33(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b4ff___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b4ff_type* @G__0x57b4ff to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8c__rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 140
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb4__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 180
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_422c38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_422bc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_422cb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x104__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 260
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_422c72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_422cb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57b526___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b526_type* @G__0x57b526 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xdc__rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 220
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x104__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 260
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_422c4d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_422d39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x154__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 340
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_422cde(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_422d39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_422d26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b557___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b557_type* @G__0x57b557 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x12c__rax__rcx_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 300
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x154__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 340
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_jmpq_.L_422d2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_422cb9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
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

define %struct.Memory* @routine_je_.L_422d62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b58a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b58a_type* @G__0x57b58a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
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

define %struct.Memory* @routine_je_.L_422d84(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b5aa___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b5aa_type* @G__0x57b5aa to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 52
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

define %struct.Memory* @routine_je_.L_422da6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b5bc___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b5bc_type* @G__0x57b5bc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_ko_point(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_422dcb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b5cd___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b5cd_type* @G__0x57b5cd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_422dd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4229b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42310b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_422e56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4230fd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0xab0fe0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x4__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 104, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jne_.L_4230f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x579c45___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x579c45_type* @G__0x579c45 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57e7b5___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57e7b5_type* @G__0x57e7b5 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmoveq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = load i64, i64* %RAX, align 8
  %19 = select i1 %17, i64 %12, i64 %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rcx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x10__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 16
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x4c___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 76, %9
  store i64 %12, i64* %RDX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 76
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
  %25 = xor i64 76, %9
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

define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.eyevalue_to_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b5de___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b5de_type* @G__0x57b5de to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x48__rdx____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x14__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x7ae300___rdx_8____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 8053504
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x40__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x7ae300___r8_8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 8053504
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__r10____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x38__r10____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %R10
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x3c__r10____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R10
  %10 = add i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x7ae330___r10_8____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R10
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 8053552
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x44__r11____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %R11
  %13 = add i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_0x40__r11____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %R11
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x88__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x94__rbp____ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ebx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movq__r8__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xac__rbp____r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 172
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r14d__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i32, i32* %R14D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x4___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 4, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57b687___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b687_type* @G__0x57b687 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x1c__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x7ae300___rdx_8____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = mul i64 %12, 8
  %14 = add i64 %13, 8053504
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__0x1c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
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

define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_423039(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57b698___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b698_type* @G__0x57b698 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq__0x57b6bc___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b6bc_type* @G__0x57b6bc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x30__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57b6e0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b6e0_type* @G__0x57b6e0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_0x2c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 44
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

define %struct.Memory* @routine_jge_.L_4230b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x579e06___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x579e06_type* @G__0x579e06 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 4
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_423057(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x54__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 84
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

define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4230f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x54__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4230f8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_422e01(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0xe8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 232, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 232
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
  %25 = xor i64 232, %9
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
