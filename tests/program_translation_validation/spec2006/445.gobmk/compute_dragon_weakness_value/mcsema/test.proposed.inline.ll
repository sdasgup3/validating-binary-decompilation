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
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G_0xc21a5__rip__type = type <{ [8 x i8] }>
%G_0xc21e6__rip__type = type <{ [8 x i8] }>
%G_0xc223e__rip__type = type <{ [8 x i8] }>
%G_0xc2259__rip__type = type <{ [8 x i8] }>
%G_0xc2282__rip__type = type <{ [8 x i8] }>
%G_0xc228c__rip__type = type <{ [8 x i8] }>
%G_0xc22a9__rip__type = type <{ [8 x i8] }>
%G_0xc22dc__rip__type = type <{ [8 x i8] }>
%G_0xc22ff__rip__type = type <{ [8 x i8] }>
%G_0xc2328__rip__type = type <{ [8 x i8] }>
%G_0xc2332__rip__type = type <{ [8 x i8] }>
%G_0xc233a__rip__type = type <{ [4 x i8] }>
%G_0xc234f__rip__type = type <{ [8 x i8] }>
%G_0xc2382__rip__type = type <{ [8 x i8] }>
%G__0x57b259_type = type <{ [8 x i8] }>
%G__0x57b27f_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0xab0f24 = global %G_0xab0f24_type zeroinitializer
@G_0xab0fe0 = global %G_0xab0fe0_type zeroinitializer
@G_0xc21a5__rip_ = global %G_0xc21a5__rip__type zeroinitializer
@G_0xc21e6__rip_ = global %G_0xc21e6__rip__type zeroinitializer
@G_0xc223e__rip_ = global %G_0xc223e__rip__type zeroinitializer
@G_0xc2259__rip_ = global %G_0xc2259__rip__type zeroinitializer
@G_0xc2282__rip_ = global %G_0xc2282__rip__type zeroinitializer
@G_0xc228c__rip_ = global %G_0xc228c__rip__type zeroinitializer
@G_0xc22a9__rip_ = global %G_0xc22a9__rip__type zeroinitializer
@G_0xc22dc__rip_ = global %G_0xc22dc__rip__type zeroinitializer
@G_0xc22ff__rip_ = global %G_0xc22ff__rip__type zeroinitializer
@G_0xc2328__rip_ = global %G_0xc2328__rip__type zeroinitializer
@G_0xc2332__rip_ = global %G_0xc2332__rip__type zeroinitializer
@G_0xc233a__rip_ = global %G_0xc233a__rip__type zeroinitializer
@G_0xc234f__rip_ = global %G_0xc234f__rip__type zeroinitializer
@G_0xc2382__rip_ = global %G_0xc2382__rip__type zeroinitializer
@G__0x57b259 = global %G__0x57b259_type zeroinitializer
@G__0x57b27f = global %G__0x57b27f_type zeroinitializer
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

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41f950.crude_dragon_weakness(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @compute_dragon_weakness_value(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_420b20 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_420b20, %struct.Memory** %MEMORY
  %loadMem_420b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i30 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i30
  %27 = load i64, i64* %PC.i29
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i29
  store i64 %26, i64* %RBP.i31, align 8
  store %struct.Memory* %loadMem_420b21, %struct.Memory** %MEMORY
  %loadMem_420b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i47 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i47
  %36 = load i64, i64* %PC.i46
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i46
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i47, align 8
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
  store %struct.Memory* %loadMem_420b24, %struct.Memory** %MEMORY
  %loadMem_420b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i137
  %77 = sub i64 %76, 4
  %78 = load i32, i32* %EDI.i
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %PC.i136
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC.i136
  %82 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %82
  store %struct.Memory* %loadMem_420b28, %struct.Memory** %MEMORY
  %loadMem_420b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %PC.i221
  %90 = add i64 %89, 8
  store i64 %90, i64* %PC.i221
  %91 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %91, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_420b2b, %struct.Memory** %MEMORY
  %loadMem_420b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 15
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %100 to i64*
  %101 = load i64, i64* %RBP.i363
  %102 = sub i64 %101, 4
  %103 = load i64, i64* %PC.i361
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i361
  %105 = inttoptr i64 %102 to i32*
  %106 = load i32, i32* %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_420b33, %struct.Memory** %MEMORY
  %loadMem_420b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RCX.i360
  %115 = load i64, i64* %PC.i359
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC.i359
  %117 = sext i64 %114 to i128
  %118 = and i128 %117, -18446744073709551616
  %119 = zext i64 %114 to i128
  %120 = or i128 %118, %119
  %121 = mul i128 104, %120
  %122 = trunc i128 %121 to i64
  store i64 %122, i64* %RCX.i360, align 8
  %123 = sext i64 %122 to i128
  %124 = icmp ne i128 %123, %121
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %125, i8* %126, align 1
  %127 = trunc i128 %121 to i32
  %128 = and i32 %127, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %132, i8* %133, align 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %134, align 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %135, align 1
  %136 = lshr i64 %122, 63
  %137 = trunc i64 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %137, i8* %138, align 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %139, align 1
  store %struct.Memory* %loadMem_420b37, %struct.Memory** %MEMORY
  %loadMem_420b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 5
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RAX.i357
  %150 = load i64, i64* %RCX.i358
  %151 = load i64, i64* %PC.i356
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC.i356
  %153 = add i64 %150, %149
  store i64 %153, i64* %RAX.i357, align 8
  %154 = icmp ult i64 %153, %149
  %155 = icmp ult i64 %153, %150
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %157, i8* %158, align 1
  %159 = trunc i64 %153 to i32
  %160 = and i32 %159, 255
  %161 = call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %164, i8* %165, align 1
  %166 = xor i64 %150, %149
  %167 = xor i64 %166, %153
  %168 = lshr i64 %167, 4
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %170, i8* %171, align 1
  %172 = icmp eq i64 %153, 0
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %173, i8* %174, align 1
  %175 = lshr i64 %153, 63
  %176 = trunc i64 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %176, i8* %177, align 1
  %178 = lshr i64 %149, 63
  %179 = lshr i64 %150, 63
  %180 = xor i64 %175, %178
  %181 = xor i64 %175, %179
  %182 = add i64 %180, %181
  %183 = icmp eq i64 %182, 2
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %184, i8* %185, align 1
  store %struct.Memory* %loadMem_420b3b, %struct.Memory** %MEMORY
  %loadMem_420b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 11
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RDI.i355 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %RAX.i354
  %196 = load i64, i64* %PC.i353
  %197 = add i64 %196, 2
  store i64 %197, i64* %PC.i353
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RDI.i355, align 8
  store %struct.Memory* %loadMem_420b3e, %struct.Memory** %MEMORY
  %loadMem_420b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %EDI.i351 = bitcast %union.anon* %206 to i32*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RBP.i352
  %211 = sub i64 %210, 8
  %212 = load i32, i32* %EDI.i351
  %213 = zext i32 %212 to i64
  %214 = load i64, i64* %PC.i350
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC.i350
  %216 = inttoptr i64 %211 to i32*
  store i32 %212, i32* %216
  store %struct.Memory* %loadMem_420b40, %struct.Memory** %MEMORY
  %loadMem_420b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 11
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RDI.i349 = bitcast %union.anon* %222 to i64*
  %223 = load i64, i64* %PC.i348
  %224 = add i64 %223, 7
  store i64 %224, i64* %PC.i348
  %225 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RDI.i349, align 8
  store %struct.Memory* %loadMem_420b43, %struct.Memory** %MEMORY
  %loadMem_420b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 11
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RDI.i347 = bitcast %union.anon* %232 to i64*
  %233 = load i64, i64* %RDI.i347
  %234 = load i64, i64* %PC.i346
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC.i346
  %236 = and i64 32, %233
  %237 = trunc i64 %236 to i32
  store i64 %236, i64* %RDI.i347, align 8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %238, align 1
  %239 = and i32 %237, 255
  %240 = call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %243, i8* %244, align 1
  %245 = icmp eq i32 %237, 0
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %246, i8* %247, align 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %248, align 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %249, align 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %250, align 1
  store %struct.Memory* %loadMem_420b4a, %struct.Memory** %MEMORY
  %loadMem_420b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 11
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %EDI.i345 = bitcast %union.anon* %256 to i32*
  %257 = load i32, i32* %EDI.i345
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %PC.i344
  %260 = add i64 %259, 3
  store i64 %260, i64* %PC.i344
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %261, align 1
  %262 = and i32 %257, 255
  %263 = call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %266, i8* %267, align 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %268, align 1
  %269 = icmp eq i32 %257, 0
  %270 = zext i1 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %270, i8* %271, align 1
  %272 = lshr i32 %257, 31
  %273 = trunc i32 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %273, i8* %274, align 1
  %275 = lshr i32 %257, 31
  %276 = xor i32 %272, %275
  %277 = add i32 %276, %275
  %278 = icmp eq i32 %277, 2
  %279 = zext i1 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %279, i8* %280, align 1
  store %struct.Memory* %loadMem_420b4d, %struct.Memory** %MEMORY
  %loadMem_420b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 33
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %283 to i64*
  %284 = load i64, i64* %PC.i343
  %285 = add i64 %284, 11
  %286 = load i64, i64* %PC.i343
  %287 = add i64 %286, 6
  %288 = load i64, i64* %PC.i343
  %289 = add i64 %288, 6
  store i64 %289, i64* %PC.i343
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %291 = load i8, i8* %290, align 1
  %292 = icmp eq i8 %291, 0
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %BRANCH_TAKEN, align 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %295 = select i1 %292, i64 %285, i64 %287
  store i64 %295, i64* %294, align 8
  store %struct.Memory* %loadMem_420b50, %struct.Memory** %MEMORY
  %loadBr_420b50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420b50 = icmp eq i8 %loadBr_420b50, 1
  br i1 %cmpBr_420b50, label %block_.L_420b5b, label %block_420b56

block_420b56:                                     ; preds = %entry
  %loadMem_420b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 33
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %298 to i64*
  %299 = load i64, i64* %PC.i342
  %300 = add i64 %299, 28
  %301 = load i64, i64* %PC.i342
  %302 = add i64 %301, 5
  store i64 %302, i64* %PC.i342
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %300, i64* %303, align 8
  store %struct.Memory* %loadMem_420b56, %struct.Memory** %MEMORY
  br label %block_.L_420b72

block_.L_420b5b:                                  ; preds = %entry
  %loadMem_420b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 11
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RDI.i341 = bitcast %union.anon* %309 to i64*
  %310 = load i64, i64* %PC.i340
  %311 = add i64 %310, 10
  store i64 %311, i64* %PC.i340
  store i64 ptrtoint (%G__0x57b259_type* @G__0x57b259 to i64), i64* %RDI.i341, align 8
  store %struct.Memory* %loadMem_420b5b, %struct.Memory** %MEMORY
  %loadMem_420b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 9
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RSI.i338 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 15
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RBP.i339
  %322 = sub i64 %321, 8
  %323 = load i64, i64* %PC.i337
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC.i337
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %RSI.i338, align 8
  store %struct.Memory* %loadMem_420b65, %struct.Memory** %MEMORY
  %loadMem_420b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %334 = bitcast %union.anon* %333 to %struct.anon.2*
  %AL.i336 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %334, i32 0, i32 0
  %335 = load i64, i64* %PC.i335
  %336 = add i64 %335, 2
  store i64 %336, i64* %PC.i335
  store i8 0, i8* %AL.i336, align 1
  store %struct.Memory* %loadMem_420b68, %struct.Memory** %MEMORY
  %loadMem1_420b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %PC.i334
  %341 = add i64 %340, 201286
  %342 = load i64, i64* %PC.i334
  %343 = add i64 %342, 5
  %344 = load i64, i64* %PC.i334
  %345 = add i64 %344, 5
  store i64 %345, i64* %PC.i334
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add i64 %347, -8
  %349 = inttoptr i64 %348 to i64*
  store i64 %343, i64* %349
  store i64 %348, i64* %346, align 8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %341, i64* %350, align 8
  store %struct.Memory* %loadMem1_420b6a, %struct.Memory** %MEMORY
  %loadMem2_420b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420b6a = load i64, i64* %3
  %call2_420b6a = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_420b6a, %struct.Memory* %loadMem2_420b6a)
  store %struct.Memory* %call2_420b6a, %struct.Memory** %MEMORY
  %loadMem_420b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %356 to i32*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 15
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %RBP.i333
  %361 = sub i64 %360, 16
  %362 = load i32, i32* %EAX.i332
  %363 = zext i32 %362 to i64
  %364 = load i64, i64* %PC.i331
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC.i331
  %366 = inttoptr i64 %361 to i32*
  store i32 %362, i32* %366
  store %struct.Memory* %loadMem_420b6f, %struct.Memory** %MEMORY
  br label %block_.L_420b72

block_.L_420b72:                                  ; preds = %block_.L_420b5b, %block_420b56
  %loadMem_420b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %PC.i329
  %374 = add i64 %373, 8
  store i64 %374, i64* %PC.i329
  %375 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %375, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_420b72, %struct.Memory** %MEMORY
  %loadMem_420b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 15
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %RBP.i328
  %386 = sub i64 %385, 4
  %387 = load i64, i64* %PC.i326
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC.i326
  %389 = inttoptr i64 %386 to i32*
  %390 = load i32, i32* %389
  %391 = sext i32 %390 to i64
  store i64 %391, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_420b7a, %struct.Memory** %MEMORY
  %loadMem_420b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 33
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %394 to i64*
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %396 = getelementptr inbounds %struct.GPR, %struct.GPR* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.Reg, %struct.Reg* %396, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %397 to i64*
  %398 = load i64, i64* %RCX.i325
  %399 = load i64, i64* %PC.i324
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC.i324
  %401 = sext i64 %398 to i128
  %402 = and i128 %401, -18446744073709551616
  %403 = zext i64 %398 to i128
  %404 = or i128 %402, %403
  %405 = mul i128 104, %404
  %406 = trunc i128 %405 to i64
  store i64 %406, i64* %RCX.i325, align 8
  %407 = sext i64 %406 to i128
  %408 = icmp ne i128 %407, %405
  %409 = zext i1 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %409, i8* %410, align 1
  %411 = trunc i128 %405 to i32
  %412 = and i32 %411, 255
  %413 = call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %416, i8* %417, align 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %418, align 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %419, align 1
  %420 = lshr i64 %406, 63
  %421 = trunc i64 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %421, i8* %422, align 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %409, i8* %423, align 1
  store %struct.Memory* %loadMem_420b7e, %struct.Memory** %MEMORY
  %loadMem_420b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 5
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RAX.i322
  %434 = load i64, i64* %RCX.i323
  %435 = load i64, i64* %PC.i321
  %436 = add i64 %435, 3
  store i64 %436, i64* %PC.i321
  %437 = add i64 %434, %433
  store i64 %437, i64* %RAX.i322, align 8
  %438 = icmp ult i64 %437, %433
  %439 = icmp ult i64 %437, %434
  %440 = or i1 %438, %439
  %441 = zext i1 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %441, i8* %442, align 1
  %443 = trunc i64 %437 to i32
  %444 = and i32 %443, 255
  %445 = call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %448, i8* %449, align 1
  %450 = xor i64 %434, %433
  %451 = xor i64 %450, %437
  %452 = lshr i64 %451, 4
  %453 = trunc i64 %452 to i8
  %454 = and i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %454, i8* %455, align 1
  %456 = icmp eq i64 %437, 0
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %457, i8* %458, align 1
  %459 = lshr i64 %437, 63
  %460 = trunc i64 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %460, i8* %461, align 1
  %462 = lshr i64 %433, 63
  %463 = lshr i64 %434, 63
  %464 = xor i64 %459, %462
  %465 = xor i64 %459, %463
  %466 = add i64 %464, %465
  %467 = icmp eq i64 %466, 2
  %468 = zext i1 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %468, i8* %469, align 1
  store %struct.Memory* %loadMem_420b82, %struct.Memory** %MEMORY
  %loadMem_420b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 11
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RDI.i320 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RAX.i319
  %480 = add i64 %479, 60
  %481 = load i64, i64* %PC.i318
  %482 = add i64 %481, 3
  store i64 %482, i64* %PC.i318
  %483 = inttoptr i64 %480 to i32*
  %484 = load i32, i32* %483
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RDI.i320, align 8
  store %struct.Memory* %loadMem_420b85, %struct.Memory** %MEMORY
  %loadMem_420b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %PC.i316
  %493 = add i64 %492, 8
  store i64 %493, i64* %PC.i316
  %494 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %494, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_420b88, %struct.Memory** %MEMORY
  %loadMem_420b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 5
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 15
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %RBP.i315
  %505 = sub i64 %504, 4
  %506 = load i64, i64* %PC.i313
  %507 = add i64 %506, 4
  store i64 %507, i64* %PC.i313
  %508 = inttoptr i64 %505 to i32*
  %509 = load i32, i32* %508
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_420b90, %struct.Memory** %MEMORY
  %loadMem_420b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 5
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %RCX.i312
  %518 = load i64, i64* %PC.i311
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC.i311
  %520 = sext i64 %517 to i128
  %521 = and i128 %520, -18446744073709551616
  %522 = zext i64 %517 to i128
  %523 = or i128 %521, %522
  %524 = mul i128 104, %523
  %525 = trunc i128 %524 to i64
  store i64 %525, i64* %RCX.i312, align 8
  %526 = sext i64 %525 to i128
  %527 = icmp ne i128 %526, %524
  %528 = zext i1 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %528, i8* %529, align 1
  %530 = trunc i128 %524 to i32
  %531 = and i32 %530, 255
  %532 = call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %535, i8* %536, align 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %537, align 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %538, align 1
  %539 = lshr i64 %525, 63
  %540 = trunc i64 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %540, i8* %541, align 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %528, i8* %542, align 1
  store %struct.Memory* %loadMem_420b94, %struct.Memory** %MEMORY
  %loadMem_420b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 5
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %RAX.i309
  %553 = load i64, i64* %RCX.i310
  %554 = load i64, i64* %PC.i308
  %555 = add i64 %554, 3
  store i64 %555, i64* %PC.i308
  %556 = add i64 %553, %552
  store i64 %556, i64* %RAX.i309, align 8
  %557 = icmp ult i64 %556, %552
  %558 = icmp ult i64 %556, %553
  %559 = or i1 %557, %558
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %560, i8* %561, align 1
  %562 = trunc i64 %556 to i32
  %563 = and i32 %562, 255
  %564 = call i32 @llvm.ctpop.i32(i32 %563)
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %567, i8* %568, align 1
  %569 = xor i64 %553, %552
  %570 = xor i64 %569, %556
  %571 = lshr i64 %570, 4
  %572 = trunc i64 %571 to i8
  %573 = and i8 %572, 1
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %573, i8* %574, align 1
  %575 = icmp eq i64 %556, 0
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %576, i8* %577, align 1
  %578 = lshr i64 %556, 63
  %579 = trunc i64 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %579, i8* %580, align 1
  %581 = lshr i64 %552, 63
  %582 = lshr i64 %553, 63
  %583 = xor i64 %578, %581
  %584 = xor i64 %578, %582
  %585 = add i64 %583, %584
  %586 = icmp eq i64 %585, 2
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %587, i8* %588, align 1
  store %struct.Memory* %loadMem_420b98, %struct.Memory** %MEMORY
  %loadMem_420b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 33
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %591 to i64*
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 1
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %594 to i64*
  %595 = load i64, i64* %RAX.i307
  %596 = load i64, i64* %PC.i306
  %597 = add i64 %596, 4
  store i64 %597, i64* %PC.i306
  %598 = add i64 76, %595
  store i64 %598, i64* %RAX.i307, align 8
  %599 = icmp ult i64 %598, %595
  %600 = icmp ult i64 %598, 76
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %602, i8* %603, align 1
  %604 = trunc i64 %598 to i32
  %605 = and i32 %604, 255
  %606 = call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %609, i8* %610, align 1
  %611 = xor i64 76, %595
  %612 = xor i64 %611, %598
  %613 = lshr i64 %612, 4
  %614 = trunc i64 %613 to i8
  %615 = and i8 %614, 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %615, i8* %616, align 1
  %617 = icmp eq i64 %598, 0
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %618, i8* %619, align 1
  %620 = lshr i64 %598, 63
  %621 = trunc i64 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %621, i8* %622, align 1
  %623 = lshr i64 %595, 63
  %624 = xor i64 %620, %623
  %625 = add i64 %624, %620
  %626 = icmp eq i64 %625, 2
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %627, i8* %628, align 1
  store %struct.Memory* %loadMem_420b9b, %struct.Memory** %MEMORY
  %loadMem_420b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 5
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %PC.i304
  %636 = add i64 %635, 8
  store i64 %636, i64* %PC.i304
  %637 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %637, i64* %RCX.i305, align 8
  store %struct.Memory* %loadMem_420b9f, %struct.Memory** %MEMORY
  %loadMem_420ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 33
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 7
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 15
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %RBP.i303
  %648 = sub i64 %647, 4
  %649 = load i64, i64* %PC.i301
  %650 = add i64 %649, 4
  store i64 %650, i64* %PC.i301
  %651 = inttoptr i64 %648 to i32*
  %652 = load i32, i32* %651
  %653 = sext i32 %652 to i64
  store i64 %653, i64* %RDX.i302, align 8
  store %struct.Memory* %loadMem_420ba7, %struct.Memory** %MEMORY
  %loadMem_420bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 33
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %656 to i64*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 7
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %RDX.i300
  %661 = load i64, i64* %PC.i299
  %662 = add i64 %661, 4
  store i64 %662, i64* %PC.i299
  %663 = sext i64 %660 to i128
  %664 = and i128 %663, -18446744073709551616
  %665 = zext i64 %660 to i128
  %666 = or i128 %664, %665
  %667 = mul i128 104, %666
  %668 = trunc i128 %667 to i64
  store i64 %668, i64* %RDX.i300, align 8
  %669 = sext i64 %668 to i128
  %670 = icmp ne i128 %669, %667
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %671, i8* %672, align 1
  %673 = trunc i128 %667 to i32
  %674 = and i32 %673, 255
  %675 = call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %678, i8* %679, align 1
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %680, align 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %681, align 1
  %682 = lshr i64 %668, 63
  %683 = trunc i64 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %683, i8* %684, align 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %671, i8* %685, align 1
  store %struct.Memory* %loadMem_420bab, %struct.Memory** %MEMORY
  %loadMem_420baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 5
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 7
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %RCX.i297
  %696 = load i64, i64* %RDX.i298
  %697 = load i64, i64* %PC.i296
  %698 = add i64 %697, 3
  store i64 %698, i64* %PC.i296
  %699 = add i64 %696, %695
  store i64 %699, i64* %RCX.i297, align 8
  %700 = icmp ult i64 %699, %695
  %701 = icmp ult i64 %699, %696
  %702 = or i1 %700, %701
  %703 = zext i1 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %703, i8* %704, align 1
  %705 = trunc i64 %699 to i32
  %706 = and i32 %705, 255
  %707 = call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %710, i8* %711, align 1
  %712 = xor i64 %696, %695
  %713 = xor i64 %712, %699
  %714 = lshr i64 %713, 4
  %715 = trunc i64 %714 to i8
  %716 = and i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %716, i8* %717, align 1
  %718 = icmp eq i64 %699, 0
  %719 = zext i1 %718 to i8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %719, i8* %720, align 1
  %721 = lshr i64 %699, 63
  %722 = trunc i64 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %722, i8* %723, align 1
  %724 = lshr i64 %695, 63
  %725 = lshr i64 %696, 63
  %726 = xor i64 %721, %724
  %727 = xor i64 %721, %725
  %728 = add i64 %726, %727
  %729 = icmp eq i64 %728, 2
  %730 = zext i1 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %730, i8* %731, align 1
  store %struct.Memory* %loadMem_420baf, %struct.Memory** %MEMORY
  %loadMem_420bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 33
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 5
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RCX.i295
  %739 = add i64 %738, 84
  %740 = load i64, i64* %PC.i294
  %741 = add i64 %740, 4
  store i64 %741, i64* %PC.i294
  %742 = inttoptr i64 %739 to i32*
  %743 = load i32, i32* %742
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %744, align 1
  %745 = and i32 %743, 255
  %746 = call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %749, i8* %750, align 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %751, align 1
  %752 = icmp eq i32 %743, 0
  %753 = zext i1 %752 to i8
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %753, i8* %754, align 1
  %755 = lshr i32 %743, 31
  %756 = trunc i32 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %756, i8* %757, align 1
  %758 = lshr i32 %743, 31
  %759 = xor i32 %755, %758
  %760 = add i32 %759, %758
  %761 = icmp eq i32 %760, 2
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %762, i8* %763, align 1
  store %struct.Memory* %loadMem_420bb2, %struct.Memory** %MEMORY
  %loadMem_420bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 9
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %770 = bitcast %union.anon* %769 to %struct.anon.2*
  %SIL.i293 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %770, i32 0, i32 0
  %771 = load i64, i64* %PC.i292
  %772 = add i64 %771, 4
  store i64 %772, i64* %PC.i292
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %774 = load i8, i8* %773, align 1
  %775 = icmp eq i8 %774, 0
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %SIL.i293, align 1
  store %struct.Memory* %loadMem_420bb6, %struct.Memory** %MEMORY
  %loadMem_420bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 9
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %783 = bitcast %union.anon* %782 to %struct.anon.2*
  %SIL.i291 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %783, i32 0, i32 0
  %784 = load i8, i8* %SIL.i291
  %785 = zext i8 %784 to i64
  %786 = load i64, i64* %PC.i290
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC.i290
  %788 = and i64 1, %785
  %789 = trunc i64 %788 to i8
  store i8 %789, i8* %SIL.i291, align 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %790, align 1
  %791 = trunc i64 %788 to i32
  %792 = and i32 %791, 255
  %793 = call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %796, i8* %797, align 1
  %798 = icmp eq i8 %789, 0
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %799, i8* %800, align 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %801, align 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %802, align 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %803, align 1
  store %struct.Memory* %loadMem_420bba, %struct.Memory** %MEMORY
  %loadMem_420bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 9
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %810 = bitcast %union.anon* %809 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %810, i32 0, i32 0
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 7
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %813 to i64*
  %814 = load i8, i8* %SIL.i
  %815 = zext i8 %814 to i64
  %816 = load i64, i64* %PC.i289
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC.i289
  %818 = and i64 %815, 255
  store i64 %818, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_420bbe, %struct.Memory** %MEMORY
  %loadMem_420bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 5
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %PC.i287
  %826 = add i64 %825, 8
  store i64 %826, i64* %PC.i287
  %827 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %827, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_420bc2, %struct.Memory** %MEMORY
  %loadMem_420bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 15
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 17
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %R8.i286 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RBP.i285
  %838 = sub i64 %837, 4
  %839 = load i64, i64* %PC.i284
  %840 = add i64 %839, 4
  store i64 %840, i64* %PC.i284
  %841 = inttoptr i64 %838 to i32*
  %842 = load i32, i32* %841
  %843 = sext i32 %842 to i64
  store i64 %843, i64* %R8.i286, align 8
  store %struct.Memory* %loadMem_420bca, %struct.Memory** %MEMORY
  %loadMem_420bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 33
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 17
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %R8.i283 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %R8.i283
  %851 = load i64, i64* %PC.i282
  %852 = add i64 %851, 4
  store i64 %852, i64* %PC.i282
  %853 = sext i64 %850 to i128
  %854 = and i128 %853, -18446744073709551616
  %855 = zext i64 %850 to i128
  %856 = or i128 %854, %855
  %857 = mul i128 104, %856
  %858 = trunc i128 %857 to i64
  store i64 %858, i64* %R8.i283, align 8
  %859 = sext i64 %858 to i128
  %860 = icmp ne i128 %859, %857
  %861 = zext i1 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %861, i8* %862, align 1
  %863 = trunc i128 %857 to i32
  %864 = and i32 %863, 255
  %865 = call i32 @llvm.ctpop.i32(i32 %864)
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %868, i8* %869, align 1
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %870, align 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %871, align 1
  %872 = lshr i64 %858, 63
  %873 = trunc i64 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %873, i8* %874, align 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %861, i8* %875, align 1
  store %struct.Memory* %loadMem_420bce, %struct.Memory** %MEMORY
  %loadMem_420bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 5
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 17
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %R8.i281 = bitcast %union.anon* %884 to i64*
  %885 = load i64, i64* %RCX.i280
  %886 = load i64, i64* %R8.i281
  %887 = load i64, i64* %PC.i279
  %888 = add i64 %887, 3
  store i64 %888, i64* %PC.i279
  %889 = add i64 %886, %885
  store i64 %889, i64* %RCX.i280, align 8
  %890 = icmp ult i64 %889, %885
  %891 = icmp ult i64 %889, %886
  %892 = or i1 %890, %891
  %893 = zext i1 %892 to i8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %893, i8* %894, align 1
  %895 = trunc i64 %889 to i32
  %896 = and i32 %895, 255
  %897 = call i32 @llvm.ctpop.i32(i32 %896)
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  %900 = xor i8 %899, 1
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %900, i8* %901, align 1
  %902 = xor i64 %886, %885
  %903 = xor i64 %902, %889
  %904 = lshr i64 %903, 4
  %905 = trunc i64 %904 to i8
  %906 = and i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %906, i8* %907, align 1
  %908 = icmp eq i64 %889, 0
  %909 = zext i1 %908 to i8
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %909, i8* %910, align 1
  %911 = lshr i64 %889, 63
  %912 = trunc i64 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %912, i8* %913, align 1
  %914 = lshr i64 %885, 63
  %915 = lshr i64 %886, 63
  %916 = xor i64 %911, %914
  %917 = xor i64 %911, %915
  %918 = add i64 %916, %917
  %919 = icmp eq i64 %918, 2
  %920 = zext i1 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %920, i8* %921, align 1
  store %struct.Memory* %loadMem_420bd2, %struct.Memory** %MEMORY
  %loadMem_420bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 5
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %929 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %928, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %929 to %"class.std::bitset"*
  %930 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %931 = load i64, i64* %RCX.i277
  %932 = add i64 %931, 56
  %933 = load i64, i64* %PC.i276
  %934 = add i64 %933, 5
  store i64 %934, i64* %PC.i276
  %935 = inttoptr i64 %932 to float*
  %936 = load float, float* %935
  %937 = bitcast i8* %930 to float*
  store float %936, float* %937, align 1
  %938 = getelementptr inbounds i8, i8* %930, i64 4
  %939 = bitcast i8* %938 to float*
  store float 0.000000e+00, float* %939, align 1
  %940 = getelementptr inbounds i8, i8* %930, i64 8
  %941 = bitcast i8* %940 to float*
  store float 0.000000e+00, float* %941, align 1
  %942 = getelementptr inbounds i8, i8* %930, i64 12
  %943 = bitcast i8* %942 to float*
  store float 0.000000e+00, float* %943, align 1
  store %struct.Memory* %loadMem_420bd5, %struct.Memory** %MEMORY
  %loadMem_420bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 5
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %949 to i64*
  %950 = load i64, i64* %PC.i274
  %951 = add i64 %950, 8
  store i64 %951, i64* %PC.i274
  %952 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %952, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_420bda, %struct.Memory** %MEMORY
  %loadMem_420be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 33
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 15
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 17
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %R8.i273 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %RBP.i272
  %963 = sub i64 %962, 4
  %964 = load i64, i64* %PC.i271
  %965 = add i64 %964, 4
  store i64 %965, i64* %PC.i271
  %966 = inttoptr i64 %963 to i32*
  %967 = load i32, i32* %966
  %968 = sext i32 %967 to i64
  store i64 %968, i64* %R8.i273, align 8
  store %struct.Memory* %loadMem_420be2, %struct.Memory** %MEMORY
  %loadMem_420be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 17
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %R8.i270 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %R8.i270
  %976 = load i64, i64* %PC.i269
  %977 = add i64 %976, 4
  store i64 %977, i64* %PC.i269
  %978 = sext i64 %975 to i128
  %979 = and i128 %978, -18446744073709551616
  %980 = zext i64 %975 to i128
  %981 = or i128 %979, %980
  %982 = mul i128 104, %981
  %983 = trunc i128 %982 to i64
  store i64 %983, i64* %R8.i270, align 8
  %984 = sext i64 %983 to i128
  %985 = icmp ne i128 %984, %982
  %986 = zext i1 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %986, i8* %987, align 1
  %988 = trunc i128 %982 to i32
  %989 = and i32 %988, 255
  %990 = call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %993, i8* %994, align 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %995, align 1
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %996, align 1
  %997 = lshr i64 %983, 63
  %998 = trunc i64 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %998, i8* %999, align 1
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %986, i8* %1000, align 1
  store %struct.Memory* %loadMem_420be6, %struct.Memory** %MEMORY
  %loadMem_420bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 5
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 17
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %R8.i = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RCX.i268
  %1011 = load i64, i64* %R8.i
  %1012 = load i64, i64* %PC.i267
  %1013 = add i64 %1012, 3
  store i64 %1013, i64* %PC.i267
  %1014 = add i64 %1011, %1010
  store i64 %1014, i64* %RCX.i268, align 8
  %1015 = icmp ult i64 %1014, %1010
  %1016 = icmp ult i64 %1014, %1011
  %1017 = or i1 %1015, %1016
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1018, i8* %1019, align 1
  %1020 = trunc i64 %1014 to i32
  %1021 = and i32 %1020, 255
  %1022 = call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1025, i8* %1026, align 1
  %1027 = xor i64 %1011, %1010
  %1028 = xor i64 %1027, %1014
  %1029 = lshr i64 %1028, 4
  %1030 = trunc i64 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1031, i8* %1032, align 1
  %1033 = icmp eq i64 %1014, 0
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1034, i8* %1035, align 1
  %1036 = lshr i64 %1014, 63
  %1037 = trunc i64 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1037, i8* %1038, align 1
  %1039 = lshr i64 %1010, 63
  %1040 = lshr i64 %1011, 63
  %1041 = xor i64 %1036, %1039
  %1042 = xor i64 %1036, %1040
  %1043 = add i64 %1041, %1042
  %1044 = icmp eq i64 %1043, 2
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1045, i8* %1046, align 1
  store %struct.Memory* %loadMem_420bea, %struct.Memory** %MEMORY
  %loadMem_420bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 33
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 5
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1054 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1053, i64 0, i64 1
  %YMM1.i266 = bitcast %union.VectorReg* %1054 to %"class.std::bitset"*
  %1055 = bitcast %"class.std::bitset"* %YMM1.i266 to i8*
  %1056 = load i64, i64* %RCX.i265
  %1057 = add i64 %1056, 72
  %1058 = load i64, i64* %PC.i264
  %1059 = add i64 %1058, 5
  store i64 %1059, i64* %PC.i264
  %1060 = bitcast i8* %1055 to <2 x i32>*
  %1061 = load <2 x i32>, <2 x i32>* %1060, align 1
  %1062 = getelementptr inbounds i8, i8* %1055, i64 8
  %1063 = bitcast i8* %1062 to <2 x i32>*
  %1064 = load <2 x i32>, <2 x i32>* %1063, align 1
  %1065 = inttoptr i64 %1057 to i32*
  %1066 = load i32, i32* %1065
  %1067 = sitofp i32 %1066 to float
  %1068 = bitcast i8* %1055 to float*
  store float %1067, float* %1068, align 1
  %1069 = extractelement <2 x i32> %1061, i32 1
  %1070 = getelementptr inbounds i8, i8* %1055, i64 4
  %1071 = bitcast i8* %1070 to i32*
  store i32 %1069, i32* %1071, align 1
  %1072 = extractelement <2 x i32> %1064, i32 0
  %1073 = bitcast i8* %1062 to i32*
  store i32 %1072, i32* %1073, align 1
  %1074 = extractelement <2 x i32> %1064, i32 1
  %1075 = getelementptr inbounds i8, i8* %1055, i64 12
  %1076 = bitcast i8* %1075 to i32*
  store i32 %1074, i32* %1076, align 1
  store %struct.Memory* %loadMem_420bed, %struct.Memory** %MEMORY
  %loadMem_420bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1078 = getelementptr inbounds %struct.GPR, %struct.GPR* %1077, i32 0, i32 33
  %1079 = getelementptr inbounds %struct.Reg, %struct.Reg* %1078, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1079 to i64*
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 1
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 9
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1085 to i64*
  %1086 = load i64, i64* %RAX.i263
  %1087 = load i64, i64* %PC.i262
  %1088 = add i64 %1087, 3
  store i64 %1088, i64* %PC.i262
  store i64 %1086, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_420bf2, %struct.Memory** %MEMORY
  %loadMem1_420bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %PC.i261
  %1093 = add i64 %1092, -4773
  %1094 = load i64, i64* %PC.i261
  %1095 = add i64 %1094, 5
  %1096 = load i64, i64* %PC.i261
  %1097 = add i64 %1096, 5
  store i64 %1097, i64* %PC.i261
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1099 = load i64, i64* %1098, align 8
  %1100 = add i64 %1099, -8
  %1101 = inttoptr i64 %1100 to i64*
  store i64 %1095, i64* %1101
  store i64 %1100, i64* %1098, align 8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1093, i64* %1102, align 8
  store %struct.Memory* %loadMem1_420bf5, %struct.Memory** %MEMORY
  %loadMem2_420bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420bf5 = load i64, i64* %3
  %call2_420bf5 = call %struct.Memory* @sub_41f950.crude_dragon_weakness(%struct.State* %0, i64 %loadPC_420bf5, %struct.Memory* %loadMem2_420bf5)
  store %struct.Memory* %call2_420bf5, %struct.Memory** %MEMORY
  %loadMem_420bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 1
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %PC.i259
  %1110 = add i64 %1109, 10
  store i64 %1110, i64* %PC.i259
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i260, align 8
  store %struct.Memory* %loadMem_420bfa, %struct.Memory** %MEMORY
  %loadMem_420c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 15
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1117, i64 0, i64 0
  %XMM0.i258 = bitcast %union.VectorReg* %1118 to %union.vec128_t*
  %1119 = load i64, i64* %RBP.i257
  %1120 = sub i64 %1119, 12
  %1121 = bitcast %union.vec128_t* %XMM0.i258 to i8*
  %1122 = load i64, i64* %PC.i256
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %PC.i256
  %1124 = bitcast i8* %1121 to <2 x float>*
  %1125 = load <2 x float>, <2 x float>* %1124, align 1
  %1126 = extractelement <2 x float> %1125, i32 0
  %1127 = inttoptr i64 %1120 to float*
  store float %1126, float* %1127
  store %struct.Memory* %loadMem_420c04, %struct.Memory** %MEMORY
  %loadMem_420c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 33
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 5
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 15
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %RBP.i255
  %1138 = sub i64 %1137, 8
  %1139 = load i64, i64* %PC.i253
  %1140 = add i64 %1139, 4
  store i64 %1140, i64* %PC.i253
  %1141 = inttoptr i64 %1138 to i32*
  %1142 = load i32, i32* %1141
  %1143 = sext i32 %1142 to i64
  store i64 %1143, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_420c09, %struct.Memory** %MEMORY
  %loadMem_420c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 5
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %1149 to i64*
  %1150 = load i64, i64* %RCX.i252
  %1151 = load i64, i64* %PC.i251
  %1152 = add i64 %1151, 4
  store i64 %1152, i64* %PC.i251
  %1153 = sext i64 %1150 to i128
  %1154 = and i128 %1153, -18446744073709551616
  %1155 = zext i64 %1150 to i128
  %1156 = or i128 %1154, %1155
  %1157 = mul i128 76, %1156
  %1158 = trunc i128 %1157 to i64
  store i64 %1158, i64* %RCX.i252, align 8
  %1159 = sext i64 %1158 to i128
  %1160 = icmp ne i128 %1159, %1157
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1161, i8* %1162, align 1
  %1163 = trunc i128 %1157 to i32
  %1164 = and i32 %1163, 255
  %1165 = call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1168, i8* %1169, align 1
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1170, align 1
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1171, align 1
  %1172 = lshr i64 %1158, 63
  %1173 = trunc i64 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1173, i8* %1174, align 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1161, i8* %1175, align 1
  store %struct.Memory* %loadMem_420c0d, %struct.Memory** %MEMORY
  %loadMem_420c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 1
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 5
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RAX.i249
  %1186 = load i64, i64* %RCX.i250
  %1187 = load i64, i64* %PC.i248
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %PC.i248
  %1189 = add i64 %1186, %1185
  store i64 %1189, i64* %RAX.i249, align 8
  %1190 = icmp ult i64 %1189, %1185
  %1191 = icmp ult i64 %1189, %1186
  %1192 = or i1 %1190, %1191
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1193, i8* %1194, align 1
  %1195 = trunc i64 %1189 to i32
  %1196 = and i32 %1195, 255
  %1197 = call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1200, i8* %1201, align 1
  %1202 = xor i64 %1186, %1185
  %1203 = xor i64 %1202, %1189
  %1204 = lshr i64 %1203, 4
  %1205 = trunc i64 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1206, i8* %1207, align 1
  %1208 = icmp eq i64 %1189, 0
  %1209 = zext i1 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1209, i8* %1210, align 1
  %1211 = lshr i64 %1189, 63
  %1212 = trunc i64 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1212, i8* %1213, align 1
  %1214 = lshr i64 %1185, 63
  %1215 = lshr i64 %1186, 63
  %1216 = xor i64 %1211, %1214
  %1217 = xor i64 %1211, %1215
  %1218 = add i64 %1216, %1217
  %1219 = icmp eq i64 %1218, 2
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1220, i8* %1221, align 1
  store %struct.Memory* %loadMem_420c11, %struct.Memory** %MEMORY
  %loadMem_420c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 1
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %RAX.i247
  %1229 = add i64 %1228, 40
  %1230 = load i64, i64* %PC.i246
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC.i246
  %1232 = inttoptr i64 %1229 to i32*
  %1233 = load i32, i32* %1232
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1234, align 1
  %1235 = and i32 %1233, 255
  %1236 = call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1239, i8* %1240, align 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1241, align 1
  %1242 = icmp eq i32 %1233, 0
  %1243 = zext i1 %1242 to i8
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1243, i8* %1244, align 1
  %1245 = lshr i32 %1233, 31
  %1246 = trunc i32 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1246, i8* %1247, align 1
  %1248 = lshr i32 %1233, 31
  %1249 = xor i32 %1245, %1248
  %1250 = add i32 %1249, %1248
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1252, i8* %1253, align 1
  store %struct.Memory* %loadMem_420c14, %struct.Memory** %MEMORY
  %loadMem_420c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %PC.i245
  %1258 = add i64 %1257, 141
  %1259 = load i64, i64* %PC.i245
  %1260 = add i64 %1259, 6
  %1261 = load i64, i64* %PC.i245
  %1262 = add i64 %1261, 6
  store i64 %1262, i64* %PC.i245
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1264 = load i8, i8* %1263, align 1
  %1265 = icmp eq i8 %1264, 0
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %BRANCH_TAKEN, align 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1268 = select i1 %1265, i64 %1258, i64 %1260
  store i64 %1268, i64* %1267, align 8
  store %struct.Memory* %loadMem_420c18, %struct.Memory** %MEMORY
  %loadBr_420c18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420c18 = icmp eq i8 %loadBr_420c18, 1
  br i1 %cmpBr_420c18, label %block_.L_420ca5, label %block_420c1e

block_420c1e:                                     ; preds = %block_.L_420b72
  %loadMem_420c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 33
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %1271 to i64*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1272, i64 0, i64 0
  %YMM0.i244 = bitcast %union.VectorReg* %1273 to %"class.std::bitset"*
  %1274 = bitcast %"class.std::bitset"* %YMM0.i244 to i8*
  %1275 = load i64, i64* %PC.i243
  %1276 = add i64 %1275, ptrtoint (%G_0xc2382__rip__type* @G_0xc2382__rip_ to i64)
  %1277 = load i64, i64* %PC.i243
  %1278 = add i64 %1277, 8
  store i64 %1278, i64* %PC.i243
  %1279 = inttoptr i64 %1276 to double*
  %1280 = load double, double* %1279
  %1281 = bitcast i8* %1274 to double*
  store double %1280, double* %1281, align 1
  %1282 = getelementptr inbounds i8, i8* %1274, i64 8
  %1283 = bitcast i8* %1282 to double*
  store double 0.000000e+00, double* %1283, align 1
  store %struct.Memory* %loadMem_420c1e, %struct.Memory** %MEMORY
  %loadMem_420c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 33
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1286 to i64*
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1288 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1287, i64 0, i64 1
  %YMM1.i242 = bitcast %union.VectorReg* %1288 to %"class.std::bitset"*
  %1289 = bitcast %"class.std::bitset"* %YMM1.i242 to i8*
  %1290 = load i64, i64* %PC.i241
  %1291 = add i64 %1290, ptrtoint (%G_0xc2332__rip__type* @G_0xc2332__rip_ to i64)
  %1292 = load i64, i64* %PC.i241
  %1293 = add i64 %1292, 8
  store i64 %1293, i64* %PC.i241
  %1294 = inttoptr i64 %1291 to double*
  %1295 = load double, double* %1294
  %1296 = bitcast i8* %1289 to double*
  store double %1295, double* %1296, align 1
  %1297 = getelementptr inbounds i8, i8* %1289, i64 8
  %1298 = bitcast i8* %1297 to double*
  store double 0.000000e+00, double* %1298, align 1
  store %struct.Memory* %loadMem_420c26, %struct.Memory** %MEMORY
  %loadMem_420c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 33
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1305, i64 0, i64 2
  %YMM2.i240 = bitcast %union.VectorReg* %1306 to %"class.std::bitset"*
  %1307 = bitcast %"class.std::bitset"* %YMM2.i240 to i8*
  %1308 = load i64, i64* %RBP.i239
  %1309 = sub i64 %1308, 12
  %1310 = load i64, i64* %PC.i238
  %1311 = add i64 %1310, 5
  store i64 %1311, i64* %PC.i238
  %1312 = inttoptr i64 %1309 to float*
  %1313 = load float, float* %1312
  %1314 = fpext float %1313 to double
  %1315 = bitcast i8* %1307 to double*
  store double %1314, double* %1315, align 1
  store %struct.Memory* %loadMem_420c2e, %struct.Memory** %MEMORY
  %loadMem_420c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1320 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1319, i64 0, i64 1
  %YMM1.i236 = bitcast %union.VectorReg* %1320 to %"class.std::bitset"*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1322 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1321, i64 0, i64 2
  %XMM2.i237 = bitcast %union.VectorReg* %1322 to %union.vec128_t*
  %1323 = bitcast %"class.std::bitset"* %YMM1.i236 to i8*
  %1324 = bitcast %"class.std::bitset"* %YMM1.i236 to i8*
  %1325 = bitcast %union.vec128_t* %XMM2.i237 to i8*
  %1326 = load i64, i64* %PC.i235
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC.i235
  %1328 = bitcast i8* %1324 to double*
  %1329 = load double, double* %1328, align 1
  %1330 = getelementptr inbounds i8, i8* %1324, i64 8
  %1331 = bitcast i8* %1330 to i64*
  %1332 = load i64, i64* %1331, align 1
  %1333 = bitcast i8* %1325 to double*
  %1334 = load double, double* %1333, align 1
  %1335 = fsub double %1329, %1334
  %1336 = bitcast i8* %1323 to double*
  store double %1335, double* %1336, align 1
  %1337 = getelementptr inbounds i8, i8* %1323, i64 8
  %1338 = bitcast i8* %1337 to i64*
  store i64 %1332, i64* %1338, align 1
  store %struct.Memory* %loadMem_420c33, %struct.Memory** %MEMORY
  %loadMem_420c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1342, i64 0, i64 2
  %YMM2.i233 = bitcast %union.VectorReg* %1343 to %"class.std::bitset"*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1344, i64 0, i64 0
  %XMM0.i234 = bitcast %union.VectorReg* %1345 to %union.vec128_t*
  %1346 = bitcast %"class.std::bitset"* %YMM2.i233 to i8*
  %1347 = bitcast %union.vec128_t* %XMM0.i234 to i8*
  %1348 = load i64, i64* %PC.i232
  %1349 = add i64 %1348, 3
  store i64 %1349, i64* %PC.i232
  %1350 = bitcast i8* %1347 to <2 x i32>*
  %1351 = load <2 x i32>, <2 x i32>* %1350, align 1
  %1352 = getelementptr inbounds i8, i8* %1347, i64 8
  %1353 = bitcast i8* %1352 to <2 x i32>*
  %1354 = load <2 x i32>, <2 x i32>* %1353, align 1
  %1355 = extractelement <2 x i32> %1351, i32 0
  %1356 = bitcast i8* %1346 to i32*
  store i32 %1355, i32* %1356, align 1
  %1357 = extractelement <2 x i32> %1351, i32 1
  %1358 = getelementptr inbounds i8, i8* %1346, i64 4
  %1359 = bitcast i8* %1358 to i32*
  store i32 %1357, i32* %1359, align 1
  %1360 = extractelement <2 x i32> %1354, i32 0
  %1361 = getelementptr inbounds i8, i8* %1346, i64 8
  %1362 = bitcast i8* %1361 to i32*
  store i32 %1360, i32* %1362, align 1
  %1363 = extractelement <2 x i32> %1354, i32 1
  %1364 = getelementptr inbounds i8, i8* %1346, i64 12
  %1365 = bitcast i8* %1364 to i32*
  store i32 %1363, i32* %1365, align 1
  store %struct.Memory* %loadMem_420c37, %struct.Memory** %MEMORY
  %loadMem_420c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1369, i64 0, i64 2
  %YMM2.i230 = bitcast %union.VectorReg* %1370 to %"class.std::bitset"*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1372 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1371, i64 0, i64 1
  %XMM1.i231 = bitcast %union.VectorReg* %1372 to %union.vec128_t*
  %1373 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %1374 = bitcast %"class.std::bitset"* %YMM2.i230 to i8*
  %1375 = bitcast %union.vec128_t* %XMM1.i231 to i8*
  %1376 = load i64, i64* %PC.i229
  %1377 = add i64 %1376, 4
  store i64 %1377, i64* %PC.i229
  %1378 = bitcast i8* %1374 to double*
  %1379 = load double, double* %1378, align 1
  %1380 = getelementptr inbounds i8, i8* %1374, i64 8
  %1381 = bitcast i8* %1380 to i64*
  %1382 = load i64, i64* %1381, align 1
  %1383 = bitcast i8* %1375 to double*
  %1384 = load double, double* %1383, align 1
  %1385 = fmul double %1379, %1384
  %1386 = bitcast i8* %1373 to double*
  store double %1385, double* %1386, align 1
  %1387 = getelementptr inbounds i8, i8* %1373, i64 8
  %1388 = bitcast i8* %1387 to i64*
  store i64 %1382, i64* %1388, align 1
  store %struct.Memory* %loadMem_420c3a, %struct.Memory** %MEMORY
  %loadMem_420c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 33
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 15
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1396 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1395, i64 0, i64 1
  %YMM1.i228 = bitcast %union.VectorReg* %1396 to %"class.std::bitset"*
  %1397 = bitcast %"class.std::bitset"* %YMM1.i228 to i8*
  %1398 = load i64, i64* %RBP.i227
  %1399 = sub i64 %1398, 12
  %1400 = load i64, i64* %PC.i226
  %1401 = add i64 %1400, 5
  store i64 %1401, i64* %PC.i226
  %1402 = inttoptr i64 %1399 to float*
  %1403 = load float, float* %1402
  %1404 = fpext float %1403 to double
  %1405 = bitcast i8* %1397 to double*
  store double %1404, double* %1405, align 1
  store %struct.Memory* %loadMem_420c3e, %struct.Memory** %MEMORY
  %loadMem_420c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 33
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1408 to i64*
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1410 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1409, i64 0, i64 0
  %YMM0.i224 = bitcast %union.VectorReg* %1410 to %"class.std::bitset"*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1412 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1411, i64 0, i64 1
  %XMM1.i225 = bitcast %union.VectorReg* %1412 to %union.vec128_t*
  %1413 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %1414 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %1415 = bitcast %union.vec128_t* %XMM1.i225 to i8*
  %1416 = load i64, i64* %PC.i223
  %1417 = add i64 %1416, 4
  store i64 %1417, i64* %PC.i223
  %1418 = bitcast i8* %1414 to double*
  %1419 = load double, double* %1418, align 1
  %1420 = getelementptr inbounds i8, i8* %1414, i64 8
  %1421 = bitcast i8* %1420 to i64*
  %1422 = load i64, i64* %1421, align 1
  %1423 = bitcast i8* %1415 to double*
  %1424 = load double, double* %1423, align 1
  %1425 = fmul double %1419, %1424
  %1426 = bitcast i8* %1413 to double*
  store double %1425, double* %1426, align 1
  %1427 = getelementptr inbounds i8, i8* %1413, i64 8
  %1428 = bitcast i8* %1427 to i64*
  store i64 %1422, i64* %1428, align 1
  store %struct.Memory* %loadMem_420c43, %struct.Memory** %MEMORY
  %loadMem_420c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1433 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1432, i64 0, i64 0
  %XMM0.i218 = bitcast %union.VectorReg* %1433 to %union.vec128_t*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1435 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1434, i64 0, i64 2
  %XMM2.i219 = bitcast %union.VectorReg* %1435 to %union.vec128_t*
  %1436 = bitcast %union.vec128_t* %XMM0.i218 to i8*
  %1437 = bitcast %union.vec128_t* %XMM2.i219 to i8*
  %1438 = load i64, i64* %PC.i217
  %1439 = add i64 %1438, 4
  store i64 %1439, i64* %PC.i217
  %1440 = bitcast i8* %1436 to double*
  %1441 = load double, double* %1440, align 1
  %1442 = bitcast i8* %1437 to double*
  %1443 = load double, double* %1442, align 1
  %1444 = fcmp uno double %1441, %1443
  br i1 %1444, label %1445, label %1457

; <label>:1445:                                   ; preds = %block_420c1e
  %1446 = fadd double %1441, %1443
  %1447 = bitcast double %1446 to i64
  %1448 = and i64 %1447, 9221120237041090560
  %1449 = icmp eq i64 %1448, 9218868437227405312
  %1450 = and i64 %1447, 2251799813685247
  %1451 = icmp ne i64 %1450, 0
  %1452 = and i1 %1449, %1451
  br i1 %1452, label %1453, label %1463

; <label>:1453:                                   ; preds = %1445
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1455 = load i64, i64* %1454, align 8
  %1456 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1455, %struct.Memory* %loadMem_420c47)
  br label %routine_ucomisd__xmm2___xmm0.exit220

; <label>:1457:                                   ; preds = %block_420c1e
  %1458 = fcmp ogt double %1441, %1443
  br i1 %1458, label %1463, label %1459

; <label>:1459:                                   ; preds = %1457
  %1460 = fcmp olt double %1441, %1443
  br i1 %1460, label %1463, label %1461

; <label>:1461:                                   ; preds = %1459
  %1462 = fcmp oeq double %1441, %1443
  br i1 %1462, label %1463, label %1470

; <label>:1463:                                   ; preds = %1461, %1459, %1457, %1445
  %1464 = phi i8 [ 0, %1457 ], [ 0, %1459 ], [ 1, %1461 ], [ 1, %1445 ]
  %1465 = phi i8 [ 0, %1457 ], [ 0, %1459 ], [ 0, %1461 ], [ 1, %1445 ]
  %1466 = phi i8 [ 0, %1457 ], [ 1, %1459 ], [ 0, %1461 ], [ 1, %1445 ]
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1464, i8* %1467, align 1
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1465, i8* %1468, align 1
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1466, i8* %1469, align 1
  br label %1470

; <label>:1470:                                   ; preds = %1463, %1461
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1471, align 1
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1472, align 1
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1473, align 1
  br label %routine_ucomisd__xmm2___xmm0.exit220

routine_ucomisd__xmm2___xmm0.exit220:             ; preds = %1453, %1470
  %1474 = phi %struct.Memory* [ %1456, %1453 ], [ %loadMem_420c47, %1470 ]
  store %struct.Memory* %1474, %struct.Memory** %MEMORY
  %loadMem_420c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1477 to i64*
  %1478 = load i64, i64* %PC.i216
  %1479 = add i64 %1478, 45
  %1480 = load i64, i64* %PC.i216
  %1481 = add i64 %1480, 6
  %1482 = load i64, i64* %PC.i216
  %1483 = add i64 %1482, 6
  store i64 %1483, i64* %PC.i216
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1485 = load i8, i8* %1484, align 1
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1487 = load i8, i8* %1486, align 1
  %1488 = or i8 %1487, %1485
  %1489 = icmp ne i8 %1488, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %BRANCH_TAKEN, align 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1492 = select i1 %1489, i64 %1479, i64 %1481
  store i64 %1492, i64* %1491, align 8
  store %struct.Memory* %loadMem_420c4b, %struct.Memory** %MEMORY
  %loadBr_420c4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420c4b = icmp eq i8 %loadBr_420c4b, 1
  br i1 %cmpBr_420c4b, label %block_.L_420c78, label %block_420c51

block_420c51:                                     ; preds = %routine_ucomisd__xmm2___xmm0.exit220
  %loadMem_420c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1497 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1496, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %1497 to %"class.std::bitset"*
  %1498 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %1499 = load i64, i64* %PC.i214
  %1500 = add i64 %1499, ptrtoint (%G_0xc234f__rip__type* @G_0xc234f__rip_ to i64)
  %1501 = load i64, i64* %PC.i214
  %1502 = add i64 %1501, 8
  store i64 %1502, i64* %PC.i214
  %1503 = inttoptr i64 %1500 to double*
  %1504 = load double, double* %1503
  %1505 = bitcast i8* %1498 to double*
  store double %1504, double* %1505, align 1
  %1506 = getelementptr inbounds i8, i8* %1498, i64 8
  %1507 = bitcast i8* %1506 to double*
  store double 0.000000e+00, double* %1507, align 1
  store %struct.Memory* %loadMem_420c51, %struct.Memory** %MEMORY
  %loadMem_420c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1512 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1511, i64 0, i64 1
  %YMM1.i213 = bitcast %union.VectorReg* %1512 to %"class.std::bitset"*
  %1513 = bitcast %"class.std::bitset"* %YMM1.i213 to i8*
  %1514 = load i64, i64* %PC.i212
  %1515 = add i64 %1514, ptrtoint (%G_0xc22ff__rip__type* @G_0xc22ff__rip_ to i64)
  %1516 = load i64, i64* %PC.i212
  %1517 = add i64 %1516, 8
  store i64 %1517, i64* %PC.i212
  %1518 = inttoptr i64 %1515 to double*
  %1519 = load double, double* %1518
  %1520 = bitcast i8* %1513 to double*
  store double %1519, double* %1520, align 1
  %1521 = getelementptr inbounds i8, i8* %1513, i64 8
  %1522 = bitcast i8* %1521 to double*
  store double 0.000000e+00, double* %1522, align 1
  store %struct.Memory* %loadMem_420c59, %struct.Memory** %MEMORY
  %loadMem_420c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 15
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1529, i64 0, i64 2
  %YMM2.i211 = bitcast %union.VectorReg* %1530 to %"class.std::bitset"*
  %1531 = bitcast %"class.std::bitset"* %YMM2.i211 to i8*
  %1532 = load i64, i64* %RBP.i210
  %1533 = sub i64 %1532, 12
  %1534 = load i64, i64* %PC.i209
  %1535 = add i64 %1534, 5
  store i64 %1535, i64* %PC.i209
  %1536 = inttoptr i64 %1533 to float*
  %1537 = load float, float* %1536
  %1538 = fpext float %1537 to double
  %1539 = bitcast i8* %1531 to double*
  store double %1538, double* %1539, align 1
  store %struct.Memory* %loadMem_420c61, %struct.Memory** %MEMORY
  %loadMem_420c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1544 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1543, i64 0, i64 1
  %YMM1.i207 = bitcast %union.VectorReg* %1544 to %"class.std::bitset"*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1546 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1545, i64 0, i64 2
  %XMM2.i208 = bitcast %union.VectorReg* %1546 to %union.vec128_t*
  %1547 = bitcast %"class.std::bitset"* %YMM1.i207 to i8*
  %1548 = bitcast %"class.std::bitset"* %YMM1.i207 to i8*
  %1549 = bitcast %union.vec128_t* %XMM2.i208 to i8*
  %1550 = load i64, i64* %PC.i206
  %1551 = add i64 %1550, 4
  store i64 %1551, i64* %PC.i206
  %1552 = bitcast i8* %1548 to double*
  %1553 = load double, double* %1552, align 1
  %1554 = getelementptr inbounds i8, i8* %1548, i64 8
  %1555 = bitcast i8* %1554 to i64*
  %1556 = load i64, i64* %1555, align 1
  %1557 = bitcast i8* %1549 to double*
  %1558 = load double, double* %1557, align 1
  %1559 = fsub double %1553, %1558
  %1560 = bitcast i8* %1547 to double*
  store double %1559, double* %1560, align 1
  %1561 = getelementptr inbounds i8, i8* %1547, i64 8
  %1562 = bitcast i8* %1561 to i64*
  store i64 %1556, i64* %1562, align 1
  store %struct.Memory* %loadMem_420c66, %struct.Memory** %MEMORY
  %loadMem_420c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 33
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %1565 to i64*
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1567 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1566, i64 0, i64 0
  %YMM0.i204 = bitcast %union.VectorReg* %1567 to %"class.std::bitset"*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1568, i64 0, i64 1
  %XMM1.i205 = bitcast %union.VectorReg* %1569 to %union.vec128_t*
  %1570 = bitcast %"class.std::bitset"* %YMM0.i204 to i8*
  %1571 = bitcast %"class.std::bitset"* %YMM0.i204 to i8*
  %1572 = bitcast %union.vec128_t* %XMM1.i205 to i8*
  %1573 = load i64, i64* %PC.i203
  %1574 = add i64 %1573, 4
  store i64 %1574, i64* %PC.i203
  %1575 = bitcast i8* %1571 to double*
  %1576 = load double, double* %1575, align 1
  %1577 = getelementptr inbounds i8, i8* %1571, i64 8
  %1578 = bitcast i8* %1577 to i64*
  %1579 = load i64, i64* %1578, align 1
  %1580 = bitcast i8* %1572 to double*
  %1581 = load double, double* %1580, align 1
  %1582 = fmul double %1576, %1581
  %1583 = bitcast i8* %1570 to double*
  store double %1582, double* %1583, align 1
  %1584 = getelementptr inbounds i8, i8* %1570, i64 8
  %1585 = bitcast i8* %1584 to i64*
  store i64 %1579, i64* %1585, align 1
  store %struct.Memory* %loadMem_420c6a, %struct.Memory** %MEMORY
  %loadMem_420c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 15
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1592, i64 0, i64 0
  %XMM0.i202 = bitcast %union.VectorReg* %1593 to %union.vec128_t*
  %1594 = load i64, i64* %RBP.i201
  %1595 = sub i64 %1594, 24
  %1596 = bitcast %union.vec128_t* %XMM0.i202 to i8*
  %1597 = load i64, i64* %PC.i200
  %1598 = add i64 %1597, 5
  store i64 %1598, i64* %PC.i200
  %1599 = bitcast i8* %1596 to double*
  %1600 = load double, double* %1599, align 1
  %1601 = inttoptr i64 %1595 to double*
  store double %1600, double* %1601
  store %struct.Memory* %loadMem_420c6e, %struct.Memory** %MEMORY
  %loadMem_420c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %PC.i199
  %1606 = add i64 %1605, 27
  %1607 = load i64, i64* %PC.i199
  %1608 = add i64 %1607, 5
  store i64 %1608, i64* %PC.i199
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1606, i64* %1609, align 8
  store %struct.Memory* %loadMem_420c73, %struct.Memory** %MEMORY
  br label %block_.L_420c8e

block_.L_420c78:                                  ; preds = %routine_ucomisd__xmm2___xmm0.exit220
  %loadMem_420c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1613, i64 0, i64 0
  %YMM0.i198 = bitcast %union.VectorReg* %1614 to %"class.std::bitset"*
  %1615 = bitcast %"class.std::bitset"* %YMM0.i198 to i8*
  %1616 = load i64, i64* %PC.i197
  %1617 = add i64 %1616, ptrtoint (%G_0xc2328__rip__type* @G_0xc2328__rip_ to i64)
  %1618 = load i64, i64* %PC.i197
  %1619 = add i64 %1618, 8
  store i64 %1619, i64* %PC.i197
  %1620 = inttoptr i64 %1617 to double*
  %1621 = load double, double* %1620
  %1622 = bitcast i8* %1615 to double*
  store double %1621, double* %1622, align 1
  %1623 = getelementptr inbounds i8, i8* %1615, i64 8
  %1624 = bitcast i8* %1623 to double*
  store double 0.000000e+00, double* %1624, align 1
  store %struct.Memory* %loadMem_420c78, %struct.Memory** %MEMORY
  %loadMem_420c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 33
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1627 to i64*
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 15
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1631, i64 0, i64 1
  %YMM1.i196 = bitcast %union.VectorReg* %1632 to %"class.std::bitset"*
  %1633 = bitcast %"class.std::bitset"* %YMM1.i196 to i8*
  %1634 = load i64, i64* %RBP.i195
  %1635 = sub i64 %1634, 12
  %1636 = load i64, i64* %PC.i194
  %1637 = add i64 %1636, 5
  store i64 %1637, i64* %PC.i194
  %1638 = inttoptr i64 %1635 to float*
  %1639 = load float, float* %1638
  %1640 = fpext float %1639 to double
  %1641 = bitcast i8* %1633 to double*
  store double %1640, double* %1641, align 1
  store %struct.Memory* %loadMem_420c80, %struct.Memory** %MEMORY
  %loadMem_420c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1645, i64 0, i64 0
  %YMM0.i192 = bitcast %union.VectorReg* %1646 to %"class.std::bitset"*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1647, i64 0, i64 1
  %XMM1.i193 = bitcast %union.VectorReg* %1648 to %union.vec128_t*
  %1649 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %1650 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %1651 = bitcast %union.vec128_t* %XMM1.i193 to i8*
  %1652 = load i64, i64* %PC.i191
  %1653 = add i64 %1652, 4
  store i64 %1653, i64* %PC.i191
  %1654 = bitcast i8* %1650 to double*
  %1655 = load double, double* %1654, align 1
  %1656 = getelementptr inbounds i8, i8* %1650, i64 8
  %1657 = bitcast i8* %1656 to i64*
  %1658 = load i64, i64* %1657, align 1
  %1659 = bitcast i8* %1651 to double*
  %1660 = load double, double* %1659, align 1
  %1661 = fmul double %1655, %1660
  %1662 = bitcast i8* %1649 to double*
  store double %1661, double* %1662, align 1
  %1663 = getelementptr inbounds i8, i8* %1649, i64 8
  %1664 = bitcast i8* %1663 to i64*
  store i64 %1658, i64* %1664, align 1
  store %struct.Memory* %loadMem_420c85, %struct.Memory** %MEMORY
  %loadMem_420c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 15
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1671, i64 0, i64 0
  %XMM0.i190 = bitcast %union.VectorReg* %1672 to %union.vec128_t*
  %1673 = load i64, i64* %RBP.i189
  %1674 = sub i64 %1673, 24
  %1675 = bitcast %union.vec128_t* %XMM0.i190 to i8*
  %1676 = load i64, i64* %PC.i188
  %1677 = add i64 %1676, 5
  store i64 %1677, i64* %PC.i188
  %1678 = bitcast i8* %1675 to double*
  %1679 = load double, double* %1678, align 1
  %1680 = inttoptr i64 %1674 to double*
  store double %1679, double* %1680
  store %struct.Memory* %loadMem_420c89, %struct.Memory** %MEMORY
  br label %block_.L_420c8e

block_.L_420c8e:                                  ; preds = %block_.L_420c78, %block_420c51
  %loadMem_420c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 15
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1686 to i64*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1687, i64 0, i64 0
  %YMM0.i187 = bitcast %union.VectorReg* %1688 to %"class.std::bitset"*
  %1689 = bitcast %"class.std::bitset"* %YMM0.i187 to i8*
  %1690 = load i64, i64* %RBP.i186
  %1691 = sub i64 %1690, 24
  %1692 = load i64, i64* %PC.i185
  %1693 = add i64 %1692, 5
  store i64 %1693, i64* %PC.i185
  %1694 = inttoptr i64 %1691 to double*
  %1695 = load double, double* %1694
  %1696 = bitcast i8* %1689 to double*
  store double %1695, double* %1696, align 1
  %1697 = getelementptr inbounds i8, i8* %1689, i64 8
  %1698 = bitcast i8* %1697 to double*
  store double 0.000000e+00, double* %1698, align 1
  store %struct.Memory* %loadMem_420c8e, %struct.Memory** %MEMORY
  %loadMem_420c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 15
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1706 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1705, i64 0, i64 1
  %YMM1.i184 = bitcast %union.VectorReg* %1706 to %"class.std::bitset"*
  %1707 = bitcast %"class.std::bitset"* %YMM1.i184 to i8*
  %1708 = load i64, i64* %RBP.i183
  %1709 = sub i64 %1708, 12
  %1710 = load i64, i64* %PC.i182
  %1711 = add i64 %1710, 5
  store i64 %1711, i64* %PC.i182
  %1712 = inttoptr i64 %1709 to float*
  %1713 = load float, float* %1712
  %1714 = fpext float %1713 to double
  %1715 = bitcast i8* %1707 to double*
  store double %1714, double* %1715, align 1
  store %struct.Memory* %loadMem_420c93, %struct.Memory** %MEMORY
  %loadMem_420c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1719, i64 0, i64 1
  %YMM1.i180 = bitcast %union.VectorReg* %1720 to %"class.std::bitset"*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1721, i64 0, i64 0
  %XMM0.i181 = bitcast %union.VectorReg* %1722 to %union.vec128_t*
  %1723 = bitcast %"class.std::bitset"* %YMM1.i180 to i8*
  %1724 = bitcast %"class.std::bitset"* %YMM1.i180 to i8*
  %1725 = bitcast %union.vec128_t* %XMM0.i181 to i8*
  %1726 = load i64, i64* %PC.i179
  %1727 = add i64 %1726, 4
  store i64 %1727, i64* %PC.i179
  %1728 = bitcast i8* %1724 to double*
  %1729 = load double, double* %1728, align 1
  %1730 = getelementptr inbounds i8, i8* %1724, i64 8
  %1731 = bitcast i8* %1730 to i64*
  %1732 = load i64, i64* %1731, align 1
  %1733 = bitcast i8* %1725 to double*
  %1734 = load double, double* %1733, align 1
  %1735 = fadd double %1729, %1734
  %1736 = bitcast i8* %1723 to double*
  store double %1735, double* %1736, align 1
  %1737 = getelementptr inbounds i8, i8* %1723, i64 8
  %1738 = bitcast i8* %1737 to i64*
  store i64 %1732, i64* %1738, align 1
  store %struct.Memory* %loadMem_420c98, %struct.Memory** %MEMORY
  %loadMem_420c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1743 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1742, i64 0, i64 0
  %YMM0.i177 = bitcast %union.VectorReg* %1743 to %"class.std::bitset"*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1744, i64 0, i64 1
  %XMM1.i178 = bitcast %union.VectorReg* %1745 to %union.vec128_t*
  %1746 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %1747 = bitcast %union.vec128_t* %XMM1.i178 to i8*
  %1748 = load i64, i64* %PC.i176
  %1749 = add i64 %1748, 4
  store i64 %1749, i64* %PC.i176
  %1750 = bitcast i8* %1746 to <2 x i32>*
  %1751 = load <2 x i32>, <2 x i32>* %1750, align 1
  %1752 = getelementptr inbounds i8, i8* %1746, i64 8
  %1753 = bitcast i8* %1752 to <2 x i32>*
  %1754 = load <2 x i32>, <2 x i32>* %1753, align 1
  %1755 = bitcast i8* %1747 to double*
  %1756 = load double, double* %1755, align 1
  %1757 = fptrunc double %1756 to float
  %1758 = bitcast i8* %1746 to float*
  store float %1757, float* %1758, align 1
  %1759 = extractelement <2 x i32> %1751, i32 1
  %1760 = getelementptr inbounds i8, i8* %1746, i64 4
  %1761 = bitcast i8* %1760 to i32*
  store i32 %1759, i32* %1761, align 1
  %1762 = extractelement <2 x i32> %1754, i32 0
  %1763 = bitcast i8* %1752 to i32*
  store i32 %1762, i32* %1763, align 1
  %1764 = extractelement <2 x i32> %1754, i32 1
  %1765 = getelementptr inbounds i8, i8* %1746, i64 12
  %1766 = bitcast i8* %1765 to i32*
  store i32 %1764, i32* %1766, align 1
  store %struct.Memory* %loadMem_420c9c, %struct.Memory** %MEMORY
  %loadMem_420ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 33
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 15
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1773, i64 0, i64 0
  %XMM0.i175 = bitcast %union.VectorReg* %1774 to %union.vec128_t*
  %1775 = load i64, i64* %RBP.i174
  %1776 = sub i64 %1775, 12
  %1777 = bitcast %union.vec128_t* %XMM0.i175 to i8*
  %1778 = load i64, i64* %PC.i173
  %1779 = add i64 %1778, 5
  store i64 %1779, i64* %PC.i173
  %1780 = bitcast i8* %1777 to <2 x float>*
  %1781 = load <2 x float>, <2 x float>* %1780, align 1
  %1782 = extractelement <2 x float> %1781, i32 0
  %1783 = inttoptr i64 %1776 to float*
  store float %1782, float* %1783
  store %struct.Memory* %loadMem_420ca0, %struct.Memory** %MEMORY
  br label %block_.L_420ca5

block_.L_420ca5:                                  ; preds = %block_.L_420c8e, %block_.L_420b72
  %loadMem_420ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 1
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %PC.i171
  %1791 = add i64 %1790, 10
  store i64 %1791, i64* %PC.i171
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_420ca5, %struct.Memory** %MEMORY
  %loadMem_420caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 33
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 5
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 15
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %RBP.i170
  %1802 = sub i64 %1801, 8
  %1803 = load i64, i64* %PC.i168
  %1804 = add i64 %1803, 4
  store i64 %1804, i64* %PC.i168
  %1805 = inttoptr i64 %1802 to i32*
  %1806 = load i32, i32* %1805
  %1807 = sext i32 %1806 to i64
  store i64 %1807, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_420caf, %struct.Memory** %MEMORY
  %loadMem_420cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 5
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RCX.i167
  %1815 = load i64, i64* %PC.i166
  %1816 = add i64 %1815, 4
  store i64 %1816, i64* %PC.i166
  %1817 = sext i64 %1814 to i128
  %1818 = and i128 %1817, -18446744073709551616
  %1819 = zext i64 %1814 to i128
  %1820 = or i128 %1818, %1819
  %1821 = mul i128 76, %1820
  %1822 = trunc i128 %1821 to i64
  store i64 %1822, i64* %RCX.i167, align 8
  %1823 = sext i64 %1822 to i128
  %1824 = icmp ne i128 %1823, %1821
  %1825 = zext i1 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1825, i8* %1826, align 1
  %1827 = trunc i128 %1821 to i32
  %1828 = and i32 %1827, 255
  %1829 = call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1832, i8* %1833, align 1
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1834, align 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1835, align 1
  %1836 = lshr i64 %1822, 63
  %1837 = trunc i64 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1837, i8* %1838, align 1
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1825, i8* %1839, align 1
  store %struct.Memory* %loadMem_420cb3, %struct.Memory** %MEMORY
  %loadMem_420cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 1
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 5
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %RAX.i164
  %1850 = load i64, i64* %RCX.i165
  %1851 = load i64, i64* %PC.i163
  %1852 = add i64 %1851, 3
  store i64 %1852, i64* %PC.i163
  %1853 = add i64 %1850, %1849
  store i64 %1853, i64* %RAX.i164, align 8
  %1854 = icmp ult i64 %1853, %1849
  %1855 = icmp ult i64 %1853, %1850
  %1856 = or i1 %1854, %1855
  %1857 = zext i1 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1857, i8* %1858, align 1
  %1859 = trunc i64 %1853 to i32
  %1860 = and i32 %1859, 255
  %1861 = call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1864, i8* %1865, align 1
  %1866 = xor i64 %1850, %1849
  %1867 = xor i64 %1866, %1853
  %1868 = lshr i64 %1867, 4
  %1869 = trunc i64 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1870, i8* %1871, align 1
  %1872 = icmp eq i64 %1853, 0
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1873, i8* %1874, align 1
  %1875 = lshr i64 %1853, 63
  %1876 = trunc i64 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1876, i8* %1877, align 1
  %1878 = lshr i64 %1849, 63
  %1879 = lshr i64 %1850, 63
  %1880 = xor i64 %1875, %1878
  %1881 = xor i64 %1875, %1879
  %1882 = add i64 %1880, %1881
  %1883 = icmp eq i64 %1882, 2
  %1884 = zext i1 %1883 to i8
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1884, i8* %1885, align 1
  store %struct.Memory* %loadMem_420cb7, %struct.Memory** %MEMORY
  %loadMem_420cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 1
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %1891 to i64*
  %1892 = load i64, i64* %RAX.i162
  %1893 = add i64 %1892, 56
  %1894 = load i64, i64* %PC.i161
  %1895 = add i64 %1894, 4
  store i64 %1895, i64* %PC.i161
  %1896 = inttoptr i64 %1893 to i32*
  %1897 = load i32, i32* %1896
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1898, align 1
  %1899 = and i32 %1897, 255
  %1900 = call i32 @llvm.ctpop.i32(i32 %1899)
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = xor i8 %1902, 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1903, i8* %1904, align 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1905, align 1
  %1906 = icmp eq i32 %1897, 0
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1907, i8* %1908, align 1
  %1909 = lshr i32 %1897, 31
  %1910 = trunc i32 %1909 to i8
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1910, i8* %1911, align 1
  %1912 = lshr i32 %1897, 31
  %1913 = xor i32 %1909, %1912
  %1914 = add i32 %1913, %1912
  %1915 = icmp eq i32 %1914, 2
  %1916 = zext i1 %1915 to i8
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1916, i8* %1917, align 1
  store %struct.Memory* %loadMem_420cba, %struct.Memory** %MEMORY
  %loadMem_420cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %PC.i160
  %1922 = add i64 %1921, 141
  %1923 = load i64, i64* %PC.i160
  %1924 = add i64 %1923, 6
  %1925 = load i64, i64* %PC.i160
  %1926 = add i64 %1925, 6
  store i64 %1926, i64* %PC.i160
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1928 = load i8, i8* %1927, align 1
  %1929 = icmp eq i8 %1928, 0
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %BRANCH_TAKEN, align 1
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1932 = select i1 %1929, i64 %1922, i64 %1924
  store i64 %1932, i64* %1931, align 8
  store %struct.Memory* %loadMem_420cbe, %struct.Memory** %MEMORY
  %loadBr_420cbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420cbe = icmp eq i8 %loadBr_420cbe, 1
  br i1 %cmpBr_420cbe, label %block_.L_420d4b, label %block_420cc4

block_420cc4:                                     ; preds = %block_.L_420ca5
  %loadMem_420cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1936, i64 0, i64 0
  %YMM0.i159 = bitcast %union.VectorReg* %1937 to %"class.std::bitset"*
  %1938 = bitcast %"class.std::bitset"* %YMM0.i159 to i8*
  %1939 = load i64, i64* %PC.i158
  %1940 = add i64 %1939, ptrtoint (%G_0xc22dc__rip__type* @G_0xc22dc__rip_ to i64)
  %1941 = load i64, i64* %PC.i158
  %1942 = add i64 %1941, 8
  store i64 %1942, i64* %PC.i158
  %1943 = inttoptr i64 %1940 to double*
  %1944 = load double, double* %1943
  %1945 = bitcast i8* %1938 to double*
  store double %1944, double* %1945, align 1
  %1946 = getelementptr inbounds i8, i8* %1938, i64 8
  %1947 = bitcast i8* %1946 to double*
  store double 0.000000e+00, double* %1947, align 1
  store %struct.Memory* %loadMem_420cc4, %struct.Memory** %MEMORY
  %loadMem_420ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1949 = getelementptr inbounds %struct.GPR, %struct.GPR* %1948, i32 0, i32 33
  %1950 = getelementptr inbounds %struct.Reg, %struct.Reg* %1949, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1950 to i64*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1952 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1951, i64 0, i64 1
  %YMM1.i157 = bitcast %union.VectorReg* %1952 to %"class.std::bitset"*
  %1953 = bitcast %"class.std::bitset"* %YMM1.i157 to i8*
  %1954 = load i64, i64* %PC.i156
  %1955 = add i64 %1954, ptrtoint (%G_0xc228c__rip__type* @G_0xc228c__rip_ to i64)
  %1956 = load i64, i64* %PC.i156
  %1957 = add i64 %1956, 8
  store i64 %1957, i64* %PC.i156
  %1958 = inttoptr i64 %1955 to double*
  %1959 = load double, double* %1958
  %1960 = bitcast i8* %1953 to double*
  store double %1959, double* %1960, align 1
  %1961 = getelementptr inbounds i8, i8* %1953, i64 8
  %1962 = bitcast i8* %1961 to double*
  store double 0.000000e+00, double* %1962, align 1
  store %struct.Memory* %loadMem_420ccc, %struct.Memory** %MEMORY
  %loadMem_420cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 15
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1969, i64 0, i64 2
  %YMM2.i155 = bitcast %union.VectorReg* %1970 to %"class.std::bitset"*
  %1971 = bitcast %"class.std::bitset"* %YMM2.i155 to i8*
  %1972 = load i64, i64* %RBP.i154
  %1973 = sub i64 %1972, 12
  %1974 = load i64, i64* %PC.i153
  %1975 = add i64 %1974, 5
  store i64 %1975, i64* %PC.i153
  %1976 = inttoptr i64 %1973 to float*
  %1977 = load float, float* %1976
  %1978 = fpext float %1977 to double
  %1979 = bitcast i8* %1971 to double*
  store double %1978, double* %1979, align 1
  store %struct.Memory* %loadMem_420cd4, %struct.Memory** %MEMORY
  %loadMem_420cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1984 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1983, i64 0, i64 1
  %YMM1.i151 = bitcast %union.VectorReg* %1984 to %"class.std::bitset"*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1985, i64 0, i64 2
  %XMM2.i152 = bitcast %union.VectorReg* %1986 to %union.vec128_t*
  %1987 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %1988 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %1989 = bitcast %union.vec128_t* %XMM2.i152 to i8*
  %1990 = load i64, i64* %PC.i150
  %1991 = add i64 %1990, 4
  store i64 %1991, i64* %PC.i150
  %1992 = bitcast i8* %1988 to double*
  %1993 = load double, double* %1992, align 1
  %1994 = getelementptr inbounds i8, i8* %1988, i64 8
  %1995 = bitcast i8* %1994 to i64*
  %1996 = load i64, i64* %1995, align 1
  %1997 = bitcast i8* %1989 to double*
  %1998 = load double, double* %1997, align 1
  %1999 = fsub double %1993, %1998
  %2000 = bitcast i8* %1987 to double*
  store double %1999, double* %2000, align 1
  %2001 = getelementptr inbounds i8, i8* %1987, i64 8
  %2002 = bitcast i8* %2001 to i64*
  store i64 %1996, i64* %2002, align 1
  store %struct.Memory* %loadMem_420cd9, %struct.Memory** %MEMORY
  %loadMem_420cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2007 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2006, i64 0, i64 2
  %YMM2.i148 = bitcast %union.VectorReg* %2007 to %"class.std::bitset"*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2008, i64 0, i64 0
  %XMM0.i149 = bitcast %union.VectorReg* %2009 to %union.vec128_t*
  %2010 = bitcast %"class.std::bitset"* %YMM2.i148 to i8*
  %2011 = bitcast %union.vec128_t* %XMM0.i149 to i8*
  %2012 = load i64, i64* %PC.i147
  %2013 = add i64 %2012, 3
  store i64 %2013, i64* %PC.i147
  %2014 = bitcast i8* %2011 to <2 x i32>*
  %2015 = load <2 x i32>, <2 x i32>* %2014, align 1
  %2016 = getelementptr inbounds i8, i8* %2011, i64 8
  %2017 = bitcast i8* %2016 to <2 x i32>*
  %2018 = load <2 x i32>, <2 x i32>* %2017, align 1
  %2019 = extractelement <2 x i32> %2015, i32 0
  %2020 = bitcast i8* %2010 to i32*
  store i32 %2019, i32* %2020, align 1
  %2021 = extractelement <2 x i32> %2015, i32 1
  %2022 = getelementptr inbounds i8, i8* %2010, i64 4
  %2023 = bitcast i8* %2022 to i32*
  store i32 %2021, i32* %2023, align 1
  %2024 = extractelement <2 x i32> %2018, i32 0
  %2025 = getelementptr inbounds i8, i8* %2010, i64 8
  %2026 = bitcast i8* %2025 to i32*
  store i32 %2024, i32* %2026, align 1
  %2027 = extractelement <2 x i32> %2018, i32 1
  %2028 = getelementptr inbounds i8, i8* %2010, i64 12
  %2029 = bitcast i8* %2028 to i32*
  store i32 %2027, i32* %2029, align 1
  store %struct.Memory* %loadMem_420cdd, %struct.Memory** %MEMORY
  %loadMem_420ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2033, i64 0, i64 2
  %YMM2.i145 = bitcast %union.VectorReg* %2034 to %"class.std::bitset"*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2035, i64 0, i64 1
  %XMM1.i146 = bitcast %union.VectorReg* %2036 to %union.vec128_t*
  %2037 = bitcast %"class.std::bitset"* %YMM2.i145 to i8*
  %2038 = bitcast %"class.std::bitset"* %YMM2.i145 to i8*
  %2039 = bitcast %union.vec128_t* %XMM1.i146 to i8*
  %2040 = load i64, i64* %PC.i144
  %2041 = add i64 %2040, 4
  store i64 %2041, i64* %PC.i144
  %2042 = bitcast i8* %2038 to double*
  %2043 = load double, double* %2042, align 1
  %2044 = getelementptr inbounds i8, i8* %2038, i64 8
  %2045 = bitcast i8* %2044 to i64*
  %2046 = load i64, i64* %2045, align 1
  %2047 = bitcast i8* %2039 to double*
  %2048 = load double, double* %2047, align 1
  %2049 = fmul double %2043, %2048
  %2050 = bitcast i8* %2037 to double*
  store double %2049, double* %2050, align 1
  %2051 = getelementptr inbounds i8, i8* %2037, i64 8
  %2052 = bitcast i8* %2051 to i64*
  store i64 %2046, i64* %2052, align 1
  store %struct.Memory* %loadMem_420ce0, %struct.Memory** %MEMORY
  %loadMem_420ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 33
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2055 to i64*
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 15
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2060 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2059, i64 0, i64 1
  %YMM1.i143 = bitcast %union.VectorReg* %2060 to %"class.std::bitset"*
  %2061 = bitcast %"class.std::bitset"* %YMM1.i143 to i8*
  %2062 = load i64, i64* %RBP.i142
  %2063 = sub i64 %2062, 12
  %2064 = load i64, i64* %PC.i141
  %2065 = add i64 %2064, 5
  store i64 %2065, i64* %PC.i141
  %2066 = inttoptr i64 %2063 to float*
  %2067 = load float, float* %2066
  %2068 = fpext float %2067 to double
  %2069 = bitcast i8* %2061 to double*
  store double %2068, double* %2069, align 1
  store %struct.Memory* %loadMem_420ce4, %struct.Memory** %MEMORY
  %loadMem_420ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2073, i64 0, i64 0
  %YMM0.i139 = bitcast %union.VectorReg* %2074 to %"class.std::bitset"*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2075, i64 0, i64 1
  %XMM1.i140 = bitcast %union.VectorReg* %2076 to %union.vec128_t*
  %2077 = bitcast %"class.std::bitset"* %YMM0.i139 to i8*
  %2078 = bitcast %"class.std::bitset"* %YMM0.i139 to i8*
  %2079 = bitcast %union.vec128_t* %XMM1.i140 to i8*
  %2080 = load i64, i64* %PC.i138
  %2081 = add i64 %2080, 4
  store i64 %2081, i64* %PC.i138
  %2082 = bitcast i8* %2078 to double*
  %2083 = load double, double* %2082, align 1
  %2084 = getelementptr inbounds i8, i8* %2078, i64 8
  %2085 = bitcast i8* %2084 to i64*
  %2086 = load i64, i64* %2085, align 1
  %2087 = bitcast i8* %2079 to double*
  %2088 = load double, double* %2087, align 1
  %2089 = fmul double %2083, %2088
  %2090 = bitcast i8* %2077 to double*
  store double %2089, double* %2090, align 1
  %2091 = getelementptr inbounds i8, i8* %2077, i64 8
  %2092 = bitcast i8* %2091 to i64*
  store i64 %2086, i64* %2092, align 1
  store %struct.Memory* %loadMem_420ce9, %struct.Memory** %MEMORY
  %loadMem_420ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2096, i64 0, i64 0
  %XMM0.i134 = bitcast %union.VectorReg* %2097 to %union.vec128_t*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2098, i64 0, i64 2
  %XMM2.i135 = bitcast %union.VectorReg* %2099 to %union.vec128_t*
  %2100 = bitcast %union.vec128_t* %XMM0.i134 to i8*
  %2101 = bitcast %union.vec128_t* %XMM2.i135 to i8*
  %2102 = load i64, i64* %PC.i133
  %2103 = add i64 %2102, 4
  store i64 %2103, i64* %PC.i133
  %2104 = bitcast i8* %2100 to double*
  %2105 = load double, double* %2104, align 1
  %2106 = bitcast i8* %2101 to double*
  %2107 = load double, double* %2106, align 1
  %2108 = fcmp uno double %2105, %2107
  br i1 %2108, label %2109, label %2121

; <label>:2109:                                   ; preds = %block_420cc4
  %2110 = fadd double %2105, %2107
  %2111 = bitcast double %2110 to i64
  %2112 = and i64 %2111, 9221120237041090560
  %2113 = icmp eq i64 %2112, 9218868437227405312
  %2114 = and i64 %2111, 2251799813685247
  %2115 = icmp ne i64 %2114, 0
  %2116 = and i1 %2113, %2115
  br i1 %2116, label %2117, label %2127

; <label>:2117:                                   ; preds = %2109
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2119 = load i64, i64* %2118, align 8
  %2120 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2119, %struct.Memory* %loadMem_420ced)
  br label %routine_ucomisd__xmm2___xmm0.exit

; <label>:2121:                                   ; preds = %block_420cc4
  %2122 = fcmp ogt double %2105, %2107
  br i1 %2122, label %2127, label %2123

; <label>:2123:                                   ; preds = %2121
  %2124 = fcmp olt double %2105, %2107
  br i1 %2124, label %2127, label %2125

; <label>:2125:                                   ; preds = %2123
  %2126 = fcmp oeq double %2105, %2107
  br i1 %2126, label %2127, label %2134

; <label>:2127:                                   ; preds = %2125, %2123, %2121, %2109
  %2128 = phi i8 [ 0, %2121 ], [ 0, %2123 ], [ 1, %2125 ], [ 1, %2109 ]
  %2129 = phi i8 [ 0, %2121 ], [ 0, %2123 ], [ 0, %2125 ], [ 1, %2109 ]
  %2130 = phi i8 [ 0, %2121 ], [ 1, %2123 ], [ 0, %2125 ], [ 1, %2109 ]
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2128, i8* %2131, align 1
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2129, i8* %2132, align 1
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2130, i8* %2133, align 1
  br label %2134

; <label>:2134:                                   ; preds = %2127, %2125
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2135, align 1
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2136, align 1
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2137, align 1
  br label %routine_ucomisd__xmm2___xmm0.exit

routine_ucomisd__xmm2___xmm0.exit:                ; preds = %2117, %2134
  %2138 = phi %struct.Memory* [ %2120, %2117 ], [ %loadMem_420ced, %2134 ]
  store %struct.Memory* %2138, %struct.Memory** %MEMORY
  %loadMem_420cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2141 to i64*
  %2142 = load i64, i64* %PC.i132
  %2143 = add i64 %2142, 45
  %2144 = load i64, i64* %PC.i132
  %2145 = add i64 %2144, 6
  %2146 = load i64, i64* %PC.i132
  %2147 = add i64 %2146, 6
  store i64 %2147, i64* %PC.i132
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2149 = load i8, i8* %2148, align 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2151 = load i8, i8* %2150, align 1
  %2152 = or i8 %2151, %2149
  %2153 = icmp ne i8 %2152, 0
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %BRANCH_TAKEN, align 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2156 = select i1 %2153, i64 %2143, i64 %2145
  store i64 %2156, i64* %2155, align 8
  store %struct.Memory* %loadMem_420cf1, %struct.Memory** %MEMORY
  %loadBr_420cf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420cf1 = icmp eq i8 %loadBr_420cf1, 1
  br i1 %cmpBr_420cf1, label %block_.L_420d1e, label %block_420cf7

block_420cf7:                                     ; preds = %routine_ucomisd__xmm2___xmm0.exit
  %loadMem_420cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2159 to i64*
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2160, i64 0, i64 0
  %YMM0.i131 = bitcast %union.VectorReg* %2161 to %"class.std::bitset"*
  %2162 = bitcast %"class.std::bitset"* %YMM0.i131 to i8*
  %2163 = load i64, i64* %PC.i130
  %2164 = add i64 %2163, ptrtoint (%G_0xc22a9__rip__type* @G_0xc22a9__rip_ to i64)
  %2165 = load i64, i64* %PC.i130
  %2166 = add i64 %2165, 8
  store i64 %2166, i64* %PC.i130
  %2167 = inttoptr i64 %2164 to double*
  %2168 = load double, double* %2167
  %2169 = bitcast i8* %2162 to double*
  store double %2168, double* %2169, align 1
  %2170 = getelementptr inbounds i8, i8* %2162, i64 8
  %2171 = bitcast i8* %2170 to double*
  store double 0.000000e+00, double* %2171, align 1
  store %struct.Memory* %loadMem_420cf7, %struct.Memory** %MEMORY
  %loadMem_420cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2175, i64 0, i64 1
  %YMM1.i129 = bitcast %union.VectorReg* %2176 to %"class.std::bitset"*
  %2177 = bitcast %"class.std::bitset"* %YMM1.i129 to i8*
  %2178 = load i64, i64* %PC.i128
  %2179 = add i64 %2178, ptrtoint (%G_0xc2259__rip__type* @G_0xc2259__rip_ to i64)
  %2180 = load i64, i64* %PC.i128
  %2181 = add i64 %2180, 8
  store i64 %2181, i64* %PC.i128
  %2182 = inttoptr i64 %2179 to double*
  %2183 = load double, double* %2182
  %2184 = bitcast i8* %2177 to double*
  store double %2183, double* %2184, align 1
  %2185 = getelementptr inbounds i8, i8* %2177, i64 8
  %2186 = bitcast i8* %2185 to double*
  store double 0.000000e+00, double* %2186, align 1
  store %struct.Memory* %loadMem_420cff, %struct.Memory** %MEMORY
  %loadMem_420d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 15
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %2192 to i64*
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2193, i64 0, i64 2
  %YMM2.i127 = bitcast %union.VectorReg* %2194 to %"class.std::bitset"*
  %2195 = bitcast %"class.std::bitset"* %YMM2.i127 to i8*
  %2196 = load i64, i64* %RBP.i126
  %2197 = sub i64 %2196, 12
  %2198 = load i64, i64* %PC.i125
  %2199 = add i64 %2198, 5
  store i64 %2199, i64* %PC.i125
  %2200 = inttoptr i64 %2197 to float*
  %2201 = load float, float* %2200
  %2202 = fpext float %2201 to double
  %2203 = bitcast i8* %2195 to double*
  store double %2202, double* %2203, align 1
  store %struct.Memory* %loadMem_420d07, %struct.Memory** %MEMORY
  %loadMem_420d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2207, i64 0, i64 1
  %YMM1.i123 = bitcast %union.VectorReg* %2208 to %"class.std::bitset"*
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2209, i64 0, i64 2
  %XMM2.i124 = bitcast %union.VectorReg* %2210 to %union.vec128_t*
  %2211 = bitcast %"class.std::bitset"* %YMM1.i123 to i8*
  %2212 = bitcast %"class.std::bitset"* %YMM1.i123 to i8*
  %2213 = bitcast %union.vec128_t* %XMM2.i124 to i8*
  %2214 = load i64, i64* %PC.i122
  %2215 = add i64 %2214, 4
  store i64 %2215, i64* %PC.i122
  %2216 = bitcast i8* %2212 to double*
  %2217 = load double, double* %2216, align 1
  %2218 = getelementptr inbounds i8, i8* %2212, i64 8
  %2219 = bitcast i8* %2218 to i64*
  %2220 = load i64, i64* %2219, align 1
  %2221 = bitcast i8* %2213 to double*
  %2222 = load double, double* %2221, align 1
  %2223 = fsub double %2217, %2222
  %2224 = bitcast i8* %2211 to double*
  store double %2223, double* %2224, align 1
  %2225 = getelementptr inbounds i8, i8* %2211, i64 8
  %2226 = bitcast i8* %2225 to i64*
  store i64 %2220, i64* %2226, align 1
  store %struct.Memory* %loadMem_420d0c, %struct.Memory** %MEMORY
  %loadMem_420d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2231 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2230, i64 0, i64 0
  %YMM0.i120 = bitcast %union.VectorReg* %2231 to %"class.std::bitset"*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2232, i64 0, i64 1
  %XMM1.i121 = bitcast %union.VectorReg* %2233 to %union.vec128_t*
  %2234 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2235 = bitcast %"class.std::bitset"* %YMM0.i120 to i8*
  %2236 = bitcast %union.vec128_t* %XMM1.i121 to i8*
  %2237 = load i64, i64* %PC.i119
  %2238 = add i64 %2237, 4
  store i64 %2238, i64* %PC.i119
  %2239 = bitcast i8* %2235 to double*
  %2240 = load double, double* %2239, align 1
  %2241 = getelementptr inbounds i8, i8* %2235, i64 8
  %2242 = bitcast i8* %2241 to i64*
  %2243 = load i64, i64* %2242, align 1
  %2244 = bitcast i8* %2236 to double*
  %2245 = load double, double* %2244, align 1
  %2246 = fmul double %2240, %2245
  %2247 = bitcast i8* %2234 to double*
  store double %2246, double* %2247, align 1
  %2248 = getelementptr inbounds i8, i8* %2234, i64 8
  %2249 = bitcast i8* %2248 to i64*
  store i64 %2243, i64* %2249, align 1
  store %struct.Memory* %loadMem_420d10, %struct.Memory** %MEMORY
  %loadMem_420d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 15
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2256, i64 0, i64 0
  %XMM0.i118 = bitcast %union.VectorReg* %2257 to %union.vec128_t*
  %2258 = load i64, i64* %RBP.i117
  %2259 = sub i64 %2258, 32
  %2260 = bitcast %union.vec128_t* %XMM0.i118 to i8*
  %2261 = load i64, i64* %PC.i116
  %2262 = add i64 %2261, 5
  store i64 %2262, i64* %PC.i116
  %2263 = bitcast i8* %2260 to double*
  %2264 = load double, double* %2263, align 1
  %2265 = inttoptr i64 %2259 to double*
  store double %2264, double* %2265
  store %struct.Memory* %loadMem_420d14, %struct.Memory** %MEMORY
  %loadMem_420d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 33
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %PC.i115
  %2270 = add i64 %2269, 27
  %2271 = load i64, i64* %PC.i115
  %2272 = add i64 %2271, 5
  store i64 %2272, i64* %PC.i115
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2270, i64* %2273, align 8
  store %struct.Memory* %loadMem_420d19, %struct.Memory** %MEMORY
  br label %block_.L_420d34

block_.L_420d1e:                                  ; preds = %routine_ucomisd__xmm2___xmm0.exit
  %loadMem_420d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2278 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2277, i64 0, i64 0
  %YMM0.i114 = bitcast %union.VectorReg* %2278 to %"class.std::bitset"*
  %2279 = bitcast %"class.std::bitset"* %YMM0.i114 to i8*
  %2280 = load i64, i64* %PC.i113
  %2281 = add i64 %2280, ptrtoint (%G_0xc2282__rip__type* @G_0xc2282__rip_ to i64)
  %2282 = load i64, i64* %PC.i113
  %2283 = add i64 %2282, 8
  store i64 %2283, i64* %PC.i113
  %2284 = inttoptr i64 %2281 to double*
  %2285 = load double, double* %2284
  %2286 = bitcast i8* %2279 to double*
  store double %2285, double* %2286, align 1
  %2287 = getelementptr inbounds i8, i8* %2279, i64 8
  %2288 = bitcast i8* %2287 to double*
  store double 0.000000e+00, double* %2288, align 1
  store %struct.Memory* %loadMem_420d1e, %struct.Memory** %MEMORY
  %loadMem_420d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 15
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2295, i64 0, i64 1
  %YMM1.i112 = bitcast %union.VectorReg* %2296 to %"class.std::bitset"*
  %2297 = bitcast %"class.std::bitset"* %YMM1.i112 to i8*
  %2298 = load i64, i64* %RBP.i111
  %2299 = sub i64 %2298, 12
  %2300 = load i64, i64* %PC.i110
  %2301 = add i64 %2300, 5
  store i64 %2301, i64* %PC.i110
  %2302 = inttoptr i64 %2299 to float*
  %2303 = load float, float* %2302
  %2304 = fpext float %2303 to double
  %2305 = bitcast i8* %2297 to double*
  store double %2304, double* %2305, align 1
  store %struct.Memory* %loadMem_420d26, %struct.Memory** %MEMORY
  %loadMem_420d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 33
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2310 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2309, i64 0, i64 0
  %YMM0.i108 = bitcast %union.VectorReg* %2310 to %"class.std::bitset"*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2311, i64 0, i64 1
  %XMM1.i109 = bitcast %union.VectorReg* %2312 to %union.vec128_t*
  %2313 = bitcast %"class.std::bitset"* %YMM0.i108 to i8*
  %2314 = bitcast %"class.std::bitset"* %YMM0.i108 to i8*
  %2315 = bitcast %union.vec128_t* %XMM1.i109 to i8*
  %2316 = load i64, i64* %PC.i107
  %2317 = add i64 %2316, 4
  store i64 %2317, i64* %PC.i107
  %2318 = bitcast i8* %2314 to double*
  %2319 = load double, double* %2318, align 1
  %2320 = getelementptr inbounds i8, i8* %2314, i64 8
  %2321 = bitcast i8* %2320 to i64*
  %2322 = load i64, i64* %2321, align 1
  %2323 = bitcast i8* %2315 to double*
  %2324 = load double, double* %2323, align 1
  %2325 = fmul double %2319, %2324
  %2326 = bitcast i8* %2313 to double*
  store double %2325, double* %2326, align 1
  %2327 = getelementptr inbounds i8, i8* %2313, i64 8
  %2328 = bitcast i8* %2327 to i64*
  store i64 %2322, i64* %2328, align 1
  store %struct.Memory* %loadMem_420d2b, %struct.Memory** %MEMORY
  %loadMem_420d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 15
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2336 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2335, i64 0, i64 0
  %XMM0.i106 = bitcast %union.VectorReg* %2336 to %union.vec128_t*
  %2337 = load i64, i64* %RBP.i105
  %2338 = sub i64 %2337, 32
  %2339 = bitcast %union.vec128_t* %XMM0.i106 to i8*
  %2340 = load i64, i64* %PC.i104
  %2341 = add i64 %2340, 5
  store i64 %2341, i64* %PC.i104
  %2342 = bitcast i8* %2339 to double*
  %2343 = load double, double* %2342, align 1
  %2344 = inttoptr i64 %2338 to double*
  store double %2343, double* %2344
  store %struct.Memory* %loadMem_420d2f, %struct.Memory** %MEMORY
  br label %block_.L_420d34

block_.L_420d34:                                  ; preds = %block_.L_420d1e, %block_420cf7
  %loadMem_420d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 15
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2351, i64 0, i64 0
  %YMM0.i103 = bitcast %union.VectorReg* %2352 to %"class.std::bitset"*
  %2353 = bitcast %"class.std::bitset"* %YMM0.i103 to i8*
  %2354 = load i64, i64* %RBP.i102
  %2355 = sub i64 %2354, 32
  %2356 = load i64, i64* %PC.i101
  %2357 = add i64 %2356, 5
  store i64 %2357, i64* %PC.i101
  %2358 = inttoptr i64 %2355 to double*
  %2359 = load double, double* %2358
  %2360 = bitcast i8* %2353 to double*
  store double %2359, double* %2360, align 1
  %2361 = getelementptr inbounds i8, i8* %2353, i64 8
  %2362 = bitcast i8* %2361 to double*
  store double 0.000000e+00, double* %2362, align 1
  store %struct.Memory* %loadMem_420d34, %struct.Memory** %MEMORY
  %loadMem_420d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 33
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2365 to i64*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 15
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2370 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2369, i64 0, i64 1
  %YMM1.i100 = bitcast %union.VectorReg* %2370 to %"class.std::bitset"*
  %2371 = bitcast %"class.std::bitset"* %YMM1.i100 to i8*
  %2372 = load i64, i64* %RBP.i99
  %2373 = sub i64 %2372, 12
  %2374 = load i64, i64* %PC.i98
  %2375 = add i64 %2374, 5
  store i64 %2375, i64* %PC.i98
  %2376 = inttoptr i64 %2373 to float*
  %2377 = load float, float* %2376
  %2378 = fpext float %2377 to double
  %2379 = bitcast i8* %2371 to double*
  store double %2378, double* %2379, align 1
  store %struct.Memory* %loadMem_420d39, %struct.Memory** %MEMORY
  %loadMem_420d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2383, i64 0, i64 1
  %YMM1.i96 = bitcast %union.VectorReg* %2384 to %"class.std::bitset"*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2385, i64 0, i64 0
  %XMM0.i97 = bitcast %union.VectorReg* %2386 to %union.vec128_t*
  %2387 = bitcast %"class.std::bitset"* %YMM1.i96 to i8*
  %2388 = bitcast %"class.std::bitset"* %YMM1.i96 to i8*
  %2389 = bitcast %union.vec128_t* %XMM0.i97 to i8*
  %2390 = load i64, i64* %PC.i95
  %2391 = add i64 %2390, 4
  store i64 %2391, i64* %PC.i95
  %2392 = bitcast i8* %2388 to double*
  %2393 = load double, double* %2392, align 1
  %2394 = getelementptr inbounds i8, i8* %2388, i64 8
  %2395 = bitcast i8* %2394 to i64*
  %2396 = load i64, i64* %2395, align 1
  %2397 = bitcast i8* %2389 to double*
  %2398 = load double, double* %2397, align 1
  %2399 = fadd double %2393, %2398
  %2400 = bitcast i8* %2387 to double*
  store double %2399, double* %2400, align 1
  %2401 = getelementptr inbounds i8, i8* %2387, i64 8
  %2402 = bitcast i8* %2401 to i64*
  store i64 %2396, i64* %2402, align 1
  store %struct.Memory* %loadMem_420d3e, %struct.Memory** %MEMORY
  %loadMem_420d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2407 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2406, i64 0, i64 0
  %YMM0.i93 = bitcast %union.VectorReg* %2407 to %"class.std::bitset"*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2408, i64 0, i64 1
  %XMM1.i94 = bitcast %union.VectorReg* %2409 to %union.vec128_t*
  %2410 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %2411 = bitcast %union.vec128_t* %XMM1.i94 to i8*
  %2412 = load i64, i64* %PC.i92
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %PC.i92
  %2414 = bitcast i8* %2410 to <2 x i32>*
  %2415 = load <2 x i32>, <2 x i32>* %2414, align 1
  %2416 = getelementptr inbounds i8, i8* %2410, i64 8
  %2417 = bitcast i8* %2416 to <2 x i32>*
  %2418 = load <2 x i32>, <2 x i32>* %2417, align 1
  %2419 = bitcast i8* %2411 to double*
  %2420 = load double, double* %2419, align 1
  %2421 = fptrunc double %2420 to float
  %2422 = bitcast i8* %2410 to float*
  store float %2421, float* %2422, align 1
  %2423 = extractelement <2 x i32> %2415, i32 1
  %2424 = getelementptr inbounds i8, i8* %2410, i64 4
  %2425 = bitcast i8* %2424 to i32*
  store i32 %2423, i32* %2425, align 1
  %2426 = extractelement <2 x i32> %2418, i32 0
  %2427 = bitcast i8* %2416 to i32*
  store i32 %2426, i32* %2427, align 1
  %2428 = extractelement <2 x i32> %2418, i32 1
  %2429 = getelementptr inbounds i8, i8* %2410, i64 12
  %2430 = bitcast i8* %2429 to i32*
  store i32 %2428, i32* %2430, align 1
  store %struct.Memory* %loadMem_420d42, %struct.Memory** %MEMORY
  %loadMem_420d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 33
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 15
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2438 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2437, i64 0, i64 0
  %XMM0.i91 = bitcast %union.VectorReg* %2438 to %union.vec128_t*
  %2439 = load i64, i64* %RBP.i90
  %2440 = sub i64 %2439, 12
  %2441 = bitcast %union.vec128_t* %XMM0.i91 to i8*
  %2442 = load i64, i64* %PC.i89
  %2443 = add i64 %2442, 5
  store i64 %2443, i64* %PC.i89
  %2444 = bitcast i8* %2441 to <2 x float>*
  %2445 = load <2 x float>, <2 x float>* %2444, align 1
  %2446 = extractelement <2 x float> %2445, i32 0
  %2447 = inttoptr i64 %2440 to float*
  store float %2446, float* %2447
  store %struct.Memory* %loadMem_420d46, %struct.Memory** %MEMORY
  br label %block_.L_420d4b

block_.L_420d4b:                                  ; preds = %block_.L_420d34, %block_.L_420ca5
  %loadMem_420d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 1
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %PC.i87
  %2455 = add i64 %2454, 10
  store i64 %2455, i64* %PC.i87
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i88, align 8
  store %struct.Memory* %loadMem_420d4b, %struct.Memory** %MEMORY
  %loadMem_420d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 5
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %RBP.i86
  %2466 = sub i64 %2465, 8
  %2467 = load i64, i64* %PC.i84
  %2468 = add i64 %2467, 4
  store i64 %2468, i64* %PC.i84
  %2469 = inttoptr i64 %2466 to i32*
  %2470 = load i32, i32* %2469
  %2471 = sext i32 %2470 to i64
  store i64 %2471, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_420d55, %struct.Memory** %MEMORY
  %loadMem_420d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 5
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %RCX.i83
  %2479 = load i64, i64* %PC.i82
  %2480 = add i64 %2479, 4
  store i64 %2480, i64* %PC.i82
  %2481 = sext i64 %2478 to i128
  %2482 = and i128 %2481, -18446744073709551616
  %2483 = zext i64 %2478 to i128
  %2484 = or i128 %2482, %2483
  %2485 = mul i128 76, %2484
  %2486 = trunc i128 %2485 to i64
  store i64 %2486, i64* %RCX.i83, align 8
  %2487 = sext i64 %2486 to i128
  %2488 = icmp ne i128 %2487, %2485
  %2489 = zext i1 %2488 to i8
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2489, i8* %2490, align 1
  %2491 = trunc i128 %2485 to i32
  %2492 = and i32 %2491, 255
  %2493 = call i32 @llvm.ctpop.i32(i32 %2492)
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2496, i8* %2497, align 1
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2498, align 1
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2499, align 1
  %2500 = lshr i64 %2486, 63
  %2501 = trunc i64 %2500 to i8
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2501, i8* %2502, align 1
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2489, i8* %2503, align 1
  store %struct.Memory* %loadMem_420d59, %struct.Memory** %MEMORY
  %loadMem_420d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 1
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 5
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RAX.i81
  %2514 = load i64, i64* %RCX.i
  %2515 = load i64, i64* %PC.i80
  %2516 = add i64 %2515, 3
  store i64 %2516, i64* %PC.i80
  %2517 = add i64 %2514, %2513
  store i64 %2517, i64* %RAX.i81, align 8
  %2518 = icmp ult i64 %2517, %2513
  %2519 = icmp ult i64 %2517, %2514
  %2520 = or i1 %2518, %2519
  %2521 = zext i1 %2520 to i8
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2521, i8* %2522, align 1
  %2523 = trunc i64 %2517 to i32
  %2524 = and i32 %2523, 255
  %2525 = call i32 @llvm.ctpop.i32(i32 %2524)
  %2526 = trunc i32 %2525 to i8
  %2527 = and i8 %2526, 1
  %2528 = xor i8 %2527, 1
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2528, i8* %2529, align 1
  %2530 = xor i64 %2514, %2513
  %2531 = xor i64 %2530, %2517
  %2532 = lshr i64 %2531, 4
  %2533 = trunc i64 %2532 to i8
  %2534 = and i8 %2533, 1
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2534, i8* %2535, align 1
  %2536 = icmp eq i64 %2517, 0
  %2537 = zext i1 %2536 to i8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2537, i8* %2538, align 1
  %2539 = lshr i64 %2517, 63
  %2540 = trunc i64 %2539 to i8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2540, i8* %2541, align 1
  %2542 = lshr i64 %2513, 63
  %2543 = lshr i64 %2514, 63
  %2544 = xor i64 %2539, %2542
  %2545 = xor i64 %2539, %2543
  %2546 = add i64 %2544, %2545
  %2547 = icmp eq i64 %2546, 2
  %2548 = zext i1 %2547 to i8
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2548, i8* %2549, align 1
  store %struct.Memory* %loadMem_420d5d, %struct.Memory** %MEMORY
  %loadMem_420d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 33
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 1
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %2555 to i64*
  %2556 = load i64, i64* %RAX.i79
  %2557 = add i64 %2556, 24
  %2558 = load i64, i64* %PC.i78
  %2559 = add i64 %2558, 4
  store i64 %2559, i64* %PC.i78
  %2560 = inttoptr i64 %2557 to i32*
  %2561 = load i32, i32* %2560
  %2562 = sub i32 %2561, 11
  %2563 = icmp ult i32 %2561, 11
  %2564 = zext i1 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2564, i8* %2565, align 1
  %2566 = and i32 %2562, 255
  %2567 = call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2570, i8* %2571, align 1
  %2572 = xor i32 %2561, 11
  %2573 = xor i32 %2572, %2562
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2576, i8* %2577, align 1
  %2578 = icmp eq i32 %2562, 0
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2562, 31
  %2582 = trunc i32 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2582, i8* %2583, align 1
  %2584 = lshr i32 %2561, 31
  %2585 = xor i32 %2581, %2584
  %2586 = add i32 %2585, %2584
  %2587 = icmp eq i32 %2586, 2
  %2588 = zext i1 %2587 to i8
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2588, i8* %2589, align 1
  store %struct.Memory* %loadMem_420d60, %struct.Memory** %MEMORY
  %loadMem_420d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2592 to i64*
  %2593 = load i64, i64* %PC.i77
  %2594 = add i64 %2593, 53
  %2595 = load i64, i64* %PC.i77
  %2596 = add i64 %2595, 6
  %2597 = load i64, i64* %PC.i77
  %2598 = add i64 %2597, 6
  store i64 %2598, i64* %PC.i77
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2600 = load i8, i8* %2599, align 1
  %2601 = icmp eq i8 %2600, 0
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %BRANCH_TAKEN, align 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2604 = select i1 %2601, i64 %2594, i64 %2596
  store i64 %2604, i64* %2603, align 8
  store %struct.Memory* %loadMem_420d64, %struct.Memory** %MEMORY
  %loadBr_420d64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420d64 = icmp eq i8 %loadBr_420d64, 1
  br i1 %cmpBr_420d64, label %block_.L_420d99, label %block_420d6a

block_420d6a:                                     ; preds = %block_.L_420d4b
  %loadMem_420d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2609 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2608, i64 0, i64 0
  %YMM0.i76 = bitcast %union.VectorReg* %2609 to %"class.std::bitset"*
  %2610 = bitcast %"class.std::bitset"* %YMM0.i76 to i8*
  %2611 = load i64, i64* %PC.i75
  %2612 = add i64 %2611, ptrtoint (%G_0xc223e__rip__type* @G_0xc223e__rip_ to i64)
  %2613 = load i64, i64* %PC.i75
  %2614 = add i64 %2613, 8
  store i64 %2614, i64* %PC.i75
  %2615 = inttoptr i64 %2612 to double*
  %2616 = load double, double* %2615
  %2617 = bitcast i8* %2610 to double*
  store double %2616, double* %2617, align 1
  %2618 = getelementptr inbounds i8, i8* %2610, i64 8
  %2619 = bitcast i8* %2618 to double*
  store double 0.000000e+00, double* %2619, align 1
  store %struct.Memory* %loadMem_420d6a, %struct.Memory** %MEMORY
  %loadMem_420d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2623, i64 0, i64 1
  %YMM1.i74 = bitcast %union.VectorReg* %2624 to %"class.std::bitset"*
  %2625 = bitcast %"class.std::bitset"* %YMM1.i74 to i8*
  %2626 = load i64, i64* %PC.i73
  %2627 = add i64 %2626, ptrtoint (%G_0xc21e6__rip__type* @G_0xc21e6__rip_ to i64)
  %2628 = load i64, i64* %PC.i73
  %2629 = add i64 %2628, 8
  store i64 %2629, i64* %PC.i73
  %2630 = inttoptr i64 %2627 to double*
  %2631 = load double, double* %2630
  %2632 = bitcast i8* %2625 to double*
  store double %2631, double* %2632, align 1
  %2633 = getelementptr inbounds i8, i8* %2625, i64 8
  %2634 = bitcast i8* %2633 to double*
  store double 0.000000e+00, double* %2634, align 1
  store %struct.Memory* %loadMem_420d72, %struct.Memory** %MEMORY
  %loadMem_420d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 15
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2641, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2642 to %"class.std::bitset"*
  %2643 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2644 = load i64, i64* %RBP.i72
  %2645 = sub i64 %2644, 12
  %2646 = load i64, i64* %PC.i71
  %2647 = add i64 %2646, 5
  store i64 %2647, i64* %PC.i71
  %2648 = inttoptr i64 %2645 to float*
  %2649 = load float, float* %2648
  %2650 = fpext float %2649 to double
  %2651 = bitcast i8* %2643 to double*
  store double %2650, double* %2651, align 1
  store %struct.Memory* %loadMem_420d7a, %struct.Memory** %MEMORY
  %loadMem_420d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2655, i64 0, i64 1
  %YMM1.i70 = bitcast %union.VectorReg* %2656 to %"class.std::bitset"*
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2657, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2658 to %union.vec128_t*
  %2659 = bitcast %"class.std::bitset"* %YMM1.i70 to i8*
  %2660 = bitcast %"class.std::bitset"* %YMM1.i70 to i8*
  %2661 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2662 = load i64, i64* %PC.i69
  %2663 = add i64 %2662, 4
  store i64 %2663, i64* %PC.i69
  %2664 = bitcast i8* %2660 to double*
  %2665 = load double, double* %2664, align 1
  %2666 = getelementptr inbounds i8, i8* %2660, i64 8
  %2667 = bitcast i8* %2666 to i64*
  %2668 = load i64, i64* %2667, align 1
  %2669 = bitcast i8* %2661 to double*
  %2670 = load double, double* %2669, align 1
  %2671 = fsub double %2665, %2670
  %2672 = bitcast i8* %2659 to double*
  store double %2671, double* %2672, align 1
  %2673 = getelementptr inbounds i8, i8* %2659, i64 8
  %2674 = bitcast i8* %2673 to i64*
  store i64 %2668, i64* %2674, align 1
  store %struct.Memory* %loadMem_420d7f, %struct.Memory** %MEMORY
  %loadMem_420d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 33
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2677 to i64*
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2678, i64 0, i64 0
  %YMM0.i67 = bitcast %union.VectorReg* %2679 to %"class.std::bitset"*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2681 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2680, i64 0, i64 1
  %XMM1.i68 = bitcast %union.VectorReg* %2681 to %union.vec128_t*
  %2682 = bitcast %"class.std::bitset"* %YMM0.i67 to i8*
  %2683 = bitcast %"class.std::bitset"* %YMM0.i67 to i8*
  %2684 = bitcast %union.vec128_t* %XMM1.i68 to i8*
  %2685 = load i64, i64* %PC.i66
  %2686 = add i64 %2685, 4
  store i64 %2686, i64* %PC.i66
  %2687 = bitcast i8* %2683 to double*
  %2688 = load double, double* %2687, align 1
  %2689 = getelementptr inbounds i8, i8* %2683, i64 8
  %2690 = bitcast i8* %2689 to i64*
  %2691 = load i64, i64* %2690, align 1
  %2692 = bitcast i8* %2684 to double*
  %2693 = load double, double* %2692, align 1
  %2694 = fmul double %2688, %2693
  %2695 = bitcast i8* %2682 to double*
  store double %2694, double* %2695, align 1
  %2696 = getelementptr inbounds i8, i8* %2682, i64 8
  %2697 = bitcast i8* %2696 to i64*
  store i64 %2691, i64* %2697, align 1
  store %struct.Memory* %loadMem_420d83, %struct.Memory** %MEMORY
  %loadMem_420d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 15
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2704, i64 0, i64 1
  %YMM1.i65 = bitcast %union.VectorReg* %2705 to %"class.std::bitset"*
  %2706 = bitcast %"class.std::bitset"* %YMM1.i65 to i8*
  %2707 = load i64, i64* %RBP.i64
  %2708 = sub i64 %2707, 12
  %2709 = load i64, i64* %PC.i63
  %2710 = add i64 %2709, 5
  store i64 %2710, i64* %PC.i63
  %2711 = inttoptr i64 %2708 to float*
  %2712 = load float, float* %2711
  %2713 = fpext float %2712 to double
  %2714 = bitcast i8* %2706 to double*
  store double %2713, double* %2714, align 1
  store %struct.Memory* %loadMem_420d87, %struct.Memory** %MEMORY
  %loadMem_420d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2718, i64 0, i64 1
  %YMM1.i61 = bitcast %union.VectorReg* %2719 to %"class.std::bitset"*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2720, i64 0, i64 0
  %XMM0.i62 = bitcast %union.VectorReg* %2721 to %union.vec128_t*
  %2722 = bitcast %"class.std::bitset"* %YMM1.i61 to i8*
  %2723 = bitcast %"class.std::bitset"* %YMM1.i61 to i8*
  %2724 = bitcast %union.vec128_t* %XMM0.i62 to i8*
  %2725 = load i64, i64* %PC.i60
  %2726 = add i64 %2725, 4
  store i64 %2726, i64* %PC.i60
  %2727 = bitcast i8* %2723 to double*
  %2728 = load double, double* %2727, align 1
  %2729 = getelementptr inbounds i8, i8* %2723, i64 8
  %2730 = bitcast i8* %2729 to i64*
  %2731 = load i64, i64* %2730, align 1
  %2732 = bitcast i8* %2724 to double*
  %2733 = load double, double* %2732, align 1
  %2734 = fadd double %2728, %2733
  %2735 = bitcast i8* %2722 to double*
  store double %2734, double* %2735, align 1
  %2736 = getelementptr inbounds i8, i8* %2722, i64 8
  %2737 = bitcast i8* %2736 to i64*
  store i64 %2731, i64* %2737, align 1
  store %struct.Memory* %loadMem_420d8c, %struct.Memory** %MEMORY
  %loadMem_420d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2741, i64 0, i64 0
  %YMM0.i58 = bitcast %union.VectorReg* %2742 to %"class.std::bitset"*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2744 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2743, i64 0, i64 1
  %XMM1.i59 = bitcast %union.VectorReg* %2744 to %union.vec128_t*
  %2745 = bitcast %"class.std::bitset"* %YMM0.i58 to i8*
  %2746 = bitcast %union.vec128_t* %XMM1.i59 to i8*
  %2747 = load i64, i64* %PC.i57
  %2748 = add i64 %2747, 4
  store i64 %2748, i64* %PC.i57
  %2749 = bitcast i8* %2745 to <2 x i32>*
  %2750 = load <2 x i32>, <2 x i32>* %2749, align 1
  %2751 = getelementptr inbounds i8, i8* %2745, i64 8
  %2752 = bitcast i8* %2751 to <2 x i32>*
  %2753 = load <2 x i32>, <2 x i32>* %2752, align 1
  %2754 = bitcast i8* %2746 to double*
  %2755 = load double, double* %2754, align 1
  %2756 = fptrunc double %2755 to float
  %2757 = bitcast i8* %2745 to float*
  store float %2756, float* %2757, align 1
  %2758 = extractelement <2 x i32> %2750, i32 1
  %2759 = getelementptr inbounds i8, i8* %2745, i64 4
  %2760 = bitcast i8* %2759 to i32*
  store i32 %2758, i32* %2760, align 1
  %2761 = extractelement <2 x i32> %2753, i32 0
  %2762 = bitcast i8* %2751 to i32*
  store i32 %2761, i32* %2762, align 1
  %2763 = extractelement <2 x i32> %2753, i32 1
  %2764 = getelementptr inbounds i8, i8* %2745, i64 12
  %2765 = bitcast i8* %2764 to i32*
  store i32 %2763, i32* %2765, align 1
  store %struct.Memory* %loadMem_420d90, %struct.Memory** %MEMORY
  %loadMem_420d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 15
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2773 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2772, i64 0, i64 0
  %XMM0.i56 = bitcast %union.VectorReg* %2773 to %union.vec128_t*
  %2774 = load i64, i64* %RBP.i55
  %2775 = sub i64 %2774, 12
  %2776 = bitcast %union.vec128_t* %XMM0.i56 to i8*
  %2777 = load i64, i64* %PC.i54
  %2778 = add i64 %2777, 5
  store i64 %2778, i64* %PC.i54
  %2779 = bitcast i8* %2776 to <2 x float>*
  %2780 = load <2 x float>, <2 x float>* %2779, align 1
  %2781 = extractelement <2 x float> %2780, i32 0
  %2782 = inttoptr i64 %2775 to float*
  store float %2781, float* %2782
  store %struct.Memory* %loadMem_420d94, %struct.Memory** %MEMORY
  br label %block_.L_420d99

block_.L_420d99:                                  ; preds = %block_420d6a, %block_.L_420d4b
  %loadMem_420d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 33
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %2785 to i64*
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2787 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2786, i64 0, i64 0
  %YMM0.i52 = bitcast %union.VectorReg* %2787 to %"class.std::bitset"*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2789 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2788, i64 0, i64 0
  %XMM0.i53 = bitcast %union.VectorReg* %2789 to %union.vec128_t*
  %2790 = bitcast %"class.std::bitset"* %YMM0.i52 to i8*
  %2791 = bitcast %"class.std::bitset"* %YMM0.i52 to i8*
  %2792 = bitcast %union.vec128_t* %XMM0.i53 to i8*
  %2793 = load i64, i64* %PC.i51
  %2794 = add i64 %2793, 3
  store i64 %2794, i64* %PC.i51
  %2795 = bitcast i8* %2791 to i64*
  %2796 = load i64, i64* %2795, align 1
  %2797 = getelementptr inbounds i8, i8* %2791, i64 8
  %2798 = bitcast i8* %2797 to i64*
  %2799 = load i64, i64* %2798, align 1
  %2800 = bitcast i8* %2792 to i64*
  %2801 = load i64, i64* %2800, align 1
  %2802 = getelementptr inbounds i8, i8* %2792, i64 8
  %2803 = bitcast i8* %2802 to i64*
  %2804 = load i64, i64* %2803, align 1
  %2805 = xor i64 %2801, %2796
  %2806 = xor i64 %2804, %2799
  %2807 = trunc i64 %2805 to i32
  %2808 = lshr i64 %2805, 32
  %2809 = trunc i64 %2808 to i32
  %2810 = bitcast i8* %2790 to i32*
  store i32 %2807, i32* %2810, align 1
  %2811 = getelementptr inbounds i8, i8* %2790, i64 4
  %2812 = bitcast i8* %2811 to i32*
  store i32 %2809, i32* %2812, align 1
  %2813 = trunc i64 %2806 to i32
  %2814 = getelementptr inbounds i8, i8* %2790, i64 8
  %2815 = bitcast i8* %2814 to i32*
  store i32 %2813, i32* %2815, align 1
  %2816 = lshr i64 %2806, 32
  %2817 = trunc i64 %2816 to i32
  %2818 = getelementptr inbounds i8, i8* %2790, i64 12
  %2819 = bitcast i8* %2818 to i32*
  store i32 %2817, i32* %2819, align 1
  store %struct.Memory* %loadMem_420d99, %struct.Memory** %MEMORY
  %loadMem_420d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2821 = getelementptr inbounds %struct.GPR, %struct.GPR* %2820, i32 0, i32 33
  %2822 = getelementptr inbounds %struct.Reg, %struct.Reg* %2821, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2822 to i64*
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 15
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2827 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2826, i64 0, i64 1
  %YMM1.i50 = bitcast %union.VectorReg* %2827 to %"class.std::bitset"*
  %2828 = bitcast %"class.std::bitset"* %YMM1.i50 to i8*
  %2829 = load i64, i64* %RBP.i49
  %2830 = sub i64 %2829, 12
  %2831 = load i64, i64* %PC.i48
  %2832 = add i64 %2831, 5
  store i64 %2832, i64* %PC.i48
  %2833 = inttoptr i64 %2830 to float*
  %2834 = load float, float* %2833
  %2835 = fpext float %2834 to double
  %2836 = bitcast i8* %2828 to double*
  store double %2835, double* %2836, align 1
  store %struct.Memory* %loadMem_420d9c, %struct.Memory** %MEMORY
  %loadMem_420da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2839 to i64*
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2841 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2840, i64 0, i64 0
  %XMM0.i44 = bitcast %union.VectorReg* %2841 to %union.vec128_t*
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2843 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2842, i64 0, i64 1
  %XMM1.i45 = bitcast %union.VectorReg* %2843 to %union.vec128_t*
  %2844 = bitcast %union.vec128_t* %XMM0.i44 to i8*
  %2845 = bitcast %union.vec128_t* %XMM1.i45 to i8*
  %2846 = load i64, i64* %PC.i43
  %2847 = add i64 %2846, 4
  store i64 %2847, i64* %PC.i43
  %2848 = bitcast i8* %2844 to double*
  %2849 = load double, double* %2848, align 1
  %2850 = bitcast i8* %2845 to double*
  %2851 = load double, double* %2850, align 1
  %2852 = fcmp uno double %2849, %2851
  br i1 %2852, label %2853, label %2865

; <label>:2853:                                   ; preds = %block_.L_420d99
  %2854 = fadd double %2849, %2851
  %2855 = bitcast double %2854 to i64
  %2856 = and i64 %2855, 9221120237041090560
  %2857 = icmp eq i64 %2856, 9218868437227405312
  %2858 = and i64 %2855, 2251799813685247
  %2859 = icmp ne i64 %2858, 0
  %2860 = and i1 %2857, %2859
  br i1 %2860, label %2861, label %2871

; <label>:2861:                                   ; preds = %2853
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2863 = load i64, i64* %2862, align 8
  %2864 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2863, %struct.Memory* %loadMem_420da1)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:2865:                                   ; preds = %block_.L_420d99
  %2866 = fcmp ogt double %2849, %2851
  br i1 %2866, label %2871, label %2867

; <label>:2867:                                   ; preds = %2865
  %2868 = fcmp olt double %2849, %2851
  br i1 %2868, label %2871, label %2869

; <label>:2869:                                   ; preds = %2867
  %2870 = fcmp oeq double %2849, %2851
  br i1 %2870, label %2871, label %2878

; <label>:2871:                                   ; preds = %2869, %2867, %2865, %2853
  %2872 = phi i8 [ 0, %2865 ], [ 0, %2867 ], [ 1, %2869 ], [ 1, %2853 ]
  %2873 = phi i8 [ 0, %2865 ], [ 0, %2867 ], [ 0, %2869 ], [ 1, %2853 ]
  %2874 = phi i8 [ 0, %2865 ], [ 1, %2867 ], [ 0, %2869 ], [ 1, %2853 ]
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2872, i8* %2875, align 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2873, i8* %2876, align 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2874, i8* %2877, align 1
  br label %2878

; <label>:2878:                                   ; preds = %2871, %2869
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2879, align 1
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2880, align 1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2881, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %2861, %2878
  %2882 = phi %struct.Memory* [ %2864, %2861 ], [ %loadMem_420da1, %2878 ]
  store %struct.Memory* %2882, %struct.Memory** %MEMORY
  %loadMem_420da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %PC.i42
  %2887 = add i64 %2886, 14
  %2888 = load i64, i64* %PC.i42
  %2889 = add i64 %2888, 6
  %2890 = load i64, i64* %PC.i42
  %2891 = add i64 %2890, 6
  store i64 %2891, i64* %PC.i42
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2893 = load i8, i8* %2892, align 1
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2895 = load i8, i8* %2894, align 1
  %2896 = or i8 %2895, %2893
  %2897 = icmp ne i8 %2896, 0
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %BRANCH_TAKEN, align 1
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2900 = select i1 %2897, i64 %2887, i64 %2889
  store i64 %2900, i64* %2899, align 8
  store %struct.Memory* %loadMem_420da5, %struct.Memory** %MEMORY
  %loadBr_420da5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420da5 = icmp eq i8 %loadBr_420da5, 1
  br i1 %cmpBr_420da5, label %block_.L_420db3, label %block_420dab

block_420dab:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_420dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2904, i64 0, i64 0
  %YMM0.i40 = bitcast %union.VectorReg* %2905 to %"class.std::bitset"*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2906, i64 0, i64 0
  %XMM0.i41 = bitcast %union.VectorReg* %2907 to %union.vec128_t*
  %2908 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %2909 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %2910 = bitcast %union.vec128_t* %XMM0.i41 to i8*
  %2911 = load i64, i64* %PC.i39
  %2912 = add i64 %2911, 3
  store i64 %2912, i64* %PC.i39
  %2913 = bitcast i8* %2909 to i64*
  %2914 = load i64, i64* %2913, align 1
  %2915 = getelementptr inbounds i8, i8* %2909, i64 8
  %2916 = bitcast i8* %2915 to i64*
  %2917 = load i64, i64* %2916, align 1
  %2918 = bitcast i8* %2910 to i64*
  %2919 = load i64, i64* %2918, align 1
  %2920 = getelementptr inbounds i8, i8* %2910, i64 8
  %2921 = bitcast i8* %2920 to i64*
  %2922 = load i64, i64* %2921, align 1
  %2923 = xor i64 %2919, %2914
  %2924 = xor i64 %2922, %2917
  %2925 = trunc i64 %2923 to i32
  %2926 = lshr i64 %2923, 32
  %2927 = trunc i64 %2926 to i32
  %2928 = bitcast i8* %2908 to i32*
  store i32 %2925, i32* %2928, align 1
  %2929 = getelementptr inbounds i8, i8* %2908, i64 4
  %2930 = bitcast i8* %2929 to i32*
  store i32 %2927, i32* %2930, align 1
  %2931 = trunc i64 %2924 to i32
  %2932 = getelementptr inbounds i8, i8* %2908, i64 8
  %2933 = bitcast i8* %2932 to i32*
  store i32 %2931, i32* %2933, align 1
  %2934 = lshr i64 %2924, 32
  %2935 = trunc i64 %2934 to i32
  %2936 = getelementptr inbounds i8, i8* %2908, i64 12
  %2937 = bitcast i8* %2936 to i32*
  store i32 %2935, i32* %2937, align 1
  store %struct.Memory* %loadMem_420dab, %struct.Memory** %MEMORY
  %loadMem_420dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 15
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2943 to i64*
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2945 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2944, i64 0, i64 0
  %XMM0.i38 = bitcast %union.VectorReg* %2945 to %union.vec128_t*
  %2946 = load i64, i64* %RBP.i37
  %2947 = sub i64 %2946, 12
  %2948 = bitcast %union.vec128_t* %XMM0.i38 to i8*
  %2949 = load i64, i64* %PC.i36
  %2950 = add i64 %2949, 5
  store i64 %2950, i64* %PC.i36
  %2951 = bitcast i8* %2948 to <2 x float>*
  %2952 = load <2 x float>, <2 x float>* %2951, align 1
  %2953 = extractelement <2 x float> %2952, i32 0
  %2954 = inttoptr i64 %2947 to float*
  store float %2953, float* %2954
  store %struct.Memory* %loadMem_420dae, %struct.Memory** %MEMORY
  br label %block_.L_420db3

block_.L_420db3:                                  ; preds = %block_420dab, %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_420db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2959 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2958, i64 0, i64 0
  %YMM0.i35 = bitcast %union.VectorReg* %2959 to %"class.std::bitset"*
  %2960 = bitcast %"class.std::bitset"* %YMM0.i35 to i8*
  %2961 = load i64, i64* %PC.i34
  %2962 = add i64 %2961, ptrtoint (%G_0xc21a5__rip__type* @G_0xc21a5__rip_ to i64)
  %2963 = load i64, i64* %PC.i34
  %2964 = add i64 %2963, 8
  store i64 %2964, i64* %PC.i34
  %2965 = inttoptr i64 %2962 to double*
  %2966 = load double, double* %2965
  %2967 = bitcast i8* %2960 to double*
  store double %2966, double* %2967, align 1
  %2968 = getelementptr inbounds i8, i8* %2960, i64 8
  %2969 = bitcast i8* %2968 to double*
  store double 0.000000e+00, double* %2969, align 1
  store %struct.Memory* %loadMem_420db3, %struct.Memory** %MEMORY
  %loadMem_420dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 15
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2977 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2976, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2977 to %"class.std::bitset"*
  %2978 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2979 = load i64, i64* %RBP.i33
  %2980 = sub i64 %2979, 12
  %2981 = load i64, i64* %PC.i32
  %2982 = add i64 %2981, 5
  store i64 %2982, i64* %PC.i32
  %2983 = inttoptr i64 %2980 to float*
  %2984 = load float, float* %2983
  %2985 = fpext float %2984 to double
  %2986 = bitcast i8* %2978 to double*
  store double %2985, double* %2986, align 1
  store %struct.Memory* %loadMem_420dbb, %struct.Memory** %MEMORY
  %loadMem_420dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2991 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2990, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %2991 to %union.vec128_t*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2992, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2993 to %union.vec128_t*
  %2994 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2995 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %2996 = load i64, i64* %PC.i27
  %2997 = add i64 %2996, 4
  store i64 %2997, i64* %PC.i27
  %2998 = bitcast i8* %2994 to double*
  %2999 = load double, double* %2998, align 1
  %3000 = bitcast i8* %2995 to double*
  %3001 = load double, double* %3000, align 1
  %3002 = fcmp uno double %2999, %3001
  br i1 %3002, label %3003, label %3015

; <label>:3003:                                   ; preds = %block_.L_420db3
  %3004 = fadd double %2999, %3001
  %3005 = bitcast double %3004 to i64
  %3006 = and i64 %3005, 9221120237041090560
  %3007 = icmp eq i64 %3006, 9218868437227405312
  %3008 = and i64 %3005, 2251799813685247
  %3009 = icmp ne i64 %3008, 0
  %3010 = and i1 %3007, %3009
  br i1 %3010, label %3011, label %3021

; <label>:3011:                                   ; preds = %3003
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3013 = load i64, i64* %3012, align 8
  %3014 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3013, %struct.Memory* %loadMem_420dc0)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3015:                                   ; preds = %block_.L_420db3
  %3016 = fcmp ogt double %2999, %3001
  br i1 %3016, label %3021, label %3017

; <label>:3017:                                   ; preds = %3015
  %3018 = fcmp olt double %2999, %3001
  br i1 %3018, label %3021, label %3019

; <label>:3019:                                   ; preds = %3017
  %3020 = fcmp oeq double %2999, %3001
  br i1 %3020, label %3021, label %3028

; <label>:3021:                                   ; preds = %3019, %3017, %3015, %3003
  %3022 = phi i8 [ 0, %3015 ], [ 0, %3017 ], [ 1, %3019 ], [ 1, %3003 ]
  %3023 = phi i8 [ 0, %3015 ], [ 0, %3017 ], [ 0, %3019 ], [ 1, %3003 ]
  %3024 = phi i8 [ 0, %3015 ], [ 1, %3017 ], [ 0, %3019 ], [ 1, %3003 ]
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3022, i8* %3025, align 1
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3023, i8* %3026, align 1
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3024, i8* %3027, align 1
  br label %3028

; <label>:3028:                                   ; preds = %3021, %3019
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3029, align 1
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3030, align 1
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3031, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3011, %3028
  %3032 = phi %struct.Memory* [ %3014, %3011 ], [ %loadMem_420dc0, %3028 ]
  store %struct.Memory* %3032, %struct.Memory** %MEMORY
  %loadMem_420dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %PC.i26
  %3037 = add i64 %3036, 19
  %3038 = load i64, i64* %PC.i26
  %3039 = add i64 %3038, 6
  %3040 = load i64, i64* %PC.i26
  %3041 = add i64 %3040, 6
  store i64 %3041, i64* %PC.i26
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3043 = load i8, i8* %3042, align 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3045 = load i8, i8* %3044, align 1
  %3046 = or i8 %3045, %3043
  %3047 = icmp ne i8 %3046, 0
  %3048 = zext i1 %3047 to i8
  store i8 %3048, i8* %BRANCH_TAKEN, align 1
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3050 = select i1 %3047, i64 %3037, i64 %3039
  store i64 %3050, i64* %3049, align 8
  store %struct.Memory* %loadMem_420dc4, %struct.Memory** %MEMORY
  %loadBr_420dc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420dc4 = icmp eq i8 %loadBr_420dc4, 1
  br i1 %cmpBr_420dc4, label %block_.L_420dd7, label %block_420dca

block_420dca:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_420dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 33
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3053 to i64*
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3054, i64 0, i64 0
  %YMM0.i25 = bitcast %union.VectorReg* %3055 to %"class.std::bitset"*
  %3056 = bitcast %"class.std::bitset"* %YMM0.i25 to i8*
  %3057 = load i64, i64* %PC.i24
  %3058 = add i64 %3057, ptrtoint (%G_0xc233a__rip__type* @G_0xc233a__rip_ to i64)
  %3059 = load i64, i64* %PC.i24
  %3060 = add i64 %3059, 8
  store i64 %3060, i64* %PC.i24
  %3061 = inttoptr i64 %3058 to float*
  %3062 = load float, float* %3061
  %3063 = bitcast i8* %3056 to float*
  store float %3062, float* %3063, align 1
  %3064 = getelementptr inbounds i8, i8* %3056, i64 4
  %3065 = bitcast i8* %3064 to float*
  store float 0.000000e+00, float* %3065, align 1
  %3066 = getelementptr inbounds i8, i8* %3056, i64 8
  %3067 = bitcast i8* %3066 to float*
  store float 0.000000e+00, float* %3067, align 1
  %3068 = getelementptr inbounds i8, i8* %3056, i64 12
  %3069 = bitcast i8* %3068 to float*
  store float 0.000000e+00, float* %3069, align 1
  store %struct.Memory* %loadMem_420dca, %struct.Memory** %MEMORY
  %loadMem_420dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 33
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 15
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3077 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3076, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3077 to %union.vec128_t*
  %3078 = load i64, i64* %RBP.i23
  %3079 = sub i64 %3078, 12
  %3080 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3081 = load i64, i64* %PC.i22
  %3082 = add i64 %3081, 5
  store i64 %3082, i64* %PC.i22
  %3083 = bitcast i8* %3080 to <2 x float>*
  %3084 = load <2 x float>, <2 x float>* %3083, align 1
  %3085 = extractelement <2 x float> %3084, i32 0
  %3086 = inttoptr i64 %3079 to float*
  store float %3085, float* %3086
  store %struct.Memory* %loadMem_420dd2, %struct.Memory** %MEMORY
  br label %block_.L_420dd7

block_.L_420dd7:                                  ; preds = %block_420dca, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_420dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 33
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 1
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %PC.i20
  %3094 = add i64 %3093, 7
  store i64 %3094, i64* %PC.i20
  %3095 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %3096 = zext i32 %3095 to i64
  store i64 %3096, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_420dd7, %struct.Memory** %MEMORY
  %loadMem_420dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 1
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RAX.i
  %3104 = load i64, i64* %PC.i19
  %3105 = add i64 %3104, 3
  store i64 %3105, i64* %PC.i19
  %3106 = and i64 32, %3103
  %3107 = trunc i64 %3106 to i32
  store i64 %3106, i64* %RAX.i, align 8
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3108, align 1
  %3109 = and i32 %3107, 255
  %3110 = call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3113, i8* %3114, align 1
  %3115 = icmp eq i32 %3107, 0
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3116, i8* %3117, align 1
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3118, align 1
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3119, align 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3120, align 1
  store %struct.Memory* %loadMem_420dde, %struct.Memory** %MEMORY
  %loadMem_420de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3122 = getelementptr inbounds %struct.GPR, %struct.GPR* %3121, i32 0, i32 33
  %3123 = getelementptr inbounds %struct.Reg, %struct.Reg* %3122, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3123 to i64*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 1
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %EAX.i18 = bitcast %union.anon* %3126 to i32*
  %3127 = load i32, i32* %EAX.i18
  %3128 = zext i32 %3127 to i64
  %3129 = load i64, i64* %PC.i17
  %3130 = add i64 %3129, 3
  store i64 %3130, i64* %PC.i17
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3131, align 1
  %3132 = and i32 %3127, 255
  %3133 = call i32 @llvm.ctpop.i32(i32 %3132)
  %3134 = trunc i32 %3133 to i8
  %3135 = and i8 %3134, 1
  %3136 = xor i8 %3135, 1
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3136, i8* %3137, align 1
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3138, align 1
  %3139 = icmp eq i32 %3127, 0
  %3140 = zext i1 %3139 to i8
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3140, i8* %3141, align 1
  %3142 = lshr i32 %3127, 31
  %3143 = trunc i32 %3142 to i8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3143, i8* %3144, align 1
  %3145 = lshr i32 %3127, 31
  %3146 = xor i32 %3142, %3145
  %3147 = add i32 %3146, %3145
  %3148 = icmp eq i32 %3147, 2
  %3149 = zext i1 %3148 to i8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3149, i8* %3150, align 1
  store %struct.Memory* %loadMem_420de1, %struct.Memory** %MEMORY
  %loadMem_420de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %PC.i16
  %3155 = add i64 %3154, 11
  %3156 = load i64, i64* %PC.i16
  %3157 = add i64 %3156, 6
  %3158 = load i64, i64* %PC.i16
  %3159 = add i64 %3158, 6
  store i64 %3159, i64* %PC.i16
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3161 = load i8, i8* %3160, align 1
  %3162 = icmp eq i8 %3161, 0
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %BRANCH_TAKEN, align 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3165 = select i1 %3162, i64 %3155, i64 %3157
  store i64 %3165, i64* %3164, align 8
  store %struct.Memory* %loadMem_420de4, %struct.Memory** %MEMORY
  %loadBr_420de4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420de4 = icmp eq i8 %loadBr_420de4, 1
  br i1 %cmpBr_420de4, label %block_.L_420def, label %block_420dea

block_420dea:                                     ; preds = %block_.L_420dd7
  %loadMem_420dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %PC.i15
  %3170 = add i64 %3169, 30
  %3171 = load i64, i64* %PC.i15
  %3172 = add i64 %3171, 5
  store i64 %3172, i64* %PC.i15
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3170, i64* %3173, align 8
  store %struct.Memory* %loadMem_420dea, %struct.Memory** %MEMORY
  br label %block_.L_420e08

block_.L_420def:                                  ; preds = %block_.L_420dd7
  %loadMem_420def = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 11
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %PC.i14
  %3181 = add i64 %3180, 10
  store i64 %3181, i64* %PC.i14
  store i64 ptrtoint (%G__0x57b27f_type* @G__0x57b27f to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_420def, %struct.Memory** %MEMORY
  %loadMem_420df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 15
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3189 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3188, i64 0, i64 0
  %YMM0.i13 = bitcast %union.VectorReg* %3189 to %"class.std::bitset"*
  %3190 = bitcast %"class.std::bitset"* %YMM0.i13 to i8*
  %3191 = load i64, i64* %RBP.i12
  %3192 = sub i64 %3191, 12
  %3193 = load i64, i64* %PC.i11
  %3194 = add i64 %3193, 5
  store i64 %3194, i64* %PC.i11
  %3195 = inttoptr i64 %3192 to float*
  %3196 = load float, float* %3195
  %3197 = fpext float %3196 to double
  %3198 = bitcast i8* %3190 to double*
  store double %3197, double* %3198, align 1
  store %struct.Memory* %loadMem_420df9, %struct.Memory** %MEMORY
  %loadMem_420dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 1
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %3205 = bitcast %union.anon* %3204 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3205, i32 0, i32 0
  %3206 = load i64, i64* %PC.i10
  %3207 = add i64 %3206, 2
  store i64 %3207, i64* %PC.i10
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_420dfe, %struct.Memory** %MEMORY
  %loadMem1_420e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3210 to i64*
  %3211 = load i64, i64* %PC.i9
  %3212 = add i64 %3211, 200624
  %3213 = load i64, i64* %PC.i9
  %3214 = add i64 %3213, 5
  %3215 = load i64, i64* %PC.i9
  %3216 = add i64 %3215, 5
  store i64 %3216, i64* %PC.i9
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3218 = load i64, i64* %3217, align 8
  %3219 = add i64 %3218, -8
  %3220 = inttoptr i64 %3219 to i64*
  store i64 %3214, i64* %3220
  store i64 %3219, i64* %3217, align 8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3212, i64* %3221, align 8
  store %struct.Memory* %loadMem1_420e00, %struct.Memory** %MEMORY
  %loadMem2_420e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420e00 = load i64, i64* %3
  %call2_420e00 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_420e00, %struct.Memory* %loadMem2_420e00)
  store %struct.Memory* %call2_420e00, %struct.Memory** %MEMORY
  %loadMem_420e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 33
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %3224 to i64*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 1
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3227 to i32*
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 15
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %3230 to i64*
  %3231 = load i64, i64* %RBP.i8
  %3232 = sub i64 %3231, 36
  %3233 = load i32, i32* %EAX.i
  %3234 = zext i32 %3233 to i64
  %3235 = load i64, i64* %PC.i7
  %3236 = add i64 %3235, 3
  store i64 %3236, i64* %PC.i7
  %3237 = inttoptr i64 %3232 to i32*
  store i32 %3233, i32* %3237
  store %struct.Memory* %loadMem_420e05, %struct.Memory** %MEMORY
  br label %block_.L_420e08

block_.L_420e08:                                  ; preds = %block_.L_420def, %block_420dea
  %loadMem_420e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 33
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 15
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3244, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3245 to %"class.std::bitset"*
  %3246 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3247 = load i64, i64* %RBP.i6
  %3248 = sub i64 %3247, 12
  %3249 = load i64, i64* %PC.i5
  %3250 = add i64 %3249, 5
  store i64 %3250, i64* %PC.i5
  %3251 = inttoptr i64 %3248 to float*
  %3252 = load float, float* %3251
  %3253 = bitcast i8* %3246 to float*
  store float %3252, float* %3253, align 1
  %3254 = getelementptr inbounds i8, i8* %3246, i64 4
  %3255 = bitcast i8* %3254 to float*
  store float 0.000000e+00, float* %3255, align 1
  %3256 = getelementptr inbounds i8, i8* %3246, i64 8
  %3257 = bitcast i8* %3256 to float*
  store float 0.000000e+00, float* %3257, align 1
  %3258 = getelementptr inbounds i8, i8* %3246, i64 12
  %3259 = bitcast i8* %3258 to float*
  store float 0.000000e+00, float* %3259, align 1
  store %struct.Memory* %loadMem_420e08, %struct.Memory** %MEMORY
  %loadMem_420e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 13
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RSP.i
  %3267 = load i64, i64* %PC.i4
  %3268 = add i64 %3267, 4
  store i64 %3268, i64* %PC.i4
  %3269 = add i64 48, %3266
  store i64 %3269, i64* %RSP.i, align 8
  %3270 = icmp ult i64 %3269, %3266
  %3271 = icmp ult i64 %3269, 48
  %3272 = or i1 %3270, %3271
  %3273 = zext i1 %3272 to i8
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3273, i8* %3274, align 1
  %3275 = trunc i64 %3269 to i32
  %3276 = and i32 %3275, 255
  %3277 = call i32 @llvm.ctpop.i32(i32 %3276)
  %3278 = trunc i32 %3277 to i8
  %3279 = and i8 %3278, 1
  %3280 = xor i8 %3279, 1
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3280, i8* %3281, align 1
  %3282 = xor i64 48, %3266
  %3283 = xor i64 %3282, %3269
  %3284 = lshr i64 %3283, 4
  %3285 = trunc i64 %3284 to i8
  %3286 = and i8 %3285, 1
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3286, i8* %3287, align 1
  %3288 = icmp eq i64 %3269, 0
  %3289 = zext i1 %3288 to i8
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3289, i8* %3290, align 1
  %3291 = lshr i64 %3269, 63
  %3292 = trunc i64 %3291 to i8
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3292, i8* %3293, align 1
  %3294 = lshr i64 %3266, 63
  %3295 = xor i64 %3291, %3294
  %3296 = add i64 %3295, %3291
  %3297 = icmp eq i64 %3296, 2
  %3298 = zext i1 %3297 to i8
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3298, i8* %3299, align 1
  store %struct.Memory* %loadMem_420e0d, %struct.Memory** %MEMORY
  %loadMem_420e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 33
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3302 to i64*
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3304 = getelementptr inbounds %struct.GPR, %struct.GPR* %3303, i32 0, i32 15
  %3305 = getelementptr inbounds %struct.Reg, %struct.Reg* %3304, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3305 to i64*
  %3306 = load i64, i64* %PC.i2
  %3307 = add i64 %3306, 1
  store i64 %3307, i64* %PC.i2
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3309 = load i64, i64* %3308, align 8
  %3310 = add i64 %3309, 8
  %3311 = inttoptr i64 %3309 to i64*
  %3312 = load i64, i64* %3311
  store i64 %3312, i64* %RBP.i3, align 8
  store i64 %3310, i64* %3308, align 8
  store %struct.Memory* %loadMem_420e11, %struct.Memory** %MEMORY
  %loadMem_420e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 33
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %PC.i1
  %3317 = add i64 %3316, 1
  store i64 %3317, i64* %PC.i1
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3320 = load i64, i64* %3319, align 8
  %3321 = inttoptr i64 %3320 to i64*
  %3322 = load i64, i64* %3321
  store i64 %3322, i64* %3318, align 8
  %3323 = add i64 %3320, 8
  store i64 %3323, i64* %3319, align 8
  store %struct.Memory* %loadMem_420e12, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_420e12
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

define %struct.Memory* @routine_movl___rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xab0f24___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x20___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = and i64 32, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDI, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_420b5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_420b72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57b259___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b259_type* @G__0x57b259 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x4c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 76, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 104, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x54__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_setne__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %SIL, align 1
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

define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x68___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 104, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %R8, align 8
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

define %struct.Memory* @routine_addq__r8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movss_0x38__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 56
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

define %struct.Memory* @routine_cvtsi2ssl_0x48__rcx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = inttoptr i64 %13 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to float
  %24 = bitcast i8* %11 to float*
  store float %23, float* %24, align 1
  %25 = extractelement <2 x i32> %17, i32 1
  %26 = getelementptr inbounds i8, i8* %11, i64 4
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 0
  %29 = bitcast i8* %18 to i32*
  store i32 %28, i32* %29, align 1
  %30 = extractelement <2 x i32> %20, i32 1
  %31 = getelementptr inbounds i8, i8* %11, i64 12
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.crude_dragon_weakness(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 12
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jne_.L_420ca5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xc2382__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc2382__rip__type* @G_0xc2382__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0xc2332__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc2332__rip__type* @G_0xc2332__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_mulsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_ucomisd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_jbe_.L_420c78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xc234f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc234f__rip__type* @G_0xc234f__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0xc22ff__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc22ff__rip__type* @G_0xc22ff__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_420c8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xc2328__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc2328__rip__type* @G_0xc2328__rip_ to i64)
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

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
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

define %struct.Memory* @routine_jne_.L_420d4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xc22dc__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc22dc__rip__type* @G_0xc22dc__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0xc228c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc228c__rip__type* @G_0xc228c__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_420d1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xc22a9__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc22a9__rip__type* @G_0xc22a9__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0xc2259__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc2259__rip__type* @G_0xc2259__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_420d34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0xc2282__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc2282__rip__type* @G_0xc2282__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0xb__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 11
  %16 = icmp ult i32 %14, 11
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
  %25 = xor i32 %14, 11
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

define %struct.Memory* @routine_jne_.L_420d99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xc223e__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc223e__rip__type* @G_0xc223e__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0xc21e6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc21e6__rip__type* @G_0xc21e6__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_420db3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xc21a5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc21a5__rip__type* @G_0xc21a5__rip_ to i64)
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

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jbe_.L_420dd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xc233a__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xc233a__rip__type* @G_0xc233a__rip_ to i64)
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

define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x20___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 32, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_jne_.L_420def(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_420e08(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57b27f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b27f_type* @G__0x57b27f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
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
