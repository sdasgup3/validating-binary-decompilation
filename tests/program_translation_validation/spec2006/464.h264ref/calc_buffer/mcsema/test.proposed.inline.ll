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
%G_0x2994b1__rip__type = type <{ [8 x i8] }>
%G_0x299555__rip__type = type <{ [8 x i8] }>
%G_0x29956d__rip__type = type <{ [8 x i8] }>
%G_0x29963a__rip__type = type <{ [8 x i8] }>
%G_0x299e73__rip__type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cbe00_type = type <{ [8 x i8] }>
%G_0x6cc010_type = type <{ [8 x i8] }>
%G_0x6f9740_type = type <{ [8 x i8] }>
%G_0x8b47c__rip__type = type <{ [4 x i8] }>
%G_0x8b561__rip__type = type <{ [4 x i8] }>
%G_0x8b630__rip__type = type <{ [4 x i8] }>
%G__0x4c054d_type = type <{ [8 x i8] }>
%G__0x4c059e_type = type <{ [8 x i8] }>
%G__0x4c05b9_type = type <{ [8 x i8] }>
%G__0x4c05d3_type = type <{ [8 x i8] }>
%G__0x4c05e5_type = type <{ [8 x i8] }>
%G__0x4c05f7_type = type <{ [8 x i8] }>
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
@G_0x2994b1__rip_ = global %G_0x2994b1__rip__type zeroinitializer
@G_0x299555__rip_ = global %G_0x299555__rip__type zeroinitializer
@G_0x29956d__rip_ = global %G_0x29956d__rip__type zeroinitializer
@G_0x29963a__rip_ = global %G_0x29963a__rip__type zeroinitializer
@G_0x299e73__rip_ = global %G_0x299e73__rip__type zeroinitializer
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6cbe00 = global %G_0x6cbe00_type zeroinitializer
@G_0x6cc010 = global %G_0x6cc010_type zeroinitializer
@G_0x6f9740 = global %G_0x6f9740_type zeroinitializer
@G_0x8b47c__rip_ = global %G_0x8b47c__rip__type zeroinitializer
@G_0x8b561__rip_ = global %G_0x8b561__rip__type zeroinitializer
@G_0x8b630__rip_ = global %G_0x8b630__rip__type zeroinitializer
@G__0x4c054d = global %G__0x4c054d_type zeroinitializer
@G__0x4c059e = global %G__0x4c059e_type zeroinitializer
@G__0x4c05b9 = global %G__0x4c05b9_type zeroinitializer
@G__0x4c05d3 = global %G__0x4c05d3_type zeroinitializer
@G__0x4c05e5 = global %G__0x4c05e5_type zeroinitializer
@G__0x4c05f7 = global %G__0x4c05f7_type zeroinitializer

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

declare %struct.Memory* @sub_431bf0.get_LeakyBucketRate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_431f00.Sort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_431d90.write_buffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @calc_buffer(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_431fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_431fd0, %struct.Memory** %MEMORY
  %loadMem_431fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i6 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i6
  %27 = load i64, i64* %PC.i5
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i5
  store i64 %26, i64* %RBP.i7, align 8
  store %struct.Memory* %loadMem_431fd1, %struct.Memory** %MEMORY
  %loadMem_431fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i14 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i14
  %36 = load i64, i64* %PC.i13
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i13
  %38 = sub i64 %35, 176
  store i64 %38, i64* %RSP.i14, align 8
  %39 = icmp ult i64 %35, 176
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
  %49 = xor i64 176, %35
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
  store %struct.Memory* %loadMem_431fd4, %struct.Memory** %MEMORY
  %loadMem_431fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i22
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i22
  store i64 ptrtoint (%G__0x4c054d_type* @G__0x4c054d to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_431fdb, %struct.Memory** %MEMORY
  %loadMem_431fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 15
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %RBP.i31
  %82 = sub i64 %81, 64
  %83 = load i64, i64* %PC.i30
  %84 = add i64 %83, 8
  store i64 %84, i64* %PC.i30
  %85 = inttoptr i64 %82 to i64*
  store i64 0, i64* %85
  store %struct.Memory* %loadMem_431fe5, %struct.Memory** %MEMORY
  %loadMem_431fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RDI.i493 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %PC.i492
  %93 = add i64 %92, 8
  store i64 %93, i64* %PC.i492
  %94 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*)
  store i64 %94, i64* %RDI.i493, align 8
  store %struct.Memory* %loadMem_431fed, %struct.Memory** %MEMORY
  %loadMem_431ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 33
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %97 to i64*
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %101 = bitcast %union.anon* %100 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %101, i32 0, i32 0
  %102 = load i64, i64* %PC.i607
  %103 = add i64 %102, 2
  store i64 %103, i64* %PC.i607
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_431ff5, %struct.Memory** %MEMORY
  %loadMem1_431ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %PC.i628
  %108 = add i64 %107, -200423
  %109 = load i64, i64* %PC.i628
  %110 = add i64 %109, 5
  %111 = load i64, i64* %PC.i628
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC.i628
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, -8
  %116 = inttoptr i64 %115 to i64*
  store i64 %110, i64* %116
  store i64 %115, i64* %113, align 8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %108, i64* %117, align 8
  store %struct.Memory* %loadMem1_431ff7, %struct.Memory** %MEMORY
  %loadMem2_431ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_431ff7 = load i64, i64* %3
  %118 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_431ff7)
  store %struct.Memory* %118, %struct.Memory** %MEMORY
  %loadMem_431ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RDI.i737 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %PC.i736
  %126 = add i64 %125, 10
  store i64 %126, i64* %PC.i736
  store i64 ptrtoint (%G__0x4c059e_type* @G__0x4c059e to i64), i64* %RDI.i737, align 8
  store %struct.Memory* %loadMem_431ffc, %struct.Memory** %MEMORY
  %loadMem_432006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RSI.i897 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %PC.i896
  %134 = add i64 %133, 8
  store i64 %134, i64* %PC.i896
  %135 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*)
  store i64 %135, i64* %RSI.i897, align 8
  store %struct.Memory* %loadMem_432006, %struct.Memory** %MEMORY
  %loadMem_43200e = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RCX.i917 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %PC.i916
  %143 = add i64 %142, 8
  store i64 %143, i64* %PC.i916
  %144 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %144, i64* %RCX.i917, align 8
  store %struct.Memory* %loadMem_43200e, %struct.Memory** %MEMORY
  %loadMem_432016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RCX.i937 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RDX.i938 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RCX.i937
  %155 = add i64 %154, 8
  %156 = load i64, i64* %PC.i936
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC.i936
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RDX.i938, align 8
  store %struct.Memory* %loadMem_432016, %struct.Memory** %MEMORY
  %loadMem_432019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %EAX.i958 = bitcast %union.anon* %166 to i32*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 15
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RBP.i959 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %RBP.i959
  %171 = sub i64 %170, 124
  %172 = load i32, i32* %EAX.i958
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC.i957
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i957
  %176 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %176
  store %struct.Memory* %loadMem_432019, %struct.Memory** %MEMORY
  %loadMem_43201c = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %183 = bitcast %union.anon* %182 to %struct.anon.2*
  %AL.i984 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %183, i32 0, i32 0
  %184 = load i64, i64* %PC.i983
  %185 = add i64 %184, 2
  store i64 %185, i64* %PC.i983
  store i8 0, i8* %AL.i984, align 1
  store %struct.Memory* %loadMem_43201c, %struct.Memory** %MEMORY
  %loadMem1_43201e = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %PC.i985
  %190 = add i64 %189, -200670
  %191 = load i64, i64* %PC.i985
  %192 = add i64 %191, 5
  %193 = load i64, i64* %PC.i985
  %194 = add i64 %193, 5
  store i64 %194, i64* %PC.i985
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %196, -8
  %198 = inttoptr i64 %197 to i64*
  store i64 %192, i64* %198
  store i64 %197, i64* %195, align 8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %190, i64* %199, align 8
  store %struct.Memory* %loadMem1_43201e, %struct.Memory** %MEMORY
  %loadMem2_43201e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43201e = load i64, i64* %3
  %200 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_43201e)
  store %struct.Memory* %200, %struct.Memory** %MEMORY
  %loadMem_432023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i981 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 7
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RDX.i982 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %PC.i981
  %208 = add i64 %207, 5
  store i64 %208, i64* %PC.i981
  store i64 8, i64* %RDX.i982, align 8
  store %struct.Memory* %loadMem_432023, %struct.Memory** %MEMORY
  %loadMem_432028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i978 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %EDX.i979 = bitcast %union.anon* %214 to i32*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 9
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RSI.i980 = bitcast %union.anon* %217 to i64*
  %218 = load i32, i32* %EDX.i979
  %219 = zext i32 %218 to i64
  %220 = load i64, i64* %PC.i978
  %221 = add i64 %220, 2
  store i64 %221, i64* %PC.i978
  %222 = and i64 %219, 4294967295
  store i64 %222, i64* %RSI.i980, align 8
  store %struct.Memory* %loadMem_432028, %struct.Memory** %MEMORY
  %loadMem_43202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 5
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RCX.i977 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %PC.i976
  %230 = add i64 %229, 8
  store i64 %230, i64* %PC.i976
  %231 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %231, i64* %RCX.i977, align 8
  store %struct.Memory* %loadMem_43202a, %struct.Memory** %MEMORY
  %loadMem_432032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %RCX.i975 = bitcast %union.anon* %237 to i64*
  %238 = load i64, i64* %RCX.i975
  %239 = add i64 %238, 2476
  %240 = load i64, i64* %PC.i974
  %241 = add i64 %240, 7
  store i64 %241, i64* %PC.i974
  %242 = inttoptr i64 %239 to i32*
  %243 = load i32, i32* %242
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %RCX.i975, align 8
  store %struct.Memory* %loadMem_432032, %struct.Memory** %MEMORY
  %loadMem_432039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RCX.i972 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 15
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %RBP.i973 = bitcast %union.anon* %253 to i64*
  %254 = load i64, i64* %RBP.i973
  %255 = sub i64 %254, 24
  %256 = load i64, i64* %RCX.i972
  %257 = load i64, i64* %PC.i971
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC.i971
  %259 = inttoptr i64 %255 to i64*
  store i64 %256, i64* %259
  store %struct.Memory* %loadMem_432039, %struct.Memory** %MEMORY
  %loadMem_43203d = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 5
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RCX.i970 = bitcast %union.anon* %265 to i64*
  %266 = load i64, i64* %PC.i969
  %267 = add i64 %266, 8
  store i64 %267, i64* %PC.i969
  %268 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*)
  store i64 %268, i64* %RCX.i970, align 8
  store %struct.Memory* %loadMem_43203d, %struct.Memory** %MEMORY
  %loadMem_432045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RCX.i968 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RCX.i968
  %276 = load i64, i64* %PC.i967
  %277 = add i64 %276, 4
  store i64 %277, i64* %PC.i967
  %278 = add i64 1, %275
  store i64 %278, i64* %RCX.i968, align 8
  %279 = icmp ult i64 %278, %275
  %280 = icmp ult i64 %278, 1
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %282, i8* %283, align 1
  %284 = trunc i64 %278 to i32
  %285 = and i32 %284, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %289, i8* %290, align 1
  %291 = xor i64 1, %275
  %292 = xor i64 %291, %278
  %293 = lshr i64 %292, 4
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %295, i8* %296, align 1
  %297 = icmp eq i64 %278, 0
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %298, i8* %299, align 1
  %300 = lshr i64 %278, 63
  %301 = trunc i64 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %301, i8* %302, align 1
  %303 = lshr i64 %275, 63
  %304 = xor i64 %300, %303
  %305 = add i64 %304, %300
  %306 = icmp eq i64 %305, 2
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %307, i8* %308, align 1
  store %struct.Memory* %loadMem_432045, %struct.Memory** %MEMORY
  %loadMem_432049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RCX.i965 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 11
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RDI.i966 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RCX.i965
  %319 = load i64, i64* %PC.i964
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC.i964
  store i64 %318, i64* %RDI.i966, align 8
  store %struct.Memory* %loadMem_432049, %struct.Memory** %MEMORY
  %loadMem_43204c = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %EAX.i962 = bitcast %union.anon* %326 to i32*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 15
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RBP.i963 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RBP.i963
  %331 = sub i64 %330, 128
  %332 = load i32, i32* %EAX.i962
  %333 = zext i32 %332 to i64
  %334 = load i64, i64* %PC.i961
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i961
  %336 = inttoptr i64 %331 to i32*
  store i32 %332, i32* %336
  store %struct.Memory* %loadMem_43204c, %struct.Memory** %MEMORY
  %loadMem1_43204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %PC.i960
  %341 = add i64 %340, -200559
  %342 = load i64, i64* %PC.i960
  %343 = add i64 %342, 5
  %344 = load i64, i64* %PC.i960
  %345 = add i64 %344, 5
  store i64 %345, i64* %PC.i960
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add i64 %347, -8
  %349 = inttoptr i64 %348 to i64*
  store i64 %343, i64* %349
  store i64 %348, i64* %346, align 8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %341, i64* %350, align 8
  store %struct.Memory* %loadMem1_43204f, %struct.Memory** %MEMORY
  %loadMem2_43204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43204f = load i64, i64* %3
  %351 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_43204f)
  store %struct.Memory* %351, %struct.Memory** %MEMORY
  %loadMem_432054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RAX.i955 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 15
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RBP.i956 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %RBP.i956
  %362 = sub i64 %361, 32
  %363 = load i64, i64* %RAX.i955
  %364 = load i64, i64* %PC.i954
  %365 = add i64 %364, 4
  store i64 %365, i64* %PC.i954
  %366 = inttoptr i64 %362 to i64*
  store i64 %363, i64* %366
  store %struct.Memory* %loadMem_432054, %struct.Memory** %MEMORY
  %loadMem_432058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 15
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RBP.i953 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %RBP.i953
  %374 = sub i64 %373, 32
  %375 = load i64, i64* %PC.i952
  %376 = add i64 %375, 5
  store i64 %376, i64* %PC.i952
  %377 = inttoptr i64 %374 to i64*
  %378 = load i64, i64* %377
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %379, align 1
  %380 = trunc i64 %378 to i32
  %381 = and i32 %380, 255
  %382 = call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %385, i8* %386, align 1
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %387, align 1
  %388 = icmp eq i64 %378, 0
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %389, i8* %390, align 1
  %391 = lshr i64 %378, 63
  %392 = trunc i64 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %392, i8* %393, align 1
  %394 = lshr i64 %378, 63
  %395 = xor i64 %391, %394
  %396 = add i64 %395, %394
  %397 = icmp eq i64 %396, 2
  %398 = zext i1 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %398, i8* %399, align 1
  store %struct.Memory* %loadMem_432058, %struct.Memory** %MEMORY
  %loadMem_43205d = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %PC.i951
  %404 = add i64 %403, 21
  %405 = load i64, i64* %PC.i951
  %406 = add i64 %405, 6
  %407 = load i64, i64* %PC.i951
  %408 = add i64 %407, 6
  store i64 %408, i64* %PC.i951
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %410 = load i8, i8* %409, align 1
  %411 = icmp eq i8 %410, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %BRANCH_TAKEN, align 1
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %414 = select i1 %411, i64 %404, i64 %406
  store i64 %414, i64* %413, align 8
  store %struct.Memory* %loadMem_43205d, %struct.Memory** %MEMORY
  %loadBr_43205d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43205d = icmp eq i8 %loadBr_43205d, 1
  br i1 %cmpBr_43205d, label %block_.L_432072, label %block_432063

block_432063:                                     ; preds = %entry
  %loadMem_432063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 11
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RDI.i950 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %PC.i949
  %422 = add i64 %421, 10
  store i64 %422, i64* %PC.i949
  store i64 ptrtoint (%G__0x4c05b9_type* @G__0x4c05b9 to i64), i64* %RDI.i950, align 8
  store %struct.Memory* %loadMem_432063, %struct.Memory** %MEMORY
  %loadMem1_43206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %PC.i948
  %427 = add i64 %426, 160643
  %428 = load i64, i64* %PC.i948
  %429 = add i64 %428, 5
  %430 = load i64, i64* %PC.i948
  %431 = add i64 %430, 5
  store i64 %431, i64* %PC.i948
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = add i64 %433, -8
  %435 = inttoptr i64 %434 to i64*
  store i64 %429, i64* %435
  store i64 %434, i64* %432, align 8
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %427, i64* %436, align 8
  store %struct.Memory* %loadMem1_43206d, %struct.Memory** %MEMORY
  %loadMem2_43206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43206d = load i64, i64* %3
  %call2_43206d = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_43206d, %struct.Memory* %loadMem2_43206d)
  store %struct.Memory* %call2_43206d, %struct.Memory** %MEMORY
  br label %block_.L_432072

block_.L_432072:                                  ; preds = %block_432063, %entry
  %loadMem_432072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RAX.i947 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i946
  %444 = add i64 %443, 5
  store i64 %444, i64* %PC.i946
  store i64 8, i64* %RAX.i947, align 8
  store %struct.Memory* %loadMem_432072, %struct.Memory** %MEMORY
  %loadMem_432077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %EAX.i944 = bitcast %union.anon* %450 to i32*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 9
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RSI.i945 = bitcast %union.anon* %453 to i64*
  %454 = load i32, i32* %EAX.i944
  %455 = zext i32 %454 to i64
  %456 = load i64, i64* %PC.i943
  %457 = add i64 %456, 2
  store i64 %457, i64* %PC.i943
  %458 = and i64 %455, 4294967295
  store i64 %458, i64* %RSI.i945, align 8
  store %struct.Memory* %loadMem_432077, %struct.Memory** %MEMORY
  %loadMem_432079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 33
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %461 to i64*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 11
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RDI.i941 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 15
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RBP.i942 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %RBP.i942
  %469 = sub i64 %468, 24
  %470 = load i64, i64* %PC.i940
  %471 = add i64 %470, 4
  store i64 %471, i64* %PC.i940
  %472 = inttoptr i64 %469 to i64*
  %473 = load i64, i64* %472
  store i64 %473, i64* %RDI.i941, align 8
  store %struct.Memory* %loadMem_432079, %struct.Memory** %MEMORY
  %loadMem1_43207d = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %476 to i64*
  %477 = load i64, i64* %PC.i939
  %478 = add i64 %477, -200605
  %479 = load i64, i64* %PC.i939
  %480 = add i64 %479, 5
  %481 = load i64, i64* %PC.i939
  %482 = add i64 %481, 5
  store i64 %482, i64* %PC.i939
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = add i64 %484, -8
  %486 = inttoptr i64 %485 to i64*
  store i64 %480, i64* %486
  store i64 %485, i64* %483, align 8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %478, i64* %487, align 8
  store %struct.Memory* %loadMem1_43207d, %struct.Memory** %MEMORY
  %loadMem2_43207d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43207d = load i64, i64* %3
  %488 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_43207d)
  store %struct.Memory* %488, %struct.Memory** %MEMORY
  %loadMem_432082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RAX.i934 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 15
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %497 to i64*
  %498 = load i64, i64* %RBP.i935
  %499 = sub i64 %498, 104
  %500 = load i64, i64* %RAX.i934
  %501 = load i64, i64* %PC.i933
  %502 = add i64 %501, 4
  store i64 %502, i64* %PC.i933
  %503 = inttoptr i64 %499 to i64*
  store i64 %500, i64* %503
  store %struct.Memory* %loadMem_432082, %struct.Memory** %MEMORY
  %loadMem_432086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 15
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %RBP.i932
  %511 = sub i64 %510, 104
  %512 = load i64, i64* %PC.i931
  %513 = add i64 %512, 5
  store i64 %513, i64* %PC.i931
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %516, align 1
  %517 = trunc i64 %515 to i32
  %518 = and i32 %517, 255
  %519 = call i32 @llvm.ctpop.i32(i32 %518)
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  %522 = xor i8 %521, 1
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %522, i8* %523, align 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %524, align 1
  %525 = icmp eq i64 %515, 0
  %526 = zext i1 %525 to i8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %526, i8* %527, align 1
  %528 = lshr i64 %515, 63
  %529 = trunc i64 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %529, i8* %530, align 1
  %531 = lshr i64 %515, 63
  %532 = xor i64 %528, %531
  %533 = add i64 %532, %531
  %534 = icmp eq i64 %533, 2
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %535, i8* %536, align 1
  store %struct.Memory* %loadMem_432086, %struct.Memory** %MEMORY
  %loadMem_43208b = load %struct.Memory*, %struct.Memory** %MEMORY
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 33
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %539 to i64*
  %540 = load i64, i64* %PC.i930
  %541 = add i64 %540, 21
  %542 = load i64, i64* %PC.i930
  %543 = add i64 %542, 6
  %544 = load i64, i64* %PC.i930
  %545 = add i64 %544, 6
  store i64 %545, i64* %PC.i930
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %547 = load i8, i8* %546, align 1
  %548 = icmp eq i8 %547, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %BRANCH_TAKEN, align 1
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %551 = select i1 %548, i64 %541, i64 %543
  store i64 %551, i64* %550, align 8
  store %struct.Memory* %loadMem_43208b, %struct.Memory** %MEMORY
  %loadBr_43208b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43208b = icmp eq i8 %loadBr_43208b, 1
  br i1 %cmpBr_43208b, label %block_.L_4320a0, label %block_432091

block_432091:                                     ; preds = %block_.L_432072
  %loadMem_432091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 11
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RDI.i929 = bitcast %union.anon* %557 to i64*
  %558 = load i64, i64* %PC.i928
  %559 = add i64 %558, 10
  store i64 %559, i64* %PC.i928
  store i64 ptrtoint (%G__0x4c05d3_type* @G__0x4c05d3 to i64), i64* %RDI.i929, align 8
  store %struct.Memory* %loadMem_432091, %struct.Memory** %MEMORY
  %loadMem1_43209b = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %PC.i927
  %564 = add i64 %563, 160597
  %565 = load i64, i64* %PC.i927
  %566 = add i64 %565, 5
  %567 = load i64, i64* %PC.i927
  %568 = add i64 %567, 5
  store i64 %568, i64* %PC.i927
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %570 = load i64, i64* %569, align 8
  %571 = add i64 %570, -8
  %572 = inttoptr i64 %571 to i64*
  store i64 %566, i64* %572
  store i64 %571, i64* %569, align 8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %564, i64* %573, align 8
  store %struct.Memory* %loadMem1_43209b, %struct.Memory** %MEMORY
  %loadMem2_43209b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43209b = load i64, i64* %3
  %call2_43209b = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_43209b, %struct.Memory* %loadMem2_43209b)
  store %struct.Memory* %call2_43209b, %struct.Memory** %MEMORY
  br label %block_.L_4320a0

block_.L_4320a0:                                  ; preds = %block_432091, %block_.L_432072
  %loadMem_4320a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RAX.i926 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %PC.i925
  %581 = add i64 %580, 5
  store i64 %581, i64* %PC.i925
  store i64 8, i64* %RAX.i926, align 8
  store %struct.Memory* %loadMem_4320a0, %struct.Memory** %MEMORY
  %loadMem_4320a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %EAX.i923 = bitcast %union.anon* %587 to i32*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 9
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RSI.i924 = bitcast %union.anon* %590 to i64*
  %591 = load i32, i32* %EAX.i923
  %592 = zext i32 %591 to i64
  %593 = load i64, i64* %PC.i922
  %594 = add i64 %593, 2
  store i64 %594, i64* %PC.i922
  %595 = and i64 %592, 4294967295
  store i64 %595, i64* %RSI.i924, align 8
  store %struct.Memory* %loadMem_4320a5, %struct.Memory** %MEMORY
  %loadMem_4320a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 11
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RDI.i920 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 15
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RBP.i921
  %606 = sub i64 %605, 24
  %607 = load i64, i64* %PC.i919
  %608 = add i64 %607, 4
  store i64 %608, i64* %PC.i919
  %609 = inttoptr i64 %606 to i64*
  %610 = load i64, i64* %609
  store i64 %610, i64* %RDI.i920, align 8
  store %struct.Memory* %loadMem_4320a7, %struct.Memory** %MEMORY
  %loadMem1_4320ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i918 = bitcast %union.anon* %613 to i64*
  %614 = load i64, i64* %PC.i918
  %615 = add i64 %614, -200651
  %616 = load i64, i64* %PC.i918
  %617 = add i64 %616, 5
  %618 = load i64, i64* %PC.i918
  %619 = add i64 %618, 5
  store i64 %619, i64* %PC.i918
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = add i64 %621, -8
  %623 = inttoptr i64 %622 to i64*
  store i64 %617, i64* %623
  store i64 %622, i64* %620, align 8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %615, i64* %624, align 8
  store %struct.Memory* %loadMem1_4320ab, %struct.Memory** %MEMORY
  %loadMem2_4320ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320ab = load i64, i64* %3
  %625 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_4320ab)
  store %struct.Memory* %625, %struct.Memory** %MEMORY
  %loadMem_4320b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RAX.i914 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 15
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RBP.i915
  %636 = sub i64 %635, 112
  %637 = load i64, i64* %RAX.i914
  %638 = load i64, i64* %PC.i913
  %639 = add i64 %638, 4
  store i64 %639, i64* %PC.i913
  %640 = inttoptr i64 %636 to i64*
  store i64 %637, i64* %640
  store %struct.Memory* %loadMem_4320b0, %struct.Memory** %MEMORY
  %loadMem_4320b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 33
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 15
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %RBP.i912 = bitcast %union.anon* %646 to i64*
  %647 = load i64, i64* %RBP.i912
  %648 = sub i64 %647, 112
  %649 = load i64, i64* %PC.i911
  %650 = add i64 %649, 5
  store i64 %650, i64* %PC.i911
  %651 = inttoptr i64 %648 to i64*
  %652 = load i64, i64* %651
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %653, align 1
  %654 = trunc i64 %652 to i32
  %655 = and i32 %654, 255
  %656 = call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %659, i8* %660, align 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %661, align 1
  %662 = icmp eq i64 %652, 0
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %663, i8* %664, align 1
  %665 = lshr i64 %652, 63
  %666 = trunc i64 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %666, i8* %667, align 1
  %668 = lshr i64 %652, 63
  %669 = xor i64 %665, %668
  %670 = add i64 %669, %668
  %671 = icmp eq i64 %670, 2
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %672, i8* %673, align 1
  store %struct.Memory* %loadMem_4320b4, %struct.Memory** %MEMORY
  %loadMem_4320b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %PC.i910
  %678 = add i64 %677, 21
  %679 = load i64, i64* %PC.i910
  %680 = add i64 %679, 6
  %681 = load i64, i64* %PC.i910
  %682 = add i64 %681, 6
  store i64 %682, i64* %PC.i910
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %684 = load i8, i8* %683, align 1
  %685 = icmp eq i8 %684, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %BRANCH_TAKEN, align 1
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %688 = select i1 %685, i64 %678, i64 %680
  store i64 %688, i64* %687, align 8
  store %struct.Memory* %loadMem_4320b9, %struct.Memory** %MEMORY
  %loadBr_4320b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4320b9 = icmp eq i8 %loadBr_4320b9, 1
  br i1 %cmpBr_4320b9, label %block_.L_4320ce, label %block_4320bf

block_4320bf:                                     ; preds = %block_.L_4320a0
  %loadMem_4320bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i908 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 11
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RDI.i909 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %PC.i908
  %696 = add i64 %695, 10
  store i64 %696, i64* %PC.i908
  store i64 ptrtoint (%G__0x4c05e5_type* @G__0x4c05e5 to i64), i64* %RDI.i909, align 8
  store %struct.Memory* %loadMem_4320bf, %struct.Memory** %MEMORY
  %loadMem1_4320c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %PC.i907
  %701 = add i64 %700, 160551
  %702 = load i64, i64* %PC.i907
  %703 = add i64 %702, 5
  %704 = load i64, i64* %PC.i907
  %705 = add i64 %704, 5
  store i64 %705, i64* %PC.i907
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %707 = load i64, i64* %706, align 8
  %708 = add i64 %707, -8
  %709 = inttoptr i64 %708 to i64*
  store i64 %703, i64* %709
  store i64 %708, i64* %706, align 8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %701, i64* %710, align 8
  store %struct.Memory* %loadMem1_4320c9, %struct.Memory** %MEMORY
  %loadMem2_4320c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320c9 = load i64, i64* %3
  %call2_4320c9 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_4320c9, %struct.Memory* %loadMem2_4320c9)
  store %struct.Memory* %call2_4320c9, %struct.Memory** %MEMORY
  br label %block_.L_4320ce

block_.L_4320ce:                                  ; preds = %block_4320bf, %block_.L_4320a0
  %loadMem_4320ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RAX.i906 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %PC.i905
  %718 = add i64 %717, 5
  store i64 %718, i64* %PC.i905
  store i64 8, i64* %RAX.i906, align 8
  store %struct.Memory* %loadMem_4320ce, %struct.Memory** %MEMORY
  %loadMem_4320d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 33
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 1
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %EAX.i903 = bitcast %union.anon* %724 to i32*
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 9
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %RSI.i904 = bitcast %union.anon* %727 to i64*
  %728 = load i32, i32* %EAX.i903
  %729 = zext i32 %728 to i64
  %730 = load i64, i64* %PC.i902
  %731 = add i64 %730, 2
  store i64 %731, i64* %PC.i902
  %732 = and i64 %729, 4294967295
  store i64 %732, i64* %RSI.i904, align 8
  store %struct.Memory* %loadMem_4320d3, %struct.Memory** %MEMORY
  %loadMem_4320d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 11
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RDI.i900 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i901 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i901
  %743 = sub i64 %742, 24
  %744 = load i64, i64* %PC.i899
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i899
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746
  store i64 %747, i64* %RDI.i900, align 8
  store %struct.Memory* %loadMem_4320d5, %struct.Memory** %MEMORY
  %loadMem1_4320d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %PC.i898
  %752 = add i64 %751, -200697
  %753 = load i64, i64* %PC.i898
  %754 = add i64 %753, 5
  %755 = load i64, i64* %PC.i898
  %756 = add i64 %755, 5
  store i64 %756, i64* %PC.i898
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %758 = load i64, i64* %757, align 8
  %759 = add i64 %758, -8
  %760 = inttoptr i64 %759 to i64*
  store i64 %754, i64* %760
  store i64 %759, i64* %757, align 8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %752, i64* %761, align 8
  store %struct.Memory* %loadMem1_4320d9, %struct.Memory** %MEMORY
  %loadMem2_4320d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320d9 = load i64, i64* %3
  %762 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %loadMem2_4320d9)
  store %struct.Memory* %762, %struct.Memory** %MEMORY
  %loadMem_4320de = load %struct.Memory*, %struct.Memory** %MEMORY
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 33
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 1
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RAX.i894 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 15
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RBP.i895 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %RBP.i895
  %773 = sub i64 %772, 120
  %774 = load i64, i64* %RAX.i894
  %775 = load i64, i64* %PC.i893
  %776 = add i64 %775, 4
  store i64 %776, i64* %PC.i893
  %777 = inttoptr i64 %773 to i64*
  store i64 %774, i64* %777
  store %struct.Memory* %loadMem_4320de, %struct.Memory** %MEMORY
  %loadMem_4320e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 15
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RBP.i892 = bitcast %union.anon* %783 to i64*
  %784 = load i64, i64* %RBP.i892
  %785 = sub i64 %784, 120
  %786 = load i64, i64* %PC.i891
  %787 = add i64 %786, 5
  store i64 %787, i64* %PC.i891
  %788 = inttoptr i64 %785 to i64*
  %789 = load i64, i64* %788
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %790, align 1
  %791 = trunc i64 %789 to i32
  %792 = and i32 %791, 255
  %793 = call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %796, i8* %797, align 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %798, align 1
  %799 = icmp eq i64 %789, 0
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %800, i8* %801, align 1
  %802 = lshr i64 %789, 63
  %803 = trunc i64 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %803, i8* %804, align 1
  %805 = lshr i64 %789, 63
  %806 = xor i64 %802, %805
  %807 = add i64 %806, %805
  %808 = icmp eq i64 %807, 2
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %809, i8* %810, align 1
  store %struct.Memory* %loadMem_4320e2, %struct.Memory** %MEMORY
  %loadMem_4320e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %PC.i890
  %815 = add i64 %814, 21
  %816 = load i64, i64* %PC.i890
  %817 = add i64 %816, 6
  %818 = load i64, i64* %PC.i890
  %819 = add i64 %818, 6
  store i64 %819, i64* %PC.i890
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %821 = load i8, i8* %820, align 1
  %822 = icmp eq i8 %821, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %BRANCH_TAKEN, align 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %825 = select i1 %822, i64 %815, i64 %817
  store i64 %825, i64* %824, align 8
  store %struct.Memory* %loadMem_4320e7, %struct.Memory** %MEMORY
  %loadBr_4320e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4320e7 = icmp eq i8 %loadBr_4320e7, 1
  br i1 %cmpBr_4320e7, label %block_.L_4320fc, label %block_4320ed

block_4320ed:                                     ; preds = %block_.L_4320ce
  %loadMem_4320ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 11
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RDI.i889 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %PC.i888
  %833 = add i64 %832, 10
  store i64 %833, i64* %PC.i888
  store i64 ptrtoint (%G__0x4c05f7_type* @G__0x4c05f7 to i64), i64* %RDI.i889, align 8
  store %struct.Memory* %loadMem_4320ed, %struct.Memory** %MEMORY
  %loadMem1_4320f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %PC.i887
  %838 = add i64 %837, 160505
  %839 = load i64, i64* %PC.i887
  %840 = add i64 %839, 5
  %841 = load i64, i64* %PC.i887
  %842 = add i64 %841, 5
  store i64 %842, i64* %PC.i887
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %844 = load i64, i64* %843, align 8
  %845 = add i64 %844, -8
  %846 = inttoptr i64 %845 to i64*
  store i64 %840, i64* %846
  store i64 %845, i64* %843, align 8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %838, i64* %847, align 8
  store %struct.Memory* %loadMem1_4320f7, %struct.Memory** %MEMORY
  %loadMem2_4320f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320f7 = load i64, i64* %3
  %call2_4320f7 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_4320f7, %struct.Memory* %loadMem2_4320f7)
  store %struct.Memory* %call2_4320f7, %struct.Memory** %MEMORY
  br label %block_.L_4320fc

block_.L_4320fc:                                  ; preds = %block_4320ed, %block_.L_4320ce
  %loadMem_4320fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 15
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RBP.i886 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %RBP.i886
  %855 = sub i64 %854, 16
  %856 = load i64, i64* %PC.i885
  %857 = add i64 %856, 8
  store i64 %857, i64* %PC.i885
  %858 = inttoptr i64 %855 to i64*
  store i64 0, i64* %858
  store %struct.Memory* %loadMem_4320fc, %struct.Memory** %MEMORY
  %loadMem_432104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 15
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %RBP.i884
  %866 = sub i64 %865, 56
  %867 = load i64, i64* %PC.i883
  %868 = add i64 %867, 8
  store i64 %868, i64* %PC.i883
  %869 = inttoptr i64 %866 to i64*
  store i64 0, i64* %869
  store %struct.Memory* %loadMem_432104, %struct.Memory** %MEMORY
  br label %block_.L_43210c

block_.L_43210c:                                  ; preds = %block_43211e, %block_.L_4320fc
  %loadMem_43210c = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i882 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i882
  %880 = sub i64 %879, 56
  %881 = load i64, i64* %PC.i880
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC.i880
  %883 = inttoptr i64 %880 to i64*
  %884 = load i64, i64* %883
  store i64 %884, i64* %RAX.i881, align 8
  store %struct.Memory* %loadMem_43210c, %struct.Memory** %MEMORY
  %loadMem_432110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 1
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RAX.i879 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RAX.i879
  %892 = load i64, i64* %PC.i878
  %893 = add i64 %892, 8
  store i64 %893, i64* %PC.i878
  %894 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*)
  %895 = sub i64 %891, %894
  %896 = icmp ugt i64 %894, %891
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %897, i8* %898, align 1
  %899 = trunc i64 %895 to i32
  %900 = and i32 %899, 255
  %901 = call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %904, i8* %905, align 1
  %906 = xor i64 %894, %891
  %907 = xor i64 %906, %895
  %908 = lshr i64 %907, 4
  %909 = trunc i64 %908 to i8
  %910 = and i8 %909, 1
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %910, i8* %911, align 1
  %912 = icmp eq i64 %895, 0
  %913 = zext i1 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %913, i8* %914, align 1
  %915 = lshr i64 %895, 63
  %916 = trunc i64 %915 to i8
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %916, i8* %917, align 1
  %918 = lshr i64 %891, 63
  %919 = lshr i64 %894, 63
  %920 = xor i64 %919, %918
  %921 = xor i64 %915, %918
  %922 = add i64 %921, %920
  %923 = icmp eq i64 %922, 2
  %924 = zext i1 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %924, i8* %925, align 1
  store %struct.Memory* %loadMem_432110, %struct.Memory** %MEMORY
  %loadMem_432118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 33
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %PC.i877
  %930 = add i64 %929, 43
  %931 = load i64, i64* %PC.i877
  %932 = add i64 %931, 6
  %933 = load i64, i64* %PC.i877
  %934 = add i64 %933, 6
  store i64 %934, i64* %PC.i877
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %936 = load i8, i8* %935, align 1
  %937 = icmp eq i8 %936, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %BRANCH_TAKEN, align 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %940 = select i1 %937, i64 %930, i64 %932
  store i64 %940, i64* %939, align 8
  store %struct.Memory* %loadMem_432118, %struct.Memory** %MEMORY
  %loadBr_432118 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432118 = icmp eq i8 %loadBr_432118, 1
  br i1 %cmpBr_432118, label %block_.L_432143, label %block_43211e

block_43211e:                                     ; preds = %block_.L_43210c
  %loadMem_43211e = load %struct.Memory*, %struct.Memory** %MEMORY
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 33
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 1
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 15
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %RBP.i876 = bitcast %union.anon* %949 to i64*
  %950 = load i64, i64* %RBP.i876
  %951 = sub i64 %950, 56
  %952 = load i64, i64* %PC.i874
  %953 = add i64 %952, 4
  store i64 %953, i64* %PC.i874
  %954 = inttoptr i64 %951 to i64*
  %955 = load i64, i64* %954
  store i64 %955, i64* %RAX.i875, align 8
  store %struct.Memory* %loadMem_43211e, %struct.Memory** %MEMORY
  %loadMem_432122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 33
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 1
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %RAX.i873 = bitcast %union.anon* %961 to i64*
  %962 = load i64, i64* %RAX.i873
  %963 = mul i64 %962, 8
  %964 = add i64 %963, 7313216
  %965 = load i64, i64* %PC.i872
  %966 = add i64 %965, 8
  store i64 %966, i64* %PC.i872
  %967 = inttoptr i64 %964 to i64*
  %968 = load i64, i64* %967
  store i64 %968, i64* %RAX.i873, align 8
  store %struct.Memory* %loadMem_432122, %struct.Memory** %MEMORY
  %loadMem_43212a = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 1
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RAX.i870 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i871 = bitcast %union.anon* %977 to i64*
  %978 = load i64, i64* %RAX.i870
  %979 = load i64, i64* %RBP.i871
  %980 = sub i64 %979, 16
  %981 = load i64, i64* %PC.i869
  %982 = add i64 %981, 4
  store i64 %982, i64* %PC.i869
  %983 = inttoptr i64 %980 to i64*
  %984 = load i64, i64* %983
  %985 = add i64 %984, %978
  store i64 %985, i64* %RAX.i870, align 8
  %986 = icmp ult i64 %985, %978
  %987 = icmp ult i64 %985, %984
  %988 = or i1 %986, %987
  %989 = zext i1 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %989, i8* %990, align 1
  %991 = trunc i64 %985 to i32
  %992 = and i32 %991, 255
  %993 = call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %996, i8* %997, align 1
  %998 = xor i64 %984, %978
  %999 = xor i64 %998, %985
  %1000 = lshr i64 %999, 4
  %1001 = trunc i64 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1002, i8* %1003, align 1
  %1004 = icmp eq i64 %985, 0
  %1005 = zext i1 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1005, i8* %1006, align 1
  %1007 = lshr i64 %985, 63
  %1008 = trunc i64 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1008, i8* %1009, align 1
  %1010 = lshr i64 %978, 63
  %1011 = lshr i64 %984, 63
  %1012 = xor i64 %1007, %1010
  %1013 = xor i64 %1007, %1011
  %1014 = add i64 %1012, %1013
  %1015 = icmp eq i64 %1014, 2
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1016, i8* %1017, align 1
  store %struct.Memory* %loadMem_43212a, %struct.Memory** %MEMORY
  %loadMem_43212e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 1
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 15
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RBP.i868
  %1028 = sub i64 %1027, 16
  %1029 = load i64, i64* %RAX.i867
  %1030 = load i64, i64* %PC.i866
  %1031 = add i64 %1030, 4
  store i64 %1031, i64* %PC.i866
  %1032 = inttoptr i64 %1028 to i64*
  store i64 %1029, i64* %1032
  store %struct.Memory* %loadMem_43212e, %struct.Memory** %MEMORY
  %loadMem_432132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 1
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RAX.i864 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 15
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %1041 to i64*
  %1042 = load i64, i64* %RBP.i865
  %1043 = sub i64 %1042, 56
  %1044 = load i64, i64* %PC.i863
  %1045 = add i64 %1044, 4
  store i64 %1045, i64* %PC.i863
  %1046 = inttoptr i64 %1043 to i64*
  %1047 = load i64, i64* %1046
  store i64 %1047, i64* %RAX.i864, align 8
  store %struct.Memory* %loadMem_432132, %struct.Memory** %MEMORY
  %loadMem_432136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 1
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RAX.i862 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RAX.i862
  %1055 = load i64, i64* %PC.i861
  %1056 = add i64 %1055, 4
  store i64 %1056, i64* %PC.i861
  %1057 = add i64 1, %1054
  store i64 %1057, i64* %RAX.i862, align 8
  %1058 = icmp ult i64 %1057, %1054
  %1059 = icmp ult i64 %1057, 1
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1061, i8* %1062, align 1
  %1063 = trunc i64 %1057 to i32
  %1064 = and i32 %1063, 255
  %1065 = call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1068, i8* %1069, align 1
  %1070 = xor i64 1, %1054
  %1071 = xor i64 %1070, %1057
  %1072 = lshr i64 %1071, 4
  %1073 = trunc i64 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1074, i8* %1075, align 1
  %1076 = icmp eq i64 %1057, 0
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1077, i8* %1078, align 1
  %1079 = lshr i64 %1057, 63
  %1080 = trunc i64 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1080, i8* %1081, align 1
  %1082 = lshr i64 %1054, 63
  %1083 = xor i64 %1079, %1082
  %1084 = add i64 %1083, %1079
  %1085 = icmp eq i64 %1084, 2
  %1086 = zext i1 %1085 to i8
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1086, i8* %1087, align 1
  store %struct.Memory* %loadMem_432136, %struct.Memory** %MEMORY
  %loadMem_43213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 15
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RBP.i860
  %1098 = sub i64 %1097, 56
  %1099 = load i64, i64* %RAX.i859
  %1100 = load i64, i64* %PC.i858
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %PC.i858
  %1102 = inttoptr i64 %1098 to i64*
  store i64 %1099, i64* %1102
  store %struct.Memory* %loadMem_43213a, %struct.Memory** %MEMORY
  %loadMem_43213e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %PC.i857
  %1107 = add i64 %1106, -50
  %1108 = load i64, i64* %PC.i857
  %1109 = add i64 %1108, 5
  store i64 %1109, i64* %PC.i857
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1107, i64* %1110, align 8
  store %struct.Memory* %loadMem_43213e, %struct.Memory** %MEMORY
  br label %block_.L_43210c

block_.L_432143:                                  ; preds = %block_.L_43210c
  %loadMem_432143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 1
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RAX.i855 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 15
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RBP.i856
  %1121 = sub i64 %1120, 16
  %1122 = load i64, i64* %PC.i854
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC.i854
  %1124 = inttoptr i64 %1121 to i64*
  %1125 = load i64, i64* %1124
  store i64 %1125, i64* %RAX.i855, align 8
  store %struct.Memory* %loadMem_432143, %struct.Memory** %MEMORY
  %loadMem_432147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 1
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 5
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RCX.i853 = bitcast %union.anon* %1134 to i64*
  %1135 = load i64, i64* %RAX.i852
  %1136 = load i64, i64* %PC.i851
  %1137 = add i64 %1136, 3
  store i64 %1137, i64* %PC.i851
  store i64 %1135, i64* %RCX.i853, align 8
  store %struct.Memory* %loadMem_432147, %struct.Memory** %MEMORY
  %loadMem_43214a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 5
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RCX.i850 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %RCX.i850
  %1145 = load i64, i64* %PC.i849
  %1146 = add i64 %1145, 3
  store i64 %1146, i64* %PC.i849
  %1147 = lshr i64 %1144, 63
  %1148 = trunc i64 %1147 to i8
  %1149 = trunc i64 %1144 to i8
  %1150 = and i8 %1149, 1
  %1151 = lshr i64 %1144, 1
  store i64 %1151, i64* %RCX.i850, align 8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1150, i8* %1152, align 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1154 = trunc i64 %1151 to i32
  %1155 = and i32 %1154, 255
  %1156 = call i32 @llvm.ctpop.i32(i32 %1155)
  %1157 = trunc i32 %1156 to i8
  %1158 = and i8 %1157, 1
  %1159 = xor i8 %1158, 1
  store i8 %1159, i8* %1153, align 1
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1160, align 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1162 = icmp eq i64 %1151, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %1161, align 1
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1164, align 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1148, i8* %1165, align 1
  store %struct.Memory* %loadMem_43214a, %struct.Memory** %MEMORY
  %loadMem_43214d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 1
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %EAX.i847 = bitcast %union.anon* %1171 to i32*
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 7
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %RDX.i848 = bitcast %union.anon* %1174 to i64*
  %1175 = load i32, i32* %EAX.i847
  %1176 = zext i32 %1175 to i64
  %1177 = load i64, i64* %PC.i846
  %1178 = add i64 %1177, 2
  store i64 %1178, i64* %PC.i846
  %1179 = and i64 %1176, 4294967295
  store i64 %1179, i64* %RDX.i848, align 8
  store %struct.Memory* %loadMem_43214d, %struct.Memory** %MEMORY
  %loadMem_43214f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 7
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RDX.i845 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RDX.i845
  %1187 = load i64, i64* %PC.i844
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %PC.i844
  %1189 = and i64 1, %1186
  %1190 = trunc i64 %1189 to i32
  store i64 %1189, i64* %RDX.i845, align 8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1191, align 1
  %1192 = and i32 %1190, 255
  %1193 = call i32 @llvm.ctpop.i32(i32 %1192)
  %1194 = trunc i32 %1193 to i8
  %1195 = and i8 %1194, 1
  %1196 = xor i8 %1195, 1
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1196, i8* %1197, align 1
  %1198 = icmp eq i32 %1190, 0
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1199, i8* %1200, align 1
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1201, align 1
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1202, align 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1203, align 1
  store %struct.Memory* %loadMem_43214f, %struct.Memory** %MEMORY
  %loadMem_432152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 7
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %EDX.i842 = bitcast %union.anon* %1209 to i32*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 9
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RSI.i843 = bitcast %union.anon* %1212 to i64*
  %1213 = load i32, i32* %EDX.i842
  %1214 = zext i32 %1213 to i64
  %1215 = load i64, i64* %PC.i841
  %1216 = add i64 %1215, 2
  store i64 %1216, i64* %PC.i841
  %1217 = and i64 %1214, 4294967295
  store i64 %1217, i64* %RSI.i843, align 8
  store %struct.Memory* %loadMem_432152, %struct.Memory** %MEMORY
  %loadMem_432154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 5
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RCX.i839 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 9
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RSI.i840 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %RSI.i840
  %1228 = load i64, i64* %RCX.i839
  %1229 = load i64, i64* %PC.i838
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %PC.i838
  %1231 = or i64 %1228, %1227
  store i64 %1231, i64* %RSI.i840, align 8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1232, align 1
  %1233 = trunc i64 %1231 to i32
  %1234 = and i32 %1233, 255
  %1235 = call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1238, i8* %1239, align 1
  %1240 = icmp eq i64 %1231, 0
  %1241 = zext i1 %1240 to i8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1241, i8* %1242, align 1
  %1243 = lshr i64 %1231, 63
  %1244 = trunc i64 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1244, i8* %1245, align 1
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1246, align 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1247, align 1
  store %struct.Memory* %loadMem_432154, %struct.Memory** %MEMORY
  %loadMem_432157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 9
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %RSI.i836 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1255 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1254, i64 0, i64 0
  %YMM0.i837 = bitcast %union.VectorReg* %1255 to %"class.std::bitset"*
  %1256 = bitcast %"class.std::bitset"* %YMM0.i837 to i8*
  %1257 = load i64, i64* %RSI.i836
  %1258 = load i64, i64* %PC.i835
  %1259 = add i64 %1258, 5
  store i64 %1259, i64* %PC.i835
  %1260 = bitcast i8* %1256 to <2 x i32>*
  %1261 = load <2 x i32>, <2 x i32>* %1260, align 1
  %1262 = getelementptr inbounds i8, i8* %1256, i64 8
  %1263 = bitcast i8* %1262 to <2 x i32>*
  %1264 = load <2 x i32>, <2 x i32>* %1263, align 1
  %1265 = sitofp i64 %1257 to float
  %1266 = bitcast i8* %1256 to float*
  store float %1265, float* %1266, align 1
  %1267 = extractelement <2 x i32> %1261, i32 1
  %1268 = getelementptr inbounds i8, i8* %1256, i64 4
  %1269 = bitcast i8* %1268 to i32*
  store i32 %1267, i32* %1269, align 1
  %1270 = extractelement <2 x i32> %1264, i32 0
  %1271 = bitcast i8* %1262 to i32*
  store i32 %1270, i32* %1271, align 1
  %1272 = extractelement <2 x i32> %1264, i32 1
  %1273 = getelementptr inbounds i8, i8* %1256, i64 12
  %1274 = bitcast i8* %1273 to i32*
  store i32 %1272, i32* %1274, align 1
  store %struct.Memory* %loadMem_432157, %struct.Memory** %MEMORY
  %loadMem_43215c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1278, i64 0, i64 0
  %YMM0.i833 = bitcast %union.VectorReg* %1279 to %"class.std::bitset"*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1280, i64 0, i64 0
  %XMM0.i834 = bitcast %union.VectorReg* %1281 to %union.vec128_t*
  %1282 = bitcast %"class.std::bitset"* %YMM0.i833 to i8*
  %1283 = bitcast %"class.std::bitset"* %YMM0.i833 to i8*
  %1284 = bitcast %union.vec128_t* %XMM0.i834 to i8*
  %1285 = load i64, i64* %PC.i832
  %1286 = add i64 %1285, 4
  store i64 %1286, i64* %PC.i832
  %1287 = bitcast i8* %1283 to <2 x float>*
  %1288 = load <2 x float>, <2 x float>* %1287, align 1
  %1289 = getelementptr inbounds i8, i8* %1283, i64 8
  %1290 = bitcast i8* %1289 to <2 x i32>*
  %1291 = load <2 x i32>, <2 x i32>* %1290, align 1
  %1292 = bitcast i8* %1284 to <2 x float>*
  %1293 = load <2 x float>, <2 x float>* %1292, align 1
  %1294 = extractelement <2 x float> %1288, i32 0
  %1295 = extractelement <2 x float> %1293, i32 0
  %1296 = fadd float %1294, %1295
  %1297 = bitcast i8* %1282 to float*
  store float %1296, float* %1297, align 1
  %1298 = bitcast <2 x float> %1288 to <2 x i32>
  %1299 = extractelement <2 x i32> %1298, i32 1
  %1300 = getelementptr inbounds i8, i8* %1282, i64 4
  %1301 = bitcast i8* %1300 to i32*
  store i32 %1299, i32* %1301, align 1
  %1302 = extractelement <2 x i32> %1291, i32 0
  %1303 = getelementptr inbounds i8, i8* %1282, i64 8
  %1304 = bitcast i8* %1303 to i32*
  store i32 %1302, i32* %1304, align 1
  %1305 = extractelement <2 x i32> %1291, i32 1
  %1306 = getelementptr inbounds i8, i8* %1282, i64 12
  %1307 = bitcast i8* %1306 to i32*
  store i32 %1305, i32* %1307, align 1
  store %struct.Memory* %loadMem_43215c, %struct.Memory** %MEMORY
  %loadMem_432160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RAX.i830 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1314, i64 0, i64 1
  %YMM1.i831 = bitcast %union.VectorReg* %1315 to %"class.std::bitset"*
  %1316 = bitcast %"class.std::bitset"* %YMM1.i831 to i8*
  %1317 = load i64, i64* %RAX.i830
  %1318 = load i64, i64* %PC.i829
  %1319 = add i64 %1318, 5
  store i64 %1319, i64* %PC.i829
  %1320 = bitcast i8* %1316 to <2 x i32>*
  %1321 = load <2 x i32>, <2 x i32>* %1320, align 1
  %1322 = getelementptr inbounds i8, i8* %1316, i64 8
  %1323 = bitcast i8* %1322 to <2 x i32>*
  %1324 = load <2 x i32>, <2 x i32>* %1323, align 1
  %1325 = sitofp i64 %1317 to float
  %1326 = bitcast i8* %1316 to float*
  store float %1325, float* %1326, align 1
  %1327 = extractelement <2 x i32> %1321, i32 1
  %1328 = getelementptr inbounds i8, i8* %1316, i64 4
  %1329 = bitcast i8* %1328 to i32*
  store i32 %1327, i32* %1329, align 1
  %1330 = extractelement <2 x i32> %1324, i32 0
  %1331 = bitcast i8* %1322 to i32*
  store i32 %1330, i32* %1331, align 1
  %1332 = extractelement <2 x i32> %1324, i32 1
  %1333 = getelementptr inbounds i8, i8* %1316, i64 12
  %1334 = bitcast i8* %1333 to i32*
  store i32 %1332, i32* %1334, align 1
  store %struct.Memory* %loadMem_432160, %struct.Memory** %MEMORY
  %loadMem_432165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 1
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RAX.i828 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %RAX.i828
  %1342 = load i64, i64* %RAX.i828
  %1343 = load i64, i64* %PC.i827
  %1344 = add i64 %1343, 3
  store i64 %1344, i64* %PC.i827
  %1345 = and i64 %1342, %1341
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1346, align 1
  %1347 = trunc i64 %1345 to i32
  %1348 = and i32 %1347, 255
  %1349 = call i32 @llvm.ctpop.i32(i32 %1348)
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  %1352 = xor i8 %1351, 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1352, i8* %1353, align 1
  %1354 = icmp eq i64 %1345, 0
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1355, i8* %1356, align 1
  %1357 = lshr i64 %1345, 63
  %1358 = trunc i64 %1357 to i8
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1358, i8* %1359, align 1
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1360, align 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1361, align 1
  store %struct.Memory* %loadMem_432165, %struct.Memory** %MEMORY
  %loadMem_432168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1368, i64 0, i64 1
  %XMM1.i826 = bitcast %union.VectorReg* %1369 to %union.vec128_t*
  %1370 = load i64, i64* %RBP.i825
  %1371 = sub i64 %1370, 132
  %1372 = bitcast %union.vec128_t* %XMM1.i826 to i8*
  %1373 = load i64, i64* %PC.i824
  %1374 = add i64 %1373, 8
  store i64 %1374, i64* %PC.i824
  %1375 = bitcast i8* %1372 to <2 x float>*
  %1376 = load <2 x float>, <2 x float>* %1375, align 1
  %1377 = extractelement <2 x float> %1376, i32 0
  %1378 = inttoptr i64 %1371 to float*
  store float %1377, float* %1378
  store %struct.Memory* %loadMem_432168, %struct.Memory** %MEMORY
  %loadMem_432170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 33
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %1381 to i64*
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 15
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1386 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1385, i64 0, i64 0
  %XMM0.i823 = bitcast %union.VectorReg* %1386 to %union.vec128_t*
  %1387 = load i64, i64* %RBP.i822
  %1388 = sub i64 %1387, 136
  %1389 = bitcast %union.vec128_t* %XMM0.i823 to i8*
  %1390 = load i64, i64* %PC.i821
  %1391 = add i64 %1390, 8
  store i64 %1391, i64* %PC.i821
  %1392 = bitcast i8* %1389 to <2 x float>*
  %1393 = load <2 x float>, <2 x float>* %1392, align 1
  %1394 = extractelement <2 x float> %1393, i32 0
  %1395 = inttoptr i64 %1388 to float*
  store float %1394, float* %1395
  store %struct.Memory* %loadMem_432170, %struct.Memory** %MEMORY
  %loadMem_432178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1398 to i64*
  %1399 = load i64, i64* %PC.i820
  %1400 = add i64 %1399, 22
  %1401 = load i64, i64* %PC.i820
  %1402 = add i64 %1401, 6
  %1403 = load i64, i64* %PC.i820
  %1404 = add i64 %1403, 6
  store i64 %1404, i64* %PC.i820
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1406 = load i8, i8* %1405, align 1
  store i8 %1406, i8* %BRANCH_TAKEN, align 1
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1408 = icmp ne i8 %1406, 0
  %1409 = select i1 %1408, i64 %1400, i64 %1402
  store i64 %1409, i64* %1407, align 8
  store %struct.Memory* %loadMem_432178, %struct.Memory** %MEMORY
  %loadBr_432178 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432178 = icmp eq i8 %loadBr_432178, 1
  br i1 %cmpBr_432178, label %block_.L_43218e, label %block_43217e

block_43217e:                                     ; preds = %block_.L_432143
  %loadMem_43217e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 33
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 15
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1417 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1416, i64 0, i64 0
  %YMM0.i819 = bitcast %union.VectorReg* %1417 to %"class.std::bitset"*
  %1418 = bitcast %"class.std::bitset"* %YMM0.i819 to i8*
  %1419 = load i64, i64* %RBP.i818
  %1420 = sub i64 %1419, 132
  %1421 = load i64, i64* %PC.i817
  %1422 = add i64 %1421, 8
  store i64 %1422, i64* %PC.i817
  %1423 = inttoptr i64 %1420 to float*
  %1424 = load float, float* %1423
  %1425 = bitcast i8* %1418 to float*
  store float %1424, float* %1425, align 1
  %1426 = getelementptr inbounds i8, i8* %1418, i64 4
  %1427 = bitcast i8* %1426 to float*
  store float 0.000000e+00, float* %1427, align 1
  %1428 = getelementptr inbounds i8, i8* %1418, i64 8
  %1429 = bitcast i8* %1428 to float*
  store float 0.000000e+00, float* %1429, align 1
  %1430 = getelementptr inbounds i8, i8* %1418, i64 12
  %1431 = bitcast i8* %1430 to float*
  store float 0.000000e+00, float* %1431, align 1
  store %struct.Memory* %loadMem_43217e, %struct.Memory** %MEMORY
  %loadMem_432186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 15
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1438, i64 0, i64 0
  %XMM0.i816 = bitcast %union.VectorReg* %1439 to %union.vec128_t*
  %1440 = load i64, i64* %RBP.i815
  %1441 = sub i64 %1440, 136
  %1442 = bitcast %union.vec128_t* %XMM0.i816 to i8*
  %1443 = load i64, i64* %PC.i814
  %1444 = add i64 %1443, 8
  store i64 %1444, i64* %PC.i814
  %1445 = bitcast i8* %1442 to <2 x float>*
  %1446 = load <2 x float>, <2 x float>* %1445, align 1
  %1447 = extractelement <2 x float> %1446, i32 0
  %1448 = inttoptr i64 %1441 to float*
  store float %1447, float* %1448
  store %struct.Memory* %loadMem_432186, %struct.Memory** %MEMORY
  br label %block_.L_43218e

block_.L_43218e:                                  ; preds = %block_43217e, %block_.L_432143
  %loadMem_43218e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 15
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1455, i64 0, i64 0
  %YMM0.i813 = bitcast %union.VectorReg* %1456 to %"class.std::bitset"*
  %1457 = bitcast %"class.std::bitset"* %YMM0.i813 to i8*
  %1458 = load i64, i64* %RBP.i812
  %1459 = sub i64 %1458, 136
  %1460 = load i64, i64* %PC.i811
  %1461 = add i64 %1460, 8
  store i64 %1461, i64* %PC.i811
  %1462 = inttoptr i64 %1459 to float*
  %1463 = load float, float* %1462
  %1464 = bitcast i8* %1457 to float*
  store float %1463, float* %1464, align 1
  %1465 = getelementptr inbounds i8, i8* %1457, i64 4
  %1466 = bitcast i8* %1465 to float*
  store float 0.000000e+00, float* %1466, align 1
  %1467 = getelementptr inbounds i8, i8* %1457, i64 8
  %1468 = bitcast i8* %1467 to float*
  store float 0.000000e+00, float* %1468, align 1
  %1469 = getelementptr inbounds i8, i8* %1457, i64 12
  %1470 = bitcast i8* %1469 to float*
  store float 0.000000e+00, float* %1470, align 1
  store %struct.Memory* %loadMem_43218e, %struct.Memory** %MEMORY
  %loadMem_432196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 1
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %1476 to i64*
  %1477 = load i64, i64* %PC.i809
  %1478 = add i64 %1477, ptrtoint (%G_0x299e73__rip__type* @G_0x299e73__rip_ to i64)
  %1479 = load i64, i64* %PC.i809
  %1480 = add i64 %1479, 7
  store i64 %1480, i64* %PC.i809
  %1481 = inttoptr i64 %1478 to i64*
  %1482 = load i64, i64* %1481
  store i64 %1482, i64* %RAX.i810, align 8
  store %struct.Memory* %loadMem_432196, %struct.Memory** %MEMORY
  %loadMem_43219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1484 = getelementptr inbounds %struct.GPR, %struct.GPR* %1483, i32 0, i32 33
  %1485 = getelementptr inbounds %struct.Reg, %struct.Reg* %1484, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %1485 to i64*
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 5
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RCX.i808 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %RAX.i807
  %1493 = load i64, i64* %PC.i806
  %1494 = add i64 %1493, 3
  store i64 %1494, i64* %PC.i806
  store i64 %1492, i64* %RCX.i808, align 8
  store %struct.Memory* %loadMem_43219d, %struct.Memory** %MEMORY
  %loadMem_4321a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 5
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RCX.i805 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RCX.i805
  %1502 = load i64, i64* %PC.i804
  %1503 = add i64 %1502, 3
  store i64 %1503, i64* %PC.i804
  %1504 = lshr i64 %1501, 63
  %1505 = trunc i64 %1504 to i8
  %1506 = trunc i64 %1501 to i8
  %1507 = and i8 %1506, 1
  %1508 = lshr i64 %1501, 1
  store i64 %1508, i64* %RCX.i805, align 8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1507, i8* %1509, align 1
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1511 = trunc i64 %1508 to i32
  %1512 = and i32 %1511, 255
  %1513 = call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %1510, align 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1517, align 1
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1519 = icmp eq i64 %1508, 0
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %1518, align 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1521, align 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1505, i8* %1522, align 1
  store %struct.Memory* %loadMem_4321a0, %struct.Memory** %MEMORY
  %loadMem_4321a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 1
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %EAX.i802 = bitcast %union.anon* %1528 to i32*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 7
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RDX.i803 = bitcast %union.anon* %1531 to i64*
  %1532 = load i32, i32* %EAX.i802
  %1533 = zext i32 %1532 to i64
  %1534 = load i64, i64* %PC.i801
  %1535 = add i64 %1534, 2
  store i64 %1535, i64* %PC.i801
  %1536 = and i64 %1533, 4294967295
  store i64 %1536, i64* %RDX.i803, align 8
  store %struct.Memory* %loadMem_4321a3, %struct.Memory** %MEMORY
  %loadMem_4321a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 7
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RDX.i800 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RDX.i800
  %1544 = load i64, i64* %PC.i799
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %PC.i799
  %1546 = and i64 1, %1543
  %1547 = trunc i64 %1546 to i32
  store i64 %1546, i64* %RDX.i800, align 8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1548, align 1
  %1549 = and i32 %1547, 255
  %1550 = call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1553, i8* %1554, align 1
  %1555 = icmp eq i32 %1547, 0
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1556, i8* %1557, align 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1558, align 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1559, align 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1560, align 1
  store %struct.Memory* %loadMem_4321a5, %struct.Memory** %MEMORY
  %loadMem_4321a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 7
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %EDX.i797 = bitcast %union.anon* %1566 to i32*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 9
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RSI.i798 = bitcast %union.anon* %1569 to i64*
  %1570 = load i32, i32* %EDX.i797
  %1571 = zext i32 %1570 to i64
  %1572 = load i64, i64* %PC.i796
  %1573 = add i64 %1572, 2
  store i64 %1573, i64* %PC.i796
  %1574 = and i64 %1571, 4294967295
  store i64 %1574, i64* %RSI.i798, align 8
  store %struct.Memory* %loadMem_4321a8, %struct.Memory** %MEMORY
  %loadMem_4321aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 5
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RCX.i794 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 9
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RSI.i795 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RSI.i795
  %1585 = load i64, i64* %RCX.i794
  %1586 = load i64, i64* %PC.i793
  %1587 = add i64 %1586, 3
  store i64 %1587, i64* %PC.i793
  %1588 = or i64 %1585, %1584
  store i64 %1588, i64* %RSI.i795, align 8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1589, align 1
  %1590 = trunc i64 %1588 to i32
  %1591 = and i32 %1590, 255
  %1592 = call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1595, i8* %1596, align 1
  %1597 = icmp eq i64 %1588, 0
  %1598 = zext i1 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1598, i8* %1599, align 1
  %1600 = lshr i64 %1588, 63
  %1601 = trunc i64 %1600 to i8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1601, i8* %1602, align 1
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1603, align 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1604, align 1
  store %struct.Memory* %loadMem_4321aa, %struct.Memory** %MEMORY
  %loadMem_4321ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 9
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RSI.i791 = bitcast %union.anon* %1610 to i64*
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1611, i64 0, i64 1
  %YMM1.i792 = bitcast %union.VectorReg* %1612 to %"class.std::bitset"*
  %1613 = bitcast %"class.std::bitset"* %YMM1.i792 to i8*
  %1614 = load i64, i64* %RSI.i791
  %1615 = load i64, i64* %PC.i790
  %1616 = add i64 %1615, 5
  store i64 %1616, i64* %PC.i790
  %1617 = bitcast i8* %1613 to <2 x i32>*
  %1618 = load <2 x i32>, <2 x i32>* %1617, align 1
  %1619 = getelementptr inbounds i8, i8* %1613, i64 8
  %1620 = bitcast i8* %1619 to <2 x i32>*
  %1621 = load <2 x i32>, <2 x i32>* %1620, align 1
  %1622 = sitofp i64 %1614 to float
  %1623 = bitcast i8* %1613 to float*
  store float %1622, float* %1623, align 1
  %1624 = extractelement <2 x i32> %1618, i32 1
  %1625 = getelementptr inbounds i8, i8* %1613, i64 4
  %1626 = bitcast i8* %1625 to i32*
  store i32 %1624, i32* %1626, align 1
  %1627 = extractelement <2 x i32> %1621, i32 0
  %1628 = bitcast i8* %1619 to i32*
  store i32 %1627, i32* %1628, align 1
  %1629 = extractelement <2 x i32> %1621, i32 1
  %1630 = getelementptr inbounds i8, i8* %1613, i64 12
  %1631 = bitcast i8* %1630 to i32*
  store i32 %1629, i32* %1631, align 1
  store %struct.Memory* %loadMem_4321ad, %struct.Memory** %MEMORY
  %loadMem_4321b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1635, i64 0, i64 1
  %YMM1.i788 = bitcast %union.VectorReg* %1636 to %"class.std::bitset"*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1637, i64 0, i64 1
  %XMM1.i789 = bitcast %union.VectorReg* %1638 to %union.vec128_t*
  %1639 = bitcast %"class.std::bitset"* %YMM1.i788 to i8*
  %1640 = bitcast %"class.std::bitset"* %YMM1.i788 to i8*
  %1641 = bitcast %union.vec128_t* %XMM1.i789 to i8*
  %1642 = load i64, i64* %PC.i787
  %1643 = add i64 %1642, 4
  store i64 %1643, i64* %PC.i787
  %1644 = bitcast i8* %1640 to <2 x float>*
  %1645 = load <2 x float>, <2 x float>* %1644, align 1
  %1646 = getelementptr inbounds i8, i8* %1640, i64 8
  %1647 = bitcast i8* %1646 to <2 x i32>*
  %1648 = load <2 x i32>, <2 x i32>* %1647, align 1
  %1649 = bitcast i8* %1641 to <2 x float>*
  %1650 = load <2 x float>, <2 x float>* %1649, align 1
  %1651 = extractelement <2 x float> %1645, i32 0
  %1652 = extractelement <2 x float> %1650, i32 0
  %1653 = fadd float %1651, %1652
  %1654 = bitcast i8* %1639 to float*
  store float %1653, float* %1654, align 1
  %1655 = bitcast <2 x float> %1645 to <2 x i32>
  %1656 = extractelement <2 x i32> %1655, i32 1
  %1657 = getelementptr inbounds i8, i8* %1639, i64 4
  %1658 = bitcast i8* %1657 to i32*
  store i32 %1656, i32* %1658, align 1
  %1659 = extractelement <2 x i32> %1648, i32 0
  %1660 = getelementptr inbounds i8, i8* %1639, i64 8
  %1661 = bitcast i8* %1660 to i32*
  store i32 %1659, i32* %1661, align 1
  %1662 = extractelement <2 x i32> %1648, i32 1
  %1663 = getelementptr inbounds i8, i8* %1639, i64 12
  %1664 = bitcast i8* %1663 to i32*
  store i32 %1662, i32* %1664, align 1
  store %struct.Memory* %loadMem_4321b2, %struct.Memory** %MEMORY
  %loadMem_4321b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 1
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RAX.i785 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1671, i64 0, i64 2
  %YMM2.i786 = bitcast %union.VectorReg* %1672 to %"class.std::bitset"*
  %1673 = bitcast %"class.std::bitset"* %YMM2.i786 to i8*
  %1674 = load i64, i64* %RAX.i785
  %1675 = load i64, i64* %PC.i784
  %1676 = add i64 %1675, 5
  store i64 %1676, i64* %PC.i784
  %1677 = bitcast i8* %1673 to <2 x i32>*
  %1678 = load <2 x i32>, <2 x i32>* %1677, align 1
  %1679 = getelementptr inbounds i8, i8* %1673, i64 8
  %1680 = bitcast i8* %1679 to <2 x i32>*
  %1681 = load <2 x i32>, <2 x i32>* %1680, align 1
  %1682 = sitofp i64 %1674 to float
  %1683 = bitcast i8* %1673 to float*
  store float %1682, float* %1683, align 1
  %1684 = extractelement <2 x i32> %1678, i32 1
  %1685 = getelementptr inbounds i8, i8* %1673, i64 4
  %1686 = bitcast i8* %1685 to i32*
  store i32 %1684, i32* %1686, align 1
  %1687 = extractelement <2 x i32> %1681, i32 0
  %1688 = bitcast i8* %1679 to i32*
  store i32 %1687, i32* %1688, align 1
  %1689 = extractelement <2 x i32> %1681, i32 1
  %1690 = getelementptr inbounds i8, i8* %1673, i64 12
  %1691 = bitcast i8* %1690 to i32*
  store i32 %1689, i32* %1691, align 1
  store %struct.Memory* %loadMem_4321b6, %struct.Memory** %MEMORY
  %loadMem_4321bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 1
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RAX.i783 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %RAX.i783
  %1699 = load i64, i64* %RAX.i783
  %1700 = load i64, i64* %PC.i782
  %1701 = add i64 %1700, 3
  store i64 %1701, i64* %PC.i782
  %1702 = and i64 %1699, %1698
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1703, align 1
  %1704 = trunc i64 %1702 to i32
  %1705 = and i32 %1704, 255
  %1706 = call i32 @llvm.ctpop.i32(i32 %1705)
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  %1709 = xor i8 %1708, 1
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1709, i8* %1710, align 1
  %1711 = icmp eq i64 %1702, 0
  %1712 = zext i1 %1711 to i8
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1712, i8* %1713, align 1
  %1714 = lshr i64 %1702, 63
  %1715 = trunc i64 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1715, i8* %1716, align 1
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1717, align 1
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1718, align 1
  store %struct.Memory* %loadMem_4321bb, %struct.Memory** %MEMORY
  %loadMem_4321be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i779 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 15
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1726 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1725, i64 0, i64 0
  %XMM0.i781 = bitcast %union.VectorReg* %1726 to %union.vec128_t*
  %1727 = load i64, i64* %RBP.i780
  %1728 = sub i64 %1727, 140
  %1729 = bitcast %union.vec128_t* %XMM0.i781 to i8*
  %1730 = load i64, i64* %PC.i779
  %1731 = add i64 %1730, 8
  store i64 %1731, i64* %PC.i779
  %1732 = bitcast i8* %1729 to <2 x float>*
  %1733 = load <2 x float>, <2 x float>* %1732, align 1
  %1734 = extractelement <2 x float> %1733, i32 0
  %1735 = inttoptr i64 %1728 to float*
  store float %1734, float* %1735
  store %struct.Memory* %loadMem_4321be, %struct.Memory** %MEMORY
  %loadMem_4321c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 33
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 15
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1743 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1742, i64 0, i64 2
  %XMM2.i778 = bitcast %union.VectorReg* %1743 to %union.vec128_t*
  %1744 = load i64, i64* %RBP.i777
  %1745 = sub i64 %1744, 144
  %1746 = bitcast %union.vec128_t* %XMM2.i778 to i8*
  %1747 = load i64, i64* %PC.i776
  %1748 = add i64 %1747, 8
  store i64 %1748, i64* %PC.i776
  %1749 = bitcast i8* %1746 to <2 x float>*
  %1750 = load <2 x float>, <2 x float>* %1749, align 1
  %1751 = extractelement <2 x float> %1750, i32 0
  %1752 = inttoptr i64 %1745 to float*
  store float %1751, float* %1752
  store %struct.Memory* %loadMem_4321c6, %struct.Memory** %MEMORY
  %loadMem_4321ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 15
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1760 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1759, i64 0, i64 1
  %XMM1.i775 = bitcast %union.VectorReg* %1760 to %union.vec128_t*
  %1761 = load i64, i64* %RBP.i774
  %1762 = sub i64 %1761, 148
  %1763 = bitcast %union.vec128_t* %XMM1.i775 to i8*
  %1764 = load i64, i64* %PC.i773
  %1765 = add i64 %1764, 8
  store i64 %1765, i64* %PC.i773
  %1766 = bitcast i8* %1763 to <2 x float>*
  %1767 = load <2 x float>, <2 x float>* %1766, align 1
  %1768 = extractelement <2 x float> %1767, i32 0
  %1769 = inttoptr i64 %1762 to float*
  store float %1768, float* %1769
  store %struct.Memory* %loadMem_4321ce, %struct.Memory** %MEMORY
  %loadMem_4321d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %PC.i772
  %1774 = add i64 %1773, 22
  %1775 = load i64, i64* %PC.i772
  %1776 = add i64 %1775, 6
  %1777 = load i64, i64* %PC.i772
  %1778 = add i64 %1777, 6
  store i64 %1778, i64* %PC.i772
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1780 = load i8, i8* %1779, align 1
  store i8 %1780, i8* %BRANCH_TAKEN, align 1
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1782 = icmp ne i8 %1780, 0
  %1783 = select i1 %1782, i64 %1774, i64 %1776
  store i64 %1783, i64* %1781, align 8
  store %struct.Memory* %loadMem_4321d6, %struct.Memory** %MEMORY
  %loadBr_4321d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4321d6 = icmp eq i8 %loadBr_4321d6, 1
  br i1 %cmpBr_4321d6, label %block_.L_4321ec, label %block_4321dc

block_4321dc:                                     ; preds = %block_.L_43218e
  %loadMem_4321dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1790, i64 0, i64 0
  %YMM0.i771 = bitcast %union.VectorReg* %1791 to %"class.std::bitset"*
  %1792 = bitcast %"class.std::bitset"* %YMM0.i771 to i8*
  %1793 = load i64, i64* %RBP.i770
  %1794 = sub i64 %1793, 144
  %1795 = load i64, i64* %PC.i769
  %1796 = add i64 %1795, 8
  store i64 %1796, i64* %PC.i769
  %1797 = inttoptr i64 %1794 to float*
  %1798 = load float, float* %1797
  %1799 = bitcast i8* %1792 to float*
  store float %1798, float* %1799, align 1
  %1800 = getelementptr inbounds i8, i8* %1792, i64 4
  %1801 = bitcast i8* %1800 to float*
  store float 0.000000e+00, float* %1801, align 1
  %1802 = getelementptr inbounds i8, i8* %1792, i64 8
  %1803 = bitcast i8* %1802 to float*
  store float 0.000000e+00, float* %1803, align 1
  %1804 = getelementptr inbounds i8, i8* %1792, i64 12
  %1805 = bitcast i8* %1804 to float*
  store float 0.000000e+00, float* %1805, align 1
  store %struct.Memory* %loadMem_4321dc, %struct.Memory** %MEMORY
  %loadMem_4321e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 15
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1813 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1812, i64 0, i64 0
  %XMM0.i768 = bitcast %union.VectorReg* %1813 to %union.vec128_t*
  %1814 = load i64, i64* %RBP.i767
  %1815 = sub i64 %1814, 148
  %1816 = bitcast %union.vec128_t* %XMM0.i768 to i8*
  %1817 = load i64, i64* %PC.i766
  %1818 = add i64 %1817, 8
  store i64 %1818, i64* %PC.i766
  %1819 = bitcast i8* %1816 to <2 x float>*
  %1820 = load <2 x float>, <2 x float>* %1819, align 1
  %1821 = extractelement <2 x float> %1820, i32 0
  %1822 = inttoptr i64 %1815 to float*
  store float %1821, float* %1822
  store %struct.Memory* %loadMem_4321e4, %struct.Memory** %MEMORY
  br label %block_.L_4321ec

block_.L_4321ec:                                  ; preds = %block_4321dc, %block_.L_43218e
  %loadMem_4321ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 15
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1830 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1829, i64 0, i64 0
  %YMM0.i765 = bitcast %union.VectorReg* %1830 to %"class.std::bitset"*
  %1831 = bitcast %"class.std::bitset"* %YMM0.i765 to i8*
  %1832 = load i64, i64* %RBP.i764
  %1833 = sub i64 %1832, 148
  %1834 = load i64, i64* %PC.i763
  %1835 = add i64 %1834, 8
  store i64 %1835, i64* %PC.i763
  %1836 = inttoptr i64 %1833 to float*
  %1837 = load float, float* %1836
  %1838 = bitcast i8* %1831 to float*
  store float %1837, float* %1838, align 1
  %1839 = getelementptr inbounds i8, i8* %1831, i64 4
  %1840 = bitcast i8* %1839 to float*
  store float 0.000000e+00, float* %1840, align 1
  %1841 = getelementptr inbounds i8, i8* %1831, i64 8
  %1842 = bitcast i8* %1841 to float*
  store float 0.000000e+00, float* %1842, align 1
  %1843 = getelementptr inbounds i8, i8* %1831, i64 12
  %1844 = bitcast i8* %1843 to float*
  store float 0.000000e+00, float* %1844, align 1
  store %struct.Memory* %loadMem_4321ec, %struct.Memory** %MEMORY
  %loadMem_4321f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 15
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1851, i64 0, i64 1
  %YMM1.i762 = bitcast %union.VectorReg* %1852 to %"class.std::bitset"*
  %1853 = bitcast %"class.std::bitset"* %YMM1.i762 to i8*
  %1854 = load i64, i64* %RBP.i761
  %1855 = sub i64 %1854, 140
  %1856 = load i64, i64* %PC.i760
  %1857 = add i64 %1856, 8
  store i64 %1857, i64* %PC.i760
  %1858 = inttoptr i64 %1855 to float*
  %1859 = load float, float* %1858
  %1860 = bitcast i8* %1853 to float*
  store float %1859, float* %1860, align 1
  %1861 = getelementptr inbounds i8, i8* %1853, i64 4
  %1862 = bitcast i8* %1861 to float*
  store float 0.000000e+00, float* %1862, align 1
  %1863 = getelementptr inbounds i8, i8* %1853, i64 8
  %1864 = bitcast i8* %1863 to float*
  store float 0.000000e+00, float* %1864, align 1
  %1865 = getelementptr inbounds i8, i8* %1853, i64 12
  %1866 = bitcast i8* %1865 to float*
  store float 0.000000e+00, float* %1866, align 1
  store %struct.Memory* %loadMem_4321f4, %struct.Memory** %MEMORY
  %loadMem_4321fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1871 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1870, i64 0, i64 1
  %YMM1.i758 = bitcast %union.VectorReg* %1871 to %"class.std::bitset"*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1872, i64 0, i64 0
  %XMM0.i759 = bitcast %union.VectorReg* %1873 to %union.vec128_t*
  %1874 = bitcast %"class.std::bitset"* %YMM1.i758 to i8*
  %1875 = bitcast %"class.std::bitset"* %YMM1.i758 to i8*
  %1876 = bitcast %union.vec128_t* %XMM0.i759 to i8*
  %1877 = load i64, i64* %PC.i757
  %1878 = add i64 %1877, 4
  store i64 %1878, i64* %PC.i757
  %1879 = bitcast i8* %1875 to <2 x float>*
  %1880 = load <2 x float>, <2 x float>* %1879, align 1
  %1881 = getelementptr inbounds i8, i8* %1875, i64 8
  %1882 = bitcast i8* %1881 to <2 x i32>*
  %1883 = load <2 x i32>, <2 x i32>* %1882, align 1
  %1884 = bitcast i8* %1876 to <2 x float>*
  %1885 = load <2 x float>, <2 x float>* %1884, align 1
  %1886 = extractelement <2 x float> %1880, i32 0
  %1887 = extractelement <2 x float> %1885, i32 0
  %1888 = fdiv float %1886, %1887
  %1889 = bitcast i8* %1874 to float*
  store float %1888, float* %1889, align 1
  %1890 = bitcast <2 x float> %1880 to <2 x i32>
  %1891 = extractelement <2 x i32> %1890, i32 1
  %1892 = getelementptr inbounds i8, i8* %1874, i64 4
  %1893 = bitcast i8* %1892 to i32*
  store i32 %1891, i32* %1893, align 1
  %1894 = extractelement <2 x i32> %1883, i32 0
  %1895 = getelementptr inbounds i8, i8* %1874, i64 8
  %1896 = bitcast i8* %1895 to i32*
  store i32 %1894, i32* %1896, align 1
  %1897 = extractelement <2 x i32> %1883, i32 1
  %1898 = getelementptr inbounds i8, i8* %1874, i64 12
  %1899 = bitcast i8* %1898 to i32*
  store i32 %1897, i32* %1899, align 1
  store %struct.Memory* %loadMem_4321fc, %struct.Memory** %MEMORY
  %loadMem_432200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 33
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1902 to i64*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1904 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1903, i64 0, i64 0
  %YMM0.i756 = bitcast %union.VectorReg* %1904 to %"class.std::bitset"*
  %1905 = bitcast %"class.std::bitset"* %YMM0.i756 to i8*
  %1906 = load i64, i64* %PC.i755
  %1907 = add i64 %1906, ptrtoint (%G_0x8b630__rip__type* @G_0x8b630__rip_ to i64)
  %1908 = load i64, i64* %PC.i755
  %1909 = add i64 %1908, 8
  store i64 %1909, i64* %PC.i755
  %1910 = inttoptr i64 %1907 to float*
  %1911 = load float, float* %1910
  %1912 = bitcast i8* %1905 to float*
  store float %1911, float* %1912, align 1
  %1913 = getelementptr inbounds i8, i8* %1905, i64 4
  %1914 = bitcast i8* %1913 to float*
  store float 0.000000e+00, float* %1914, align 1
  %1915 = getelementptr inbounds i8, i8* %1905, i64 8
  %1916 = bitcast i8* %1915 to float*
  store float 0.000000e+00, float* %1916, align 1
  %1917 = getelementptr inbounds i8, i8* %1905, i64 12
  %1918 = bitcast i8* %1917 to float*
  store float 0.000000e+00, float* %1918, align 1
  store %struct.Memory* %loadMem_432200, %struct.Memory** %MEMORY
  %loadMem_432208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1923 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1922, i64 0, i64 2
  %YMM2.i753 = bitcast %union.VectorReg* %1923 to %"class.std::bitset"*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1925 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1924, i64 0, i64 1
  %XMM1.i754 = bitcast %union.VectorReg* %1925 to %union.vec128_t*
  %1926 = bitcast %"class.std::bitset"* %YMM2.i753 to i8*
  %1927 = bitcast %union.vec128_t* %XMM1.i754 to i8*
  %1928 = load i64, i64* %PC.i752
  %1929 = add i64 %1928, 3
  store i64 %1929, i64* %PC.i752
  %1930 = bitcast i8* %1927 to <2 x i32>*
  %1931 = load <2 x i32>, <2 x i32>* %1930, align 1
  %1932 = getelementptr inbounds i8, i8* %1927, i64 8
  %1933 = bitcast i8* %1932 to <2 x i32>*
  %1934 = load <2 x i32>, <2 x i32>* %1933, align 1
  %1935 = extractelement <2 x i32> %1931, i32 0
  %1936 = bitcast i8* %1926 to i32*
  store i32 %1935, i32* %1936, align 1
  %1937 = extractelement <2 x i32> %1931, i32 1
  %1938 = getelementptr inbounds i8, i8* %1926, i64 4
  %1939 = bitcast i8* %1938 to i32*
  store i32 %1937, i32* %1939, align 1
  %1940 = extractelement <2 x i32> %1934, i32 0
  %1941 = getelementptr inbounds i8, i8* %1926, i64 8
  %1942 = bitcast i8* %1941 to i32*
  store i32 %1940, i32* %1942, align 1
  %1943 = extractelement <2 x i32> %1934, i32 1
  %1944 = getelementptr inbounds i8, i8* %1926, i64 12
  %1945 = bitcast i8* %1944 to i32*
  store i32 %1943, i32* %1945, align 1
  store %struct.Memory* %loadMem_432208, %struct.Memory** %MEMORY
  %loadMem_43220b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1949, i64 0, i64 2
  %YMM2.i750 = bitcast %union.VectorReg* %1950 to %"class.std::bitset"*
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1952 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1951, i64 0, i64 0
  %XMM0.i751 = bitcast %union.VectorReg* %1952 to %union.vec128_t*
  %1953 = bitcast %"class.std::bitset"* %YMM2.i750 to i8*
  %1954 = bitcast %"class.std::bitset"* %YMM2.i750 to i8*
  %1955 = bitcast %union.vec128_t* %XMM0.i751 to i8*
  %1956 = load i64, i64* %PC.i749
  %1957 = add i64 %1956, 4
  store i64 %1957, i64* %PC.i749
  %1958 = bitcast i8* %1954 to <2 x float>*
  %1959 = load <2 x float>, <2 x float>* %1958, align 1
  %1960 = getelementptr inbounds i8, i8* %1954, i64 8
  %1961 = bitcast i8* %1960 to <2 x i32>*
  %1962 = load <2 x i32>, <2 x i32>* %1961, align 1
  %1963 = bitcast i8* %1955 to <2 x float>*
  %1964 = load <2 x float>, <2 x float>* %1963, align 1
  %1965 = extractelement <2 x float> %1959, i32 0
  %1966 = extractelement <2 x float> %1964, i32 0
  %1967 = fsub float %1965, %1966
  %1968 = bitcast i8* %1953 to float*
  store float %1967, float* %1968, align 1
  %1969 = bitcast <2 x float> %1959 to <2 x i32>
  %1970 = extractelement <2 x i32> %1969, i32 1
  %1971 = getelementptr inbounds i8, i8* %1953, i64 4
  %1972 = bitcast i8* %1971 to i32*
  store i32 %1970, i32* %1972, align 1
  %1973 = extractelement <2 x i32> %1962, i32 0
  %1974 = getelementptr inbounds i8, i8* %1953, i64 8
  %1975 = bitcast i8* %1974 to i32*
  store i32 %1973, i32* %1975, align 1
  %1976 = extractelement <2 x i32> %1962, i32 1
  %1977 = getelementptr inbounds i8, i8* %1953, i64 12
  %1978 = bitcast i8* %1977 to i32*
  store i32 %1976, i32* %1978, align 1
  store %struct.Memory* %loadMem_43220b, %struct.Memory** %MEMORY
  %loadMem_43220f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1986 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1985, i64 0, i64 2
  %XMM2.i748 = bitcast %union.VectorReg* %1986 to %union.vec128_t*
  %1987 = bitcast %union.vec128_t* %XMM2.i748 to i8*
  %1988 = load i64, i64* %PC.i746
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %PC.i746
  %1990 = bitcast i8* %1987 to <2 x float>*
  %1991 = load <2 x float>, <2 x float>* %1990, align 1
  %1992 = extractelement <2 x float> %1991, i32 0
  %1993 = call float @llvm.trunc.f32(float %1992)
  %1994 = fptosi float %1993 to i64
  store i64 %1994, i64* %RAX.i747, align 8
  store %struct.Memory* %loadMem_43220f, %struct.Memory** %MEMORY
  %loadMem_432214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 5
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RCX.i745 = bitcast %union.anon* %2000 to i64*
  %2001 = load i64, i64* %PC.i744
  %2002 = add i64 %2001, 10
  store i64 %2002, i64* %PC.i744
  store i64 -9223372036854775808, i64* %RCX.i745, align 8
  store %struct.Memory* %loadMem_432214, %struct.Memory** %MEMORY
  %loadMem_43221e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 1
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 5
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RCX.i743 = bitcast %union.anon* %2011 to i64*
  %2012 = load i64, i64* %RAX.i742
  %2013 = load i64, i64* %RCX.i743
  %2014 = load i64, i64* %PC.i741
  %2015 = add i64 %2014, 3
  store i64 %2015, i64* %PC.i741
  %2016 = xor i64 %2013, %2012
  store i64 %2016, i64* %RAX.i742, align 8
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2017, align 1
  %2018 = trunc i64 %2016 to i32
  %2019 = and i32 %2018, 255
  %2020 = call i32 @llvm.ctpop.i32(i32 %2019)
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  %2023 = xor i8 %2022, 1
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2023, i8* %2024, align 1
  %2025 = icmp eq i64 %2016, 0
  %2026 = zext i1 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2026, i8* %2027, align 1
  %2028 = lshr i64 %2016, 63
  %2029 = trunc i64 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2029, i8* %2030, align 1
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2031, align 1
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2032, align 1
  store %struct.Memory* %loadMem_43221e, %struct.Memory** %MEMORY
  %loadMem_432221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 5
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %RCX.i739 = bitcast %union.anon* %2038 to i64*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2039, i64 0, i64 1
  %XMM1.i740 = bitcast %union.VectorReg* %2040 to %union.vec128_t*
  %2041 = bitcast %union.vec128_t* %XMM1.i740 to i8*
  %2042 = load i64, i64* %PC.i738
  %2043 = add i64 %2042, 5
  store i64 %2043, i64* %PC.i738
  %2044 = bitcast i8* %2041 to <2 x float>*
  %2045 = load <2 x float>, <2 x float>* %2044, align 1
  %2046 = extractelement <2 x float> %2045, i32 0
  %2047 = call float @llvm.trunc.f32(float %2046)
  %2048 = fptosi float %2047 to i64
  store i64 %2048, i64* %RCX.i739, align 8
  store %struct.Memory* %loadMem_432221, %struct.Memory** %MEMORY
  %loadMem_432226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2053 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2052, i64 0, i64 0
  %XMM0.i734 = bitcast %union.VectorReg* %2053 to %union.vec128_t*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2055 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2054, i64 0, i64 1
  %XMM1.i735 = bitcast %union.VectorReg* %2055 to %union.vec128_t*
  %2056 = bitcast %union.vec128_t* %XMM1.i735 to i8*
  %2057 = bitcast %union.vec128_t* %XMM0.i734 to i8*
  %2058 = load i64, i64* %PC.i733
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC.i733
  %2060 = bitcast i8* %2056 to <2 x float>*
  %2061 = load <2 x float>, <2 x float>* %2060, align 1
  %2062 = extractelement <2 x float> %2061, i32 0
  %2063 = bitcast i8* %2057 to <2 x float>*
  %2064 = load <2 x float>, <2 x float>* %2063, align 1
  %2065 = extractelement <2 x float> %2064, i32 0
  %2066 = fcmp uno float %2062, %2065
  br i1 %2066, label %2067, label %2079

; <label>:2067:                                   ; preds = %block_.L_4321ec
  %2068 = fadd float %2062, %2065
  %2069 = bitcast float %2068 to i32
  %2070 = and i32 %2069, 2143289344
  %2071 = icmp eq i32 %2070, 2139095040
  %2072 = and i32 %2069, 4194303
  %2073 = icmp ne i32 %2072, 0
  %2074 = and i1 %2071, %2073
  br i1 %2074, label %2075, label %2085

; <label>:2075:                                   ; preds = %2067
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2077 = load i64, i64* %2076, align 8
  %2078 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2077, %struct.Memory* %loadMem_432226)
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:2079:                                   ; preds = %block_.L_4321ec
  %2080 = fcmp ogt float %2062, %2065
  br i1 %2080, label %2085, label %2081

; <label>:2081:                                   ; preds = %2079
  %2082 = fcmp olt float %2062, %2065
  br i1 %2082, label %2085, label %2083

; <label>:2083:                                   ; preds = %2081
  %2084 = fcmp oeq float %2062, %2065
  br i1 %2084, label %2085, label %2092

; <label>:2085:                                   ; preds = %2083, %2081, %2079, %2067
  %2086 = phi i8 [ 0, %2079 ], [ 0, %2081 ], [ 1, %2083 ], [ 1, %2067 ]
  %2087 = phi i8 [ 0, %2079 ], [ 0, %2081 ], [ 0, %2083 ], [ 1, %2067 ]
  %2088 = phi i8 [ 0, %2079 ], [ 1, %2081 ], [ 0, %2083 ], [ 1, %2067 ]
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2086, i8* %2089, align 1
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2087, i8* %2090, align 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2088, i8* %2091, align 1
  br label %2092

; <label>:2092:                                   ; preds = %2085, %2083
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2093, align 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2094, align 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2095, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %2075, %2092
  %2096 = phi %struct.Memory* [ %2078, %2075 ], [ %loadMem_432226, %2092 ]
  store %struct.Memory* %2096, %struct.Memory** %MEMORY
  %loadMem_432229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 1
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 5
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %RCX.i732
  %2107 = load i64, i64* %PC.i730
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i730
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2110 = load i8, i8* %2109, align 1
  %2111 = icmp ne i8 %2110, 0
  %2112 = load i64, i64* %RAX.i731, align 8
  %2113 = select i1 %2111, i64 %2106, i64 %2112
  store i64 %2113, i64* %RAX.i731, align 8
  store %struct.Memory* %loadMem_432229, %struct.Memory** %MEMORY
  %loadMem_43222d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2115 = getelementptr inbounds %struct.GPR, %struct.GPR* %2114, i32 0, i32 33
  %2116 = getelementptr inbounds %struct.Reg, %struct.Reg* %2115, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2116 to i64*
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 1
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 15
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %2122 to i64*
  %2123 = load i64, i64* %RBP.i729
  %2124 = sub i64 %2123, 8
  %2125 = load i64, i64* %RAX.i728
  %2126 = load i64, i64* %PC.i727
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %PC.i727
  %2128 = inttoptr i64 %2124 to i64*
  store i64 %2125, i64* %2128
  store %struct.Memory* %loadMem_43222d, %struct.Memory** %MEMORY
  %loadMem_432231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 11
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RDI.i725 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i726
  %2139 = sub i64 %2138, 24
  %2140 = load i64, i64* %PC.i724
  %2141 = add i64 %2140, 4
  store i64 %2141, i64* %PC.i724
  %2142 = inttoptr i64 %2139 to i64*
  %2143 = load i64, i64* %2142
  store i64 %2143, i64* %RDI.i725, align 8
  store %struct.Memory* %loadMem_432231, %struct.Memory** %MEMORY
  %loadMem_432235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 9
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RSI.i722 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 15
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %RBP.i723
  %2154 = sub i64 %2153, 104
  %2155 = load i64, i64* %PC.i721
  %2156 = add i64 %2155, 4
  store i64 %2156, i64* %PC.i721
  %2157 = inttoptr i64 %2154 to i64*
  %2158 = load i64, i64* %2157
  store i64 %2158, i64* %RSI.i722, align 8
  store %struct.Memory* %loadMem_432235, %struct.Memory** %MEMORY
  %loadMem1_432239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %PC.i720
  %2163 = add i64 %2162, -1609
  %2164 = load i64, i64* %PC.i720
  %2165 = add i64 %2164, 5
  %2166 = load i64, i64* %PC.i720
  %2167 = add i64 %2166, 5
  store i64 %2167, i64* %PC.i720
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2169 = load i64, i64* %2168, align 8
  %2170 = add i64 %2169, -8
  %2171 = inttoptr i64 %2170 to i64*
  store i64 %2165, i64* %2171
  store i64 %2170, i64* %2168, align 8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2163, i64* %2172, align 8
  store %struct.Memory* %loadMem1_432239, %struct.Memory** %MEMORY
  %loadMem2_432239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432239 = load i64, i64* %3
  %call2_432239 = call %struct.Memory* @sub_431bf0.get_LeakyBucketRate(%struct.State* %0, i64 %loadPC_432239, %struct.Memory* %loadMem2_432239)
  store %struct.Memory* %call2_432239, %struct.Memory** %MEMORY
  %loadMem_43223e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 7
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RDX.i719 = bitcast %union.anon* %2178 to i64*
  %2179 = load i64, i64* %PC.i718
  %2180 = add i64 %2179, 5
  store i64 %2180, i64* %PC.i718
  store i64 1, i64* %RDX.i719, align 8
  store %struct.Memory* %loadMem_43223e, %struct.Memory** %MEMORY
  %loadMem_432243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 1
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %EAX.i716 = bitcast %union.anon* %2186 to i32*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 7
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %EDX.i717 = bitcast %union.anon* %2189 to i32*
  %2190 = load i32, i32* %EDX.i717
  %2191 = zext i32 %2190 to i64
  %2192 = load i32, i32* %EAX.i716
  %2193 = zext i32 %2192 to i64
  %2194 = load i64, i64* %PC.i715
  %2195 = add i64 %2194, 2
  store i64 %2195, i64* %PC.i715
  %2196 = sub i32 %2190, %2192
  %2197 = icmp ult i32 %2190, %2192
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2198, i8* %2199, align 1
  %2200 = and i32 %2196, 255
  %2201 = call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2204, i8* %2205, align 1
  %2206 = xor i64 %2193, %2191
  %2207 = trunc i64 %2206 to i32
  %2208 = xor i32 %2207, %2196
  %2209 = lshr i32 %2208, 4
  %2210 = trunc i32 %2209 to i8
  %2211 = and i8 %2210, 1
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2211, i8* %2212, align 1
  %2213 = icmp eq i32 %2196, 0
  %2214 = zext i1 %2213 to i8
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2214, i8* %2215, align 1
  %2216 = lshr i32 %2196, 31
  %2217 = trunc i32 %2216 to i8
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2217, i8* %2218, align 1
  %2219 = lshr i32 %2190, 31
  %2220 = lshr i32 %2192, 31
  %2221 = xor i32 %2220, %2219
  %2222 = xor i32 %2216, %2219
  %2223 = add i32 %2222, %2221
  %2224 = icmp eq i32 %2223, 2
  %2225 = zext i1 %2224 to i8
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2225, i8* %2226, align 1
  store %struct.Memory* %loadMem_432243, %struct.Memory** %MEMORY
  %loadMem_432245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2229 to i64*
  %2230 = load i64, i64* %PC.i714
  %2231 = add i64 %2230, 451
  %2232 = load i64, i64* %PC.i714
  %2233 = add i64 %2232, 6
  %2234 = load i64, i64* %PC.i714
  %2235 = add i64 %2234, 6
  store i64 %2235, i64* %PC.i714
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2237 = load i8, i8* %2236, align 1
  store i8 %2237, i8* %BRANCH_TAKEN, align 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2239 = icmp ne i8 %2237, 0
  %2240 = select i1 %2239, i64 %2231, i64 %2233
  store i64 %2240, i64* %2238, align 8
  store %struct.Memory* %loadMem_432245, %struct.Memory** %MEMORY
  %loadBr_432245 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432245 = icmp eq i8 %loadBr_432245, 1
  br i1 %cmpBr_432245, label %block_.L_432408, label %block_43224b

block_43224b:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %loadMem_43224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 15
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %2246 to i64*
  %2247 = load i64, i64* %RBP.i713
  %2248 = sub i64 %2247, 48
  %2249 = load i64, i64* %PC.i712
  %2250 = add i64 %2249, 8
  store i64 %2250, i64* %PC.i712
  %2251 = inttoptr i64 %2248 to i64*
  store i64 0, i64* %2251
  store %struct.Memory* %loadMem_43224b, %struct.Memory** %MEMORY
  br label %block_.L_432253

block_.L_432253:                                  ; preds = %block_.L_4323f2, %block_43224b
  %loadMem_432253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RAX.i710 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 15
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %2260 to i64*
  %2261 = load i64, i64* %RBP.i711
  %2262 = sub i64 %2261, 48
  %2263 = load i64, i64* %PC.i709
  %2264 = add i64 %2263, 4
  store i64 %2264, i64* %PC.i709
  %2265 = inttoptr i64 %2262 to i64*
  %2266 = load i64, i64* %2265
  store i64 %2266, i64* %RAX.i710, align 8
  store %struct.Memory* %loadMem_432253, %struct.Memory** %MEMORY
  %loadMem_432257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %2272 to i64*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 15
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %RAX.i707
  %2277 = load i64, i64* %RBP.i708
  %2278 = sub i64 %2277, 24
  %2279 = load i64, i64* %PC.i706
  %2280 = add i64 %2279, 4
  store i64 %2280, i64* %PC.i706
  %2281 = inttoptr i64 %2278 to i64*
  %2282 = load i64, i64* %2281
  %2283 = sub i64 %2276, %2282
  %2284 = icmp ugt i64 %2282, %2276
  %2285 = zext i1 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2285, i8* %2286, align 1
  %2287 = trunc i64 %2283 to i32
  %2288 = and i32 %2287, 255
  %2289 = call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2292, i8* %2293, align 1
  %2294 = xor i64 %2282, %2276
  %2295 = xor i64 %2294, %2283
  %2296 = lshr i64 %2295, 4
  %2297 = trunc i64 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2298, i8* %2299, align 1
  %2300 = icmp eq i64 %2283, 0
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2301, i8* %2302, align 1
  %2303 = lshr i64 %2283, 63
  %2304 = trunc i64 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2304, i8* %2305, align 1
  %2306 = lshr i64 %2276, 63
  %2307 = lshr i64 %2282, 63
  %2308 = xor i64 %2307, %2306
  %2309 = xor i64 %2303, %2306
  %2310 = add i64 %2309, %2308
  %2311 = icmp eq i64 %2310, 2
  %2312 = zext i1 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2312, i8* %2313, align 1
  store %struct.Memory* %loadMem_432257, %struct.Memory** %MEMORY
  %loadMem_43225b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %PC.i705
  %2318 = add i64 %2317, 424
  %2319 = load i64, i64* %PC.i705
  %2320 = add i64 %2319, 6
  %2321 = load i64, i64* %PC.i705
  %2322 = add i64 %2321, 6
  store i64 %2322, i64* %PC.i705
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2324 = load i8, i8* %2323, align 1
  %2325 = icmp eq i8 %2324, 0
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %BRANCH_TAKEN, align 1
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2328 = select i1 %2325, i64 %2318, i64 %2320
  store i64 %2328, i64* %2327, align 8
  store %struct.Memory* %loadMem_43225b, %struct.Memory** %MEMORY
  %loadBr_43225b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43225b = icmp eq i8 %loadBr_43225b, 1
  br i1 %cmpBr_43225b, label %block_.L_432403, label %block_432261

block_432261:                                     ; preds = %block_.L_432253
  %loadMem_432261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 15
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %RBP.i704
  %2336 = sub i64 %2335, 48
  %2337 = load i64, i64* %PC.i703
  %2338 = add i64 %2337, 5
  store i64 %2338, i64* %PC.i703
  %2339 = inttoptr i64 %2336 to i64*
  %2340 = load i64, i64* %2339
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2341, align 1
  %2342 = trunc i64 %2340 to i32
  %2343 = and i32 %2342, 255
  %2344 = call i32 @llvm.ctpop.i32(i32 %2343)
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2347, i8* %2348, align 1
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2349, align 1
  %2350 = icmp eq i64 %2340, 0
  %2351 = zext i1 %2350 to i8
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2351, i8* %2352, align 1
  %2353 = lshr i64 %2340, 63
  %2354 = trunc i64 %2353 to i8
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2354, i8* %2355, align 1
  %2356 = lshr i64 %2340, 63
  %2357 = xor i64 %2353, %2356
  %2358 = add i64 %2357, %2356
  %2359 = icmp eq i64 %2358, 2
  %2360 = zext i1 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2360, i8* %2361, align 1
  store %struct.Memory* %loadMem_432261, %struct.Memory** %MEMORY
  %loadMem_432266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 33
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %PC.i702
  %2366 = add i64 %2365, 189
  %2367 = load i64, i64* %PC.i702
  %2368 = add i64 %2367, 6
  %2369 = load i64, i64* %PC.i702
  %2370 = add i64 %2369, 6
  store i64 %2370, i64* %PC.i702
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2372 = load i8, i8* %2371, align 1
  %2373 = icmp eq i8 %2372, 0
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %BRANCH_TAKEN, align 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2376 = select i1 %2373, i64 %2366, i64 %2368
  store i64 %2376, i64* %2375, align 8
  store %struct.Memory* %loadMem_432266, %struct.Memory** %MEMORY
  %loadBr_432266 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432266 = icmp eq i8 %loadBr_432266, 1
  br i1 %cmpBr_432266, label %block_.L_432323, label %block_43226c

block_43226c:                                     ; preds = %block_432261
  %loadMem_43226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 33
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 1
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RAX.i700 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i701 = bitcast %union.anon* %2385 to i64*
  %2386 = load i64, i64* %RBP.i701
  %2387 = sub i64 %2386, 8
  %2388 = load i64, i64* %PC.i699
  %2389 = add i64 %2388, 4
  store i64 %2389, i64* %PC.i699
  %2390 = inttoptr i64 %2387 to i64*
  %2391 = load i64, i64* %2390
  store i64 %2391, i64* %RAX.i700, align 8
  store %struct.Memory* %loadMem_43226c, %struct.Memory** %MEMORY
  %loadMem_432270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 1
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %RAX.i697 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 5
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RCX.i698 = bitcast %union.anon* %2400 to i64*
  %2401 = load i64, i64* %RAX.i697
  %2402 = load i64, i64* %PC.i696
  %2403 = add i64 %2402, 3
  store i64 %2403, i64* %PC.i696
  store i64 %2401, i64* %RCX.i698, align 8
  store %struct.Memory* %loadMem_432270, %struct.Memory** %MEMORY
  %loadMem_432273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 5
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RCX.i695
  %2411 = load i64, i64* %PC.i694
  %2412 = add i64 %2411, 3
  store i64 %2412, i64* %PC.i694
  %2413 = lshr i64 %2410, 63
  %2414 = trunc i64 %2413 to i8
  %2415 = trunc i64 %2410 to i8
  %2416 = and i8 %2415, 1
  %2417 = lshr i64 %2410, 1
  store i64 %2417, i64* %RCX.i695, align 8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2416, i8* %2418, align 1
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2420 = trunc i64 %2417 to i32
  %2421 = and i32 %2420, 255
  %2422 = call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %2419, align 1
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2426, align 1
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2428 = icmp eq i64 %2417, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %2427, align 1
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2430, align 1
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2414, i8* %2431, align 1
  store %struct.Memory* %loadMem_432273, %struct.Memory** %MEMORY
  %loadMem_432276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %EAX.i692 = bitcast %union.anon* %2437 to i32*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 7
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RDX.i693 = bitcast %union.anon* %2440 to i64*
  %2441 = load i32, i32* %EAX.i692
  %2442 = zext i32 %2441 to i64
  %2443 = load i64, i64* %PC.i691
  %2444 = add i64 %2443, 2
  store i64 %2444, i64* %PC.i691
  %2445 = and i64 %2442, 4294967295
  store i64 %2445, i64* %RDX.i693, align 8
  store %struct.Memory* %loadMem_432276, %struct.Memory** %MEMORY
  %loadMem_432278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 7
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RDX.i690 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %RDX.i690
  %2453 = load i64, i64* %PC.i689
  %2454 = add i64 %2453, 3
  store i64 %2454, i64* %PC.i689
  %2455 = and i64 1, %2452
  %2456 = trunc i64 %2455 to i32
  store i64 %2455, i64* %RDX.i690, align 8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2457, align 1
  %2458 = and i32 %2456, 255
  %2459 = call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2462, i8* %2463, align 1
  %2464 = icmp eq i32 %2456, 0
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2465, i8* %2466, align 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2467, align 1
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2468, align 1
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2469, align 1
  store %struct.Memory* %loadMem_432278, %struct.Memory** %MEMORY
  %loadMem_43227b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 7
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %EDX.i687 = bitcast %union.anon* %2475 to i32*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 9
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %RSI.i688 = bitcast %union.anon* %2478 to i64*
  %2479 = load i32, i32* %EDX.i687
  %2480 = zext i32 %2479 to i64
  %2481 = load i64, i64* %PC.i686
  %2482 = add i64 %2481, 2
  store i64 %2482, i64* %PC.i686
  %2483 = and i64 %2480, 4294967295
  store i64 %2483, i64* %RSI.i688, align 8
  store %struct.Memory* %loadMem_43227b, %struct.Memory** %MEMORY
  %loadMem_43227d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 5
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 9
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RSI.i685 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RSI.i685
  %2494 = load i64, i64* %RCX.i684
  %2495 = load i64, i64* %PC.i683
  %2496 = add i64 %2495, 3
  store i64 %2496, i64* %PC.i683
  %2497 = or i64 %2494, %2493
  store i64 %2497, i64* %RSI.i685, align 8
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2498, align 1
  %2499 = trunc i64 %2497 to i32
  %2500 = and i32 %2499, 255
  %2501 = call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2504, i8* %2505, align 1
  %2506 = icmp eq i64 %2497, 0
  %2507 = zext i1 %2506 to i8
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2507, i8* %2508, align 1
  %2509 = lshr i64 %2497, 63
  %2510 = trunc i64 %2509 to i8
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2510, i8* %2511, align 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2512, align 1
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2513, align 1
  store %struct.Memory* %loadMem_43227d, %struct.Memory** %MEMORY
  %loadMem_432280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i680 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 9
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RSI.i681 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2520, i64 0, i64 0
  %YMM0.i682 = bitcast %union.VectorReg* %2521 to %"class.std::bitset"*
  %2522 = bitcast %"class.std::bitset"* %YMM0.i682 to i8*
  %2523 = load i64, i64* %RSI.i681
  %2524 = load i64, i64* %PC.i680
  %2525 = add i64 %2524, 5
  store i64 %2525, i64* %PC.i680
  %2526 = bitcast i8* %2522 to <2 x i32>*
  %2527 = load <2 x i32>, <2 x i32>* %2526, align 1
  %2528 = getelementptr inbounds i8, i8* %2522, i64 8
  %2529 = bitcast i8* %2528 to <2 x i32>*
  %2530 = load <2 x i32>, <2 x i32>* %2529, align 1
  %2531 = sitofp i64 %2523 to float
  %2532 = bitcast i8* %2522 to float*
  store float %2531, float* %2532, align 1
  %2533 = extractelement <2 x i32> %2527, i32 1
  %2534 = getelementptr inbounds i8, i8* %2522, i64 4
  %2535 = bitcast i8* %2534 to i32*
  store i32 %2533, i32* %2535, align 1
  %2536 = extractelement <2 x i32> %2530, i32 0
  %2537 = bitcast i8* %2528 to i32*
  store i32 %2536, i32* %2537, align 1
  %2538 = extractelement <2 x i32> %2530, i32 1
  %2539 = getelementptr inbounds i8, i8* %2522, i64 12
  %2540 = bitcast i8* %2539 to i32*
  store i32 %2538, i32* %2540, align 1
  store %struct.Memory* %loadMem_432280, %struct.Memory** %MEMORY
  %loadMem_432285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2544, i64 0, i64 0
  %YMM0.i678 = bitcast %union.VectorReg* %2545 to %"class.std::bitset"*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2547 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2546, i64 0, i64 0
  %XMM0.i679 = bitcast %union.VectorReg* %2547 to %union.vec128_t*
  %2548 = bitcast %"class.std::bitset"* %YMM0.i678 to i8*
  %2549 = bitcast %"class.std::bitset"* %YMM0.i678 to i8*
  %2550 = bitcast %union.vec128_t* %XMM0.i679 to i8*
  %2551 = load i64, i64* %PC.i677
  %2552 = add i64 %2551, 4
  store i64 %2552, i64* %PC.i677
  %2553 = bitcast i8* %2549 to <2 x float>*
  %2554 = load <2 x float>, <2 x float>* %2553, align 1
  %2555 = getelementptr inbounds i8, i8* %2549, i64 8
  %2556 = bitcast i8* %2555 to <2 x i32>*
  %2557 = load <2 x i32>, <2 x i32>* %2556, align 1
  %2558 = bitcast i8* %2550 to <2 x float>*
  %2559 = load <2 x float>, <2 x float>* %2558, align 1
  %2560 = extractelement <2 x float> %2554, i32 0
  %2561 = extractelement <2 x float> %2559, i32 0
  %2562 = fadd float %2560, %2561
  %2563 = bitcast i8* %2548 to float*
  store float %2562, float* %2563, align 1
  %2564 = bitcast <2 x float> %2554 to <2 x i32>
  %2565 = extractelement <2 x i32> %2564, i32 1
  %2566 = getelementptr inbounds i8, i8* %2548, i64 4
  %2567 = bitcast i8* %2566 to i32*
  store i32 %2565, i32* %2567, align 1
  %2568 = extractelement <2 x i32> %2557, i32 0
  %2569 = getelementptr inbounds i8, i8* %2548, i64 8
  %2570 = bitcast i8* %2569 to i32*
  store i32 %2568, i32* %2570, align 1
  %2571 = extractelement <2 x i32> %2557, i32 1
  %2572 = getelementptr inbounds i8, i8* %2548, i64 12
  %2573 = bitcast i8* %2572 to i32*
  store i32 %2571, i32* %2573, align 1
  store %struct.Memory* %loadMem_432285, %struct.Memory** %MEMORY
  %loadMem_432289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 1
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2580, i64 0, i64 1
  %YMM1.i676 = bitcast %union.VectorReg* %2581 to %"class.std::bitset"*
  %2582 = bitcast %"class.std::bitset"* %YMM1.i676 to i8*
  %2583 = load i64, i64* %RAX.i675
  %2584 = load i64, i64* %PC.i674
  %2585 = add i64 %2584, 5
  store i64 %2585, i64* %PC.i674
  %2586 = bitcast i8* %2582 to <2 x i32>*
  %2587 = load <2 x i32>, <2 x i32>* %2586, align 1
  %2588 = getelementptr inbounds i8, i8* %2582, i64 8
  %2589 = bitcast i8* %2588 to <2 x i32>*
  %2590 = load <2 x i32>, <2 x i32>* %2589, align 1
  %2591 = sitofp i64 %2583 to float
  %2592 = bitcast i8* %2582 to float*
  store float %2591, float* %2592, align 1
  %2593 = extractelement <2 x i32> %2587, i32 1
  %2594 = getelementptr inbounds i8, i8* %2582, i64 4
  %2595 = bitcast i8* %2594 to i32*
  store i32 %2593, i32* %2595, align 1
  %2596 = extractelement <2 x i32> %2590, i32 0
  %2597 = bitcast i8* %2588 to i32*
  store i32 %2596, i32* %2597, align 1
  %2598 = extractelement <2 x i32> %2590, i32 1
  %2599 = getelementptr inbounds i8, i8* %2582, i64 12
  %2600 = bitcast i8* %2599 to i32*
  store i32 %2598, i32* %2600, align 1
  store %struct.Memory* %loadMem_432289, %struct.Memory** %MEMORY
  %loadMem_43228e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 1
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %RAX.i673
  %2608 = load i64, i64* %RAX.i673
  %2609 = load i64, i64* %PC.i672
  %2610 = add i64 %2609, 3
  store i64 %2610, i64* %PC.i672
  %2611 = and i64 %2608, %2607
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2612, align 1
  %2613 = trunc i64 %2611 to i32
  %2614 = and i32 %2613, 255
  %2615 = call i32 @llvm.ctpop.i32(i32 %2614)
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2618, i8* %2619, align 1
  %2620 = icmp eq i64 %2611, 0
  %2621 = zext i1 %2620 to i8
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2621, i8* %2622, align 1
  %2623 = lshr i64 %2611, 63
  %2624 = trunc i64 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2624, i8* %2625, align 1
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2626, align 1
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2627, align 1
  store %struct.Memory* %loadMem_43228e, %struct.Memory** %MEMORY
  %loadMem_432291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 15
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2634, i64 0, i64 1
  %XMM1.i671 = bitcast %union.VectorReg* %2635 to %union.vec128_t*
  %2636 = load i64, i64* %RBP.i670
  %2637 = sub i64 %2636, 152
  %2638 = bitcast %union.vec128_t* %XMM1.i671 to i8*
  %2639 = load i64, i64* %PC.i669
  %2640 = add i64 %2639, 8
  store i64 %2640, i64* %PC.i669
  %2641 = bitcast i8* %2638 to <2 x float>*
  %2642 = load <2 x float>, <2 x float>* %2641, align 1
  %2643 = extractelement <2 x float> %2642, i32 0
  %2644 = inttoptr i64 %2637 to float*
  store float %2643, float* %2644
  store %struct.Memory* %loadMem_432291, %struct.Memory** %MEMORY
  %loadMem_432299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 33
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2647 to i64*
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 15
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2651, i64 0, i64 0
  %XMM0.i668 = bitcast %union.VectorReg* %2652 to %union.vec128_t*
  %2653 = load i64, i64* %RBP.i667
  %2654 = sub i64 %2653, 156
  %2655 = bitcast %union.vec128_t* %XMM0.i668 to i8*
  %2656 = load i64, i64* %PC.i666
  %2657 = add i64 %2656, 8
  store i64 %2657, i64* %PC.i666
  %2658 = bitcast i8* %2655 to <2 x float>*
  %2659 = load <2 x float>, <2 x float>* %2658, align 1
  %2660 = extractelement <2 x float> %2659, i32 0
  %2661 = inttoptr i64 %2654 to float*
  store float %2660, float* %2661
  store %struct.Memory* %loadMem_432299, %struct.Memory** %MEMORY
  %loadMem_4322a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %PC.i665
  %2666 = add i64 %2665, 22
  %2667 = load i64, i64* %PC.i665
  %2668 = add i64 %2667, 6
  %2669 = load i64, i64* %PC.i665
  %2670 = add i64 %2669, 6
  store i64 %2670, i64* %PC.i665
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2672 = load i8, i8* %2671, align 1
  store i8 %2672, i8* %BRANCH_TAKEN, align 1
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2674 = icmp ne i8 %2672, 0
  %2675 = select i1 %2674, i64 %2666, i64 %2668
  store i64 %2675, i64* %2673, align 8
  store %struct.Memory* %loadMem_4322a1, %struct.Memory** %MEMORY
  %loadBr_4322a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4322a1 = icmp eq i8 %loadBr_4322a1, 1
  br i1 %cmpBr_4322a1, label %block_.L_4322b7, label %block_4322a7

block_4322a7:                                     ; preds = %block_43226c
  %loadMem_4322a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 33
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %2678 to i64*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 15
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2682, i64 0, i64 0
  %YMM0.i664 = bitcast %union.VectorReg* %2683 to %"class.std::bitset"*
  %2684 = bitcast %"class.std::bitset"* %YMM0.i664 to i8*
  %2685 = load i64, i64* %RBP.i663
  %2686 = sub i64 %2685, 152
  %2687 = load i64, i64* %PC.i662
  %2688 = add i64 %2687, 8
  store i64 %2688, i64* %PC.i662
  %2689 = inttoptr i64 %2686 to float*
  %2690 = load float, float* %2689
  %2691 = bitcast i8* %2684 to float*
  store float %2690, float* %2691, align 1
  %2692 = getelementptr inbounds i8, i8* %2684, i64 4
  %2693 = bitcast i8* %2692 to float*
  store float 0.000000e+00, float* %2693, align 1
  %2694 = getelementptr inbounds i8, i8* %2684, i64 8
  %2695 = bitcast i8* %2694 to float*
  store float 0.000000e+00, float* %2695, align 1
  %2696 = getelementptr inbounds i8, i8* %2684, i64 12
  %2697 = bitcast i8* %2696 to float*
  store float 0.000000e+00, float* %2697, align 1
  store %struct.Memory* %loadMem_4322a7, %struct.Memory** %MEMORY
  %loadMem_4322af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 15
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2704, i64 0, i64 0
  %XMM0.i661 = bitcast %union.VectorReg* %2705 to %union.vec128_t*
  %2706 = load i64, i64* %RBP.i660
  %2707 = sub i64 %2706, 156
  %2708 = bitcast %union.vec128_t* %XMM0.i661 to i8*
  %2709 = load i64, i64* %PC.i659
  %2710 = add i64 %2709, 8
  store i64 %2710, i64* %PC.i659
  %2711 = bitcast i8* %2708 to <2 x float>*
  %2712 = load <2 x float>, <2 x float>* %2711, align 1
  %2713 = extractelement <2 x float> %2712, i32 0
  %2714 = inttoptr i64 %2707 to float*
  store float %2713, float* %2714
  store %struct.Memory* %loadMem_4322af, %struct.Memory** %MEMORY
  br label %block_.L_4322b7

block_.L_4322b7:                                  ; preds = %block_4322a7, %block_43226c
  %loadMem_4322b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 33
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2717 to i64*
  %2718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2719 = getelementptr inbounds %struct.GPR, %struct.GPR* %2718, i32 0, i32 15
  %2720 = getelementptr inbounds %struct.Reg, %struct.Reg* %2719, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %2720 to i64*
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2721, i64 0, i64 0
  %YMM0.i658 = bitcast %union.VectorReg* %2722 to %"class.std::bitset"*
  %2723 = bitcast %"class.std::bitset"* %YMM0.i658 to i8*
  %2724 = load i64, i64* %RBP.i657
  %2725 = sub i64 %2724, 156
  %2726 = load i64, i64* %PC.i656
  %2727 = add i64 %2726, 8
  store i64 %2727, i64* %PC.i656
  %2728 = inttoptr i64 %2725 to float*
  %2729 = load float, float* %2728
  %2730 = bitcast i8* %2723 to float*
  store float %2729, float* %2730, align 1
  %2731 = getelementptr inbounds i8, i8* %2723, i64 4
  %2732 = bitcast i8* %2731 to float*
  store float 0.000000e+00, float* %2732, align 1
  %2733 = getelementptr inbounds i8, i8* %2723, i64 8
  %2734 = bitcast i8* %2733 to float*
  store float 0.000000e+00, float* %2734, align 1
  %2735 = getelementptr inbounds i8, i8* %2723, i64 12
  %2736 = bitcast i8* %2735 to float*
  store float 0.000000e+00, float* %2736, align 1
  store %struct.Memory* %loadMem_4322b7, %struct.Memory** %MEMORY
  %loadMem_4322bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 33
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2739 to i64*
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 1
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %2742 to i64*
  %2743 = load i64, i64* %PC.i654
  %2744 = add i64 %2743, ptrtoint (%G_0x29963a__rip__type* @G_0x29963a__rip_ to i64)
  %2745 = load i64, i64* %PC.i654
  %2746 = add i64 %2745, 7
  store i64 %2746, i64* %PC.i654
  %2747 = inttoptr i64 %2744 to i64*
  %2748 = load i64, i64* %2747
  store i64 %2748, i64* %RAX.i655, align 8
  store %struct.Memory* %loadMem_4322bf, %struct.Memory** %MEMORY
  %loadMem_4322c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 1
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RAX.i652 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2756 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2755, i64 0, i64 1
  %YMM1.i653 = bitcast %union.VectorReg* %2756 to %"class.std::bitset"*
  %2757 = bitcast %"class.std::bitset"* %YMM1.i653 to i8*
  %2758 = load i64, i64* %RAX.i652
  %2759 = add i64 %2758, 48
  %2760 = load i64, i64* %PC.i651
  %2761 = add i64 %2760, 5
  store i64 %2761, i64* %PC.i651
  %2762 = inttoptr i64 %2759 to float*
  %2763 = load float, float* %2762
  %2764 = bitcast i8* %2757 to float*
  store float %2763, float* %2764, align 1
  %2765 = getelementptr inbounds i8, i8* %2757, i64 4
  %2766 = bitcast i8* %2765 to float*
  store float 0.000000e+00, float* %2766, align 1
  %2767 = getelementptr inbounds i8, i8* %2757, i64 8
  %2768 = bitcast i8* %2767 to float*
  store float 0.000000e+00, float* %2768, align 1
  %2769 = getelementptr inbounds i8, i8* %2757, i64 12
  %2770 = bitcast i8* %2769 to float*
  store float 0.000000e+00, float* %2770, align 1
  store %struct.Memory* %loadMem_4322c6, %struct.Memory** %MEMORY
  %loadMem_4322cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2775 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2774, i64 0, i64 0
  %YMM0.i649 = bitcast %union.VectorReg* %2775 to %"class.std::bitset"*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2777 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2776, i64 0, i64 1
  %XMM1.i650 = bitcast %union.VectorReg* %2777 to %union.vec128_t*
  %2778 = bitcast %"class.std::bitset"* %YMM0.i649 to i8*
  %2779 = bitcast %"class.std::bitset"* %YMM0.i649 to i8*
  %2780 = bitcast %union.vec128_t* %XMM1.i650 to i8*
  %2781 = load i64, i64* %PC.i648
  %2782 = add i64 %2781, 4
  store i64 %2782, i64* %PC.i648
  %2783 = bitcast i8* %2779 to <2 x float>*
  %2784 = load <2 x float>, <2 x float>* %2783, align 1
  %2785 = getelementptr inbounds i8, i8* %2779, i64 8
  %2786 = bitcast i8* %2785 to <2 x i32>*
  %2787 = load <2 x i32>, <2 x i32>* %2786, align 1
  %2788 = bitcast i8* %2780 to <2 x float>*
  %2789 = load <2 x float>, <2 x float>* %2788, align 1
  %2790 = extractelement <2 x float> %2784, i32 0
  %2791 = extractelement <2 x float> %2789, i32 0
  %2792 = fmul float %2790, %2791
  %2793 = bitcast i8* %2778 to float*
  store float %2792, float* %2793, align 1
  %2794 = bitcast <2 x float> %2784 to <2 x i32>
  %2795 = extractelement <2 x i32> %2794, i32 1
  %2796 = getelementptr inbounds i8, i8* %2778, i64 4
  %2797 = bitcast i8* %2796 to i32*
  store i32 %2795, i32* %2797, align 1
  %2798 = extractelement <2 x i32> %2787, i32 0
  %2799 = getelementptr inbounds i8, i8* %2778, i64 8
  %2800 = bitcast i8* %2799 to i32*
  store i32 %2798, i32* %2800, align 1
  %2801 = extractelement <2 x i32> %2787, i32 1
  %2802 = getelementptr inbounds i8, i8* %2778, i64 12
  %2803 = bitcast i8* %2802 to i32*
  store i32 %2801, i32* %2803, align 1
  store %struct.Memory* %loadMem_4322cb, %struct.Memory** %MEMORY
  %loadMem_4322cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2808 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2807, i64 0, i64 1
  %YMM1.i647 = bitcast %union.VectorReg* %2808 to %"class.std::bitset"*
  %2809 = bitcast %"class.std::bitset"* %YMM1.i647 to i8*
  %2810 = load i64, i64* %PC.i646
  %2811 = add i64 %2810, ptrtoint (%G_0x8b561__rip__type* @G_0x8b561__rip_ to i64)
  %2812 = load i64, i64* %PC.i646
  %2813 = add i64 %2812, 8
  store i64 %2813, i64* %PC.i646
  %2814 = inttoptr i64 %2811 to float*
  %2815 = load float, float* %2814
  %2816 = bitcast i8* %2809 to float*
  store float %2815, float* %2816, align 1
  %2817 = getelementptr inbounds i8, i8* %2809, i64 4
  %2818 = bitcast i8* %2817 to float*
  store float 0.000000e+00, float* %2818, align 1
  %2819 = getelementptr inbounds i8, i8* %2809, i64 8
  %2820 = bitcast i8* %2819 to float*
  store float 0.000000e+00, float* %2820, align 1
  %2821 = getelementptr inbounds i8, i8* %2809, i64 12
  %2822 = bitcast i8* %2821 to float*
  store float 0.000000e+00, float* %2822, align 1
  store %struct.Memory* %loadMem_4322cf, %struct.Memory** %MEMORY
  %loadMem_4322d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2827 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2826, i64 0, i64 2
  %YMM2.i644 = bitcast %union.VectorReg* %2827 to %"class.std::bitset"*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2828, i64 0, i64 0
  %XMM0.i645 = bitcast %union.VectorReg* %2829 to %union.vec128_t*
  %2830 = bitcast %"class.std::bitset"* %YMM2.i644 to i8*
  %2831 = bitcast %union.vec128_t* %XMM0.i645 to i8*
  %2832 = load i64, i64* %PC.i643
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i643
  %2834 = bitcast i8* %2831 to <2 x i32>*
  %2835 = load <2 x i32>, <2 x i32>* %2834, align 1
  %2836 = getelementptr inbounds i8, i8* %2831, i64 8
  %2837 = bitcast i8* %2836 to <2 x i32>*
  %2838 = load <2 x i32>, <2 x i32>* %2837, align 1
  %2839 = extractelement <2 x i32> %2835, i32 0
  %2840 = bitcast i8* %2830 to i32*
  store i32 %2839, i32* %2840, align 1
  %2841 = extractelement <2 x i32> %2835, i32 1
  %2842 = getelementptr inbounds i8, i8* %2830, i64 4
  %2843 = bitcast i8* %2842 to i32*
  store i32 %2841, i32* %2843, align 1
  %2844 = extractelement <2 x i32> %2838, i32 0
  %2845 = getelementptr inbounds i8, i8* %2830, i64 8
  %2846 = bitcast i8* %2845 to i32*
  store i32 %2844, i32* %2846, align 1
  %2847 = extractelement <2 x i32> %2838, i32 1
  %2848 = getelementptr inbounds i8, i8* %2830, i64 12
  %2849 = bitcast i8* %2848 to i32*
  store i32 %2847, i32* %2849, align 1
  store %struct.Memory* %loadMem_4322d7, %struct.Memory** %MEMORY
  %loadMem_4322da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2853, i64 0, i64 2
  %YMM2.i641 = bitcast %union.VectorReg* %2854 to %"class.std::bitset"*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2855, i64 0, i64 1
  %XMM1.i642 = bitcast %union.VectorReg* %2856 to %union.vec128_t*
  %2857 = bitcast %"class.std::bitset"* %YMM2.i641 to i8*
  %2858 = bitcast %"class.std::bitset"* %YMM2.i641 to i8*
  %2859 = bitcast %union.vec128_t* %XMM1.i642 to i8*
  %2860 = load i64, i64* %PC.i640
  %2861 = add i64 %2860, 4
  store i64 %2861, i64* %PC.i640
  %2862 = bitcast i8* %2858 to <2 x float>*
  %2863 = load <2 x float>, <2 x float>* %2862, align 1
  %2864 = getelementptr inbounds i8, i8* %2858, i64 8
  %2865 = bitcast i8* %2864 to <2 x i32>*
  %2866 = load <2 x i32>, <2 x i32>* %2865, align 1
  %2867 = bitcast i8* %2859 to <2 x float>*
  %2868 = load <2 x float>, <2 x float>* %2867, align 1
  %2869 = extractelement <2 x float> %2863, i32 0
  %2870 = extractelement <2 x float> %2868, i32 0
  %2871 = fsub float %2869, %2870
  %2872 = bitcast i8* %2857 to float*
  store float %2871, float* %2872, align 1
  %2873 = bitcast <2 x float> %2863 to <2 x i32>
  %2874 = extractelement <2 x i32> %2873, i32 1
  %2875 = getelementptr inbounds i8, i8* %2857, i64 4
  %2876 = bitcast i8* %2875 to i32*
  store i32 %2874, i32* %2876, align 1
  %2877 = extractelement <2 x i32> %2866, i32 0
  %2878 = getelementptr inbounds i8, i8* %2857, i64 8
  %2879 = bitcast i8* %2878 to i32*
  store i32 %2877, i32* %2879, align 1
  %2880 = extractelement <2 x i32> %2866, i32 1
  %2881 = getelementptr inbounds i8, i8* %2857, i64 12
  %2882 = bitcast i8* %2881 to i32*
  store i32 %2880, i32* %2882, align 1
  store %struct.Memory* %loadMem_4322da, %struct.Memory** %MEMORY
  %loadMem_4322de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 1
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2890 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2889, i64 0, i64 2
  %XMM2.i639 = bitcast %union.VectorReg* %2890 to %union.vec128_t*
  %2891 = bitcast %union.vec128_t* %XMM2.i639 to i8*
  %2892 = load i64, i64* %PC.i637
  %2893 = add i64 %2892, 5
  store i64 %2893, i64* %PC.i637
  %2894 = bitcast i8* %2891 to <2 x float>*
  %2895 = load <2 x float>, <2 x float>* %2894, align 1
  %2896 = extractelement <2 x float> %2895, i32 0
  %2897 = call float @llvm.trunc.f32(float %2896)
  %2898 = fptosi float %2897 to i64
  store i64 %2898, i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_4322de, %struct.Memory** %MEMORY
  %loadMem_4322e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %2901 to i64*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 5
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %PC.i635
  %2906 = add i64 %2905, 10
  store i64 %2906, i64* %PC.i635
  store i64 -9223372036854775808, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_4322e3, %struct.Memory** %MEMORY
  %loadMem_4322ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 1
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 5
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RCX.i634 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %RAX.i633
  %2917 = load i64, i64* %RCX.i634
  %2918 = load i64, i64* %PC.i632
  %2919 = add i64 %2918, 3
  store i64 %2919, i64* %PC.i632
  %2920 = xor i64 %2917, %2916
  store i64 %2920, i64* %RAX.i633, align 8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2921, align 1
  %2922 = trunc i64 %2920 to i32
  %2923 = and i32 %2922, 255
  %2924 = call i32 @llvm.ctpop.i32(i32 %2923)
  %2925 = trunc i32 %2924 to i8
  %2926 = and i8 %2925, 1
  %2927 = xor i8 %2926, 1
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2927, i8* %2928, align 1
  %2929 = icmp eq i64 %2920, 0
  %2930 = zext i1 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2930, i8* %2931, align 1
  %2932 = lshr i64 %2920, 63
  %2933 = trunc i64 %2932 to i8
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2933, i8* %2934, align 1
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2935, align 1
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2936, align 1
  store %struct.Memory* %loadMem_4322ed, %struct.Memory** %MEMORY
  %loadMem_4322f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 33
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %2939 to i64*
  %2940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2941 = getelementptr inbounds %struct.GPR, %struct.GPR* %2940, i32 0, i32 5
  %2942 = getelementptr inbounds %struct.Reg, %struct.Reg* %2941, i32 0, i32 0
  %RCX.i630 = bitcast %union.anon* %2942 to i64*
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2944 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2943, i64 0, i64 0
  %XMM0.i631 = bitcast %union.VectorReg* %2944 to %union.vec128_t*
  %2945 = bitcast %union.vec128_t* %XMM0.i631 to i8*
  %2946 = load i64, i64* %PC.i629
  %2947 = add i64 %2946, 5
  store i64 %2947, i64* %PC.i629
  %2948 = bitcast i8* %2945 to <2 x float>*
  %2949 = load <2 x float>, <2 x float>* %2948, align 1
  %2950 = extractelement <2 x float> %2949, i32 0
  %2951 = call float @llvm.trunc.f32(float %2950)
  %2952 = fptosi float %2951 to i64
  store i64 %2952, i64* %RCX.i630, align 8
  store %struct.Memory* %loadMem_4322f0, %struct.Memory** %MEMORY
  %loadMem_4322f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 33
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2956, i64 0, i64 0
  %XMM0.i625 = bitcast %union.VectorReg* %2957 to %union.vec128_t*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2959 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2958, i64 0, i64 1
  %XMM1.i626 = bitcast %union.VectorReg* %2959 to %union.vec128_t*
  %2960 = bitcast %union.vec128_t* %XMM0.i625 to i8*
  %2961 = bitcast %union.vec128_t* %XMM1.i626 to i8*
  %2962 = load i64, i64* %PC.i624
  %2963 = add i64 %2962, 3
  store i64 %2963, i64* %PC.i624
  %2964 = bitcast i8* %2960 to <2 x float>*
  %2965 = load <2 x float>, <2 x float>* %2964, align 1
  %2966 = extractelement <2 x float> %2965, i32 0
  %2967 = bitcast i8* %2961 to <2 x float>*
  %2968 = load <2 x float>, <2 x float>* %2967, align 1
  %2969 = extractelement <2 x float> %2968, i32 0
  %2970 = fcmp uno float %2966, %2969
  br i1 %2970, label %2971, label %2983

; <label>:2971:                                   ; preds = %block_.L_4322b7
  %2972 = fadd float %2966, %2969
  %2973 = bitcast float %2972 to i32
  %2974 = and i32 %2973, 2143289344
  %2975 = icmp eq i32 %2974, 2139095040
  %2976 = and i32 %2973, 4194303
  %2977 = icmp ne i32 %2976, 0
  %2978 = and i1 %2975, %2977
  br i1 %2978, label %2979, label %2989

; <label>:2979:                                   ; preds = %2971
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2981 = load i64, i64* %2980, align 8
  %2982 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2981, %struct.Memory* %loadMem_4322f5)
  br label %routine_ucomiss__xmm1___xmm0.exit627

; <label>:2983:                                   ; preds = %block_.L_4322b7
  %2984 = fcmp ogt float %2966, %2969
  br i1 %2984, label %2989, label %2985

; <label>:2985:                                   ; preds = %2983
  %2986 = fcmp olt float %2966, %2969
  br i1 %2986, label %2989, label %2987

; <label>:2987:                                   ; preds = %2985
  %2988 = fcmp oeq float %2966, %2969
  br i1 %2988, label %2989, label %2996

; <label>:2989:                                   ; preds = %2987, %2985, %2983, %2971
  %2990 = phi i8 [ 0, %2983 ], [ 0, %2985 ], [ 1, %2987 ], [ 1, %2971 ]
  %2991 = phi i8 [ 0, %2983 ], [ 0, %2985 ], [ 0, %2987 ], [ 1, %2971 ]
  %2992 = phi i8 [ 0, %2983 ], [ 1, %2985 ], [ 0, %2987 ], [ 1, %2971 ]
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2990, i8* %2993, align 1
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2991, i8* %2994, align 1
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2992, i8* %2995, align 1
  br label %2996

; <label>:2996:                                   ; preds = %2989, %2987
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2997, align 1
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2998, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2999, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit627

routine_ucomiss__xmm1___xmm0.exit627:             ; preds = %2979, %2996
  %3000 = phi %struct.Memory* [ %2982, %2979 ], [ %loadMem_4322f5, %2996 ]
  store %struct.Memory* %3000, %struct.Memory** %MEMORY
  %loadMem_4322f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 5
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RCX.i623
  %3011 = load i64, i64* %PC.i621
  %3012 = add i64 %3011, 4
  store i64 %3012, i64* %PC.i621
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3014 = load i8, i8* %3013, align 1
  %3015 = icmp ne i8 %3014, 0
  %3016 = load i64, i64* %RAX.i622, align 8
  %3017 = select i1 %3015, i64 %3010, i64 %3016
  store i64 %3017, i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_4322f8, %struct.Memory** %MEMORY
  %loadMem_4322fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 5
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %PC.i619
  %3025 = add i64 %3024, 8
  store i64 %3025, i64* %PC.i619
  %3026 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %3026, i64* %RCX.i620, align 8
  store %struct.Memory* %loadMem_4322fc, %struct.Memory** %MEMORY
  %loadMem_432304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 33
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 5
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 7
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RDX.i618 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RCX.i617
  %3037 = add i64 %3036, 20
  %3038 = load i64, i64* %PC.i616
  %3039 = add i64 %3038, 3
  store i64 %3039, i64* %PC.i616
  %3040 = inttoptr i64 %3037 to i32*
  %3041 = load i32, i32* %3040
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RDX.i618, align 8
  store %struct.Memory* %loadMem_432304, %struct.Memory** %MEMORY
  %loadMem_432307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 7
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %RDX.i615 = bitcast %union.anon* %3048 to i64*
  %3049 = load i64, i64* %RDX.i615
  %3050 = load i64, i64* %PC.i614
  %3051 = add i64 %3050, 3
  store i64 %3051, i64* %PC.i614
  %3052 = trunc i64 %3049 to i32
  %3053 = add i32 1, %3052
  %3054 = zext i32 %3053 to i64
  store i64 %3054, i64* %RDX.i615, align 8
  %3055 = icmp ult i32 %3053, %3052
  %3056 = icmp ult i32 %3053, 1
  %3057 = or i1 %3055, %3056
  %3058 = zext i1 %3057 to i8
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3058, i8* %3059, align 1
  %3060 = and i32 %3053, 255
  %3061 = call i32 @llvm.ctpop.i32(i32 %3060)
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  %3064 = xor i8 %3063, 1
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3064, i8* %3065, align 1
  %3066 = xor i64 1, %3049
  %3067 = trunc i64 %3066 to i32
  %3068 = xor i32 %3067, %3053
  %3069 = lshr i32 %3068, 4
  %3070 = trunc i32 %3069 to i8
  %3071 = and i8 %3070, 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3071, i8* %3072, align 1
  %3073 = icmp eq i32 %3053, 0
  %3074 = zext i1 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3074, i8* %3075, align 1
  %3076 = lshr i32 %3053, 31
  %3077 = trunc i32 %3076 to i8
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3077, i8* %3078, align 1
  %3079 = lshr i32 %3052, 31
  %3080 = xor i32 %3076, %3079
  %3081 = add i32 %3080, %3076
  %3082 = icmp eq i32 %3081, 2
  %3083 = zext i1 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3083, i8* %3084, align 1
  store %struct.Memory* %loadMem_432307, %struct.Memory** %MEMORY
  %loadMem_43230a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 33
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3089 = getelementptr inbounds %struct.GPR, %struct.GPR* %3088, i32 0, i32 7
  %3090 = getelementptr inbounds %struct.Reg, %struct.Reg* %3089, i32 0, i32 0
  %EDX.i612 = bitcast %union.anon* %3090 to i32*
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 5
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %RCX.i613 = bitcast %union.anon* %3093 to i64*
  %3094 = load i32, i32* %EDX.i612
  %3095 = zext i32 %3094 to i64
  %3096 = load i64, i64* %PC.i611
  %3097 = add i64 %3096, 3
  store i64 %3097, i64* %PC.i611
  %3098 = shl i64 %3095, 32
  %3099 = ashr exact i64 %3098, 32
  store i64 %3099, i64* %RCX.i613, align 8
  store %struct.Memory* %loadMem_43230a, %struct.Memory** %MEMORY
  %loadMem_43230d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3102 to i64*
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 7
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %EDX.i609 = bitcast %union.anon* %3105 to i32*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 7
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RDX.i610 = bitcast %union.anon* %3108 to i64*
  %3109 = load i64, i64* %RDX.i610
  %3110 = load i32, i32* %EDX.i609
  %3111 = zext i32 %3110 to i64
  %3112 = load i64, i64* %PC.i608
  %3113 = add i64 %3112, 2
  store i64 %3113, i64* %PC.i608
  %3114 = xor i64 %3111, %3109
  %3115 = trunc i64 %3114 to i32
  %3116 = and i64 %3114, 4294967295
  store i64 %3116, i64* %RDX.i610, align 8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3117, align 1
  %3118 = and i32 %3115, 255
  %3119 = call i32 @llvm.ctpop.i32(i32 %3118)
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3122, i8* %3123, align 1
  %3124 = icmp eq i32 %3115, 0
  %3125 = zext i1 %3124 to i8
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3125, i8* %3126, align 1
  %3127 = lshr i32 %3115, 31
  %3128 = trunc i32 %3127 to i8
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3128, i8* %3129, align 1
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3130, align 1
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3131, align 1
  store %struct.Memory* %loadMem_43230d, %struct.Memory** %MEMORY
  %loadMem_43230f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 33
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3134 to i64*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 5
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %RCX.i606
  %3139 = load i64, i64* %PC.i605
  %3140 = add i64 %3139, 3
  store i64 %3140, i64* %PC.i605
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3142 = load i64, i64* %3141, align 8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3144 = load i64, i64* %3143, align 8
  %3145 = zext i64 %3144 to i128
  %3146 = shl i128 %3145, 64
  %3147 = zext i64 %3142 to i128
  %3148 = or i128 %3146, %3147
  %3149 = zext i64 %3138 to i128
  %3150 = udiv i128 %3148, %3149
  %3151 = and i128 %3150, 18446744073709551615
  %3152 = icmp eq i128 %3150, %3151
  br i1 %3152, label %3157, label %3153

; <label>:3153:                                   ; preds = %routine_ucomiss__xmm1___xmm0.exit627
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3155 = load i64, i64* %3154, align 8
  %3156 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3155, %struct.Memory* %loadMem_43230f)
  br label %routine_divq__rcx.exit

; <label>:3157:                                   ; preds = %routine_ucomiss__xmm1___xmm0.exit627
  %3158 = urem i128 %3148, %3149
  %3159 = trunc i128 %3158 to i64
  %3160 = trunc i128 %3150 to i64
  store i64 %3160, i64* %3141, align 8
  store i64 %3159, i64* %3143, align 8
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3161, align 1
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3162, align 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3163, align 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3164, align 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3165, align 1
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3166, align 1
  br label %routine_divq__rcx.exit

routine_divq__rcx.exit:                           ; preds = %3153, %3157
  %3167 = phi %struct.Memory* [ %3156, %3153 ], [ %loadMem_43230f, %3157 ]
  store %struct.Memory* %3167, %struct.Memory** %MEMORY
  %loadMem_432312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 5
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 15
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3176 to i64*
  %3177 = load i64, i64* %RBP.i604
  %3178 = sub i64 %3177, 104
  %3179 = load i64, i64* %PC.i602
  %3180 = add i64 %3179, 4
  store i64 %3180, i64* %PC.i602
  %3181 = inttoptr i64 %3178 to i64*
  %3182 = load i64, i64* %3181
  store i64 %3182, i64* %RCX.i603, align 8
  store %struct.Memory* %loadMem_432312, %struct.Memory** %MEMORY
  %loadMem_432316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 9
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RSI.i600 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 15
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RBP.i601
  %3193 = sub i64 %3192, 48
  %3194 = load i64, i64* %PC.i599
  %3195 = add i64 %3194, 4
  store i64 %3195, i64* %PC.i599
  %3196 = inttoptr i64 %3193 to i64*
  %3197 = load i64, i64* %3196
  store i64 %3197, i64* %RSI.i600, align 8
  store %struct.Memory* %loadMem_432316, %struct.Memory** %MEMORY
  %loadMem_43231a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 5
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 9
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RSI.i598 = bitcast %union.anon* %3209 to i64*
  %3210 = load i64, i64* %RCX.i597
  %3211 = load i64, i64* %RSI.i598
  %3212 = mul i64 %3211, 8
  %3213 = add i64 %3212, %3210
  %3214 = load i64, i64* %RAX.i596
  %3215 = load i64, i64* %PC.i595
  %3216 = add i64 %3215, 4
  store i64 %3216, i64* %PC.i595
  %3217 = inttoptr i64 %3213 to i64*
  store i64 %3214, i64* %3217
  store %struct.Memory* %loadMem_43231a, %struct.Memory** %MEMORY
  %loadMem_43231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 33
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3220 to i64*
  %3221 = load i64, i64* %PC.i594
  %3222 = add i64 %3221, 207
  %3223 = load i64, i64* %PC.i594
  %3224 = add i64 %3223, 5
  store i64 %3224, i64* %PC.i594
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3222, i64* %3225, align 8
  store %struct.Memory* %loadMem_43231e, %struct.Memory** %MEMORY
  br label %block_.L_4323ed

block_.L_432323:                                  ; preds = %block_432261
  %loadMem_432323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 1
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RAX.i592 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 15
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %RBP.i593
  %3236 = sub i64 %3235, 104
  %3237 = load i64, i64* %PC.i591
  %3238 = add i64 %3237, 4
  store i64 %3238, i64* %PC.i591
  %3239 = inttoptr i64 %3236 to i64*
  %3240 = load i64, i64* %3239
  store i64 %3240, i64* %RAX.i592, align 8
  store %struct.Memory* %loadMem_432323, %struct.Memory** %MEMORY
  %loadMem_432327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 33
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %3243 to i64*
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 5
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 15
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %RBP.i590
  %3251 = sub i64 %3250, 48
  %3252 = load i64, i64* %PC.i588
  %3253 = add i64 %3252, 4
  store i64 %3253, i64* %PC.i588
  %3254 = inttoptr i64 %3251 to i64*
  %3255 = load i64, i64* %3254
  store i64 %3255, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_432327, %struct.Memory** %MEMORY
  %loadMem_43232b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 1
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 5
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %RAX.i586
  %3266 = load i64, i64* %RCX.i587
  %3267 = mul i64 %3266, 8
  %3268 = add i64 %3265, -8
  %3269 = add i64 %3268, %3267
  %3270 = load i64, i64* %PC.i585
  %3271 = add i64 %3270, 5
  store i64 %3271, i64* %PC.i585
  %3272 = inttoptr i64 %3269 to i64*
  %3273 = load i64, i64* %3272
  store i64 %3273, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_43232b, %struct.Memory** %MEMORY
  %loadMem_432330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 33
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 1
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 5
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %3282 to i64*
  %3283 = load i64, i64* %RAX.i583
  %3284 = load i64, i64* %PC.i582
  %3285 = add i64 %3284, 3
  store i64 %3285, i64* %PC.i582
  store i64 %3283, i64* %RCX.i584, align 8
  store %struct.Memory* %loadMem_432330, %struct.Memory** %MEMORY
  %loadMem_432333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 33
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 5
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %3291 to i64*
  %3292 = load i64, i64* %RCX.i581
  %3293 = load i64, i64* %PC.i580
  %3294 = add i64 %3293, 3
  store i64 %3294, i64* %PC.i580
  %3295 = lshr i64 %3292, 63
  %3296 = trunc i64 %3295 to i8
  %3297 = trunc i64 %3292 to i8
  %3298 = and i8 %3297, 1
  %3299 = lshr i64 %3292, 1
  store i64 %3299, i64* %RCX.i581, align 8
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3298, i8* %3300, align 1
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3302 = trunc i64 %3299 to i32
  %3303 = and i32 %3302, 255
  %3304 = call i32 @llvm.ctpop.i32(i32 %3303)
  %3305 = trunc i32 %3304 to i8
  %3306 = and i8 %3305, 1
  %3307 = xor i8 %3306, 1
  store i8 %3307, i8* %3301, align 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3308, align 1
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3310 = icmp eq i64 %3299, 0
  %3311 = zext i1 %3310 to i8
  store i8 %3311, i8* %3309, align 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3312, align 1
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3296, i8* %3313, align 1
  store %struct.Memory* %loadMem_432333, %struct.Memory** %MEMORY
  %loadMem_432336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 33
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 1
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %EAX.i578 = bitcast %union.anon* %3319 to i32*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 7
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %3322 to i64*
  %3323 = load i32, i32* %EAX.i578
  %3324 = zext i32 %3323 to i64
  %3325 = load i64, i64* %PC.i577
  %3326 = add i64 %3325, 2
  store i64 %3326, i64* %PC.i577
  %3327 = and i64 %3324, 4294967295
  store i64 %3327, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_432336, %struct.Memory** %MEMORY
  %loadMem_432338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 7
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %RDX.i576
  %3335 = load i64, i64* %PC.i575
  %3336 = add i64 %3335, 3
  store i64 %3336, i64* %PC.i575
  %3337 = and i64 1, %3334
  %3338 = trunc i64 %3337 to i32
  store i64 %3337, i64* %RDX.i576, align 8
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3339, align 1
  %3340 = and i32 %3338, 255
  %3341 = call i32 @llvm.ctpop.i32(i32 %3340)
  %3342 = trunc i32 %3341 to i8
  %3343 = and i8 %3342, 1
  %3344 = xor i8 %3343, 1
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3344, i8* %3345, align 1
  %3346 = icmp eq i32 %3338, 0
  %3347 = zext i1 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3347, i8* %3348, align 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3349, align 1
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3350, align 1
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3351, align 1
  store %struct.Memory* %loadMem_432338, %struct.Memory** %MEMORY
  %loadMem_43233b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 33
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 7
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %EDX.i573 = bitcast %union.anon* %3357 to i32*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 9
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RSI.i574 = bitcast %union.anon* %3360 to i64*
  %3361 = load i32, i32* %EDX.i573
  %3362 = zext i32 %3361 to i64
  %3363 = load i64, i64* %PC.i572
  %3364 = add i64 %3363, 2
  store i64 %3364, i64* %PC.i572
  %3365 = and i64 %3362, 4294967295
  store i64 %3365, i64* %RSI.i574, align 8
  store %struct.Memory* %loadMem_43233b, %struct.Memory** %MEMORY
  %loadMem_43233d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 33
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3368 to i64*
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 5
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 9
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RSI.i571 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %RSI.i571
  %3376 = load i64, i64* %RCX.i570
  %3377 = load i64, i64* %PC.i569
  %3378 = add i64 %3377, 3
  store i64 %3378, i64* %PC.i569
  %3379 = or i64 %3376, %3375
  store i64 %3379, i64* %RSI.i571, align 8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3380, align 1
  %3381 = trunc i64 %3379 to i32
  %3382 = and i32 %3381, 255
  %3383 = call i32 @llvm.ctpop.i32(i32 %3382)
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3386, i8* %3387, align 1
  %3388 = icmp eq i64 %3379, 0
  %3389 = zext i1 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3389, i8* %3390, align 1
  %3391 = lshr i64 %3379, 63
  %3392 = trunc i64 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3392, i8* %3393, align 1
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3394, align 1
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3395, align 1
  store %struct.Memory* %loadMem_43233d, %struct.Memory** %MEMORY
  %loadMem_432340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 9
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RSI.i567 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3403 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3402, i64 0, i64 0
  %YMM0.i568 = bitcast %union.VectorReg* %3403 to %"class.std::bitset"*
  %3404 = bitcast %"class.std::bitset"* %YMM0.i568 to i8*
  %3405 = load i64, i64* %RSI.i567
  %3406 = load i64, i64* %PC.i566
  %3407 = add i64 %3406, 5
  store i64 %3407, i64* %PC.i566
  %3408 = bitcast i8* %3404 to <2 x i32>*
  %3409 = load <2 x i32>, <2 x i32>* %3408, align 1
  %3410 = getelementptr inbounds i8, i8* %3404, i64 8
  %3411 = bitcast i8* %3410 to <2 x i32>*
  %3412 = load <2 x i32>, <2 x i32>* %3411, align 1
  %3413 = sitofp i64 %3405 to float
  %3414 = bitcast i8* %3404 to float*
  store float %3413, float* %3414, align 1
  %3415 = extractelement <2 x i32> %3409, i32 1
  %3416 = getelementptr inbounds i8, i8* %3404, i64 4
  %3417 = bitcast i8* %3416 to i32*
  store i32 %3415, i32* %3417, align 1
  %3418 = extractelement <2 x i32> %3412, i32 0
  %3419 = bitcast i8* %3410 to i32*
  store i32 %3418, i32* %3419, align 1
  %3420 = extractelement <2 x i32> %3412, i32 1
  %3421 = getelementptr inbounds i8, i8* %3404, i64 12
  %3422 = bitcast i8* %3421 to i32*
  store i32 %3420, i32* %3422, align 1
  store %struct.Memory* %loadMem_432340, %struct.Memory** %MEMORY
  %loadMem_432345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 33
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %3425 to i64*
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3426, i64 0, i64 0
  %YMM0.i564 = bitcast %union.VectorReg* %3427 to %"class.std::bitset"*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3428, i64 0, i64 0
  %XMM0.i565 = bitcast %union.VectorReg* %3429 to %union.vec128_t*
  %3430 = bitcast %"class.std::bitset"* %YMM0.i564 to i8*
  %3431 = bitcast %"class.std::bitset"* %YMM0.i564 to i8*
  %3432 = bitcast %union.vec128_t* %XMM0.i565 to i8*
  %3433 = load i64, i64* %PC.i563
  %3434 = add i64 %3433, 4
  store i64 %3434, i64* %PC.i563
  %3435 = bitcast i8* %3431 to <2 x float>*
  %3436 = load <2 x float>, <2 x float>* %3435, align 1
  %3437 = getelementptr inbounds i8, i8* %3431, i64 8
  %3438 = bitcast i8* %3437 to <2 x i32>*
  %3439 = load <2 x i32>, <2 x i32>* %3438, align 1
  %3440 = bitcast i8* %3432 to <2 x float>*
  %3441 = load <2 x float>, <2 x float>* %3440, align 1
  %3442 = extractelement <2 x float> %3436, i32 0
  %3443 = extractelement <2 x float> %3441, i32 0
  %3444 = fadd float %3442, %3443
  %3445 = bitcast i8* %3430 to float*
  store float %3444, float* %3445, align 1
  %3446 = bitcast <2 x float> %3436 to <2 x i32>
  %3447 = extractelement <2 x i32> %3446, i32 1
  %3448 = getelementptr inbounds i8, i8* %3430, i64 4
  %3449 = bitcast i8* %3448 to i32*
  store i32 %3447, i32* %3449, align 1
  %3450 = extractelement <2 x i32> %3439, i32 0
  %3451 = getelementptr inbounds i8, i8* %3430, i64 8
  %3452 = bitcast i8* %3451 to i32*
  store i32 %3450, i32* %3452, align 1
  %3453 = extractelement <2 x i32> %3439, i32 1
  %3454 = getelementptr inbounds i8, i8* %3430, i64 12
  %3455 = bitcast i8* %3454 to i32*
  store i32 %3453, i32* %3455, align 1
  store %struct.Memory* %loadMem_432345, %struct.Memory** %MEMORY
  %loadMem_432349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 1
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3462, i64 0, i64 1
  %YMM1.i562 = bitcast %union.VectorReg* %3463 to %"class.std::bitset"*
  %3464 = bitcast %"class.std::bitset"* %YMM1.i562 to i8*
  %3465 = load i64, i64* %RAX.i561
  %3466 = load i64, i64* %PC.i560
  %3467 = add i64 %3466, 5
  store i64 %3467, i64* %PC.i560
  %3468 = bitcast i8* %3464 to <2 x i32>*
  %3469 = load <2 x i32>, <2 x i32>* %3468, align 1
  %3470 = getelementptr inbounds i8, i8* %3464, i64 8
  %3471 = bitcast i8* %3470 to <2 x i32>*
  %3472 = load <2 x i32>, <2 x i32>* %3471, align 1
  %3473 = sitofp i64 %3465 to float
  %3474 = bitcast i8* %3464 to float*
  store float %3473, float* %3474, align 1
  %3475 = extractelement <2 x i32> %3469, i32 1
  %3476 = getelementptr inbounds i8, i8* %3464, i64 4
  %3477 = bitcast i8* %3476 to i32*
  store i32 %3475, i32* %3477, align 1
  %3478 = extractelement <2 x i32> %3472, i32 0
  %3479 = bitcast i8* %3470 to i32*
  store i32 %3478, i32* %3479, align 1
  %3480 = extractelement <2 x i32> %3472, i32 1
  %3481 = getelementptr inbounds i8, i8* %3464, i64 12
  %3482 = bitcast i8* %3481 to i32*
  store i32 %3480, i32* %3482, align 1
  store %struct.Memory* %loadMem_432349, %struct.Memory** %MEMORY
  %loadMem_43234e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 33
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 1
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %3488 to i64*
  %3489 = load i64, i64* %RAX.i559
  %3490 = load i64, i64* %RAX.i559
  %3491 = load i64, i64* %PC.i558
  %3492 = add i64 %3491, 3
  store i64 %3492, i64* %PC.i558
  %3493 = and i64 %3490, %3489
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3494, align 1
  %3495 = trunc i64 %3493 to i32
  %3496 = and i32 %3495, 255
  %3497 = call i32 @llvm.ctpop.i32(i32 %3496)
  %3498 = trunc i32 %3497 to i8
  %3499 = and i8 %3498, 1
  %3500 = xor i8 %3499, 1
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3500, i8* %3501, align 1
  %3502 = icmp eq i64 %3493, 0
  %3503 = zext i1 %3502 to i8
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3503, i8* %3504, align 1
  %3505 = lshr i64 %3493, 63
  %3506 = trunc i64 %3505 to i8
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3506, i8* %3507, align 1
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3508, align 1
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3509, align 1
  store %struct.Memory* %loadMem_43234e, %struct.Memory** %MEMORY
  %loadMem_432351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 15
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3517 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3516, i64 0, i64 1
  %XMM1.i557 = bitcast %union.VectorReg* %3517 to %union.vec128_t*
  %3518 = load i64, i64* %RBP.i556
  %3519 = sub i64 %3518, 160
  %3520 = bitcast %union.vec128_t* %XMM1.i557 to i8*
  %3521 = load i64, i64* %PC.i555
  %3522 = add i64 %3521, 8
  store i64 %3522, i64* %PC.i555
  %3523 = bitcast i8* %3520 to <2 x float>*
  %3524 = load <2 x float>, <2 x float>* %3523, align 1
  %3525 = extractelement <2 x float> %3524, i32 0
  %3526 = inttoptr i64 %3519 to float*
  store float %3525, float* %3526
  store %struct.Memory* %loadMem_432351, %struct.Memory** %MEMORY
  %loadMem_432359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 33
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3529 to i64*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 15
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3533, i64 0, i64 0
  %XMM0.i554 = bitcast %union.VectorReg* %3534 to %union.vec128_t*
  %3535 = load i64, i64* %RBP.i553
  %3536 = sub i64 %3535, 164
  %3537 = bitcast %union.vec128_t* %XMM0.i554 to i8*
  %3538 = load i64, i64* %PC.i552
  %3539 = add i64 %3538, 8
  store i64 %3539, i64* %PC.i552
  %3540 = bitcast i8* %3537 to <2 x float>*
  %3541 = load <2 x float>, <2 x float>* %3540, align 1
  %3542 = extractelement <2 x float> %3541, i32 0
  %3543 = inttoptr i64 %3536 to float*
  store float %3542, float* %3543
  store %struct.Memory* %loadMem_432359, %struct.Memory** %MEMORY
  %loadMem_432361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3546 to i64*
  %3547 = load i64, i64* %PC.i551
  %3548 = add i64 %3547, 22
  %3549 = load i64, i64* %PC.i551
  %3550 = add i64 %3549, 6
  %3551 = load i64, i64* %PC.i551
  %3552 = add i64 %3551, 6
  store i64 %3552, i64* %PC.i551
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3554 = load i8, i8* %3553, align 1
  store i8 %3554, i8* %BRANCH_TAKEN, align 1
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3556 = icmp ne i8 %3554, 0
  %3557 = select i1 %3556, i64 %3548, i64 %3550
  store i64 %3557, i64* %3555, align 8
  store %struct.Memory* %loadMem_432361, %struct.Memory** %MEMORY
  %loadBr_432361 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432361 = icmp eq i8 %loadBr_432361, 1
  br i1 %cmpBr_432361, label %block_.L_432377, label %block_432367

block_432367:                                     ; preds = %block_.L_432323
  %loadMem_432367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3559 = getelementptr inbounds %struct.GPR, %struct.GPR* %3558, i32 0, i32 33
  %3560 = getelementptr inbounds %struct.Reg, %struct.Reg* %3559, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3560 to i64*
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 15
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %3563 to i64*
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3564, i64 0, i64 0
  %YMM0.i550 = bitcast %union.VectorReg* %3565 to %"class.std::bitset"*
  %3566 = bitcast %"class.std::bitset"* %YMM0.i550 to i8*
  %3567 = load i64, i64* %RBP.i549
  %3568 = sub i64 %3567, 160
  %3569 = load i64, i64* %PC.i548
  %3570 = add i64 %3569, 8
  store i64 %3570, i64* %PC.i548
  %3571 = inttoptr i64 %3568 to float*
  %3572 = load float, float* %3571
  %3573 = bitcast i8* %3566 to float*
  store float %3572, float* %3573, align 1
  %3574 = getelementptr inbounds i8, i8* %3566, i64 4
  %3575 = bitcast i8* %3574 to float*
  store float 0.000000e+00, float* %3575, align 1
  %3576 = getelementptr inbounds i8, i8* %3566, i64 8
  %3577 = bitcast i8* %3576 to float*
  store float 0.000000e+00, float* %3577, align 1
  %3578 = getelementptr inbounds i8, i8* %3566, i64 12
  %3579 = bitcast i8* %3578 to float*
  store float 0.000000e+00, float* %3579, align 1
  store %struct.Memory* %loadMem_432367, %struct.Memory** %MEMORY
  %loadMem_43236f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 15
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3587 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3586, i64 0, i64 0
  %XMM0.i547 = bitcast %union.VectorReg* %3587 to %union.vec128_t*
  %3588 = load i64, i64* %RBP.i546
  %3589 = sub i64 %3588, 164
  %3590 = bitcast %union.vec128_t* %XMM0.i547 to i8*
  %3591 = load i64, i64* %PC.i545
  %3592 = add i64 %3591, 8
  store i64 %3592, i64* %PC.i545
  %3593 = bitcast i8* %3590 to <2 x float>*
  %3594 = load <2 x float>, <2 x float>* %3593, align 1
  %3595 = extractelement <2 x float> %3594, i32 0
  %3596 = inttoptr i64 %3589 to float*
  store float %3595, float* %3596
  store %struct.Memory* %loadMem_43236f, %struct.Memory** %MEMORY
  br label %block_.L_432377

block_.L_432377:                                  ; preds = %block_432367, %block_.L_432323
  %loadMem_432377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 33
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 15
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3604 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3603, i64 0, i64 0
  %YMM0.i544 = bitcast %union.VectorReg* %3604 to %"class.std::bitset"*
  %3605 = bitcast %"class.std::bitset"* %YMM0.i544 to i8*
  %3606 = load i64, i64* %RBP.i543
  %3607 = sub i64 %3606, 164
  %3608 = load i64, i64* %PC.i542
  %3609 = add i64 %3608, 8
  store i64 %3609, i64* %PC.i542
  %3610 = inttoptr i64 %3607 to float*
  %3611 = load float, float* %3610
  %3612 = bitcast i8* %3605 to float*
  store float %3611, float* %3612, align 1
  %3613 = getelementptr inbounds i8, i8* %3605, i64 4
  %3614 = bitcast i8* %3613 to float*
  store float 0.000000e+00, float* %3614, align 1
  %3615 = getelementptr inbounds i8, i8* %3605, i64 8
  %3616 = bitcast i8* %3615 to float*
  store float 0.000000e+00, float* %3616, align 1
  %3617 = getelementptr inbounds i8, i8* %3605, i64 12
  %3618 = bitcast i8* %3617 to float*
  store float 0.000000e+00, float* %3618, align 1
  store %struct.Memory* %loadMem_432377, %struct.Memory** %MEMORY
  %loadMem_43237f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 1
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 15
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3627 to i64*
  %3628 = load i64, i64* %RBP.i541
  %3629 = sub i64 %3628, 8
  %3630 = load i64, i64* %PC.i539
  %3631 = add i64 %3630, 4
  store i64 %3631, i64* %PC.i539
  %3632 = inttoptr i64 %3629 to i64*
  %3633 = load i64, i64* %3632
  store i64 %3633, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_43237f, %struct.Memory** %MEMORY
  %loadMem_432383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 33
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 1
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RAX.i538
  %3641 = load i64, i64* %PC.i537
  %3642 = add i64 %3641, 4
  store i64 %3642, i64* %PC.i537
  %3643 = lshr i64 %3640, 1
  %3644 = trunc i64 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = lshr i64 %3643, 1
  store i64 %3646, i64* %RAX.i538, align 8
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3645, i8* %3647, align 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3649 = trunc i64 %3646 to i32
  %3650 = and i32 %3649, 255
  %3651 = call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  store i8 %3654, i8* %3648, align 1
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3655, align 1
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3657 = icmp eq i64 %3646, 0
  %3658 = zext i1 %3657 to i8
  store i8 %3658, i8* %3656, align 1
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3659, align 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3660, align 1
  store %struct.Memory* %loadMem_432383, %struct.Memory** %MEMORY
  %loadMem_432387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 33
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3663 to i64*
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 1
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %3666 to i64*
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3668 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3667, i64 0, i64 1
  %YMM1.i536 = bitcast %union.VectorReg* %3668 to %"class.std::bitset"*
  %3669 = bitcast %"class.std::bitset"* %YMM1.i536 to i8*
  %3670 = load i64, i64* %RAX.i535
  %3671 = load i64, i64* %PC.i534
  %3672 = add i64 %3671, 5
  store i64 %3672, i64* %PC.i534
  %3673 = bitcast i8* %3669 to <2 x i32>*
  %3674 = load <2 x i32>, <2 x i32>* %3673, align 1
  %3675 = getelementptr inbounds i8, i8* %3669, i64 8
  %3676 = bitcast i8* %3675 to <2 x i32>*
  %3677 = load <2 x i32>, <2 x i32>* %3676, align 1
  %3678 = sitofp i64 %3670 to float
  %3679 = bitcast i8* %3669 to float*
  store float %3678, float* %3679, align 1
  %3680 = extractelement <2 x i32> %3674, i32 1
  %3681 = getelementptr inbounds i8, i8* %3669, i64 4
  %3682 = bitcast i8* %3681 to i32*
  store i32 %3680, i32* %3682, align 1
  %3683 = extractelement <2 x i32> %3677, i32 0
  %3684 = bitcast i8* %3675 to i32*
  store i32 %3683, i32* %3684, align 1
  %3685 = extractelement <2 x i32> %3677, i32 1
  %3686 = getelementptr inbounds i8, i8* %3669, i64 12
  %3687 = bitcast i8* %3686 to i32*
  store i32 %3685, i32* %3687, align 1
  store %struct.Memory* %loadMem_432387, %struct.Memory** %MEMORY
  %loadMem_43238c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 1
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %PC.i532
  %3695 = add i64 %3694, ptrtoint (%G_0x29956d__rip__type* @G_0x29956d__rip_ to i64)
  %3696 = load i64, i64* %PC.i532
  %3697 = add i64 %3696, 7
  store i64 %3697, i64* %PC.i532
  %3698 = inttoptr i64 %3695 to i64*
  %3699 = load i64, i64* %3698
  store i64 %3699, i64* %RAX.i533, align 8
  store %struct.Memory* %loadMem_43238c, %struct.Memory** %MEMORY
  %loadMem_432393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 1
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3706, i64 0, i64 2
  %YMM2.i531 = bitcast %union.VectorReg* %3707 to %"class.std::bitset"*
  %3708 = bitcast %"class.std::bitset"* %YMM2.i531 to i8*
  %3709 = load i64, i64* %RAX.i530
  %3710 = add i64 %3709, 48
  %3711 = load i64, i64* %PC.i529
  %3712 = add i64 %3711, 5
  store i64 %3712, i64* %PC.i529
  %3713 = inttoptr i64 %3710 to float*
  %3714 = load float, float* %3713
  %3715 = bitcast i8* %3708 to float*
  store float %3714, float* %3715, align 1
  %3716 = getelementptr inbounds i8, i8* %3708, i64 4
  %3717 = bitcast i8* %3716 to float*
  store float 0.000000e+00, float* %3717, align 1
  %3718 = getelementptr inbounds i8, i8* %3708, i64 8
  %3719 = bitcast i8* %3718 to float*
  store float 0.000000e+00, float* %3719, align 1
  %3720 = getelementptr inbounds i8, i8* %3708, i64 12
  %3721 = bitcast i8* %3720 to float*
  store float 0.000000e+00, float* %3721, align 1
  store %struct.Memory* %loadMem_432393, %struct.Memory** %MEMORY
  %loadMem_432398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3726 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3725, i64 0, i64 1
  %YMM1.i527 = bitcast %union.VectorReg* %3726 to %"class.std::bitset"*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3727, i64 0, i64 2
  %XMM2.i528 = bitcast %union.VectorReg* %3728 to %union.vec128_t*
  %3729 = bitcast %"class.std::bitset"* %YMM1.i527 to i8*
  %3730 = bitcast %"class.std::bitset"* %YMM1.i527 to i8*
  %3731 = bitcast %union.vec128_t* %XMM2.i528 to i8*
  %3732 = load i64, i64* %PC.i526
  %3733 = add i64 %3732, 4
  store i64 %3733, i64* %PC.i526
  %3734 = bitcast i8* %3730 to <2 x float>*
  %3735 = load <2 x float>, <2 x float>* %3734, align 1
  %3736 = getelementptr inbounds i8, i8* %3730, i64 8
  %3737 = bitcast i8* %3736 to <2 x i32>*
  %3738 = load <2 x i32>, <2 x i32>* %3737, align 1
  %3739 = bitcast i8* %3731 to <2 x float>*
  %3740 = load <2 x float>, <2 x float>* %3739, align 1
  %3741 = extractelement <2 x float> %3735, i32 0
  %3742 = extractelement <2 x float> %3740, i32 0
  %3743 = fmul float %3741, %3742
  %3744 = bitcast i8* %3729 to float*
  store float %3743, float* %3744, align 1
  %3745 = bitcast <2 x float> %3735 to <2 x i32>
  %3746 = extractelement <2 x i32> %3745, i32 1
  %3747 = getelementptr inbounds i8, i8* %3729, i64 4
  %3748 = bitcast i8* %3747 to i32*
  store i32 %3746, i32* %3748, align 1
  %3749 = extractelement <2 x i32> %3738, i32 0
  %3750 = getelementptr inbounds i8, i8* %3729, i64 8
  %3751 = bitcast i8* %3750 to i32*
  store i32 %3749, i32* %3751, align 1
  %3752 = extractelement <2 x i32> %3738, i32 1
  %3753 = getelementptr inbounds i8, i8* %3729, i64 12
  %3754 = bitcast i8* %3753 to i32*
  store i32 %3752, i32* %3754, align 1
  store %struct.Memory* %loadMem_432398, %struct.Memory** %MEMORY
  %loadMem_43239c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 33
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3757 to i64*
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 1
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %3760 to i64*
  %3761 = load i64, i64* %PC.i524
  %3762 = add i64 %3761, ptrtoint (%G_0x299555__rip__type* @G_0x299555__rip_ to i64)
  %3763 = load i64, i64* %PC.i524
  %3764 = add i64 %3763, 7
  store i64 %3764, i64* %PC.i524
  %3765 = inttoptr i64 %3762 to i64*
  %3766 = load i64, i64* %3765
  store i64 %3766, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_43239c, %struct.Memory** %MEMORY
  %loadMem_4323a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 33
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3769 to i64*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 1
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %3772 to i64*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 5
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %3775 to i64*
  %3776 = load i64, i64* %RAX.i522
  %3777 = add i64 %3776, 20
  %3778 = load i64, i64* %PC.i521
  %3779 = add i64 %3778, 3
  store i64 %3779, i64* %PC.i521
  %3780 = inttoptr i64 %3777 to i32*
  %3781 = load i32, i32* %3780
  %3782 = zext i32 %3781 to i64
  store i64 %3782, i64* %RCX.i523, align 8
  store %struct.Memory* %loadMem_4323a3, %struct.Memory** %MEMORY
  %loadMem_4323a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 5
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RCX.i520 = bitcast %union.anon* %3788 to i64*
  %3789 = load i64, i64* %RCX.i520
  %3790 = load i64, i64* %PC.i519
  %3791 = add i64 %3790, 2
  store i64 %3791, i64* %PC.i519
  %3792 = trunc i64 %3789 to i32
  %3793 = add i32 %3792, 1
  %3794 = zext i32 %3793 to i64
  store i64 %3794, i64* %RCX.i520, align 8
  %3795 = and i32 %3793, 255
  %3796 = call i32 @llvm.ctpop.i32(i32 %3795)
  %3797 = trunc i32 %3796 to i8
  %3798 = and i8 %3797, 1
  %3799 = xor i8 %3798, 1
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3799, i8* %3800, align 1
  %3801 = xor i32 %3793, %3792
  %3802 = lshr i32 %3801, 4
  %3803 = trunc i32 %3802 to i8
  %3804 = and i8 %3803, 1
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3804, i8* %3805, align 1
  %3806 = icmp eq i32 %3793, 0
  %3807 = zext i1 %3806 to i8
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3807, i8* %3808, align 1
  %3809 = lshr i32 %3793, 31
  %3810 = trunc i32 %3809 to i8
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3810, i8* %3811, align 1
  %3812 = lshr i32 %3792, 31
  %3813 = xor i32 %3809, %3812
  %3814 = add i32 %3813, %3809
  %3815 = icmp eq i32 %3814, 2
  %3816 = zext i1 %3815 to i8
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3816, i8* %3817, align 1
  store %struct.Memory* %loadMem_4323a6, %struct.Memory** %MEMORY
  %loadMem_4323a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3819 = getelementptr inbounds %struct.GPR, %struct.GPR* %3818, i32 0, i32 33
  %3820 = getelementptr inbounds %struct.Reg, %struct.Reg* %3819, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3820 to i64*
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3822 = getelementptr inbounds %struct.GPR, %struct.GPR* %3821, i32 0, i32 5
  %3823 = getelementptr inbounds %struct.Reg, %struct.Reg* %3822, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3823 to i32*
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3825 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3824, i64 0, i64 2
  %YMM2.i518 = bitcast %union.VectorReg* %3825 to %"class.std::bitset"*
  %3826 = bitcast %"class.std::bitset"* %YMM2.i518 to i8*
  %3827 = load i32, i32* %ECX.i
  %3828 = zext i32 %3827 to i64
  %3829 = load i64, i64* %PC.i517
  %3830 = add i64 %3829, 4
  store i64 %3830, i64* %PC.i517
  %3831 = bitcast i8* %3826 to <2 x i32>*
  %3832 = load <2 x i32>, <2 x i32>* %3831, align 1
  %3833 = getelementptr inbounds i8, i8* %3826, i64 8
  %3834 = bitcast i8* %3833 to <2 x i32>*
  %3835 = load <2 x i32>, <2 x i32>* %3834, align 1
  %3836 = sitofp i32 %3827 to float
  %3837 = bitcast i8* %3826 to float*
  store float %3836, float* %3837, align 1
  %3838 = extractelement <2 x i32> %3832, i32 1
  %3839 = getelementptr inbounds i8, i8* %3826, i64 4
  %3840 = bitcast i8* %3839 to i32*
  store i32 %3838, i32* %3840, align 1
  %3841 = extractelement <2 x i32> %3835, i32 0
  %3842 = bitcast i8* %3833 to i32*
  store i32 %3841, i32* %3842, align 1
  %3843 = extractelement <2 x i32> %3835, i32 1
  %3844 = getelementptr inbounds i8, i8* %3826, i64 12
  %3845 = bitcast i8* %3844 to i32*
  store i32 %3843, i32* %3845, align 1
  store %struct.Memory* %loadMem_4323a8, %struct.Memory** %MEMORY
  %loadMem_4323ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3847 = getelementptr inbounds %struct.GPR, %struct.GPR* %3846, i32 0, i32 33
  %3848 = getelementptr inbounds %struct.Reg, %struct.Reg* %3847, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3848 to i64*
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3849, i64 0, i64 1
  %YMM1.i515 = bitcast %union.VectorReg* %3850 to %"class.std::bitset"*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3851, i64 0, i64 2
  %XMM2.i516 = bitcast %union.VectorReg* %3852 to %union.vec128_t*
  %3853 = bitcast %"class.std::bitset"* %YMM1.i515 to i8*
  %3854 = bitcast %"class.std::bitset"* %YMM1.i515 to i8*
  %3855 = bitcast %union.vec128_t* %XMM2.i516 to i8*
  %3856 = load i64, i64* %PC.i514
  %3857 = add i64 %3856, 4
  store i64 %3857, i64* %PC.i514
  %3858 = bitcast i8* %3854 to <2 x float>*
  %3859 = load <2 x float>, <2 x float>* %3858, align 1
  %3860 = getelementptr inbounds i8, i8* %3854, i64 8
  %3861 = bitcast i8* %3860 to <2 x i32>*
  %3862 = load <2 x i32>, <2 x i32>* %3861, align 1
  %3863 = bitcast i8* %3855 to <2 x float>*
  %3864 = load <2 x float>, <2 x float>* %3863, align 1
  %3865 = extractelement <2 x float> %3859, i32 0
  %3866 = extractelement <2 x float> %3864, i32 0
  %3867 = fdiv float %3865, %3866
  %3868 = bitcast i8* %3853 to float*
  store float %3867, float* %3868, align 1
  %3869 = bitcast <2 x float> %3859 to <2 x i32>
  %3870 = extractelement <2 x i32> %3869, i32 1
  %3871 = getelementptr inbounds i8, i8* %3853, i64 4
  %3872 = bitcast i8* %3871 to i32*
  store i32 %3870, i32* %3872, align 1
  %3873 = extractelement <2 x i32> %3862, i32 0
  %3874 = getelementptr inbounds i8, i8* %3853, i64 8
  %3875 = bitcast i8* %3874 to i32*
  store i32 %3873, i32* %3875, align 1
  %3876 = extractelement <2 x i32> %3862, i32 1
  %3877 = getelementptr inbounds i8, i8* %3853, i64 12
  %3878 = bitcast i8* %3877 to i32*
  store i32 %3876, i32* %3878, align 1
  store %struct.Memory* %loadMem_4323ac, %struct.Memory** %MEMORY
  %loadMem_4323b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3883 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3882, i64 0, i64 0
  %YMM0.i512 = bitcast %union.VectorReg* %3883 to %"class.std::bitset"*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3884, i64 0, i64 1
  %XMM1.i513 = bitcast %union.VectorReg* %3885 to %union.vec128_t*
  %3886 = bitcast %"class.std::bitset"* %YMM0.i512 to i8*
  %3887 = bitcast %"class.std::bitset"* %YMM0.i512 to i8*
  %3888 = bitcast %union.vec128_t* %XMM1.i513 to i8*
  %3889 = load i64, i64* %PC.i511
  %3890 = add i64 %3889, 4
  store i64 %3890, i64* %PC.i511
  %3891 = bitcast i8* %3887 to <2 x float>*
  %3892 = load <2 x float>, <2 x float>* %3891, align 1
  %3893 = getelementptr inbounds i8, i8* %3887, i64 8
  %3894 = bitcast i8* %3893 to <2 x i32>*
  %3895 = load <2 x i32>, <2 x i32>* %3894, align 1
  %3896 = bitcast i8* %3888 to <2 x float>*
  %3897 = load <2 x float>, <2 x float>* %3896, align 1
  %3898 = extractelement <2 x float> %3892, i32 0
  %3899 = extractelement <2 x float> %3897, i32 0
  %3900 = fadd float %3898, %3899
  %3901 = bitcast i8* %3886 to float*
  store float %3900, float* %3901, align 1
  %3902 = bitcast <2 x float> %3892 to <2 x i32>
  %3903 = extractelement <2 x i32> %3902, i32 1
  %3904 = getelementptr inbounds i8, i8* %3886, i64 4
  %3905 = bitcast i8* %3904 to i32*
  store i32 %3903, i32* %3905, align 1
  %3906 = extractelement <2 x i32> %3895, i32 0
  %3907 = getelementptr inbounds i8, i8* %3886, i64 8
  %3908 = bitcast i8* %3907 to i32*
  store i32 %3906, i32* %3908, align 1
  %3909 = extractelement <2 x i32> %3895, i32 1
  %3910 = getelementptr inbounds i8, i8* %3886, i64 12
  %3911 = bitcast i8* %3910 to i32*
  store i32 %3909, i32* %3911, align 1
  store %struct.Memory* %loadMem_4323b0, %struct.Memory** %MEMORY
  %loadMem_4323b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3913 = getelementptr inbounds %struct.GPR, %struct.GPR* %3912, i32 0, i32 33
  %3914 = getelementptr inbounds %struct.Reg, %struct.Reg* %3913, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %3914 to i64*
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3916 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3915, i64 0, i64 1
  %YMM1.i510 = bitcast %union.VectorReg* %3916 to %"class.std::bitset"*
  %3917 = bitcast %"class.std::bitset"* %YMM1.i510 to i8*
  %3918 = load i64, i64* %PC.i509
  %3919 = add i64 %3918, ptrtoint (%G_0x8b47c__rip__type* @G_0x8b47c__rip_ to i64)
  %3920 = load i64, i64* %PC.i509
  %3921 = add i64 %3920, 8
  store i64 %3921, i64* %PC.i509
  %3922 = inttoptr i64 %3919 to float*
  %3923 = load float, float* %3922
  %3924 = bitcast i8* %3917 to float*
  store float %3923, float* %3924, align 1
  %3925 = getelementptr inbounds i8, i8* %3917, i64 4
  %3926 = bitcast i8* %3925 to float*
  store float 0.000000e+00, float* %3926, align 1
  %3927 = getelementptr inbounds i8, i8* %3917, i64 8
  %3928 = bitcast i8* %3927 to float*
  store float 0.000000e+00, float* %3928, align 1
  %3929 = getelementptr inbounds i8, i8* %3917, i64 12
  %3930 = bitcast i8* %3929 to float*
  store float 0.000000e+00, float* %3930, align 1
  store %struct.Memory* %loadMem_4323b4, %struct.Memory** %MEMORY
  %loadMem_4323bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3933 to i64*
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3935 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3934, i64 0, i64 2
  %YMM2.i507 = bitcast %union.VectorReg* %3935 to %"class.std::bitset"*
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3937 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3936, i64 0, i64 0
  %XMM0.i508 = bitcast %union.VectorReg* %3937 to %union.vec128_t*
  %3938 = bitcast %"class.std::bitset"* %YMM2.i507 to i8*
  %3939 = bitcast %union.vec128_t* %XMM0.i508 to i8*
  %3940 = load i64, i64* %PC.i506
  %3941 = add i64 %3940, 3
  store i64 %3941, i64* %PC.i506
  %3942 = bitcast i8* %3939 to <2 x i32>*
  %3943 = load <2 x i32>, <2 x i32>* %3942, align 1
  %3944 = getelementptr inbounds i8, i8* %3939, i64 8
  %3945 = bitcast i8* %3944 to <2 x i32>*
  %3946 = load <2 x i32>, <2 x i32>* %3945, align 1
  %3947 = extractelement <2 x i32> %3943, i32 0
  %3948 = bitcast i8* %3938 to i32*
  store i32 %3947, i32* %3948, align 1
  %3949 = extractelement <2 x i32> %3943, i32 1
  %3950 = getelementptr inbounds i8, i8* %3938, i64 4
  %3951 = bitcast i8* %3950 to i32*
  store i32 %3949, i32* %3951, align 1
  %3952 = extractelement <2 x i32> %3946, i32 0
  %3953 = getelementptr inbounds i8, i8* %3938, i64 8
  %3954 = bitcast i8* %3953 to i32*
  store i32 %3952, i32* %3954, align 1
  %3955 = extractelement <2 x i32> %3946, i32 1
  %3956 = getelementptr inbounds i8, i8* %3938, i64 12
  %3957 = bitcast i8* %3956 to i32*
  store i32 %3955, i32* %3957, align 1
  store %struct.Memory* %loadMem_4323bc, %struct.Memory** %MEMORY
  %loadMem_4323bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3962 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3961, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3962 to %"class.std::bitset"*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3963, i64 0, i64 1
  %XMM1.i505 = bitcast %union.VectorReg* %3964 to %union.vec128_t*
  %3965 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3966 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %3967 = bitcast %union.vec128_t* %XMM1.i505 to i8*
  %3968 = load i64, i64* %PC.i504
  %3969 = add i64 %3968, 4
  store i64 %3969, i64* %PC.i504
  %3970 = bitcast i8* %3966 to <2 x float>*
  %3971 = load <2 x float>, <2 x float>* %3970, align 1
  %3972 = getelementptr inbounds i8, i8* %3966, i64 8
  %3973 = bitcast i8* %3972 to <2 x i32>*
  %3974 = load <2 x i32>, <2 x i32>* %3973, align 1
  %3975 = bitcast i8* %3967 to <2 x float>*
  %3976 = load <2 x float>, <2 x float>* %3975, align 1
  %3977 = extractelement <2 x float> %3971, i32 0
  %3978 = extractelement <2 x float> %3976, i32 0
  %3979 = fsub float %3977, %3978
  %3980 = bitcast i8* %3965 to float*
  store float %3979, float* %3980, align 1
  %3981 = bitcast <2 x float> %3971 to <2 x i32>
  %3982 = extractelement <2 x i32> %3981, i32 1
  %3983 = getelementptr inbounds i8, i8* %3965, i64 4
  %3984 = bitcast i8* %3983 to i32*
  store i32 %3982, i32* %3984, align 1
  %3985 = extractelement <2 x i32> %3974, i32 0
  %3986 = getelementptr inbounds i8, i8* %3965, i64 8
  %3987 = bitcast i8* %3986 to i32*
  store i32 %3985, i32* %3987, align 1
  %3988 = extractelement <2 x i32> %3974, i32 1
  %3989 = getelementptr inbounds i8, i8* %3965, i64 12
  %3990 = bitcast i8* %3989 to i32*
  store i32 %3988, i32* %3990, align 1
  store %struct.Memory* %loadMem_4323bf, %struct.Memory** %MEMORY
  %loadMem_4323c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 1
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %3996 to i64*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3997, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3998 to %union.vec128_t*
  %3999 = bitcast %union.vec128_t* %XMM2.i to i8*
  %4000 = load i64, i64* %PC.i502
  %4001 = add i64 %4000, 5
  store i64 %4001, i64* %PC.i502
  %4002 = bitcast i8* %3999 to <2 x float>*
  %4003 = load <2 x float>, <2 x float>* %4002, align 1
  %4004 = extractelement <2 x float> %4003, i32 0
  %4005 = call float @llvm.trunc.f32(float %4004)
  %4006 = fptosi float %4005 to i64
  store i64 %4006, i64* %RAX.i503, align 8
  store %struct.Memory* %loadMem_4323c3, %struct.Memory** %MEMORY
  %loadMem_4323c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 7
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RDX.i501 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %PC.i500
  %4014 = add i64 %4013, 10
  store i64 %4014, i64* %PC.i500
  store i64 -9223372036854775808, i64* %RDX.i501, align 8
  store %struct.Memory* %loadMem_4323c8, %struct.Memory** %MEMORY
  %loadMem_4323d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 33
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 1
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 7
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RDX.i499 = bitcast %union.anon* %4023 to i64*
  %4024 = load i64, i64* %RAX.i498
  %4025 = load i64, i64* %RDX.i499
  %4026 = load i64, i64* %PC.i497
  %4027 = add i64 %4026, 3
  store i64 %4027, i64* %PC.i497
  %4028 = xor i64 %4025, %4024
  store i64 %4028, i64* %RAX.i498, align 8
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4029, align 1
  %4030 = trunc i64 %4028 to i32
  %4031 = and i32 %4030, 255
  %4032 = call i32 @llvm.ctpop.i32(i32 %4031)
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = xor i8 %4034, 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4035, i8* %4036, align 1
  %4037 = icmp eq i64 %4028, 0
  %4038 = zext i1 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4038, i8* %4039, align 1
  %4040 = lshr i64 %4028, 63
  %4041 = trunc i64 %4040 to i8
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4041, i8* %4042, align 1
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4043, align 1
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4044, align 1
  store %struct.Memory* %loadMem_4323d2, %struct.Memory** %MEMORY
  %loadMem_4323d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 33
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %4047 to i64*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 7
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RDX.i495 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4051, i64 0, i64 0
  %XMM0.i496 = bitcast %union.VectorReg* %4052 to %union.vec128_t*
  %4053 = bitcast %union.vec128_t* %XMM0.i496 to i8*
  %4054 = load i64, i64* %PC.i494
  %4055 = add i64 %4054, 5
  store i64 %4055, i64* %PC.i494
  %4056 = bitcast i8* %4053 to <2 x float>*
  %4057 = load <2 x float>, <2 x float>* %4056, align 1
  %4058 = extractelement <2 x float> %4057, i32 0
  %4059 = call float @llvm.trunc.f32(float %4058)
  %4060 = fptosi float %4059 to i64
  store i64 %4060, i64* %RDX.i495, align 8
  store %struct.Memory* %loadMem_4323d5, %struct.Memory** %MEMORY
  %loadMem_4323da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 33
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %4063 to i64*
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4064, i64 0, i64 0
  %XMM0.i490 = bitcast %union.VectorReg* %4065 to %union.vec128_t*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4066, i64 0, i64 1
  %XMM1.i491 = bitcast %union.VectorReg* %4067 to %union.vec128_t*
  %4068 = bitcast %union.vec128_t* %XMM0.i490 to i8*
  %4069 = bitcast %union.vec128_t* %XMM1.i491 to i8*
  %4070 = load i64, i64* %PC.i489
  %4071 = add i64 %4070, 3
  store i64 %4071, i64* %PC.i489
  %4072 = bitcast i8* %4068 to <2 x float>*
  %4073 = load <2 x float>, <2 x float>* %4072, align 1
  %4074 = extractelement <2 x float> %4073, i32 0
  %4075 = bitcast i8* %4069 to <2 x float>*
  %4076 = load <2 x float>, <2 x float>* %4075, align 1
  %4077 = extractelement <2 x float> %4076, i32 0
  %4078 = fcmp uno float %4074, %4077
  br i1 %4078, label %4079, label %4091

; <label>:4079:                                   ; preds = %block_.L_432377
  %4080 = fadd float %4074, %4077
  %4081 = bitcast float %4080 to i32
  %4082 = and i32 %4081, 2143289344
  %4083 = icmp eq i32 %4082, 2139095040
  %4084 = and i32 %4081, 4194303
  %4085 = icmp ne i32 %4084, 0
  %4086 = and i1 %4083, %4085
  br i1 %4086, label %4087, label %4097

; <label>:4087:                                   ; preds = %4079
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4089 = load i64, i64* %4088, align 8
  %4090 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4089, %struct.Memory* %loadMem_4323da)
  br label %routine_ucomiss__xmm1___xmm0.exit

; <label>:4091:                                   ; preds = %block_.L_432377
  %4092 = fcmp ogt float %4074, %4077
  br i1 %4092, label %4097, label %4093

; <label>:4093:                                   ; preds = %4091
  %4094 = fcmp olt float %4074, %4077
  br i1 %4094, label %4097, label %4095

; <label>:4095:                                   ; preds = %4093
  %4096 = fcmp oeq float %4074, %4077
  br i1 %4096, label %4097, label %4104

; <label>:4097:                                   ; preds = %4095, %4093, %4091, %4079
  %4098 = phi i8 [ 0, %4091 ], [ 0, %4093 ], [ 1, %4095 ], [ 1, %4079 ]
  %4099 = phi i8 [ 0, %4091 ], [ 0, %4093 ], [ 0, %4095 ], [ 1, %4079 ]
  %4100 = phi i8 [ 0, %4091 ], [ 1, %4093 ], [ 0, %4095 ], [ 1, %4079 ]
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4098, i8* %4101, align 1
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4099, i8* %4102, align 1
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4100, i8* %4103, align 1
  br label %4104

; <label>:4104:                                   ; preds = %4097, %4095
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4105, align 1
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4106, align 1
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4107, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit

routine_ucomiss__xmm1___xmm0.exit:                ; preds = %4087, %4104
  %4108 = phi %struct.Memory* [ %4090, %4087 ], [ %loadMem_4323da, %4104 ]
  store %struct.Memory* %4108, %struct.Memory** %MEMORY
  %loadMem_4323dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 1
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 7
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RDX.i488 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RDX.i488
  %4119 = load i64, i64* %PC.i486
  %4120 = add i64 %4119, 4
  store i64 %4120, i64* %PC.i486
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4122 = load i8, i8* %4121, align 1
  %4123 = icmp ne i8 %4122, 0
  %4124 = load i64, i64* %RAX.i487, align 8
  %4125 = select i1 %4123, i64 %4118, i64 %4124
  store i64 %4125, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_4323dd, %struct.Memory** %MEMORY
  %loadMem_4323e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 33
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4128 to i64*
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 7
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %4131 to i64*
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4133 = getelementptr inbounds %struct.GPR, %struct.GPR* %4132, i32 0, i32 15
  %4134 = getelementptr inbounds %struct.Reg, %struct.Reg* %4133, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %4134 to i64*
  %4135 = load i64, i64* %RBP.i485
  %4136 = sub i64 %4135, 104
  %4137 = load i64, i64* %PC.i483
  %4138 = add i64 %4137, 4
  store i64 %4138, i64* %PC.i483
  %4139 = inttoptr i64 %4136 to i64*
  %4140 = load i64, i64* %4139
  store i64 %4140, i64* %RDX.i484, align 8
  store %struct.Memory* %loadMem_4323e1, %struct.Memory** %MEMORY
  %loadMem_4323e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 33
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4145 = getelementptr inbounds %struct.GPR, %struct.GPR* %4144, i32 0, i32 9
  %4146 = getelementptr inbounds %struct.Reg, %struct.Reg* %4145, i32 0, i32 0
  %RSI.i481 = bitcast %union.anon* %4146 to i64*
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 15
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %4149 to i64*
  %4150 = load i64, i64* %RBP.i482
  %4151 = sub i64 %4150, 48
  %4152 = load i64, i64* %PC.i480
  %4153 = add i64 %4152, 4
  store i64 %4153, i64* %PC.i480
  %4154 = inttoptr i64 %4151 to i64*
  %4155 = load i64, i64* %4154
  store i64 %4155, i64* %RSI.i481, align 8
  store %struct.Memory* %loadMem_4323e5, %struct.Memory** %MEMORY
  %loadMem_4323e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4157 = getelementptr inbounds %struct.GPR, %struct.GPR* %4156, i32 0, i32 33
  %4158 = getelementptr inbounds %struct.Reg, %struct.Reg* %4157, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4158 to i64*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 1
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 7
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RDX.i478 = bitcast %union.anon* %4164 to i64*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 9
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %RSI.i479 = bitcast %union.anon* %4167 to i64*
  %4168 = load i64, i64* %RDX.i478
  %4169 = load i64, i64* %RSI.i479
  %4170 = mul i64 %4169, 8
  %4171 = add i64 %4170, %4168
  %4172 = load i64, i64* %RAX.i477
  %4173 = load i64, i64* %PC.i476
  %4174 = add i64 %4173, 4
  store i64 %4174, i64* %PC.i476
  %4175 = inttoptr i64 %4171 to i64*
  store i64 %4172, i64* %4175
  store %struct.Memory* %loadMem_4323e9, %struct.Memory** %MEMORY
  br label %block_.L_4323ed

block_.L_4323ed:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit, %routine_divq__rcx.exit
  %loadMem_4323ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 33
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %PC.i475
  %4180 = add i64 %4179, 5
  %4181 = load i64, i64* %PC.i475
  %4182 = add i64 %4181, 5
  store i64 %4182, i64* %PC.i475
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4180, i64* %4183, align 8
  store %struct.Memory* %loadMem_4323ed, %struct.Memory** %MEMORY
  br label %block_.L_4323f2

block_.L_4323f2:                                  ; preds = %block_.L_4323ed
  %loadMem_4323f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 1
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 15
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %4192 to i64*
  %4193 = load i64, i64* %RBP.i474
  %4194 = sub i64 %4193, 48
  %4195 = load i64, i64* %PC.i472
  %4196 = add i64 %4195, 4
  store i64 %4196, i64* %PC.i472
  %4197 = inttoptr i64 %4194 to i64*
  %4198 = load i64, i64* %4197
  store i64 %4198, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_4323f2, %struct.Memory** %MEMORY
  %loadMem_4323f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 1
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RAX.i471
  %4206 = load i64, i64* %PC.i470
  %4207 = add i64 %4206, 4
  store i64 %4207, i64* %PC.i470
  %4208 = add i64 1, %4205
  store i64 %4208, i64* %RAX.i471, align 8
  %4209 = icmp ult i64 %4208, %4205
  %4210 = icmp ult i64 %4208, 1
  %4211 = or i1 %4209, %4210
  %4212 = zext i1 %4211 to i8
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4212, i8* %4213, align 1
  %4214 = trunc i64 %4208 to i32
  %4215 = and i32 %4214, 255
  %4216 = call i32 @llvm.ctpop.i32(i32 %4215)
  %4217 = trunc i32 %4216 to i8
  %4218 = and i8 %4217, 1
  %4219 = xor i8 %4218, 1
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4219, i8* %4220, align 1
  %4221 = xor i64 1, %4205
  %4222 = xor i64 %4221, %4208
  %4223 = lshr i64 %4222, 4
  %4224 = trunc i64 %4223 to i8
  %4225 = and i8 %4224, 1
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4225, i8* %4226, align 1
  %4227 = icmp eq i64 %4208, 0
  %4228 = zext i1 %4227 to i8
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4228, i8* %4229, align 1
  %4230 = lshr i64 %4208, 63
  %4231 = trunc i64 %4230 to i8
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4231, i8* %4232, align 1
  %4233 = lshr i64 %4205, 63
  %4234 = xor i64 %4230, %4233
  %4235 = add i64 %4234, %4230
  %4236 = icmp eq i64 %4235, 2
  %4237 = zext i1 %4236 to i8
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4237, i8* %4238, align 1
  store %struct.Memory* %loadMem_4323f6, %struct.Memory** %MEMORY
  %loadMem_4323fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 33
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 1
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %4244 to i64*
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 15
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4247 to i64*
  %4248 = load i64, i64* %RBP.i469
  %4249 = sub i64 %4248, 48
  %4250 = load i64, i64* %RAX.i468
  %4251 = load i64, i64* %PC.i467
  %4252 = add i64 %4251, 4
  store i64 %4252, i64* %PC.i467
  %4253 = inttoptr i64 %4249 to i64*
  store i64 %4250, i64* %4253
  store %struct.Memory* %loadMem_4323fa, %struct.Memory** %MEMORY
  %loadMem_4323fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %4256 to i64*
  %4257 = load i64, i64* %PC.i466
  %4258 = add i64 %4257, -427
  %4259 = load i64, i64* %PC.i466
  %4260 = add i64 %4259, 5
  store i64 %4260, i64* %PC.i466
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4258, i64* %4261, align 8
  store %struct.Memory* %loadMem_4323fe, %struct.Memory** %MEMORY
  br label %block_.L_432253

block_.L_432403:                                  ; preds = %block_.L_432253
  %loadMem_432403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4263 = getelementptr inbounds %struct.GPR, %struct.GPR* %4262, i32 0, i32 33
  %4264 = getelementptr inbounds %struct.Reg, %struct.Reg* %4263, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4264 to i64*
  %4265 = load i64, i64* %PC.i465
  %4266 = add i64 %4265, 5
  %4267 = load i64, i64* %PC.i465
  %4268 = add i64 %4267, 5
  store i64 %4268, i64* %PC.i465
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4266, i64* %4269, align 8
  store %struct.Memory* %loadMem_432403, %struct.Memory** %MEMORY
  br label %block_.L_432408

block_.L_432408:                                  ; preds = %block_.L_432403, %routine_ucomiss__xmm0___xmm1.exit
  %loadMem_432408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 11
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RDI.i463 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 15
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %4278 to i64*
  %4279 = load i64, i64* %RBP.i464
  %4280 = sub i64 %4279, 24
  %4281 = load i64, i64* %PC.i462
  %4282 = add i64 %4281, 4
  store i64 %4282, i64* %PC.i462
  %4283 = inttoptr i64 %4280 to i64*
  %4284 = load i64, i64* %4283
  store i64 %4284, i64* %RDI.i463, align 8
  store %struct.Memory* %loadMem_432408, %struct.Memory** %MEMORY
  %loadMem_43240c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 9
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RSI.i460 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 15
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4293 to i64*
  %4294 = load i64, i64* %RBP.i461
  %4295 = sub i64 %4294, 104
  %4296 = load i64, i64* %PC.i459
  %4297 = add i64 %4296, 4
  store i64 %4297, i64* %PC.i459
  %4298 = inttoptr i64 %4295 to i64*
  %4299 = load i64, i64* %4298
  store i64 %4299, i64* %RSI.i460, align 8
  store %struct.Memory* %loadMem_43240c, %struct.Memory** %MEMORY
  %loadMem1_432410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %PC.i458
  %4304 = add i64 %4303, -1296
  %4305 = load i64, i64* %PC.i458
  %4306 = add i64 %4305, 5
  %4307 = load i64, i64* %PC.i458
  %4308 = add i64 %4307, 5
  store i64 %4308, i64* %PC.i458
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4310 = load i64, i64* %4309, align 8
  %4311 = add i64 %4310, -8
  %4312 = inttoptr i64 %4311 to i64*
  store i64 %4306, i64* %4312
  store i64 %4311, i64* %4309, align 8
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4304, i64* %4313, align 8
  store %struct.Memory* %loadMem1_432410, %struct.Memory** %MEMORY
  %loadMem2_432410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432410 = load i64, i64* %3
  %call2_432410 = call %struct.Memory* @sub_431f00.Sort(%struct.State* %0, i64 %loadPC_432410, %struct.Memory* %loadMem2_432410)
  store %struct.Memory* %call2_432410, %struct.Memory** %MEMORY
  %loadMem_432415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 9
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RSI.i456 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RBP.i457
  %4324 = sub i64 %4323, 8
  %4325 = load i64, i64* %PC.i455
  %4326 = add i64 %4325, 5
  store i64 %4326, i64* %PC.i455
  %4327 = inttoptr i64 %4324 to i64*
  %4328 = load i64, i64* %4327
  %4329 = sext i64 %4328 to i128
  %4330 = and i128 %4329, -18446744073709551616
  %4331 = zext i64 %4328 to i128
  %4332 = or i128 %4330, %4331
  %4333 = mul i128 %4332, 20
  %4334 = trunc i128 %4333 to i64
  store i64 %4334, i64* %RSI.i456, align 8
  %4335 = sext i64 %4334 to i128
  %4336 = icmp ne i128 %4335, %4333
  %4337 = zext i1 %4336 to i8
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4337, i8* %4338, align 1
  %4339 = trunc i128 %4333 to i32
  %4340 = and i32 %4339, 255
  %4341 = call i32 @llvm.ctpop.i32(i32 %4340)
  %4342 = trunc i32 %4341 to i8
  %4343 = and i8 %4342, 1
  %4344 = xor i8 %4343, 1
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4344, i8* %4345, align 1
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4346, align 1
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4347, align 1
  %4348 = lshr i64 %4334, 63
  %4349 = trunc i64 %4348 to i8
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4349, i8* %4350, align 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4337, i8* %4351, align 1
  store %struct.Memory* %loadMem_432415, %struct.Memory** %MEMORY
  %loadMem_43241a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4353 = getelementptr inbounds %struct.GPR, %struct.GPR* %4352, i32 0, i32 33
  %4354 = getelementptr inbounds %struct.Reg, %struct.Reg* %4353, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %4354 to i64*
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 9
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 15
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %RBP.i454
  %4362 = sub i64 %4361, 72
  %4363 = load i64, i64* %RSI.i453
  %4364 = load i64, i64* %PC.i452
  %4365 = add i64 %4364, 4
  store i64 %4365, i64* %PC.i452
  %4366 = inttoptr i64 %4362 to i64*
  store i64 %4363, i64* %4366
  store %struct.Memory* %loadMem_43241a, %struct.Memory** %MEMORY
  %loadMem_43241e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 33
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %4369 to i64*
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 15
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %4372 to i64*
  %4373 = load i64, i64* %RBP.i451
  %4374 = sub i64 %4373, 48
  %4375 = load i64, i64* %PC.i450
  %4376 = add i64 %4375, 8
  store i64 %4376, i64* %PC.i450
  %4377 = inttoptr i64 %4374 to i64*
  store i64 0, i64* %4377
  store %struct.Memory* %loadMem_43241e, %struct.Memory** %MEMORY
  br label %block_.L_432426

block_.L_432426:                                  ; preds = %block_.L_432687, %block_.L_432408
  %loadMem_432426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 1
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %4383 to i64*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 15
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %4386 to i64*
  %4387 = load i64, i64* %RBP.i449
  %4388 = sub i64 %4387, 48
  %4389 = load i64, i64* %PC.i447
  %4390 = add i64 %4389, 4
  store i64 %4390, i64* %PC.i447
  %4391 = inttoptr i64 %4388 to i64*
  %4392 = load i64, i64* %4391
  store i64 %4392, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_432426, %struct.Memory** %MEMORY
  %loadMem_43242a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 33
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %4395 to i64*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 1
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 15
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %4401 to i64*
  %4402 = load i64, i64* %RAX.i445
  %4403 = load i64, i64* %RBP.i446
  %4404 = sub i64 %4403, 24
  %4405 = load i64, i64* %PC.i444
  %4406 = add i64 %4405, 4
  store i64 %4406, i64* %PC.i444
  %4407 = inttoptr i64 %4404 to i64*
  %4408 = load i64, i64* %4407
  %4409 = sub i64 %4402, %4408
  %4410 = icmp ugt i64 %4408, %4402
  %4411 = zext i1 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4411, i8* %4412, align 1
  %4413 = trunc i64 %4409 to i32
  %4414 = and i32 %4413, 255
  %4415 = call i32 @llvm.ctpop.i32(i32 %4414)
  %4416 = trunc i32 %4415 to i8
  %4417 = and i8 %4416, 1
  %4418 = xor i8 %4417, 1
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4418, i8* %4419, align 1
  %4420 = xor i64 %4408, %4402
  %4421 = xor i64 %4420, %4409
  %4422 = lshr i64 %4421, 4
  %4423 = trunc i64 %4422 to i8
  %4424 = and i8 %4423, 1
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4424, i8* %4425, align 1
  %4426 = icmp eq i64 %4409, 0
  %4427 = zext i1 %4426 to i8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4427, i8* %4428, align 1
  %4429 = lshr i64 %4409, 63
  %4430 = trunc i64 %4429 to i8
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4430, i8* %4431, align 1
  %4432 = lshr i64 %4402, 63
  %4433 = lshr i64 %4408, 63
  %4434 = xor i64 %4433, %4432
  %4435 = xor i64 %4429, %4432
  %4436 = add i64 %4435, %4434
  %4437 = icmp eq i64 %4436, 2
  %4438 = zext i1 %4437 to i8
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4438, i8* %4439, align 1
  store %struct.Memory* %loadMem_43242a, %struct.Memory** %MEMORY
  %loadMem_43242e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 33
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4442 to i64*
  %4443 = load i64, i64* %PC.i443
  %4444 = add i64 %4443, 650
  %4445 = load i64, i64* %PC.i443
  %4446 = add i64 %4445, 6
  %4447 = load i64, i64* %PC.i443
  %4448 = add i64 %4447, 6
  store i64 %4448, i64* %PC.i443
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4450 = load i8, i8* %4449, align 1
  %4451 = icmp eq i8 %4450, 0
  %4452 = zext i1 %4451 to i8
  store i8 %4452, i8* %BRANCH_TAKEN, align 1
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4454 = select i1 %4451, i64 %4444, i64 %4446
  store i64 %4454, i64* %4453, align 8
  store %struct.Memory* %loadMem_43242e, %struct.Memory** %MEMORY
  %loadBr_43242e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43242e = icmp eq i8 %loadBr_43242e, 1
  br i1 %cmpBr_43242e, label %block_.L_4326b8, label %block_432434

block_432434:                                     ; preds = %block_.L_432426
  %loadMem_432434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 33
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4457 to i64*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 1
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 15
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %4463 to i64*
  %4464 = load i64, i64* %RBP.i442
  %4465 = sub i64 %4464, 104
  %4466 = load i64, i64* %PC.i440
  %4467 = add i64 %4466, 4
  store i64 %4467, i64* %PC.i440
  %4468 = inttoptr i64 %4465 to i64*
  %4469 = load i64, i64* %4468
  store i64 %4469, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_432434, %struct.Memory** %MEMORY
  %loadMem_432438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 33
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 5
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 15
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %4478 to i64*
  %4479 = load i64, i64* %RBP.i439
  %4480 = sub i64 %4479, 48
  %4481 = load i64, i64* %PC.i437
  %4482 = add i64 %4481, 4
  store i64 %4482, i64* %PC.i437
  %4483 = inttoptr i64 %4480 to i64*
  %4484 = load i64, i64* %4483
  store i64 %4484, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_432438, %struct.Memory** %MEMORY
  %loadMem_43243c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 33
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 1
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 5
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %4493 to i64*
  %4494 = load i64, i64* %RAX.i435
  %4495 = load i64, i64* %RCX.i436
  %4496 = mul i64 %4495, 8
  %4497 = add i64 %4496, %4494
  %4498 = load i64, i64* %PC.i434
  %4499 = add i64 %4498, 4
  store i64 %4499, i64* %PC.i434
  %4500 = inttoptr i64 %4497 to i64*
  %4501 = load i64, i64* %4500
  store i64 %4501, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_43243c, %struct.Memory** %MEMORY
  %loadMem_432440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 33
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4504 to i64*
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 5
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %RCX.i433 = bitcast %union.anon* %4507 to i64*
  %4508 = load i64, i64* %PC.i432
  %4509 = add i64 %4508, ptrtoint (%G_0x2994b1__rip__type* @G_0x2994b1__rip_ to i64)
  %4510 = load i64, i64* %PC.i432
  %4511 = add i64 %4510, 7
  store i64 %4511, i64* %PC.i432
  %4512 = inttoptr i64 %4509 to i64*
  %4513 = load i64, i64* %4512
  store i64 %4513, i64* %RCX.i433, align 8
  store %struct.Memory* %loadMem_432440, %struct.Memory** %MEMORY
  %loadMem_432447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 33
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4516 to i64*
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 5
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 7
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %4522 to i64*
  %4523 = load i64, i64* %RCX.i430
  %4524 = add i64 %4523, 20
  %4525 = load i64, i64* %PC.i429
  %4526 = add i64 %4525, 3
  store i64 %4526, i64* %PC.i429
  %4527 = inttoptr i64 %4524 to i32*
  %4528 = load i32, i32* %4527
  %4529 = zext i32 %4528 to i64
  store i64 %4529, i64* %RDX.i431, align 8
  store %struct.Memory* %loadMem_432447, %struct.Memory** %MEMORY
  %loadMem_43244a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 33
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 7
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %RDX.i428
  %4537 = load i64, i64* %PC.i427
  %4538 = add i64 %4537, 2
  store i64 %4538, i64* %PC.i427
  %4539 = trunc i64 %4536 to i32
  %4540 = add i32 %4539, 1
  %4541 = zext i32 %4540 to i64
  store i64 %4541, i64* %RDX.i428, align 8
  %4542 = and i32 %4540, 255
  %4543 = call i32 @llvm.ctpop.i32(i32 %4542)
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4546, i8* %4547, align 1
  %4548 = xor i32 %4540, %4539
  %4549 = lshr i32 %4548, 4
  %4550 = trunc i32 %4549 to i8
  %4551 = and i8 %4550, 1
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4551, i8* %4552, align 1
  %4553 = icmp eq i32 %4540, 0
  %4554 = zext i1 %4553 to i8
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4554, i8* %4555, align 1
  %4556 = lshr i32 %4540, 31
  %4557 = trunc i32 %4556 to i8
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4557, i8* %4558, align 1
  %4559 = lshr i32 %4539, 31
  %4560 = xor i32 %4556, %4559
  %4561 = add i32 %4560, %4556
  %4562 = icmp eq i32 %4561, 2
  %4563 = zext i1 %4562 to i8
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4563, i8* %4564, align 1
  store %struct.Memory* %loadMem_43244a, %struct.Memory** %MEMORY
  %loadMem_43244c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 7
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %EDX.i425 = bitcast %union.anon* %4570 to i32*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 5
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RCX.i426 = bitcast %union.anon* %4573 to i64*
  %4574 = load i32, i32* %EDX.i425
  %4575 = zext i32 %4574 to i64
  %4576 = load i64, i64* %PC.i424
  %4577 = add i64 %4576, 3
  store i64 %4577, i64* %PC.i424
  %4578 = shl i64 %4575, 32
  %4579 = ashr exact i64 %4578, 32
  store i64 %4579, i64* %RCX.i426, align 8
  store %struct.Memory* %loadMem_43244c, %struct.Memory** %MEMORY
  %loadMem_43244f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 33
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4582 to i64*
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 1
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 5
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %4588 to i64*
  %4589 = load i64, i64* %RAX.i422
  %4590 = load i64, i64* %RCX.i423
  %4591 = load i64, i64* %PC.i421
  %4592 = add i64 %4591, 4
  store i64 %4592, i64* %PC.i421
  %4593 = sext i64 %4589 to i128
  %4594 = and i128 %4593, -18446744073709551616
  %4595 = sext i64 %4590 to i128
  %4596 = and i128 %4595, -18446744073709551616
  %4597 = zext i64 %4589 to i128
  %4598 = or i128 %4594, %4597
  %4599 = zext i64 %4590 to i128
  %4600 = or i128 %4596, %4599
  %4601 = mul i128 %4600, %4598
  %4602 = trunc i128 %4601 to i64
  store i64 %4602, i64* %RAX.i422, align 8
  %4603 = sext i64 %4602 to i128
  %4604 = icmp ne i128 %4603, %4601
  %4605 = zext i1 %4604 to i8
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4605, i8* %4606, align 1
  %4607 = trunc i128 %4601 to i32
  %4608 = and i32 %4607, 255
  %4609 = call i32 @llvm.ctpop.i32(i32 %4608)
  %4610 = trunc i32 %4609 to i8
  %4611 = and i8 %4610, 1
  %4612 = xor i8 %4611, 1
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4612, i8* %4613, align 1
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4614, align 1
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4615, align 1
  %4616 = lshr i64 %4602, 63
  %4617 = trunc i64 %4616 to i8
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4617, i8* %4618, align 1
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4605, i8* %4619, align 1
  store %struct.Memory* %loadMem_43244f, %struct.Memory** %MEMORY
  %loadMem_432453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 1
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %4625 to i64*
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4627 = getelementptr inbounds %struct.GPR, %struct.GPR* %4626, i32 0, i32 5
  %4628 = getelementptr inbounds %struct.Reg, %struct.Reg* %4627, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %4628 to i64*
  %4629 = load i64, i64* %RAX.i419
  %4630 = load i64, i64* %PC.i418
  %4631 = add i64 %4630, 3
  store i64 %4631, i64* %PC.i418
  store i64 %4629, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_432453, %struct.Memory** %MEMORY
  %loadMem_432456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 5
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %4637 to i64*
  %4638 = load i64, i64* %RCX.i417
  %4639 = load i64, i64* %PC.i416
  %4640 = add i64 %4639, 3
  store i64 %4640, i64* %PC.i416
  %4641 = lshr i64 %4638, 63
  %4642 = trunc i64 %4641 to i8
  %4643 = trunc i64 %4638 to i8
  %4644 = and i8 %4643, 1
  %4645 = lshr i64 %4638, 1
  store i64 %4645, i64* %RCX.i417, align 8
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4644, i8* %4646, align 1
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4648 = trunc i64 %4645 to i32
  %4649 = and i32 %4648, 255
  %4650 = call i32 @llvm.ctpop.i32(i32 %4649)
  %4651 = trunc i32 %4650 to i8
  %4652 = and i8 %4651, 1
  %4653 = xor i8 %4652, 1
  store i8 %4653, i8* %4647, align 1
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4654, align 1
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4656 = icmp eq i64 %4645, 0
  %4657 = zext i1 %4656 to i8
  store i8 %4657, i8* %4655, align 1
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4658, align 1
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4642, i8* %4659, align 1
  store %struct.Memory* %loadMem_432456, %struct.Memory** %MEMORY
  %loadMem_432459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 33
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 1
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4665 to i32*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 7
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %4668 to i64*
  %4669 = load i32, i32* %EAX.i
  %4670 = zext i32 %4669 to i64
  %4671 = load i64, i64* %PC.i414
  %4672 = add i64 %4671, 2
  store i64 %4672, i64* %PC.i414
  %4673 = and i64 %4670, 4294967295
  store i64 %4673, i64* %RDX.i415, align 8
  store %struct.Memory* %loadMem_432459, %struct.Memory** %MEMORY
  %loadMem_43245b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 7
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RDX.i413 = bitcast %union.anon* %4679 to i64*
  %4680 = load i64, i64* %RDX.i413
  %4681 = load i64, i64* %PC.i412
  %4682 = add i64 %4681, 3
  store i64 %4682, i64* %PC.i412
  %4683 = and i64 1, %4680
  %4684 = trunc i64 %4683 to i32
  store i64 %4683, i64* %RDX.i413, align 8
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4685, align 1
  %4686 = and i32 %4684, 255
  %4687 = call i32 @llvm.ctpop.i32(i32 %4686)
  %4688 = trunc i32 %4687 to i8
  %4689 = and i8 %4688, 1
  %4690 = xor i8 %4689, 1
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4690, i8* %4691, align 1
  %4692 = icmp eq i32 %4684, 0
  %4693 = zext i1 %4692 to i8
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4693, i8* %4694, align 1
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4695, align 1
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4696, align 1
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4697, align 1
  store %struct.Memory* %loadMem_43245b, %struct.Memory** %MEMORY
  %loadMem_43245e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 7
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4703 to i32*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 9
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RSI.i411 = bitcast %union.anon* %4706 to i64*
  %4707 = load i32, i32* %EDX.i
  %4708 = zext i32 %4707 to i64
  %4709 = load i64, i64* %PC.i410
  %4710 = add i64 %4709, 2
  store i64 %4710, i64* %PC.i410
  %4711 = and i64 %4708, 4294967295
  store i64 %4711, i64* %RSI.i411, align 8
  store %struct.Memory* %loadMem_43245e, %struct.Memory** %MEMORY
  %loadMem_432460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4713 = getelementptr inbounds %struct.GPR, %struct.GPR* %4712, i32 0, i32 33
  %4714 = getelementptr inbounds %struct.Reg, %struct.Reg* %4713, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %4714 to i64*
  %4715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4716 = getelementptr inbounds %struct.GPR, %struct.GPR* %4715, i32 0, i32 5
  %4717 = getelementptr inbounds %struct.Reg, %struct.Reg* %4716, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %4717 to i64*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 9
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %RSI.i409 = bitcast %union.anon* %4720 to i64*
  %4721 = load i64, i64* %RSI.i409
  %4722 = load i64, i64* %RCX.i408
  %4723 = load i64, i64* %PC.i407
  %4724 = add i64 %4723, 3
  store i64 %4724, i64* %PC.i407
  %4725 = or i64 %4722, %4721
  store i64 %4725, i64* %RSI.i409, align 8
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4726, align 1
  %4727 = trunc i64 %4725 to i32
  %4728 = and i32 %4727, 255
  %4729 = call i32 @llvm.ctpop.i32(i32 %4728)
  %4730 = trunc i32 %4729 to i8
  %4731 = and i8 %4730, 1
  %4732 = xor i8 %4731, 1
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4732, i8* %4733, align 1
  %4734 = icmp eq i64 %4725, 0
  %4735 = zext i1 %4734 to i8
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4735, i8* %4736, align 1
  %4737 = lshr i64 %4725, 63
  %4738 = trunc i64 %4737 to i8
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4738, i8* %4739, align 1
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4740, align 1
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4741, align 1
  store %struct.Memory* %loadMem_432460, %struct.Memory** %MEMORY
  %loadMem_432463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 33
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 9
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %RSI.i405 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4749 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4748, i64 0, i64 0
  %YMM0.i406 = bitcast %union.VectorReg* %4749 to %"class.std::bitset"*
  %4750 = bitcast %"class.std::bitset"* %YMM0.i406 to i8*
  %4751 = load i64, i64* %RSI.i405
  %4752 = load i64, i64* %PC.i404
  %4753 = add i64 %4752, 5
  store i64 %4753, i64* %PC.i404
  %4754 = bitcast i8* %4750 to <2 x i32>*
  %4755 = load <2 x i32>, <2 x i32>* %4754, align 1
  %4756 = getelementptr inbounds i8, i8* %4750, i64 8
  %4757 = bitcast i8* %4756 to <2 x i32>*
  %4758 = load <2 x i32>, <2 x i32>* %4757, align 1
  %4759 = sitofp i64 %4751 to float
  %4760 = bitcast i8* %4750 to float*
  store float %4759, float* %4760, align 1
  %4761 = extractelement <2 x i32> %4755, i32 1
  %4762 = getelementptr inbounds i8, i8* %4750, i64 4
  %4763 = bitcast i8* %4762 to i32*
  store i32 %4761, i32* %4763, align 1
  %4764 = extractelement <2 x i32> %4758, i32 0
  %4765 = bitcast i8* %4756 to i32*
  store i32 %4764, i32* %4765, align 1
  %4766 = extractelement <2 x i32> %4758, i32 1
  %4767 = getelementptr inbounds i8, i8* %4750, i64 12
  %4768 = bitcast i8* %4767 to i32*
  store i32 %4766, i32* %4768, align 1
  store %struct.Memory* %loadMem_432463, %struct.Memory** %MEMORY
  %loadMem_432468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 33
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4771 to i64*
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4773 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4772, i64 0, i64 0
  %YMM0.i402 = bitcast %union.VectorReg* %4773 to %"class.std::bitset"*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4775 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4774, i64 0, i64 0
  %XMM0.i403 = bitcast %union.VectorReg* %4775 to %union.vec128_t*
  %4776 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %4777 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %4778 = bitcast %union.vec128_t* %XMM0.i403 to i8*
  %4779 = load i64, i64* %PC.i401
  %4780 = add i64 %4779, 4
  store i64 %4780, i64* %PC.i401
  %4781 = bitcast i8* %4777 to <2 x float>*
  %4782 = load <2 x float>, <2 x float>* %4781, align 1
  %4783 = getelementptr inbounds i8, i8* %4777, i64 8
  %4784 = bitcast i8* %4783 to <2 x i32>*
  %4785 = load <2 x i32>, <2 x i32>* %4784, align 1
  %4786 = bitcast i8* %4778 to <2 x float>*
  %4787 = load <2 x float>, <2 x float>* %4786, align 1
  %4788 = extractelement <2 x float> %4782, i32 0
  %4789 = extractelement <2 x float> %4787, i32 0
  %4790 = fadd float %4788, %4789
  %4791 = bitcast i8* %4776 to float*
  store float %4790, float* %4791, align 1
  %4792 = bitcast <2 x float> %4782 to <2 x i32>
  %4793 = extractelement <2 x i32> %4792, i32 1
  %4794 = getelementptr inbounds i8, i8* %4776, i64 4
  %4795 = bitcast i8* %4794 to i32*
  store i32 %4793, i32* %4795, align 1
  %4796 = extractelement <2 x i32> %4785, i32 0
  %4797 = getelementptr inbounds i8, i8* %4776, i64 8
  %4798 = bitcast i8* %4797 to i32*
  store i32 %4796, i32* %4798, align 1
  %4799 = extractelement <2 x i32> %4785, i32 1
  %4800 = getelementptr inbounds i8, i8* %4776, i64 12
  %4801 = bitcast i8* %4800 to i32*
  store i32 %4799, i32* %4801, align 1
  store %struct.Memory* %loadMem_432468, %struct.Memory** %MEMORY
  %loadMem_43246c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 33
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 1
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4809 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4808, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4809 to %"class.std::bitset"*
  %4810 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4811 = load i64, i64* %RAX.i400
  %4812 = load i64, i64* %PC.i399
  %4813 = add i64 %4812, 5
  store i64 %4813, i64* %PC.i399
  %4814 = bitcast i8* %4810 to <2 x i32>*
  %4815 = load <2 x i32>, <2 x i32>* %4814, align 1
  %4816 = getelementptr inbounds i8, i8* %4810, i64 8
  %4817 = bitcast i8* %4816 to <2 x i32>*
  %4818 = load <2 x i32>, <2 x i32>* %4817, align 1
  %4819 = sitofp i64 %4811 to float
  %4820 = bitcast i8* %4810 to float*
  store float %4819, float* %4820, align 1
  %4821 = extractelement <2 x i32> %4815, i32 1
  %4822 = getelementptr inbounds i8, i8* %4810, i64 4
  %4823 = bitcast i8* %4822 to i32*
  store i32 %4821, i32* %4823, align 1
  %4824 = extractelement <2 x i32> %4818, i32 0
  %4825 = bitcast i8* %4816 to i32*
  store i32 %4824, i32* %4825, align 1
  %4826 = extractelement <2 x i32> %4818, i32 1
  %4827 = getelementptr inbounds i8, i8* %4810, i64 12
  %4828 = bitcast i8* %4827 to i32*
  store i32 %4826, i32* %4828, align 1
  store %struct.Memory* %loadMem_43246c, %struct.Memory** %MEMORY
  %loadMem_432471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 33
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 1
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RAX.i398
  %4836 = load i64, i64* %RAX.i398
  %4837 = load i64, i64* %PC.i397
  %4838 = add i64 %4837, 3
  store i64 %4838, i64* %PC.i397
  %4839 = and i64 %4836, %4835
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4840, align 1
  %4841 = trunc i64 %4839 to i32
  %4842 = and i32 %4841, 255
  %4843 = call i32 @llvm.ctpop.i32(i32 %4842)
  %4844 = trunc i32 %4843 to i8
  %4845 = and i8 %4844, 1
  %4846 = xor i8 %4845, 1
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4846, i8* %4847, align 1
  %4848 = icmp eq i64 %4839, 0
  %4849 = zext i1 %4848 to i8
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4849, i8* %4850, align 1
  %4851 = lshr i64 %4839, 63
  %4852 = trunc i64 %4851 to i8
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4852, i8* %4853, align 1
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4854, align 1
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4855, align 1
  store %struct.Memory* %loadMem_432471, %struct.Memory** %MEMORY
  %loadMem_432474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 33
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4858 to i64*
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 15
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %4861 to i64*
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4863 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4862, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4863 to %union.vec128_t*
  %4864 = load i64, i64* %RBP.i396
  %4865 = sub i64 %4864, 168
  %4866 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4867 = load i64, i64* %PC.i395
  %4868 = add i64 %4867, 8
  store i64 %4868, i64* %PC.i395
  %4869 = bitcast i8* %4866 to <2 x float>*
  %4870 = load <2 x float>, <2 x float>* %4869, align 1
  %4871 = extractelement <2 x float> %4870, i32 0
  %4872 = inttoptr i64 %4865 to float*
  store float %4871, float* %4872
  store %struct.Memory* %loadMem_432474, %struct.Memory** %MEMORY
  %loadMem_43247c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 15
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %4878 to i64*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4880 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4879, i64 0, i64 0
  %XMM0.i394 = bitcast %union.VectorReg* %4880 to %union.vec128_t*
  %4881 = load i64, i64* %RBP.i393
  %4882 = sub i64 %4881, 172
  %4883 = bitcast %union.vec128_t* %XMM0.i394 to i8*
  %4884 = load i64, i64* %PC.i392
  %4885 = add i64 %4884, 8
  store i64 %4885, i64* %PC.i392
  %4886 = bitcast i8* %4883 to <2 x float>*
  %4887 = load <2 x float>, <2 x float>* %4886, align 1
  %4888 = extractelement <2 x float> %4887, i32 0
  %4889 = inttoptr i64 %4882 to float*
  store float %4888, float* %4889
  store %struct.Memory* %loadMem_43247c, %struct.Memory** %MEMORY
  %loadMem_432484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %PC.i391
  %4894 = add i64 %4893, 22
  %4895 = load i64, i64* %PC.i391
  %4896 = add i64 %4895, 6
  %4897 = load i64, i64* %PC.i391
  %4898 = add i64 %4897, 6
  store i64 %4898, i64* %PC.i391
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4900 = load i8, i8* %4899, align 1
  store i8 %4900, i8* %BRANCH_TAKEN, align 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4902 = icmp ne i8 %4900, 0
  %4903 = select i1 %4902, i64 %4894, i64 %4896
  store i64 %4903, i64* %4901, align 8
  store %struct.Memory* %loadMem_432484, %struct.Memory** %MEMORY
  %loadBr_432484 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432484 = icmp eq i8 %loadBr_432484, 1
  br i1 %cmpBr_432484, label %block_.L_43249a, label %block_43248a

block_43248a:                                     ; preds = %block_432434
  %loadMem_43248a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4905 = getelementptr inbounds %struct.GPR, %struct.GPR* %4904, i32 0, i32 33
  %4906 = getelementptr inbounds %struct.Reg, %struct.Reg* %4905, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %4906 to i64*
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 15
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4910, i64 0, i64 0
  %YMM0.i390 = bitcast %union.VectorReg* %4911 to %"class.std::bitset"*
  %4912 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %4913 = load i64, i64* %RBP.i389
  %4914 = sub i64 %4913, 168
  %4915 = load i64, i64* %PC.i388
  %4916 = add i64 %4915, 8
  store i64 %4916, i64* %PC.i388
  %4917 = inttoptr i64 %4914 to float*
  %4918 = load float, float* %4917
  %4919 = bitcast i8* %4912 to float*
  store float %4918, float* %4919, align 1
  %4920 = getelementptr inbounds i8, i8* %4912, i64 4
  %4921 = bitcast i8* %4920 to float*
  store float 0.000000e+00, float* %4921, align 1
  %4922 = getelementptr inbounds i8, i8* %4912, i64 8
  %4923 = bitcast i8* %4922 to float*
  store float 0.000000e+00, float* %4923, align 1
  %4924 = getelementptr inbounds i8, i8* %4912, i64 12
  %4925 = bitcast i8* %4924 to float*
  store float 0.000000e+00, float* %4925, align 1
  store %struct.Memory* %loadMem_43248a, %struct.Memory** %MEMORY
  %loadMem_432492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 33
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4928 to i64*
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 15
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4933 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4932, i64 0, i64 0
  %XMM0.i387 = bitcast %union.VectorReg* %4933 to %union.vec128_t*
  %4934 = load i64, i64* %RBP.i386
  %4935 = sub i64 %4934, 172
  %4936 = bitcast %union.vec128_t* %XMM0.i387 to i8*
  %4937 = load i64, i64* %PC.i385
  %4938 = add i64 %4937, 8
  store i64 %4938, i64* %PC.i385
  %4939 = bitcast i8* %4936 to <2 x float>*
  %4940 = load <2 x float>, <2 x float>* %4939, align 1
  %4941 = extractelement <2 x float> %4940, i32 0
  %4942 = inttoptr i64 %4935 to float*
  store float %4941, float* %4942
  store %struct.Memory* %loadMem_432492, %struct.Memory** %MEMORY
  br label %block_.L_43249a

block_.L_43249a:                                  ; preds = %block_43248a, %block_432434
  %loadMem_43249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 33
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4945 to i64*
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 15
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %4948 to i64*
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4949, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %4950 to %"class.std::bitset"*
  %4951 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %4952 = load i64, i64* %RBP.i383
  %4953 = sub i64 %4952, 172
  %4954 = load i64, i64* %PC.i382
  %4955 = add i64 %4954, 8
  store i64 %4955, i64* %PC.i382
  %4956 = inttoptr i64 %4953 to float*
  %4957 = load float, float* %4956
  %4958 = bitcast i8* %4951 to float*
  store float %4957, float* %4958, align 1
  %4959 = getelementptr inbounds i8, i8* %4951, i64 4
  %4960 = bitcast i8* %4959 to float*
  store float 0.000000e+00, float* %4960, align 1
  %4961 = getelementptr inbounds i8, i8* %4951, i64 8
  %4962 = bitcast i8* %4961 to float*
  store float 0.000000e+00, float* %4962, align 1
  %4963 = getelementptr inbounds i8, i8* %4951, i64 12
  %4964 = bitcast i8* %4963 to float*
  store float 0.000000e+00, float* %4964, align 1
  store %struct.Memory* %loadMem_43249a, %struct.Memory** %MEMORY
  %loadMem_4324a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 33
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4967 to i64*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 1
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %4970 to i64*
  %4971 = load i64, i64* %PC.i380
  %4972 = add i64 %4971, 8
  store i64 %4972, i64* %PC.i380
  %4973 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4973, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_4324a2, %struct.Memory** %MEMORY
  %loadMem_4324aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4975 = getelementptr inbounds %struct.GPR, %struct.GPR* %4974, i32 0, i32 33
  %4976 = getelementptr inbounds %struct.Reg, %struct.Reg* %4975, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4976 to i64*
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 1
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %4979 to i64*
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4981 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4980, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4981 to %"class.std::bitset"*
  %4982 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4983 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4984 = load i64, i64* %RAX.i379
  %4985 = add i64 %4984, 48
  %4986 = load i64, i64* %PC.i378
  %4987 = add i64 %4986, 5
  store i64 %4987, i64* %PC.i378
  %4988 = bitcast i8* %4983 to <2 x float>*
  %4989 = load <2 x float>, <2 x float>* %4988, align 1
  %4990 = getelementptr inbounds i8, i8* %4983, i64 8
  %4991 = bitcast i8* %4990 to <2 x i32>*
  %4992 = load <2 x i32>, <2 x i32>* %4991, align 1
  %4993 = inttoptr i64 %4985 to float*
  %4994 = load float, float* %4993
  %4995 = extractelement <2 x float> %4989, i32 0
  %4996 = fdiv float %4995, %4994
  %4997 = bitcast i8* %4982 to float*
  store float %4996, float* %4997, align 1
  %4998 = bitcast <2 x float> %4989 to <2 x i32>
  %4999 = extractelement <2 x i32> %4998, i32 1
  %5000 = getelementptr inbounds i8, i8* %4982, i64 4
  %5001 = bitcast i8* %5000 to i32*
  store i32 %4999, i32* %5001, align 1
  %5002 = extractelement <2 x i32> %4992, i32 0
  %5003 = getelementptr inbounds i8, i8* %4982, i64 8
  %5004 = bitcast i8* %5003 to i32*
  store i32 %5002, i32* %5004, align 1
  %5005 = extractelement <2 x i32> %4992, i32 1
  %5006 = getelementptr inbounds i8, i8* %4982, i64 12
  %5007 = bitcast i8* %5006 to i32*
  store i32 %5005, i32* %5007, align 1
  store %struct.Memory* %loadMem_4324aa, %struct.Memory** %MEMORY
  %loadMem_4324af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 33
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 1
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5015 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5014, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5015 to %union.vec128_t*
  %5016 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5017 = load i64, i64* %PC.i376
  %5018 = add i64 %5017, 5
  store i64 %5018, i64* %PC.i376
  %5019 = bitcast i8* %5016 to <2 x float>*
  %5020 = load <2 x float>, <2 x float>* %5019, align 1
  %5021 = extractelement <2 x float> %5020, i32 0
  %5022 = call float @llvm.trunc.f32(float %5021)
  %5023 = fptosi float %5022 to i64
  store i64 %5023, i64* %RAX.i377, align 8
  store %struct.Memory* %loadMem_4324af, %struct.Memory** %MEMORY
  %loadMem_4324b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5025 = getelementptr inbounds %struct.GPR, %struct.GPR* %5024, i32 0, i32 33
  %5026 = getelementptr inbounds %struct.Reg, %struct.Reg* %5025, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %5026 to i64*
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 1
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 15
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %5032 to i64*
  %5033 = load i64, i64* %RBP.i375
  %5034 = sub i64 %5033, 96
  %5035 = load i64, i64* %RAX.i374
  %5036 = load i64, i64* %PC.i373
  %5037 = add i64 %5036, 4
  store i64 %5037, i64* %PC.i373
  %5038 = inttoptr i64 %5034 to i64*
  store i64 %5035, i64* %5038
  store %struct.Memory* %loadMem_4324b4, %struct.Memory** %MEMORY
  %loadMem_4324b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5040 = getelementptr inbounds %struct.GPR, %struct.GPR* %5039, i32 0, i32 33
  %5041 = getelementptr inbounds %struct.Reg, %struct.Reg* %5040, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5041 to i64*
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5043 = getelementptr inbounds %struct.GPR, %struct.GPR* %5042, i32 0, i32 1
  %5044 = getelementptr inbounds %struct.Reg, %struct.Reg* %5043, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %5044 to i64*
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5046 = getelementptr inbounds %struct.GPR, %struct.GPR* %5045, i32 0, i32 15
  %5047 = getelementptr inbounds %struct.Reg, %struct.Reg* %5046, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %5047 to i64*
  %5048 = load i64, i64* %RBP.i372
  %5049 = sub i64 %5048, 72
  %5050 = load i64, i64* %PC.i370
  %5051 = add i64 %5050, 4
  store i64 %5051, i64* %PC.i370
  %5052 = inttoptr i64 %5049 to i64*
  %5053 = load i64, i64* %5052
  store i64 %5053, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_4324b8, %struct.Memory** %MEMORY
  %loadMem_4324bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5056 to i64*
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 1
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %5059 to i64*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 15
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %5062 to i64*
  %5063 = load i64, i64* %RBP.i369
  %5064 = sub i64 %5063, 88
  %5065 = load i64, i64* %RAX.i368
  %5066 = load i64, i64* %PC.i367
  %5067 = add i64 %5066, 4
  store i64 %5067, i64* %PC.i367
  %5068 = inttoptr i64 %5064 to i64*
  store i64 %5065, i64* %5068
  store %struct.Memory* %loadMem_4324bc, %struct.Memory** %MEMORY
  %loadMem_4324c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 33
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %5071 to i64*
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5073 = getelementptr inbounds %struct.GPR, %struct.GPR* %5072, i32 0, i32 1
  %5074 = getelementptr inbounds %struct.Reg, %struct.Reg* %5073, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %5074 to i64*
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 15
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %5077 to i64*
  %5078 = load i64, i64* %RBP.i366
  %5079 = sub i64 %5078, 88
  %5080 = load i64, i64* %PC.i364
  %5081 = add i64 %5080, 4
  store i64 %5081, i64* %PC.i364
  %5082 = inttoptr i64 %5079 to i64*
  %5083 = load i64, i64* %5082
  store i64 %5083, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_4324c0, %struct.Memory** %MEMORY
  %loadMem_4324c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 5
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 15
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RBP.i363
  %5094 = sub i64 %5093, 32
  %5095 = load i64, i64* %PC.i361
  %5096 = add i64 %5095, 4
  store i64 %5096, i64* %PC.i361
  %5097 = inttoptr i64 %5094 to i64*
  %5098 = load i64, i64* %5097
  store i64 %5098, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_4324c4, %struct.Memory** %MEMORY
  %loadMem_4324c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 33
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 1
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 5
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %5107 to i64*
  %5108 = load i64, i64* %RCX.i360
  %5109 = load i64, i64* %RAX.i359
  %5110 = load i64, i64* %PC.i358
  %5111 = add i64 %5110, 3
  store i64 %5111, i64* %PC.i358
  %5112 = inttoptr i64 %5108 to i64*
  store i64 %5109, i64* %5112
  store %struct.Memory* %loadMem_4324c8, %struct.Memory** %MEMORY
  %loadMem_4324cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 33
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 1
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %5118 to i64*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 15
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %5121 to i64*
  %5122 = load i64, i64* %RBP.i357
  %5123 = sub i64 %5122, 72
  %5124 = load i64, i64* %PC.i355
  %5125 = add i64 %5124, 4
  store i64 %5125, i64* %PC.i355
  %5126 = inttoptr i64 %5123 to i64*
  %5127 = load i64, i64* %5126
  store i64 %5127, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_4324cb, %struct.Memory** %MEMORY
  %loadMem_4324cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 1
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 15
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %5136 to i64*
  %5137 = load i64, i64* %RBP.i354
  %5138 = sub i64 %5137, 40
  %5139 = load i64, i64* %RAX.i353
  %5140 = load i64, i64* %PC.i352
  %5141 = add i64 %5140, 4
  store i64 %5141, i64* %PC.i352
  %5142 = inttoptr i64 %5138 to i64*
  store i64 %5139, i64* %5142
  store %struct.Memory* %loadMem_4324cf, %struct.Memory** %MEMORY
  %loadMem_4324d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 33
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %5145 to i64*
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5147 = getelementptr inbounds %struct.GPR, %struct.GPR* %5146, i32 0, i32 15
  %5148 = getelementptr inbounds %struct.Reg, %struct.Reg* %5147, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %5148 to i64*
  %5149 = load i64, i64* %RBP.i351
  %5150 = sub i64 %5149, 56
  %5151 = load i64, i64* %PC.i350
  %5152 = add i64 %5151, 8
  store i64 %5152, i64* %PC.i350
  %5153 = inttoptr i64 %5150 to i64*
  store i64 0, i64* %5153
  store %struct.Memory* %loadMem_4324d3, %struct.Memory** %MEMORY
  br label %block_.L_4324db

block_.L_4324db:                                  ; preds = %block_.L_432589, %block_.L_43249a
  %loadMem_4324db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 33
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5156 to i64*
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 1
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %5159 to i64*
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 15
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %5162 to i64*
  %5163 = load i64, i64* %RBP.i349
  %5164 = sub i64 %5163, 56
  %5165 = load i64, i64* %PC.i347
  %5166 = add i64 %5165, 4
  store i64 %5166, i64* %PC.i347
  %5167 = inttoptr i64 %5164 to i64*
  %5168 = load i64, i64* %5167
  store i64 %5168, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_4324db, %struct.Memory** %MEMORY
  %loadMem_4324df = load %struct.Memory*, %struct.Memory** %MEMORY
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 33
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 1
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %5174 to i64*
  %5175 = load i64, i64* %RAX.i346
  %5176 = load i64, i64* %PC.i345
  %5177 = add i64 %5176, 8
  store i64 %5177, i64* %PC.i345
  %5178 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*)
  %5179 = sub i64 %5175, %5178
  %5180 = icmp ugt i64 %5178, %5175
  %5181 = zext i1 %5180 to i8
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5181, i8* %5182, align 1
  %5183 = trunc i64 %5179 to i32
  %5184 = and i32 %5183, 255
  %5185 = call i32 @llvm.ctpop.i32(i32 %5184)
  %5186 = trunc i32 %5185 to i8
  %5187 = and i8 %5186, 1
  %5188 = xor i8 %5187, 1
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5188, i8* %5189, align 1
  %5190 = xor i64 %5178, %5175
  %5191 = xor i64 %5190, %5179
  %5192 = lshr i64 %5191, 4
  %5193 = trunc i64 %5192 to i8
  %5194 = and i8 %5193, 1
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5194, i8* %5195, align 1
  %5196 = icmp eq i64 %5179, 0
  %5197 = zext i1 %5196 to i8
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5197, i8* %5198, align 1
  %5199 = lshr i64 %5179, 63
  %5200 = trunc i64 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5200, i8* %5201, align 1
  %5202 = lshr i64 %5175, 63
  %5203 = lshr i64 %5178, 63
  %5204 = xor i64 %5203, %5202
  %5205 = xor i64 %5199, %5202
  %5206 = add i64 %5205, %5204
  %5207 = icmp eq i64 %5206, 2
  %5208 = zext i1 %5207 to i8
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5208, i8* %5209, align 1
  store %struct.Memory* %loadMem_4324df, %struct.Memory** %MEMORY
  %loadMem_4324e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 33
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5212 to i64*
  %5213 = load i64, i64* %PC.i344
  %5214 = add i64 %5213, 179
  %5215 = load i64, i64* %PC.i344
  %5216 = add i64 %5215, 6
  %5217 = load i64, i64* %PC.i344
  %5218 = add i64 %5217, 6
  store i64 %5218, i64* %PC.i344
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5220 = load i8, i8* %5219, align 1
  %5221 = icmp eq i8 %5220, 0
  %5222 = zext i1 %5221 to i8
  store i8 %5222, i8* %BRANCH_TAKEN, align 1
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5224 = select i1 %5221, i64 %5214, i64 %5216
  store i64 %5224, i64* %5223, align 8
  store %struct.Memory* %loadMem_4324e7, %struct.Memory** %MEMORY
  %loadBr_4324e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4324e7 = icmp eq i8 %loadBr_4324e7, 1
  br i1 %cmpBr_4324e7, label %block_.L_43259a, label %block_4324ed

block_4324ed:                                     ; preds = %block_.L_4324db
  %loadMem_4324ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 33
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 1
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %5230 to i64*
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 15
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %5233 to i64*
  %5234 = load i64, i64* %RBP.i343
  %5235 = sub i64 %5234, 32
  %5236 = load i64, i64* %PC.i341
  %5237 = add i64 %5236, 4
  store i64 %5237, i64* %PC.i341
  %5238 = inttoptr i64 %5235 to i64*
  %5239 = load i64, i64* %5238
  store i64 %5239, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_4324ed, %struct.Memory** %MEMORY
  %loadMem_4324f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 33
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5242 to i64*
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5244 = getelementptr inbounds %struct.GPR, %struct.GPR* %5243, i32 0, i32 5
  %5245 = getelementptr inbounds %struct.Reg, %struct.Reg* %5244, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %5245 to i64*
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 15
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %5248 to i64*
  %5249 = load i64, i64* %RBP.i340
  %5250 = sub i64 %5249, 56
  %5251 = load i64, i64* %PC.i338
  %5252 = add i64 %5251, 4
  store i64 %5252, i64* %PC.i338
  %5253 = inttoptr i64 %5250 to i64*
  %5254 = load i64, i64* %5253
  store i64 %5254, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_4324f1, %struct.Memory** %MEMORY
  %loadMem_4324f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5257 to i64*
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 1
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 5
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %RAX.i336
  %5265 = load i64, i64* %RCX.i337
  %5266 = mul i64 %5265, 8
  %5267 = add i64 %5266, %5264
  %5268 = load i64, i64* %PC.i335
  %5269 = add i64 %5268, 4
  store i64 %5269, i64* %PC.i335
  %5270 = inttoptr i64 %5267 to i64*
  %5271 = load i64, i64* %5270
  store i64 %5271, i64* %RAX.i336, align 8
  store %struct.Memory* %loadMem_4324f5, %struct.Memory** %MEMORY
  %loadMem_4324f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 5
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %5277 to i64*
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5279 = getelementptr inbounds %struct.GPR, %struct.GPR* %5278, i32 0, i32 15
  %5280 = getelementptr inbounds %struct.Reg, %struct.Reg* %5279, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %5280 to i64*
  %5281 = load i64, i64* %RBP.i334
  %5282 = sub i64 %5281, 56
  %5283 = load i64, i64* %PC.i332
  %5284 = add i64 %5283, 4
  store i64 %5284, i64* %PC.i332
  %5285 = inttoptr i64 %5282 to i64*
  %5286 = load i64, i64* %5285
  store i64 %5286, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_4324f9, %struct.Memory** %MEMORY
  %loadMem_4324fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 5
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %RAX.i330
  %5297 = load i64, i64* %RCX.i331
  %5298 = mul i64 %5297, 8
  %5299 = add i64 %5298, 7313216
  %5300 = load i64, i64* %PC.i329
  %5301 = add i64 %5300, 8
  store i64 %5301, i64* %PC.i329
  %5302 = inttoptr i64 %5299 to i64*
  %5303 = load i64, i64* %5302
  %5304 = sub i64 %5296, %5303
  store i64 %5304, i64* %RAX.i330, align 8
  %5305 = icmp ugt i64 %5303, %5296
  %5306 = zext i1 %5305 to i8
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5306, i8* %5307, align 1
  %5308 = trunc i64 %5304 to i32
  %5309 = and i32 %5308, 255
  %5310 = call i32 @llvm.ctpop.i32(i32 %5309)
  %5311 = trunc i32 %5310 to i8
  %5312 = and i8 %5311, 1
  %5313 = xor i8 %5312, 1
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5313, i8* %5314, align 1
  %5315 = xor i64 %5303, %5296
  %5316 = xor i64 %5315, %5304
  %5317 = lshr i64 %5316, 4
  %5318 = trunc i64 %5317 to i8
  %5319 = and i8 %5318, 1
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5319, i8* %5320, align 1
  %5321 = icmp eq i64 %5304, 0
  %5322 = zext i1 %5321 to i8
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5322, i8* %5323, align 1
  %5324 = lshr i64 %5304, 63
  %5325 = trunc i64 %5324 to i8
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5325, i8* %5326, align 1
  %5327 = lshr i64 %5296, 63
  %5328 = lshr i64 %5303, 63
  %5329 = xor i64 %5328, %5327
  %5330 = xor i64 %5324, %5327
  %5331 = add i64 %5330, %5329
  %5332 = icmp eq i64 %5331, 2
  %5333 = zext i1 %5332 to i8
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5333, i8* %5334, align 1
  store %struct.Memory* %loadMem_4324fd, %struct.Memory** %MEMORY
  %loadMem_432505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 33
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5337 to i64*
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 5
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 15
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5343 to i64*
  %5344 = load i64, i64* %RBP.i328
  %5345 = sub i64 %5344, 32
  %5346 = load i64, i64* %PC.i326
  %5347 = add i64 %5346, 4
  store i64 %5347, i64* %PC.i326
  %5348 = inttoptr i64 %5345 to i64*
  %5349 = load i64, i64* %5348
  store i64 %5349, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_432505, %struct.Memory** %MEMORY
  %loadMem_432509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 33
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %5352 to i64*
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 7
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 15
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %RBP.i325
  %5360 = sub i64 %5359, 56
  %5361 = load i64, i64* %PC.i323
  %5362 = add i64 %5361, 4
  store i64 %5362, i64* %PC.i323
  %5363 = inttoptr i64 %5360 to i64*
  %5364 = load i64, i64* %5363
  store i64 %5364, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_432509, %struct.Memory** %MEMORY
  %loadMem_43250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 33
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5367 to i64*
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 1
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %RAX.i320 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 5
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %5373 to i64*
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 7
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %RDX.i322 = bitcast %union.anon* %5376 to i64*
  %5377 = load i64, i64* %RCX.i321
  %5378 = load i64, i64* %RDX.i322
  %5379 = mul i64 %5378, 8
  %5380 = add i64 %5379, %5377
  %5381 = load i64, i64* %RAX.i320
  %5382 = load i64, i64* %PC.i319
  %5383 = add i64 %5382, 4
  store i64 %5383, i64* %PC.i319
  %5384 = inttoptr i64 %5380 to i64*
  store i64 %5381, i64* %5384
  store %struct.Memory* %loadMem_43250d, %struct.Memory** %MEMORY
  %loadMem_432511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 1
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %5390 to i64*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 15
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %RBP.i318 = bitcast %union.anon* %5393 to i64*
  %5394 = load i64, i64* %RBP.i318
  %5395 = sub i64 %5394, 32
  %5396 = load i64, i64* %PC.i316
  %5397 = add i64 %5396, 4
  store i64 %5397, i64* %PC.i316
  %5398 = inttoptr i64 %5395 to i64*
  %5399 = load i64, i64* %5398
  store i64 %5399, i64* %RAX.i317, align 8
  store %struct.Memory* %loadMem_432511, %struct.Memory** %MEMORY
  %loadMem_432515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 5
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 15
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RBP.i315
  %5410 = sub i64 %5409, 56
  %5411 = load i64, i64* %PC.i313
  %5412 = add i64 %5411, 4
  store i64 %5412, i64* %PC.i313
  %5413 = inttoptr i64 %5410 to i64*
  %5414 = load i64, i64* %5413
  store i64 %5414, i64* %RCX.i314, align 8
  store %struct.Memory* %loadMem_432515, %struct.Memory** %MEMORY
  %loadMem_432519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 33
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 1
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %5420 to i64*
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 5
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %5423 to i64*
  %5424 = load i64, i64* %RAX.i311
  %5425 = load i64, i64* %RCX.i312
  %5426 = mul i64 %5425, 8
  %5427 = add i64 %5426, %5424
  %5428 = load i64, i64* %PC.i310
  %5429 = add i64 %5428, 4
  store i64 %5429, i64* %PC.i310
  %5430 = inttoptr i64 %5427 to i64*
  %5431 = load i64, i64* %5430
  store i64 %5431, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_432519, %struct.Memory** %MEMORY
  %loadMem_43251d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5433 = getelementptr inbounds %struct.GPR, %struct.GPR* %5432, i32 0, i32 33
  %5434 = getelementptr inbounds %struct.Reg, %struct.Reg* %5433, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5434 to i64*
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5436 = getelementptr inbounds %struct.GPR, %struct.GPR* %5435, i32 0, i32 1
  %5437 = getelementptr inbounds %struct.Reg, %struct.Reg* %5436, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %5437 to i64*
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 15
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %5440 to i64*
  %5441 = load i64, i64* %RAX.i308
  %5442 = load i64, i64* %RBP.i309
  %5443 = sub i64 %5442, 40
  %5444 = load i64, i64* %PC.i307
  %5445 = add i64 %5444, 4
  store i64 %5445, i64* %PC.i307
  %5446 = inttoptr i64 %5443 to i64*
  %5447 = load i64, i64* %5446
  %5448 = sub i64 %5441, %5447
  %5449 = icmp ugt i64 %5447, %5441
  %5450 = zext i1 %5449 to i8
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5450, i8* %5451, align 1
  %5452 = trunc i64 %5448 to i32
  %5453 = and i32 %5452, 255
  %5454 = call i32 @llvm.ctpop.i32(i32 %5453)
  %5455 = trunc i32 %5454 to i8
  %5456 = and i8 %5455, 1
  %5457 = xor i8 %5456, 1
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5457, i8* %5458, align 1
  %5459 = xor i64 %5447, %5441
  %5460 = xor i64 %5459, %5448
  %5461 = lshr i64 %5460, 4
  %5462 = trunc i64 %5461 to i8
  %5463 = and i8 %5462, 1
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5463, i8* %5464, align 1
  %5465 = icmp eq i64 %5448, 0
  %5466 = zext i1 %5465 to i8
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5466, i8* %5467, align 1
  %5468 = lshr i64 %5448, 63
  %5469 = trunc i64 %5468 to i8
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5469, i8* %5470, align 1
  %5471 = lshr i64 %5441, 63
  %5472 = lshr i64 %5447, 63
  %5473 = xor i64 %5472, %5471
  %5474 = xor i64 %5468, %5471
  %5475 = add i64 %5474, %5473
  %5476 = icmp eq i64 %5475, 2
  %5477 = zext i1 %5476 to i8
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5477, i8* %5478, align 1
  store %struct.Memory* %loadMem_43251d, %struct.Memory** %MEMORY
  %loadMem_432521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 33
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %5481 to i64*
  %5482 = load i64, i64* %PC.i306
  %5483 = add i64 %5482, 30
  %5484 = load i64, i64* %PC.i306
  %5485 = add i64 %5484, 6
  %5486 = load i64, i64* %PC.i306
  %5487 = add i64 %5486, 6
  store i64 %5487, i64* %PC.i306
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5489 = load i8, i8* %5488, align 1
  %5490 = icmp ne i8 %5489, 0
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5492 = load i8, i8* %5491, align 1
  %5493 = icmp ne i8 %5492, 0
  %5494 = xor i1 %5490, %5493
  %5495 = xor i1 %5494, true
  %5496 = zext i1 %5495 to i8
  store i8 %5496, i8* %BRANCH_TAKEN, align 1
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5498 = select i1 %5494, i64 %5485, i64 %5483
  store i64 %5498, i64* %5497, align 8
  store %struct.Memory* %loadMem_432521, %struct.Memory** %MEMORY
  %loadBr_432521 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432521 = icmp eq i8 %loadBr_432521, 1
  br i1 %cmpBr_432521, label %block_.L_43253f, label %block_432527

block_432527:                                     ; preds = %block_4324ed
  %loadMem_432527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 33
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5501 to i64*
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 1
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %5504 to i64*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 15
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %5507 to i64*
  %5508 = load i64, i64* %RBP.i305
  %5509 = sub i64 %5508, 32
  %5510 = load i64, i64* %PC.i303
  %5511 = add i64 %5510, 4
  store i64 %5511, i64* %PC.i303
  %5512 = inttoptr i64 %5509 to i64*
  %5513 = load i64, i64* %5512
  store i64 %5513, i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_432527, %struct.Memory** %MEMORY
  %loadMem_43252b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 33
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 5
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %5519 to i64*
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 15
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %5522 to i64*
  %5523 = load i64, i64* %RBP.i302
  %5524 = sub i64 %5523, 56
  %5525 = load i64, i64* %PC.i300
  %5526 = add i64 %5525, 4
  store i64 %5526, i64* %PC.i300
  %5527 = inttoptr i64 %5524 to i64*
  %5528 = load i64, i64* %5527
  store i64 %5528, i64* %RCX.i301, align 8
  store %struct.Memory* %loadMem_43252b, %struct.Memory** %MEMORY
  %loadMem_43252f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 33
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5531 to i64*
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 1
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %5534 to i64*
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5536 = getelementptr inbounds %struct.GPR, %struct.GPR* %5535, i32 0, i32 5
  %5537 = getelementptr inbounds %struct.Reg, %struct.Reg* %5536, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %5537 to i64*
  %5538 = load i64, i64* %RAX.i298
  %5539 = load i64, i64* %RCX.i299
  %5540 = mul i64 %5539, 8
  %5541 = add i64 %5540, %5538
  %5542 = load i64, i64* %PC.i297
  %5543 = add i64 %5542, 4
  store i64 %5543, i64* %PC.i297
  %5544 = inttoptr i64 %5541 to i64*
  %5545 = load i64, i64* %5544
  store i64 %5545, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_43252f, %struct.Memory** %MEMORY
  %loadMem_432533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 33
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5548 to i64*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 1
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 15
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5554 to i64*
  %5555 = load i64, i64* %RBP.i296
  %5556 = sub i64 %5555, 40
  %5557 = load i64, i64* %RAX.i295
  %5558 = load i64, i64* %PC.i294
  %5559 = add i64 %5558, 4
  store i64 %5559, i64* %PC.i294
  %5560 = inttoptr i64 %5556 to i64*
  store i64 %5557, i64* %5560
  store %struct.Memory* %loadMem_432533, %struct.Memory** %MEMORY
  %loadMem_432537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 33
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %5563 to i64*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 1
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %5566 to i64*
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5568 = getelementptr inbounds %struct.GPR, %struct.GPR* %5567, i32 0, i32 15
  %5569 = getelementptr inbounds %struct.Reg, %struct.Reg* %5568, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %5569 to i64*
  %5570 = load i64, i64* %RBP.i293
  %5571 = sub i64 %5570, 56
  %5572 = load i64, i64* %PC.i291
  %5573 = add i64 %5572, 4
  store i64 %5573, i64* %PC.i291
  %5574 = inttoptr i64 %5571 to i64*
  %5575 = load i64, i64* %5574
  store i64 %5575, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_432537, %struct.Memory** %MEMORY
  %loadMem_43253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 33
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5578 to i64*
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 1
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 15
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %5584 to i64*
  %5585 = load i64, i64* %RBP.i290
  %5586 = sub i64 %5585, 64
  %5587 = load i64, i64* %RAX.i289
  %5588 = load i64, i64* %PC.i288
  %5589 = add i64 %5588, 4
  store i64 %5589, i64* %PC.i288
  %5590 = inttoptr i64 %5586 to i64*
  store i64 %5587, i64* %5590
  store %struct.Memory* %loadMem_43253b, %struct.Memory** %MEMORY
  br label %block_.L_43253f

block_.L_43253f:                                  ; preds = %block_432527, %block_4324ed
  %loadMem_43253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5592 = getelementptr inbounds %struct.GPR, %struct.GPR* %5591, i32 0, i32 33
  %5593 = getelementptr inbounds %struct.Reg, %struct.Reg* %5592, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5593 to i64*
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 1
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 15
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %5599 to i64*
  %5600 = load i64, i64* %RBP.i287
  %5601 = sub i64 %5600, 32
  %5602 = load i64, i64* %PC.i285
  %5603 = add i64 %5602, 4
  store i64 %5603, i64* %PC.i285
  %5604 = inttoptr i64 %5601 to i64*
  %5605 = load i64, i64* %5604
  store i64 %5605, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_43253f, %struct.Memory** %MEMORY
  %loadMem_432543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5607 = getelementptr inbounds %struct.GPR, %struct.GPR* %5606, i32 0, i32 33
  %5608 = getelementptr inbounds %struct.Reg, %struct.Reg* %5607, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5608 to i64*
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5610 = getelementptr inbounds %struct.GPR, %struct.GPR* %5609, i32 0, i32 5
  %5611 = getelementptr inbounds %struct.Reg, %struct.Reg* %5610, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %5611 to i64*
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5613 = getelementptr inbounds %struct.GPR, %struct.GPR* %5612, i32 0, i32 15
  %5614 = getelementptr inbounds %struct.Reg, %struct.Reg* %5613, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %5614 to i64*
  %5615 = load i64, i64* %RBP.i284
  %5616 = sub i64 %5615, 56
  %5617 = load i64, i64* %PC.i282
  %5618 = add i64 %5617, 4
  store i64 %5618, i64* %PC.i282
  %5619 = inttoptr i64 %5616 to i64*
  %5620 = load i64, i64* %5619
  store i64 %5620, i64* %RCX.i283, align 8
  store %struct.Memory* %loadMem_432543, %struct.Memory** %MEMORY
  %loadMem_432547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5622 = getelementptr inbounds %struct.GPR, %struct.GPR* %5621, i32 0, i32 33
  %5623 = getelementptr inbounds %struct.Reg, %struct.Reg* %5622, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %5623 to i64*
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 1
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 5
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %5629 to i64*
  %5630 = load i64, i64* %RAX.i280
  %5631 = load i64, i64* %RCX.i281
  %5632 = mul i64 %5631, 8
  %5633 = add i64 %5632, %5630
  %5634 = load i64, i64* %PC.i279
  %5635 = add i64 %5634, 4
  store i64 %5635, i64* %PC.i279
  %5636 = inttoptr i64 %5633 to i64*
  %5637 = load i64, i64* %5636
  store i64 %5637, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_432547, %struct.Memory** %MEMORY
  %loadMem_43254b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 33
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %5640 to i64*
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5642 = getelementptr inbounds %struct.GPR, %struct.GPR* %5641, i32 0, i32 1
  %5643 = getelementptr inbounds %struct.Reg, %struct.Reg* %5642, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %5643 to i64*
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5645 = getelementptr inbounds %struct.GPR, %struct.GPR* %5644, i32 0, i32 15
  %5646 = getelementptr inbounds %struct.Reg, %struct.Reg* %5645, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %5646 to i64*
  %5647 = load i64, i64* %RAX.i277
  %5648 = load i64, i64* %RBP.i278
  %5649 = sub i64 %5648, 96
  %5650 = load i64, i64* %PC.i276
  %5651 = add i64 %5650, 4
  store i64 %5651, i64* %PC.i276
  %5652 = inttoptr i64 %5649 to i64*
  %5653 = load i64, i64* %5652
  %5654 = add i64 %5653, %5647
  store i64 %5654, i64* %RAX.i277, align 8
  %5655 = icmp ult i64 %5654, %5647
  %5656 = icmp ult i64 %5654, %5653
  %5657 = or i1 %5655, %5656
  %5658 = zext i1 %5657 to i8
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5658, i8* %5659, align 1
  %5660 = trunc i64 %5654 to i32
  %5661 = and i32 %5660, 255
  %5662 = call i32 @llvm.ctpop.i32(i32 %5661)
  %5663 = trunc i32 %5662 to i8
  %5664 = and i8 %5663, 1
  %5665 = xor i8 %5664, 1
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5665, i8* %5666, align 1
  %5667 = xor i64 %5653, %5647
  %5668 = xor i64 %5667, %5654
  %5669 = lshr i64 %5668, 4
  %5670 = trunc i64 %5669 to i8
  %5671 = and i8 %5670, 1
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5671, i8* %5672, align 1
  %5673 = icmp eq i64 %5654, 0
  %5674 = zext i1 %5673 to i8
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5674, i8* %5675, align 1
  %5676 = lshr i64 %5654, 63
  %5677 = trunc i64 %5676 to i8
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5677, i8* %5678, align 1
  %5679 = lshr i64 %5647, 63
  %5680 = lshr i64 %5653, 63
  %5681 = xor i64 %5676, %5679
  %5682 = xor i64 %5676, %5680
  %5683 = add i64 %5681, %5682
  %5684 = icmp eq i64 %5683, 2
  %5685 = zext i1 %5684 to i8
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5685, i8* %5686, align 1
  store %struct.Memory* %loadMem_43254b, %struct.Memory** %MEMORY
  %loadMem_43254f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5688 = getelementptr inbounds %struct.GPR, %struct.GPR* %5687, i32 0, i32 33
  %5689 = getelementptr inbounds %struct.Reg, %struct.Reg* %5688, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5689 to i64*
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 5
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 15
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %5695 to i64*
  %5696 = load i64, i64* %RBP.i275
  %5697 = sub i64 %5696, 32
  %5698 = load i64, i64* %PC.i273
  %5699 = add i64 %5698, 4
  store i64 %5699, i64* %PC.i273
  %5700 = inttoptr i64 %5697 to i64*
  %5701 = load i64, i64* %5700
  store i64 %5701, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_43254f, %struct.Memory** %MEMORY
  %loadMem_432553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5703 = getelementptr inbounds %struct.GPR, %struct.GPR* %5702, i32 0, i32 33
  %5704 = getelementptr inbounds %struct.Reg, %struct.Reg* %5703, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5704 to i64*
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 7
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %5707 to i64*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 15
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %5710 to i64*
  %5711 = load i64, i64* %RBP.i272
  %5712 = sub i64 %5711, 56
  %5713 = load i64, i64* %PC.i270
  %5714 = add i64 %5713, 4
  store i64 %5714, i64* %PC.i270
  %5715 = inttoptr i64 %5712 to i64*
  %5716 = load i64, i64* %5715
  store i64 %5716, i64* %RDX.i271, align 8
  store %struct.Memory* %loadMem_432553, %struct.Memory** %MEMORY
  %loadMem_432557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 33
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5719 to i64*
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 1
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 5
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %5725 to i64*
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 7
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %5728 to i64*
  %5729 = load i64, i64* %RCX.i268
  %5730 = load i64, i64* %RDX.i269
  %5731 = mul i64 %5730, 8
  %5732 = add i64 %5729, 8
  %5733 = add i64 %5732, %5731
  %5734 = load i64, i64* %RAX.i267
  %5735 = load i64, i64* %PC.i266
  %5736 = add i64 %5735, 5
  store i64 %5736, i64* %PC.i266
  %5737 = inttoptr i64 %5733 to i64*
  store i64 %5734, i64* %5737
  store %struct.Memory* %loadMem_432557, %struct.Memory** %MEMORY
  %loadMem_43255c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 33
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5740 to i64*
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 1
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %5743 to i64*
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 15
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %5746 to i64*
  %5747 = load i64, i64* %RBP.i265
  %5748 = sub i64 %5747, 32
  %5749 = load i64, i64* %PC.i263
  %5750 = add i64 %5749, 4
  store i64 %5750, i64* %PC.i263
  %5751 = inttoptr i64 %5748 to i64*
  %5752 = load i64, i64* %5751
  store i64 %5752, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_43255c, %struct.Memory** %MEMORY
  %loadMem_432560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5754 = getelementptr inbounds %struct.GPR, %struct.GPR* %5753, i32 0, i32 33
  %5755 = getelementptr inbounds %struct.Reg, %struct.Reg* %5754, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5755 to i64*
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 5
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 15
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %5761 to i64*
  %5762 = load i64, i64* %RBP.i262
  %5763 = sub i64 %5762, 56
  %5764 = load i64, i64* %PC.i260
  %5765 = add i64 %5764, 4
  store i64 %5765, i64* %PC.i260
  %5766 = inttoptr i64 %5763 to i64*
  %5767 = load i64, i64* %5766
  store i64 %5767, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_432560, %struct.Memory** %MEMORY
  %loadMem_432564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 33
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5770 to i64*
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 1
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %5773 to i64*
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 5
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %5776 to i64*
  %5777 = load i64, i64* %RAX.i258
  %5778 = load i64, i64* %RCX.i259
  %5779 = mul i64 %5778, 8
  %5780 = add i64 %5777, 8
  %5781 = add i64 %5780, %5779
  %5782 = load i64, i64* %PC.i257
  %5783 = add i64 %5782, 5
  store i64 %5783, i64* %PC.i257
  %5784 = inttoptr i64 %5781 to i64*
  %5785 = load i64, i64* %5784
  store i64 %5785, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_432564, %struct.Memory** %MEMORY
  %loadMem_432569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 33
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 1
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %5791 to i64*
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 15
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %5794 to i64*
  %5795 = load i64, i64* %RAX.i255
  %5796 = load i64, i64* %RBP.i256
  %5797 = sub i64 %5796, 72
  %5798 = load i64, i64* %PC.i254
  %5799 = add i64 %5798, 4
  store i64 %5799, i64* %PC.i254
  %5800 = inttoptr i64 %5797 to i64*
  %5801 = load i64, i64* %5800
  %5802 = sub i64 %5795, %5801
  %5803 = icmp ugt i64 %5801, %5795
  %5804 = zext i1 %5803 to i8
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5804, i8* %5805, align 1
  %5806 = trunc i64 %5802 to i32
  %5807 = and i32 %5806, 255
  %5808 = call i32 @llvm.ctpop.i32(i32 %5807)
  %5809 = trunc i32 %5808 to i8
  %5810 = and i8 %5809, 1
  %5811 = xor i8 %5810, 1
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5811, i8* %5812, align 1
  %5813 = xor i64 %5801, %5795
  %5814 = xor i64 %5813, %5802
  %5815 = lshr i64 %5814, 4
  %5816 = trunc i64 %5815 to i8
  %5817 = and i8 %5816, 1
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5817, i8* %5818, align 1
  %5819 = icmp eq i64 %5802, 0
  %5820 = zext i1 %5819 to i8
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5820, i8* %5821, align 1
  %5822 = lshr i64 %5802, 63
  %5823 = trunc i64 %5822 to i8
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5823, i8* %5824, align 1
  %5825 = lshr i64 %5795, 63
  %5826 = lshr i64 %5801, 63
  %5827 = xor i64 %5826, %5825
  %5828 = xor i64 %5822, %5825
  %5829 = add i64 %5828, %5827
  %5830 = icmp eq i64 %5829, 2
  %5831 = zext i1 %5830 to i8
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5831, i8* %5832, align 1
  store %struct.Memory* %loadMem_432569, %struct.Memory** %MEMORY
  %loadMem_43256d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 33
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5835 to i64*
  %5836 = load i64, i64* %PC.i253
  %5837 = add i64 %5836, 23
  %5838 = load i64, i64* %PC.i253
  %5839 = add i64 %5838, 6
  %5840 = load i64, i64* %PC.i253
  %5841 = add i64 %5840, 6
  store i64 %5841, i64* %PC.i253
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5843 = load i8, i8* %5842, align 1
  %5844 = icmp ne i8 %5843, 0
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5846 = load i8, i8* %5845, align 1
  %5847 = icmp ne i8 %5846, 0
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5849 = load i8, i8* %5848, align 1
  %5850 = icmp ne i8 %5849, 0
  %5851 = xor i1 %5847, %5850
  %5852 = or i1 %5844, %5851
  %5853 = zext i1 %5852 to i8
  store i8 %5853, i8* %BRANCH_TAKEN, align 1
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5855 = select i1 %5852, i64 %5837, i64 %5839
  store i64 %5855, i64* %5854, align 8
  store %struct.Memory* %loadMem_43256d, %struct.Memory** %MEMORY
  %loadBr_43256d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43256d = icmp eq i8 %loadBr_43256d, 1
  br i1 %cmpBr_43256d, label %block_.L_432584, label %block_432573

block_432573:                                     ; preds = %block_.L_43253f
  %loadMem_432573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 33
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5858 to i64*
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 1
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %RAX.i251 = bitcast %union.anon* %5861 to i64*
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 15
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %5864 to i64*
  %5865 = load i64, i64* %RBP.i252
  %5866 = sub i64 %5865, 72
  %5867 = load i64, i64* %PC.i250
  %5868 = add i64 %5867, 4
  store i64 %5868, i64* %PC.i250
  %5869 = inttoptr i64 %5866 to i64*
  %5870 = load i64, i64* %5869
  store i64 %5870, i64* %RAX.i251, align 8
  store %struct.Memory* %loadMem_432573, %struct.Memory** %MEMORY
  %loadMem_432577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 5
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 15
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RBP.i249
  %5881 = sub i64 %5880, 32
  %5882 = load i64, i64* %PC.i247
  %5883 = add i64 %5882, 4
  store i64 %5883, i64* %PC.i247
  %5884 = inttoptr i64 %5881 to i64*
  %5885 = load i64, i64* %5884
  store i64 %5885, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_432577, %struct.Memory** %MEMORY
  %loadMem_43257b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 33
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5888 to i64*
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5890 = getelementptr inbounds %struct.GPR, %struct.GPR* %5889, i32 0, i32 7
  %5891 = getelementptr inbounds %struct.Reg, %struct.Reg* %5890, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %5891 to i64*
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 15
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %5894 to i64*
  %5895 = load i64, i64* %RBP.i246
  %5896 = sub i64 %5895, 56
  %5897 = load i64, i64* %PC.i244
  %5898 = add i64 %5897, 4
  store i64 %5898, i64* %PC.i244
  %5899 = inttoptr i64 %5896 to i64*
  %5900 = load i64, i64* %5899
  store i64 %5900, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_43257b, %struct.Memory** %MEMORY
  %loadMem_43257f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 33
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5903 to i64*
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5905 = getelementptr inbounds %struct.GPR, %struct.GPR* %5904, i32 0, i32 1
  %5906 = getelementptr inbounds %struct.Reg, %struct.Reg* %5905, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %5906 to i64*
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 5
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 7
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %5912 to i64*
  %5913 = load i64, i64* %RCX.i242
  %5914 = load i64, i64* %RDX.i243
  %5915 = mul i64 %5914, 8
  %5916 = add i64 %5913, 8
  %5917 = add i64 %5916, %5915
  %5918 = load i64, i64* %RAX.i241
  %5919 = load i64, i64* %PC.i240
  %5920 = add i64 %5919, 5
  store i64 %5920, i64* %PC.i240
  %5921 = inttoptr i64 %5917 to i64*
  store i64 %5918, i64* %5921
  store %struct.Memory* %loadMem_43257f, %struct.Memory** %MEMORY
  br label %block_.L_432584

block_.L_432584:                                  ; preds = %block_432573, %block_.L_43253f
  %loadMem_432584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5923 = getelementptr inbounds %struct.GPR, %struct.GPR* %5922, i32 0, i32 33
  %5924 = getelementptr inbounds %struct.Reg, %struct.Reg* %5923, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5924 to i64*
  %5925 = load i64, i64* %PC.i239
  %5926 = add i64 %5925, 5
  %5927 = load i64, i64* %PC.i239
  %5928 = add i64 %5927, 5
  store i64 %5928, i64* %PC.i239
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5926, i64* %5929, align 8
  store %struct.Memory* %loadMem_432584, %struct.Memory** %MEMORY
  br label %block_.L_432589

block_.L_432589:                                  ; preds = %block_.L_432584
  %loadMem_432589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 33
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5932 to i64*
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5934 = getelementptr inbounds %struct.GPR, %struct.GPR* %5933, i32 0, i32 1
  %5935 = getelementptr inbounds %struct.Reg, %struct.Reg* %5934, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %5935 to i64*
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5937 = getelementptr inbounds %struct.GPR, %struct.GPR* %5936, i32 0, i32 15
  %5938 = getelementptr inbounds %struct.Reg, %struct.Reg* %5937, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %5938 to i64*
  %5939 = load i64, i64* %RBP.i238
  %5940 = sub i64 %5939, 56
  %5941 = load i64, i64* %PC.i236
  %5942 = add i64 %5941, 4
  store i64 %5942, i64* %PC.i236
  %5943 = inttoptr i64 %5940 to i64*
  %5944 = load i64, i64* %5943
  store i64 %5944, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_432589, %struct.Memory** %MEMORY
  %loadMem_43258d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 33
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %5947 to i64*
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5949 = getelementptr inbounds %struct.GPR, %struct.GPR* %5948, i32 0, i32 1
  %5950 = getelementptr inbounds %struct.Reg, %struct.Reg* %5949, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %5950 to i64*
  %5951 = load i64, i64* %RAX.i235
  %5952 = load i64, i64* %PC.i234
  %5953 = add i64 %5952, 4
  store i64 %5953, i64* %PC.i234
  %5954 = add i64 1, %5951
  store i64 %5954, i64* %RAX.i235, align 8
  %5955 = icmp ult i64 %5954, %5951
  %5956 = icmp ult i64 %5954, 1
  %5957 = or i1 %5955, %5956
  %5958 = zext i1 %5957 to i8
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5958, i8* %5959, align 1
  %5960 = trunc i64 %5954 to i32
  %5961 = and i32 %5960, 255
  %5962 = call i32 @llvm.ctpop.i32(i32 %5961)
  %5963 = trunc i32 %5962 to i8
  %5964 = and i8 %5963, 1
  %5965 = xor i8 %5964, 1
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5965, i8* %5966, align 1
  %5967 = xor i64 1, %5951
  %5968 = xor i64 %5967, %5954
  %5969 = lshr i64 %5968, 4
  %5970 = trunc i64 %5969 to i8
  %5971 = and i8 %5970, 1
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5971, i8* %5972, align 1
  %5973 = icmp eq i64 %5954, 0
  %5974 = zext i1 %5973 to i8
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5974, i8* %5975, align 1
  %5976 = lshr i64 %5954, 63
  %5977 = trunc i64 %5976 to i8
  %5978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5977, i8* %5978, align 1
  %5979 = lshr i64 %5951, 63
  %5980 = xor i64 %5976, %5979
  %5981 = add i64 %5980, %5976
  %5982 = icmp eq i64 %5981, 2
  %5983 = zext i1 %5982 to i8
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5983, i8* %5984, align 1
  store %struct.Memory* %loadMem_43258d, %struct.Memory** %MEMORY
  %loadMem_432591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 33
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5987 to i64*
  %5988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5989 = getelementptr inbounds %struct.GPR, %struct.GPR* %5988, i32 0, i32 1
  %5990 = getelementptr inbounds %struct.Reg, %struct.Reg* %5989, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %5990 to i64*
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5992 = getelementptr inbounds %struct.GPR, %struct.GPR* %5991, i32 0, i32 15
  %5993 = getelementptr inbounds %struct.Reg, %struct.Reg* %5992, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %5993 to i64*
  %5994 = load i64, i64* %RBP.i233
  %5995 = sub i64 %5994, 56
  %5996 = load i64, i64* %RAX.i232
  %5997 = load i64, i64* %PC.i231
  %5998 = add i64 %5997, 4
  store i64 %5998, i64* %PC.i231
  %5999 = inttoptr i64 %5995 to i64*
  store i64 %5996, i64* %5999
  store %struct.Memory* %loadMem_432591, %struct.Memory** %MEMORY
  %loadMem_432595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 33
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %6002 to i64*
  %6003 = load i64, i64* %PC.i230
  %6004 = add i64 %6003, -186
  %6005 = load i64, i64* %PC.i230
  %6006 = add i64 %6005, 5
  store i64 %6006, i64* %PC.i230
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6004, i64* %6007, align 8
  store %struct.Memory* %loadMem_432595, %struct.Memory** %MEMORY
  br label %block_.L_4324db

block_.L_43259a:                                  ; preds = %block_.L_4324db
  %loadMem_43259a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6009 = getelementptr inbounds %struct.GPR, %struct.GPR* %6008, i32 0, i32 33
  %6010 = getelementptr inbounds %struct.Reg, %struct.Reg* %6009, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %6010 to i64*
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6012 = getelementptr inbounds %struct.GPR, %struct.GPR* %6011, i32 0, i32 1
  %6013 = getelementptr inbounds %struct.Reg, %struct.Reg* %6012, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %6013 to i64*
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6015 = getelementptr inbounds %struct.GPR, %struct.GPR* %6014, i32 0, i32 15
  %6016 = getelementptr inbounds %struct.Reg, %struct.Reg* %6015, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %6016 to i64*
  %6017 = load i64, i64* %RBP.i229
  %6018 = sub i64 %6017, 72
  %6019 = load i64, i64* %PC.i227
  %6020 = add i64 %6019, 4
  store i64 %6020, i64* %PC.i227
  %6021 = inttoptr i64 %6018 to i64*
  %6022 = load i64, i64* %6021
  store i64 %6022, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_43259a, %struct.Memory** %MEMORY
  %loadMem_43259e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 33
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6025 to i64*
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6027 = getelementptr inbounds %struct.GPR, %struct.GPR* %6026, i32 0, i32 1
  %6028 = getelementptr inbounds %struct.Reg, %struct.Reg* %6027, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %6028 to i64*
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 15
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %6031 to i64*
  %6032 = load i64, i64* %RAX.i225
  %6033 = load i64, i64* %RBP.i226
  %6034 = sub i64 %6033, 40
  %6035 = load i64, i64* %PC.i224
  %6036 = add i64 %6035, 4
  store i64 %6036, i64* %PC.i224
  %6037 = inttoptr i64 %6034 to i64*
  %6038 = load i64, i64* %6037
  %6039 = sub i64 %6032, %6038
  store i64 %6039, i64* %RAX.i225, align 8
  %6040 = icmp ugt i64 %6038, %6032
  %6041 = zext i1 %6040 to i8
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6041, i8* %6042, align 1
  %6043 = trunc i64 %6039 to i32
  %6044 = and i32 %6043, 255
  %6045 = call i32 @llvm.ctpop.i32(i32 %6044)
  %6046 = trunc i32 %6045 to i8
  %6047 = and i8 %6046, 1
  %6048 = xor i8 %6047, 1
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6048, i8* %6049, align 1
  %6050 = xor i64 %6038, %6032
  %6051 = xor i64 %6050, %6039
  %6052 = lshr i64 %6051, 4
  %6053 = trunc i64 %6052 to i8
  %6054 = and i8 %6053, 1
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6054, i8* %6055, align 1
  %6056 = icmp eq i64 %6039, 0
  %6057 = zext i1 %6056 to i8
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6057, i8* %6058, align 1
  %6059 = lshr i64 %6039, 63
  %6060 = trunc i64 %6059 to i8
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6060, i8* %6061, align 1
  %6062 = lshr i64 %6032, 63
  %6063 = lshr i64 %6038, 63
  %6064 = xor i64 %6063, %6062
  %6065 = xor i64 %6059, %6062
  %6066 = add i64 %6065, %6064
  %6067 = icmp eq i64 %6066, 2
  %6068 = zext i1 %6067 to i8
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6068, i8* %6069, align 1
  store %struct.Memory* %loadMem_43259e, %struct.Memory** %MEMORY
  %loadMem_4325a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 33
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %6072 to i64*
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 1
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %6075 to i64*
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 15
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %6078 to i64*
  %6079 = load i64, i64* %RBP.i223
  %6080 = sub i64 %6079, 80
  %6081 = load i64, i64* %RAX.i222
  %6082 = load i64, i64* %PC.i221
  %6083 = add i64 %6082, 4
  store i64 %6083, i64* %PC.i221
  %6084 = inttoptr i64 %6080 to i64*
  store i64 %6081, i64* %6084
  store %struct.Memory* %loadMem_4325a2, %struct.Memory** %MEMORY
  %loadMem_4325a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 33
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 1
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %6090 to i64*
  %6091 = load i64, i64* %PC.i219
  %6092 = add i64 %6091, 8
  store i64 %6092, i64* %PC.i219
  %6093 = load i64, i64* bitcast (%G_0x6f9740_type* @G_0x6f9740 to i64*)
  store i64 %6093, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_4325a6, %struct.Memory** %MEMORY
  %loadMem_4325ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6095 = getelementptr inbounds %struct.GPR, %struct.GPR* %6094, i32 0, i32 33
  %6096 = getelementptr inbounds %struct.Reg, %struct.Reg* %6095, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %6096 to i64*
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6098 = getelementptr inbounds %struct.GPR, %struct.GPR* %6097, i32 0, i32 1
  %6099 = getelementptr inbounds %struct.Reg, %struct.Reg* %6098, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %6099 to i64*
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6101 = getelementptr inbounds %struct.GPR, %struct.GPR* %6100, i32 0, i32 15
  %6102 = getelementptr inbounds %struct.Reg, %struct.Reg* %6101, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %6102 to i64*
  %6103 = load i64, i64* %RBP.i218
  %6104 = sub i64 %6103, 88
  %6105 = load i64, i64* %RAX.i217
  %6106 = load i64, i64* %PC.i216
  %6107 = add i64 %6106, 4
  store i64 %6107, i64* %PC.i216
  %6108 = inttoptr i64 %6104 to i64*
  store i64 %6105, i64* %6108
  store %struct.Memory* %loadMem_4325ae, %struct.Memory** %MEMORY
  %loadMem_4325b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6110 = getelementptr inbounds %struct.GPR, %struct.GPR* %6109, i32 0, i32 33
  %6111 = getelementptr inbounds %struct.Reg, %struct.Reg* %6110, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %6111 to i64*
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6113 = getelementptr inbounds %struct.GPR, %struct.GPR* %6112, i32 0, i32 1
  %6114 = getelementptr inbounds %struct.Reg, %struct.Reg* %6113, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %6114 to i64*
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6116 = getelementptr inbounds %struct.GPR, %struct.GPR* %6115, i32 0, i32 15
  %6117 = getelementptr inbounds %struct.Reg, %struct.Reg* %6116, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %6117 to i64*
  %6118 = load i64, i64* %RBP.i215
  %6119 = sub i64 %6118, 88
  %6120 = load i64, i64* %PC.i213
  %6121 = add i64 %6120, 4
  store i64 %6121, i64* %PC.i213
  %6122 = inttoptr i64 %6119 to i64*
  %6123 = load i64, i64* %6122
  store i64 %6123, i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_4325b2, %struct.Memory** %MEMORY
  %loadMem_4325b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 33
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 5
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %6129 to i64*
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 15
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %6132 to i64*
  %6133 = load i64, i64* %RBP.i212
  %6134 = sub i64 %6133, 32
  %6135 = load i64, i64* %PC.i210
  %6136 = add i64 %6135, 4
  store i64 %6136, i64* %PC.i210
  %6137 = inttoptr i64 %6134 to i64*
  %6138 = load i64, i64* %6137
  store i64 %6138, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_4325b6, %struct.Memory** %MEMORY
  %loadMem_4325ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 33
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6141 to i64*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 1
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %6144 to i64*
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 5
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %6147 to i64*
  %6148 = load i64, i64* %RCX.i209
  %6149 = load i64, i64* %RAX.i208
  %6150 = load i64, i64* %PC.i207
  %6151 = add i64 %6150, 3
  store i64 %6151, i64* %PC.i207
  %6152 = inttoptr i64 %6148 to i64*
  store i64 %6149, i64* %6152
  store %struct.Memory* %loadMem_4325ba, %struct.Memory** %MEMORY
  %loadMem_4325bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 33
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6155 to i64*
  %6156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6157 = getelementptr inbounds %struct.GPR, %struct.GPR* %6156, i32 0, i32 15
  %6158 = getelementptr inbounds %struct.Reg, %struct.Reg* %6157, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %6158 to i64*
  %6159 = load i64, i64* %RBP.i206
  %6160 = sub i64 %6159, 56
  %6161 = load i64, i64* %PC.i205
  %6162 = add i64 %6161, 8
  store i64 %6162, i64* %PC.i205
  %6163 = inttoptr i64 %6160 to i64*
  store i64 0, i64* %6163
  store %struct.Memory* %loadMem_4325bd, %struct.Memory** %MEMORY
  br label %block_.L_4325c5

block_.L_4325c5:                                  ; preds = %block_.L_432676, %block_.L_43259a
  %loadMem_4325c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 33
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6166 to i64*
  %6167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6168 = getelementptr inbounds %struct.GPR, %struct.GPR* %6167, i32 0, i32 1
  %6169 = getelementptr inbounds %struct.Reg, %struct.Reg* %6168, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %6169 to i64*
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6171 = getelementptr inbounds %struct.GPR, %struct.GPR* %6170, i32 0, i32 15
  %6172 = getelementptr inbounds %struct.Reg, %struct.Reg* %6171, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %6172 to i64*
  %6173 = load i64, i64* %RBP.i204
  %6174 = sub i64 %6173, 56
  %6175 = load i64, i64* %PC.i202
  %6176 = add i64 %6175, 4
  store i64 %6176, i64* %PC.i202
  %6177 = inttoptr i64 %6174 to i64*
  %6178 = load i64, i64* %6177
  store i64 %6178, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_4325c5, %struct.Memory** %MEMORY
  %loadMem_4325c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 33
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %6181 to i64*
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6183 = getelementptr inbounds %struct.GPR, %struct.GPR* %6182, i32 0, i32 5
  %6184 = getelementptr inbounds %struct.Reg, %struct.Reg* %6183, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %6184 to i64*
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6186 = getelementptr inbounds %struct.GPR, %struct.GPR* %6185, i32 0, i32 15
  %6187 = getelementptr inbounds %struct.Reg, %struct.Reg* %6186, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %6187 to i64*
  %6188 = load i64, i64* %RBP.i201
  %6189 = sub i64 %6188, 64
  %6190 = load i64, i64* %PC.i199
  %6191 = add i64 %6190, 4
  store i64 %6191, i64* %PC.i199
  %6192 = inttoptr i64 %6189 to i64*
  %6193 = load i64, i64* %6192
  store i64 %6193, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_4325c9, %struct.Memory** %MEMORY
  %loadMem_4325cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 33
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %6196 to i64*
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 5
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %6199 to i64*
  %6200 = load i64, i64* %RCX.i198
  %6201 = load i64, i64* %PC.i197
  %6202 = add i64 %6201, 4
  store i64 %6202, i64* %PC.i197
  %6203 = add i64 1, %6200
  store i64 %6203, i64* %RCX.i198, align 8
  %6204 = icmp ult i64 %6203, %6200
  %6205 = icmp ult i64 %6203, 1
  %6206 = or i1 %6204, %6205
  %6207 = zext i1 %6206 to i8
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6207, i8* %6208, align 1
  %6209 = trunc i64 %6203 to i32
  %6210 = and i32 %6209, 255
  %6211 = call i32 @llvm.ctpop.i32(i32 %6210)
  %6212 = trunc i32 %6211 to i8
  %6213 = and i8 %6212, 1
  %6214 = xor i8 %6213, 1
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6214, i8* %6215, align 1
  %6216 = xor i64 1, %6200
  %6217 = xor i64 %6216, %6203
  %6218 = lshr i64 %6217, 4
  %6219 = trunc i64 %6218 to i8
  %6220 = and i8 %6219, 1
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6220, i8* %6221, align 1
  %6222 = icmp eq i64 %6203, 0
  %6223 = zext i1 %6222 to i8
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6223, i8* %6224, align 1
  %6225 = lshr i64 %6203, 63
  %6226 = trunc i64 %6225 to i8
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6226, i8* %6227, align 1
  %6228 = lshr i64 %6200, 63
  %6229 = xor i64 %6225, %6228
  %6230 = add i64 %6229, %6225
  %6231 = icmp eq i64 %6230, 2
  %6232 = zext i1 %6231 to i8
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6232, i8* %6233, align 1
  store %struct.Memory* %loadMem_4325cd, %struct.Memory** %MEMORY
  %loadMem_4325d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 33
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %6236 to i64*
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 1
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %6239 to i64*
  %6240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6241 = getelementptr inbounds %struct.GPR, %struct.GPR* %6240, i32 0, i32 5
  %6242 = getelementptr inbounds %struct.Reg, %struct.Reg* %6241, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %6242 to i64*
  %6243 = load i64, i64* %RAX.i195
  %6244 = load i64, i64* %RCX.i196
  %6245 = load i64, i64* %PC.i194
  %6246 = add i64 %6245, 3
  store i64 %6246, i64* %PC.i194
  %6247 = sub i64 %6243, %6244
  %6248 = icmp ult i64 %6243, %6244
  %6249 = zext i1 %6248 to i8
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6249, i8* %6250, align 1
  %6251 = trunc i64 %6247 to i32
  %6252 = and i32 %6251, 255
  %6253 = call i32 @llvm.ctpop.i32(i32 %6252)
  %6254 = trunc i32 %6253 to i8
  %6255 = and i8 %6254, 1
  %6256 = xor i8 %6255, 1
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6256, i8* %6257, align 1
  %6258 = xor i64 %6244, %6243
  %6259 = xor i64 %6258, %6247
  %6260 = lshr i64 %6259, 4
  %6261 = trunc i64 %6260 to i8
  %6262 = and i8 %6261, 1
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6262, i8* %6263, align 1
  %6264 = icmp eq i64 %6247, 0
  %6265 = zext i1 %6264 to i8
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6265, i8* %6266, align 1
  %6267 = lshr i64 %6247, 63
  %6268 = trunc i64 %6267 to i8
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6268, i8* %6269, align 1
  %6270 = lshr i64 %6243, 63
  %6271 = lshr i64 %6244, 63
  %6272 = xor i64 %6271, %6270
  %6273 = xor i64 %6267, %6270
  %6274 = add i64 %6273, %6272
  %6275 = icmp eq i64 %6274, 2
  %6276 = zext i1 %6275 to i8
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6276, i8* %6277, align 1
  store %struct.Memory* %loadMem_4325d1, %struct.Memory** %MEMORY
  %loadMem_4325d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6279 = getelementptr inbounds %struct.GPR, %struct.GPR* %6278, i32 0, i32 33
  %6280 = getelementptr inbounds %struct.Reg, %struct.Reg* %6279, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %6280 to i64*
  %6281 = load i64, i64* %PC.i193
  %6282 = add i64 %6281, 179
  %6283 = load i64, i64* %PC.i193
  %6284 = add i64 %6283, 6
  %6285 = load i64, i64* %PC.i193
  %6286 = add i64 %6285, 6
  store i64 %6286, i64* %PC.i193
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6288 = load i8, i8* %6287, align 1
  %6289 = icmp eq i8 %6288, 0
  %6290 = zext i1 %6289 to i8
  store i8 %6290, i8* %BRANCH_TAKEN, align 1
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6292 = select i1 %6289, i64 %6282, i64 %6284
  store i64 %6292, i64* %6291, align 8
  store %struct.Memory* %loadMem_4325d4, %struct.Memory** %MEMORY
  %loadBr_4325d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4325d4 = icmp eq i8 %loadBr_4325d4, 1
  br i1 %cmpBr_4325d4, label %block_.L_432687, label %block_4325da

block_4325da:                                     ; preds = %block_.L_4325c5
  %loadMem_4325da = load %struct.Memory*, %struct.Memory** %MEMORY
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 33
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %6295 to i64*
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 1
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %6298 to i64*
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 15
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %6301 to i64*
  %6302 = load i64, i64* %RBP.i192
  %6303 = sub i64 %6302, 32
  %6304 = load i64, i64* %PC.i190
  %6305 = add i64 %6304, 4
  store i64 %6305, i64* %PC.i190
  %6306 = inttoptr i64 %6303 to i64*
  %6307 = load i64, i64* %6306
  store i64 %6307, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_4325da, %struct.Memory** %MEMORY
  %loadMem_4325de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 33
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %6310 to i64*
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 5
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %6313 to i64*
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 15
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %6316 to i64*
  %6317 = load i64, i64* %RBP.i189
  %6318 = sub i64 %6317, 56
  %6319 = load i64, i64* %PC.i187
  %6320 = add i64 %6319, 4
  store i64 %6320, i64* %PC.i187
  %6321 = inttoptr i64 %6318 to i64*
  %6322 = load i64, i64* %6321
  store i64 %6322, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_4325de, %struct.Memory** %MEMORY
  %loadMem_4325e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6324 = getelementptr inbounds %struct.GPR, %struct.GPR* %6323, i32 0, i32 33
  %6325 = getelementptr inbounds %struct.Reg, %struct.Reg* %6324, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6325 to i64*
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6327 = getelementptr inbounds %struct.GPR, %struct.GPR* %6326, i32 0, i32 1
  %6328 = getelementptr inbounds %struct.Reg, %struct.Reg* %6327, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %6328 to i64*
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6330 = getelementptr inbounds %struct.GPR, %struct.GPR* %6329, i32 0, i32 5
  %6331 = getelementptr inbounds %struct.Reg, %struct.Reg* %6330, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %6331 to i64*
  %6332 = load i64, i64* %RAX.i185
  %6333 = load i64, i64* %RCX.i186
  %6334 = mul i64 %6333, 8
  %6335 = add i64 %6334, %6332
  %6336 = load i64, i64* %PC.i184
  %6337 = add i64 %6336, 4
  store i64 %6337, i64* %PC.i184
  %6338 = inttoptr i64 %6335 to i64*
  %6339 = load i64, i64* %6338
  store i64 %6339, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_4325e2, %struct.Memory** %MEMORY
  %loadMem_4325e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6341 = getelementptr inbounds %struct.GPR, %struct.GPR* %6340, i32 0, i32 33
  %6342 = getelementptr inbounds %struct.Reg, %struct.Reg* %6341, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6342 to i64*
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6344 = getelementptr inbounds %struct.GPR, %struct.GPR* %6343, i32 0, i32 5
  %6345 = getelementptr inbounds %struct.Reg, %struct.Reg* %6344, i32 0, i32 0
  %RCX.i182 = bitcast %union.anon* %6345 to i64*
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 15
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %6348 to i64*
  %6349 = load i64, i64* %RBP.i183
  %6350 = sub i64 %6349, 56
  %6351 = load i64, i64* %PC.i181
  %6352 = add i64 %6351, 4
  store i64 %6352, i64* %PC.i181
  %6353 = inttoptr i64 %6350 to i64*
  %6354 = load i64, i64* %6353
  store i64 %6354, i64* %RCX.i182, align 8
  store %struct.Memory* %loadMem_4325e6, %struct.Memory** %MEMORY
  %loadMem_4325ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 33
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6357 to i64*
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6359 = getelementptr inbounds %struct.GPR, %struct.GPR* %6358, i32 0, i32 1
  %6360 = getelementptr inbounds %struct.Reg, %struct.Reg* %6359, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %6360 to i64*
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6362 = getelementptr inbounds %struct.GPR, %struct.GPR* %6361, i32 0, i32 5
  %6363 = getelementptr inbounds %struct.Reg, %struct.Reg* %6362, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %6363 to i64*
  %6364 = load i64, i64* %RAX.i179
  %6365 = load i64, i64* %RCX.i180
  %6366 = mul i64 %6365, 8
  %6367 = add i64 %6366, 7313216
  %6368 = load i64, i64* %PC.i178
  %6369 = add i64 %6368, 8
  store i64 %6369, i64* %PC.i178
  %6370 = inttoptr i64 %6367 to i64*
  %6371 = load i64, i64* %6370
  %6372 = sub i64 %6364, %6371
  store i64 %6372, i64* %RAX.i179, align 8
  %6373 = icmp ugt i64 %6371, %6364
  %6374 = zext i1 %6373 to i8
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6374, i8* %6375, align 1
  %6376 = trunc i64 %6372 to i32
  %6377 = and i32 %6376, 255
  %6378 = call i32 @llvm.ctpop.i32(i32 %6377)
  %6379 = trunc i32 %6378 to i8
  %6380 = and i8 %6379, 1
  %6381 = xor i8 %6380, 1
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6381, i8* %6382, align 1
  %6383 = xor i64 %6371, %6364
  %6384 = xor i64 %6383, %6372
  %6385 = lshr i64 %6384, 4
  %6386 = trunc i64 %6385 to i8
  %6387 = and i8 %6386, 1
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6387, i8* %6388, align 1
  %6389 = icmp eq i64 %6372, 0
  %6390 = zext i1 %6389 to i8
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6390, i8* %6391, align 1
  %6392 = lshr i64 %6372, 63
  %6393 = trunc i64 %6392 to i8
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6393, i8* %6394, align 1
  %6395 = lshr i64 %6364, 63
  %6396 = lshr i64 %6371, 63
  %6397 = xor i64 %6396, %6395
  %6398 = xor i64 %6392, %6395
  %6399 = add i64 %6398, %6397
  %6400 = icmp eq i64 %6399, 2
  %6401 = zext i1 %6400 to i8
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6401, i8* %6402, align 1
  store %struct.Memory* %loadMem_4325ea, %struct.Memory** %MEMORY
  %loadMem_4325f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 33
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6405 to i64*
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 5
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %6408 to i64*
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 15
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %6411 to i64*
  %6412 = load i64, i64* %RBP.i177
  %6413 = sub i64 %6412, 32
  %6414 = load i64, i64* %PC.i175
  %6415 = add i64 %6414, 4
  store i64 %6415, i64* %PC.i175
  %6416 = inttoptr i64 %6413 to i64*
  %6417 = load i64, i64* %6416
  store i64 %6417, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_4325f2, %struct.Memory** %MEMORY
  %loadMem_4325f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 33
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6420 to i64*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 7
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 15
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %6426 to i64*
  %6427 = load i64, i64* %RBP.i174
  %6428 = sub i64 %6427, 56
  %6429 = load i64, i64* %PC.i172
  %6430 = add i64 %6429, 4
  store i64 %6430, i64* %PC.i172
  %6431 = inttoptr i64 %6428 to i64*
  %6432 = load i64, i64* %6431
  store i64 %6432, i64* %RDX.i173, align 8
  store %struct.Memory* %loadMem_4325f6, %struct.Memory** %MEMORY
  %loadMem_4325fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6434 = getelementptr inbounds %struct.GPR, %struct.GPR* %6433, i32 0, i32 33
  %6435 = getelementptr inbounds %struct.Reg, %struct.Reg* %6434, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6435 to i64*
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6437 = getelementptr inbounds %struct.GPR, %struct.GPR* %6436, i32 0, i32 1
  %6438 = getelementptr inbounds %struct.Reg, %struct.Reg* %6437, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %6438 to i64*
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6440 = getelementptr inbounds %struct.GPR, %struct.GPR* %6439, i32 0, i32 5
  %6441 = getelementptr inbounds %struct.Reg, %struct.Reg* %6440, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %6441 to i64*
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6443 = getelementptr inbounds %struct.GPR, %struct.GPR* %6442, i32 0, i32 7
  %6444 = getelementptr inbounds %struct.Reg, %struct.Reg* %6443, i32 0, i32 0
  %RDX.i171 = bitcast %union.anon* %6444 to i64*
  %6445 = load i64, i64* %RCX.i170
  %6446 = load i64, i64* %RDX.i171
  %6447 = mul i64 %6446, 8
  %6448 = add i64 %6447, %6445
  %6449 = load i64, i64* %RAX.i169
  %6450 = load i64, i64* %PC.i168
  %6451 = add i64 %6450, 4
  store i64 %6451, i64* %PC.i168
  %6452 = inttoptr i64 %6448 to i64*
  store i64 %6449, i64* %6452
  store %struct.Memory* %loadMem_4325fa, %struct.Memory** %MEMORY
  %loadMem_4325fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 33
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6455 to i64*
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 1
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %6458 to i64*
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6460 = getelementptr inbounds %struct.GPR, %struct.GPR* %6459, i32 0, i32 15
  %6461 = getelementptr inbounds %struct.Reg, %struct.Reg* %6460, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %6461 to i64*
  %6462 = load i64, i64* %RBP.i167
  %6463 = sub i64 %6462, 32
  %6464 = load i64, i64* %PC.i165
  %6465 = add i64 %6464, 4
  store i64 %6465, i64* %PC.i165
  %6466 = inttoptr i64 %6463 to i64*
  %6467 = load i64, i64* %6466
  store i64 %6467, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_4325fe, %struct.Memory** %MEMORY
  %loadMem_432602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 33
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 5
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %6473 to i64*
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6475 = getelementptr inbounds %struct.GPR, %struct.GPR* %6474, i32 0, i32 15
  %6476 = getelementptr inbounds %struct.Reg, %struct.Reg* %6475, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %6476 to i64*
  %6477 = load i64, i64* %RBP.i164
  %6478 = sub i64 %6477, 56
  %6479 = load i64, i64* %PC.i162
  %6480 = add i64 %6479, 4
  store i64 %6480, i64* %PC.i162
  %6481 = inttoptr i64 %6478 to i64*
  %6482 = load i64, i64* %6481
  store i64 %6482, i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_432602, %struct.Memory** %MEMORY
  %loadMem_432606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6484 = getelementptr inbounds %struct.GPR, %struct.GPR* %6483, i32 0, i32 33
  %6485 = getelementptr inbounds %struct.Reg, %struct.Reg* %6484, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6485 to i64*
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 1
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %6488 to i64*
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6490 = getelementptr inbounds %struct.GPR, %struct.GPR* %6489, i32 0, i32 5
  %6491 = getelementptr inbounds %struct.Reg, %struct.Reg* %6490, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %6491 to i64*
  %6492 = load i64, i64* %RAX.i160
  %6493 = load i64, i64* %RCX.i161
  %6494 = mul i64 %6493, 8
  %6495 = add i64 %6494, %6492
  %6496 = load i64, i64* %PC.i159
  %6497 = add i64 %6496, 5
  store i64 %6497, i64* %PC.i159
  %6498 = inttoptr i64 %6495 to i64*
  %6499 = load i64, i64* %6498
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6500, align 1
  %6501 = trunc i64 %6499 to i32
  %6502 = and i32 %6501, 255
  %6503 = call i32 @llvm.ctpop.i32(i32 %6502)
  %6504 = trunc i32 %6503 to i8
  %6505 = and i8 %6504, 1
  %6506 = xor i8 %6505, 1
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6506, i8* %6507, align 1
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6508, align 1
  %6509 = icmp eq i64 %6499, 0
  %6510 = zext i1 %6509 to i8
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6510, i8* %6511, align 1
  %6512 = lshr i64 %6499, 63
  %6513 = trunc i64 %6512 to i8
  %6514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6513, i8* %6514, align 1
  %6515 = lshr i64 %6499, 63
  %6516 = xor i64 %6512, %6515
  %6517 = add i64 %6516, %6515
  %6518 = icmp eq i64 %6517, 2
  %6519 = zext i1 %6518 to i8
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6519, i8* %6520, align 1
  store %struct.Memory* %loadMem_432606, %struct.Memory** %MEMORY
  %loadMem_43260b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6523 to i64*
  %6524 = load i64, i64* %PC.i158
  %6525 = add i64 %6524, 45
  %6526 = load i64, i64* %PC.i158
  %6527 = add i64 %6526, 6
  %6528 = load i64, i64* %PC.i158
  %6529 = add i64 %6528, 6
  store i64 %6529, i64* %PC.i158
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6531 = load i8, i8* %6530, align 1
  %6532 = icmp ne i8 %6531, 0
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6534 = load i8, i8* %6533, align 1
  %6535 = icmp ne i8 %6534, 0
  %6536 = xor i1 %6532, %6535
  %6537 = xor i1 %6536, true
  %6538 = zext i1 %6537 to i8
  store i8 %6538, i8* %BRANCH_TAKEN, align 1
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6540 = select i1 %6536, i64 %6527, i64 %6525
  store i64 %6540, i64* %6539, align 8
  store %struct.Memory* %loadMem_43260b, %struct.Memory** %MEMORY
  %loadBr_43260b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43260b = icmp eq i8 %loadBr_43260b, 1
  br i1 %cmpBr_43260b, label %block_.L_432638, label %block_432611

block_432611:                                     ; preds = %block_4325da
  %loadMem_432611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6542 = getelementptr inbounds %struct.GPR, %struct.GPR* %6541, i32 0, i32 33
  %6543 = getelementptr inbounds %struct.Reg, %struct.Reg* %6542, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6543 to i64*
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 1
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %6546 to i64*
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6548 = getelementptr inbounds %struct.GPR, %struct.GPR* %6547, i32 0, i32 15
  %6549 = getelementptr inbounds %struct.Reg, %struct.Reg* %6548, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6549 to i64*
  %6550 = load i64, i64* %RBP.i157
  %6551 = sub i64 %6550, 32
  %6552 = load i64, i64* %PC.i155
  %6553 = add i64 %6552, 4
  store i64 %6553, i64* %PC.i155
  %6554 = inttoptr i64 %6551 to i64*
  %6555 = load i64, i64* %6554
  store i64 %6555, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_432611, %struct.Memory** %MEMORY
  %loadMem_432615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 33
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6558 to i64*
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6560 = getelementptr inbounds %struct.GPR, %struct.GPR* %6559, i32 0, i32 5
  %6561 = getelementptr inbounds %struct.Reg, %struct.Reg* %6560, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %6561 to i64*
  %6562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6563 = getelementptr inbounds %struct.GPR, %struct.GPR* %6562, i32 0, i32 15
  %6564 = getelementptr inbounds %struct.Reg, %struct.Reg* %6563, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %6564 to i64*
  %6565 = load i64, i64* %RBP.i154
  %6566 = sub i64 %6565, 56
  %6567 = load i64, i64* %PC.i152
  %6568 = add i64 %6567, 4
  store i64 %6568, i64* %PC.i152
  %6569 = inttoptr i64 %6566 to i64*
  %6570 = load i64, i64* %6569
  store i64 %6570, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_432615, %struct.Memory** %MEMORY
  %loadMem_432619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6572 = getelementptr inbounds %struct.GPR, %struct.GPR* %6571, i32 0, i32 33
  %6573 = getelementptr inbounds %struct.Reg, %struct.Reg* %6572, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6573 to i64*
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6575 = getelementptr inbounds %struct.GPR, %struct.GPR* %6574, i32 0, i32 1
  %6576 = getelementptr inbounds %struct.Reg, %struct.Reg* %6575, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %6576 to i64*
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6578 = getelementptr inbounds %struct.GPR, %struct.GPR* %6577, i32 0, i32 5
  %6579 = getelementptr inbounds %struct.Reg, %struct.Reg* %6578, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %6579 to i64*
  %6580 = load i64, i64* %RAX.i150
  %6581 = load i64, i64* %RCX.i151
  %6582 = mul i64 %6581, 8
  %6583 = add i64 %6582, %6580
  %6584 = load i64, i64* %PC.i149
  %6585 = add i64 %6584, 4
  store i64 %6585, i64* %PC.i149
  %6586 = inttoptr i64 %6583 to i64*
  %6587 = load i64, i64* %6586
  store i64 %6587, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_432619, %struct.Memory** %MEMORY
  %loadMem_43261d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 33
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6590 to i64*
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 5
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %6593 to i64*
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 15
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %6596 to i64*
  %6597 = load i64, i64* %RBP.i148
  %6598 = sub i64 %6597, 88
  %6599 = load i64, i64* %PC.i146
  %6600 = add i64 %6599, 4
  store i64 %6600, i64* %PC.i146
  %6601 = inttoptr i64 %6598 to i64*
  %6602 = load i64, i64* %6601
  store i64 %6602, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_43261d, %struct.Memory** %MEMORY
  %loadMem_432621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 33
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6605 to i64*
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 1
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 5
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %6611 to i64*
  %6612 = load i64, i64* %RCX.i145
  %6613 = load i64, i64* %RAX.i144
  %6614 = load i64, i64* %PC.i143
  %6615 = add i64 %6614, 3
  store i64 %6615, i64* %PC.i143
  %6616 = sub i64 %6612, %6613
  store i64 %6616, i64* %RCX.i145, align 8
  %6617 = icmp ult i64 %6612, %6613
  %6618 = zext i1 %6617 to i8
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6618, i8* %6619, align 1
  %6620 = trunc i64 %6616 to i32
  %6621 = and i32 %6620, 255
  %6622 = call i32 @llvm.ctpop.i32(i32 %6621)
  %6623 = trunc i32 %6622 to i8
  %6624 = and i8 %6623, 1
  %6625 = xor i8 %6624, 1
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6625, i8* %6626, align 1
  %6627 = xor i64 %6613, %6612
  %6628 = xor i64 %6627, %6616
  %6629 = lshr i64 %6628, 4
  %6630 = trunc i64 %6629 to i8
  %6631 = and i8 %6630, 1
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6631, i8* %6632, align 1
  %6633 = icmp eq i64 %6616, 0
  %6634 = zext i1 %6633 to i8
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6634, i8* %6635, align 1
  %6636 = lshr i64 %6616, 63
  %6637 = trunc i64 %6636 to i8
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6637, i8* %6638, align 1
  %6639 = lshr i64 %6612, 63
  %6640 = lshr i64 %6613, 63
  %6641 = xor i64 %6640, %6639
  %6642 = xor i64 %6636, %6639
  %6643 = add i64 %6642, %6641
  %6644 = icmp eq i64 %6643, 2
  %6645 = zext i1 %6644 to i8
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6645, i8* %6646, align 1
  store %struct.Memory* %loadMem_432621, %struct.Memory** %MEMORY
  %loadMem_432624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 33
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6649 to i64*
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 5
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %6652 to i64*
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 15
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %6655 to i64*
  %6656 = load i64, i64* %RBP.i142
  %6657 = sub i64 %6656, 88
  %6658 = load i64, i64* %RCX.i141
  %6659 = load i64, i64* %PC.i140
  %6660 = add i64 %6659, 4
  store i64 %6660, i64* %PC.i140
  %6661 = inttoptr i64 %6657 to i64*
  store i64 %6658, i64* %6661
  store %struct.Memory* %loadMem_432624, %struct.Memory** %MEMORY
  %loadMem_432628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6663 = getelementptr inbounds %struct.GPR, %struct.GPR* %6662, i32 0, i32 33
  %6664 = getelementptr inbounds %struct.Reg, %struct.Reg* %6663, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6664 to i64*
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6666 = getelementptr inbounds %struct.GPR, %struct.GPR* %6665, i32 0, i32 1
  %6667 = getelementptr inbounds %struct.Reg, %struct.Reg* %6666, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %6667 to i64*
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6669 = getelementptr inbounds %struct.GPR, %struct.GPR* %6668, i32 0, i32 15
  %6670 = getelementptr inbounds %struct.Reg, %struct.Reg* %6669, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %6670 to i64*
  %6671 = load i64, i64* %RBP.i139
  %6672 = sub i64 %6671, 32
  %6673 = load i64, i64* %PC.i137
  %6674 = add i64 %6673, 4
  store i64 %6674, i64* %PC.i137
  %6675 = inttoptr i64 %6672 to i64*
  %6676 = load i64, i64* %6675
  store i64 %6676, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_432628, %struct.Memory** %MEMORY
  %loadMem_43262c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6678 = getelementptr inbounds %struct.GPR, %struct.GPR* %6677, i32 0, i32 33
  %6679 = getelementptr inbounds %struct.Reg, %struct.Reg* %6678, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6679 to i64*
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6681 = getelementptr inbounds %struct.GPR, %struct.GPR* %6680, i32 0, i32 5
  %6682 = getelementptr inbounds %struct.Reg, %struct.Reg* %6681, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %6682 to i64*
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6684 = getelementptr inbounds %struct.GPR, %struct.GPR* %6683, i32 0, i32 15
  %6685 = getelementptr inbounds %struct.Reg, %struct.Reg* %6684, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %6685 to i64*
  %6686 = load i64, i64* %RBP.i136
  %6687 = sub i64 %6686, 56
  %6688 = load i64, i64* %PC.i134
  %6689 = add i64 %6688, 4
  store i64 %6689, i64* %PC.i134
  %6690 = inttoptr i64 %6687 to i64*
  %6691 = load i64, i64* %6690
  store i64 %6691, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_43262c, %struct.Memory** %MEMORY
  %loadMem_432630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 33
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6694 to i64*
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 1
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %6697 to i64*
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6699 = getelementptr inbounds %struct.GPR, %struct.GPR* %6698, i32 0, i32 5
  %6700 = getelementptr inbounds %struct.Reg, %struct.Reg* %6699, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %6700 to i64*
  %6701 = load i64, i64* %RAX.i132
  %6702 = load i64, i64* %RCX.i133
  %6703 = mul i64 %6702, 8
  %6704 = add i64 %6703, %6701
  %6705 = load i64, i64* %PC.i131
  %6706 = add i64 %6705, 8
  store i64 %6706, i64* %PC.i131
  %6707 = inttoptr i64 %6704 to i64*
  store i64 0, i64* %6707
  store %struct.Memory* %loadMem_432630, %struct.Memory** %MEMORY
  br label %block_.L_432638

block_.L_432638:                                  ; preds = %block_432611, %block_4325da
  %loadMem_432638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6709 = getelementptr inbounds %struct.GPR, %struct.GPR* %6708, i32 0, i32 33
  %6710 = getelementptr inbounds %struct.Reg, %struct.Reg* %6709, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6710 to i64*
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 1
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 15
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RBP.i130
  %6718 = sub i64 %6717, 32
  %6719 = load i64, i64* %PC.i128
  %6720 = add i64 %6719, 4
  store i64 %6720, i64* %PC.i128
  %6721 = inttoptr i64 %6718 to i64*
  %6722 = load i64, i64* %6721
  store i64 %6722, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_432638, %struct.Memory** %MEMORY
  %loadMem_43263c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6724 = getelementptr inbounds %struct.GPR, %struct.GPR* %6723, i32 0, i32 33
  %6725 = getelementptr inbounds %struct.Reg, %struct.Reg* %6724, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6725 to i64*
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6727 = getelementptr inbounds %struct.GPR, %struct.GPR* %6726, i32 0, i32 5
  %6728 = getelementptr inbounds %struct.Reg, %struct.Reg* %6727, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %6728 to i64*
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6730 = getelementptr inbounds %struct.GPR, %struct.GPR* %6729, i32 0, i32 15
  %6731 = getelementptr inbounds %struct.Reg, %struct.Reg* %6730, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %6731 to i64*
  %6732 = load i64, i64* %RBP.i127
  %6733 = sub i64 %6732, 56
  %6734 = load i64, i64* %PC.i125
  %6735 = add i64 %6734, 4
  store i64 %6735, i64* %PC.i125
  %6736 = inttoptr i64 %6733 to i64*
  %6737 = load i64, i64* %6736
  store i64 %6737, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_43263c, %struct.Memory** %MEMORY
  %loadMem_432640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 33
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6740 to i64*
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 1
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %6743 to i64*
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6745 = getelementptr inbounds %struct.GPR, %struct.GPR* %6744, i32 0, i32 5
  %6746 = getelementptr inbounds %struct.Reg, %struct.Reg* %6745, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %6746 to i64*
  %6747 = load i64, i64* %RAX.i123
  %6748 = load i64, i64* %RCX.i124
  %6749 = mul i64 %6748, 8
  %6750 = add i64 %6749, %6747
  %6751 = load i64, i64* %PC.i122
  %6752 = add i64 %6751, 4
  store i64 %6752, i64* %PC.i122
  %6753 = inttoptr i64 %6750 to i64*
  %6754 = load i64, i64* %6753
  store i64 %6754, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_432640, %struct.Memory** %MEMORY
  %loadMem_432644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 33
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 1
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %6760 to i64*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 15
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %6763 to i64*
  %6764 = load i64, i64* %RAX.i120
  %6765 = load i64, i64* %RBP.i121
  %6766 = sub i64 %6765, 96
  %6767 = load i64, i64* %PC.i119
  %6768 = add i64 %6767, 4
  store i64 %6768, i64* %PC.i119
  %6769 = inttoptr i64 %6766 to i64*
  %6770 = load i64, i64* %6769
  %6771 = add i64 %6770, %6764
  store i64 %6771, i64* %RAX.i120, align 8
  %6772 = icmp ult i64 %6771, %6764
  %6773 = icmp ult i64 %6771, %6770
  %6774 = or i1 %6772, %6773
  %6775 = zext i1 %6774 to i8
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6775, i8* %6776, align 1
  %6777 = trunc i64 %6771 to i32
  %6778 = and i32 %6777, 255
  %6779 = call i32 @llvm.ctpop.i32(i32 %6778)
  %6780 = trunc i32 %6779 to i8
  %6781 = and i8 %6780, 1
  %6782 = xor i8 %6781, 1
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6782, i8* %6783, align 1
  %6784 = xor i64 %6770, %6764
  %6785 = xor i64 %6784, %6771
  %6786 = lshr i64 %6785, 4
  %6787 = trunc i64 %6786 to i8
  %6788 = and i8 %6787, 1
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6788, i8* %6789, align 1
  %6790 = icmp eq i64 %6771, 0
  %6791 = zext i1 %6790 to i8
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6791, i8* %6792, align 1
  %6793 = lshr i64 %6771, 63
  %6794 = trunc i64 %6793 to i8
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6794, i8* %6795, align 1
  %6796 = lshr i64 %6764, 63
  %6797 = lshr i64 %6770, 63
  %6798 = xor i64 %6793, %6796
  %6799 = xor i64 %6793, %6797
  %6800 = add i64 %6798, %6799
  %6801 = icmp eq i64 %6800, 2
  %6802 = zext i1 %6801 to i8
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6802, i8* %6803, align 1
  store %struct.Memory* %loadMem_432644, %struct.Memory** %MEMORY
  %loadMem_432648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6805 = getelementptr inbounds %struct.GPR, %struct.GPR* %6804, i32 0, i32 33
  %6806 = getelementptr inbounds %struct.Reg, %struct.Reg* %6805, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %6806 to i64*
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6808 = getelementptr inbounds %struct.GPR, %struct.GPR* %6807, i32 0, i32 5
  %6809 = getelementptr inbounds %struct.Reg, %struct.Reg* %6808, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %6809 to i64*
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6811 = getelementptr inbounds %struct.GPR, %struct.GPR* %6810, i32 0, i32 15
  %6812 = getelementptr inbounds %struct.Reg, %struct.Reg* %6811, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %6812 to i64*
  %6813 = load i64, i64* %RBP.i118
  %6814 = sub i64 %6813, 32
  %6815 = load i64, i64* %PC.i116
  %6816 = add i64 %6815, 4
  store i64 %6816, i64* %PC.i116
  %6817 = inttoptr i64 %6814 to i64*
  %6818 = load i64, i64* %6817
  store i64 %6818, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_432648, %struct.Memory** %MEMORY
  %loadMem_43264c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6820 = getelementptr inbounds %struct.GPR, %struct.GPR* %6819, i32 0, i32 33
  %6821 = getelementptr inbounds %struct.Reg, %struct.Reg* %6820, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6821 to i64*
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 7
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %6824 to i64*
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 15
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %6827 to i64*
  %6828 = load i64, i64* %RBP.i115
  %6829 = sub i64 %6828, 56
  %6830 = load i64, i64* %PC.i113
  %6831 = add i64 %6830, 4
  store i64 %6831, i64* %PC.i113
  %6832 = inttoptr i64 %6829 to i64*
  %6833 = load i64, i64* %6832
  store i64 %6833, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_43264c, %struct.Memory** %MEMORY
  %loadMem_432650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 33
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6836 to i64*
  %6837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6838 = getelementptr inbounds %struct.GPR, %struct.GPR* %6837, i32 0, i32 1
  %6839 = getelementptr inbounds %struct.Reg, %struct.Reg* %6838, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %6839 to i64*
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6841 = getelementptr inbounds %struct.GPR, %struct.GPR* %6840, i32 0, i32 5
  %6842 = getelementptr inbounds %struct.Reg, %struct.Reg* %6841, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %6842 to i64*
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 7
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %6845 to i64*
  %6846 = load i64, i64* %RCX.i111
  %6847 = load i64, i64* %RDX.i112
  %6848 = mul i64 %6847, 8
  %6849 = add i64 %6846, 8
  %6850 = add i64 %6849, %6848
  %6851 = load i64, i64* %RAX.i110
  %6852 = load i64, i64* %PC.i109
  %6853 = add i64 %6852, 5
  store i64 %6853, i64* %PC.i109
  %6854 = inttoptr i64 %6850 to i64*
  store i64 %6851, i64* %6854
  store %struct.Memory* %loadMem_432650, %struct.Memory** %MEMORY
  %loadMem_432655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 33
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6857 to i64*
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 1
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %6860 to i64*
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6862 = getelementptr inbounds %struct.GPR, %struct.GPR* %6861, i32 0, i32 15
  %6863 = getelementptr inbounds %struct.Reg, %struct.Reg* %6862, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %6863 to i64*
  %6864 = load i64, i64* %RBP.i108
  %6865 = sub i64 %6864, 32
  %6866 = load i64, i64* %PC.i106
  %6867 = add i64 %6866, 4
  store i64 %6867, i64* %PC.i106
  %6868 = inttoptr i64 %6865 to i64*
  %6869 = load i64, i64* %6868
  store i64 %6869, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_432655, %struct.Memory** %MEMORY
  %loadMem_432659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 33
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6872 to i64*
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 5
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %6875 to i64*
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 15
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %6878 to i64*
  %6879 = load i64, i64* %RBP.i105
  %6880 = sub i64 %6879, 56
  %6881 = load i64, i64* %PC.i103
  %6882 = add i64 %6881, 4
  store i64 %6882, i64* %PC.i103
  %6883 = inttoptr i64 %6880 to i64*
  %6884 = load i64, i64* %6883
  store i64 %6884, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_432659, %struct.Memory** %MEMORY
  %loadMem_43265d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6886 = getelementptr inbounds %struct.GPR, %struct.GPR* %6885, i32 0, i32 33
  %6887 = getelementptr inbounds %struct.Reg, %struct.Reg* %6886, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6887 to i64*
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6889 = getelementptr inbounds %struct.GPR, %struct.GPR* %6888, i32 0, i32 1
  %6890 = getelementptr inbounds %struct.Reg, %struct.Reg* %6889, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %6890 to i64*
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6892 = getelementptr inbounds %struct.GPR, %struct.GPR* %6891, i32 0, i32 5
  %6893 = getelementptr inbounds %struct.Reg, %struct.Reg* %6892, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %6893 to i64*
  %6894 = load i64, i64* %RAX.i101
  %6895 = load i64, i64* %RCX.i102
  %6896 = mul i64 %6895, 8
  %6897 = add i64 %6894, 8
  %6898 = add i64 %6897, %6896
  %6899 = load i64, i64* %PC.i100
  %6900 = add i64 %6899, 5
  store i64 %6900, i64* %PC.i100
  %6901 = inttoptr i64 %6898 to i64*
  %6902 = load i64, i64* %6901
  store i64 %6902, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_43265d, %struct.Memory** %MEMORY
  %loadMem_432662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6904 = getelementptr inbounds %struct.GPR, %struct.GPR* %6903, i32 0, i32 33
  %6905 = getelementptr inbounds %struct.Reg, %struct.Reg* %6904, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6905 to i64*
  %6906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6907 = getelementptr inbounds %struct.GPR, %struct.GPR* %6906, i32 0, i32 1
  %6908 = getelementptr inbounds %struct.Reg, %struct.Reg* %6907, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %6908 to i64*
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6910 = getelementptr inbounds %struct.GPR, %struct.GPR* %6909, i32 0, i32 15
  %6911 = getelementptr inbounds %struct.Reg, %struct.Reg* %6910, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %6911 to i64*
  %6912 = load i64, i64* %RAX.i98
  %6913 = load i64, i64* %RBP.i99
  %6914 = sub i64 %6913, 80
  %6915 = load i64, i64* %PC.i97
  %6916 = add i64 %6915, 4
  store i64 %6916, i64* %PC.i97
  %6917 = inttoptr i64 %6914 to i64*
  %6918 = load i64, i64* %6917
  %6919 = sub i64 %6912, %6918
  %6920 = icmp ugt i64 %6918, %6912
  %6921 = zext i1 %6920 to i8
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6921, i8* %6922, align 1
  %6923 = trunc i64 %6919 to i32
  %6924 = and i32 %6923, 255
  %6925 = call i32 @llvm.ctpop.i32(i32 %6924)
  %6926 = trunc i32 %6925 to i8
  %6927 = and i8 %6926, 1
  %6928 = xor i8 %6927, 1
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6928, i8* %6929, align 1
  %6930 = xor i64 %6918, %6912
  %6931 = xor i64 %6930, %6919
  %6932 = lshr i64 %6931, 4
  %6933 = trunc i64 %6932 to i8
  %6934 = and i8 %6933, 1
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6934, i8* %6935, align 1
  %6936 = icmp eq i64 %6919, 0
  %6937 = zext i1 %6936 to i8
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6937, i8* %6938, align 1
  %6939 = lshr i64 %6919, 63
  %6940 = trunc i64 %6939 to i8
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6940, i8* %6941, align 1
  %6942 = lshr i64 %6912, 63
  %6943 = lshr i64 %6918, 63
  %6944 = xor i64 %6943, %6942
  %6945 = xor i64 %6939, %6942
  %6946 = add i64 %6945, %6944
  %6947 = icmp eq i64 %6946, 2
  %6948 = zext i1 %6947 to i8
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6948, i8* %6949, align 1
  store %struct.Memory* %loadMem_432662, %struct.Memory** %MEMORY
  %loadMem_432666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6951 = getelementptr inbounds %struct.GPR, %struct.GPR* %6950, i32 0, i32 33
  %6952 = getelementptr inbounds %struct.Reg, %struct.Reg* %6951, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6952 to i64*
  %6953 = load i64, i64* %PC.i96
  %6954 = add i64 %6953, 11
  %6955 = load i64, i64* %PC.i96
  %6956 = add i64 %6955, 6
  %6957 = load i64, i64* %PC.i96
  %6958 = add i64 %6957, 6
  store i64 %6958, i64* %PC.i96
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6960 = load i8, i8* %6959, align 1
  %6961 = icmp ne i8 %6960, 0
  %6962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6963 = load i8, i8* %6962, align 1
  %6964 = icmp ne i8 %6963, 0
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6966 = load i8, i8* %6965, align 1
  %6967 = icmp ne i8 %6966, 0
  %6968 = xor i1 %6964, %6967
  %6969 = or i1 %6961, %6968
  %6970 = zext i1 %6969 to i8
  store i8 %6970, i8* %BRANCH_TAKEN, align 1
  %6971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6972 = select i1 %6969, i64 %6954, i64 %6956
  store i64 %6972, i64* %6971, align 8
  store %struct.Memory* %loadMem_432666, %struct.Memory** %MEMORY
  %loadBr_432666 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432666 = icmp eq i8 %loadBr_432666, 1
  br i1 %cmpBr_432666, label %block_.L_432671, label %block_43266c

block_43266c:                                     ; preds = %block_.L_432638
  %loadMem_43266c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 33
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6975 to i64*
  %6976 = load i64, i64* %PC.i95
  %6977 = add i64 %6976, 27
  %6978 = load i64, i64* %PC.i95
  %6979 = add i64 %6978, 5
  store i64 %6979, i64* %PC.i95
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6977, i64* %6980, align 8
  store %struct.Memory* %loadMem_43266c, %struct.Memory** %MEMORY
  br label %block_.L_432687

block_.L_432671:                                  ; preds = %block_.L_432638
  %loadMem_432671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6982 = getelementptr inbounds %struct.GPR, %struct.GPR* %6981, i32 0, i32 33
  %6983 = getelementptr inbounds %struct.Reg, %struct.Reg* %6982, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6983 to i64*
  %6984 = load i64, i64* %PC.i94
  %6985 = add i64 %6984, 5
  %6986 = load i64, i64* %PC.i94
  %6987 = add i64 %6986, 5
  store i64 %6987, i64* %PC.i94
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6985, i64* %6988, align 8
  store %struct.Memory* %loadMem_432671, %struct.Memory** %MEMORY
  br label %block_.L_432676

block_.L_432676:                                  ; preds = %block_.L_432671
  %loadMem_432676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 33
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %6991 to i64*
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 1
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %6994 to i64*
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 15
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %6997 to i64*
  %6998 = load i64, i64* %RBP.i93
  %6999 = sub i64 %6998, 56
  %7000 = load i64, i64* %PC.i91
  %7001 = add i64 %7000, 4
  store i64 %7001, i64* %PC.i91
  %7002 = inttoptr i64 %6999 to i64*
  %7003 = load i64, i64* %7002
  store i64 %7003, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_432676, %struct.Memory** %MEMORY
  %loadMem_43267a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7005 = getelementptr inbounds %struct.GPR, %struct.GPR* %7004, i32 0, i32 33
  %7006 = getelementptr inbounds %struct.Reg, %struct.Reg* %7005, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %7006 to i64*
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7008 = getelementptr inbounds %struct.GPR, %struct.GPR* %7007, i32 0, i32 1
  %7009 = getelementptr inbounds %struct.Reg, %struct.Reg* %7008, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %7009 to i64*
  %7010 = load i64, i64* %RAX.i90
  %7011 = load i64, i64* %PC.i89
  %7012 = add i64 %7011, 4
  store i64 %7012, i64* %PC.i89
  %7013 = add i64 1, %7010
  store i64 %7013, i64* %RAX.i90, align 8
  %7014 = icmp ult i64 %7013, %7010
  %7015 = icmp ult i64 %7013, 1
  %7016 = or i1 %7014, %7015
  %7017 = zext i1 %7016 to i8
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7017, i8* %7018, align 1
  %7019 = trunc i64 %7013 to i32
  %7020 = and i32 %7019, 255
  %7021 = call i32 @llvm.ctpop.i32(i32 %7020)
  %7022 = trunc i32 %7021 to i8
  %7023 = and i8 %7022, 1
  %7024 = xor i8 %7023, 1
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7024, i8* %7025, align 1
  %7026 = xor i64 1, %7010
  %7027 = xor i64 %7026, %7013
  %7028 = lshr i64 %7027, 4
  %7029 = trunc i64 %7028 to i8
  %7030 = and i8 %7029, 1
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7030, i8* %7031, align 1
  %7032 = icmp eq i64 %7013, 0
  %7033 = zext i1 %7032 to i8
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7033, i8* %7034, align 1
  %7035 = lshr i64 %7013, 63
  %7036 = trunc i64 %7035 to i8
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7036, i8* %7037, align 1
  %7038 = lshr i64 %7010, 63
  %7039 = xor i64 %7035, %7038
  %7040 = add i64 %7039, %7035
  %7041 = icmp eq i64 %7040, 2
  %7042 = zext i1 %7041 to i8
  %7043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7042, i8* %7043, align 1
  store %struct.Memory* %loadMem_43267a, %struct.Memory** %MEMORY
  %loadMem_43267e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 33
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7046 to i64*
  %7047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7048 = getelementptr inbounds %struct.GPR, %struct.GPR* %7047, i32 0, i32 1
  %7049 = getelementptr inbounds %struct.Reg, %struct.Reg* %7048, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %7049 to i64*
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7051 = getelementptr inbounds %struct.GPR, %struct.GPR* %7050, i32 0, i32 15
  %7052 = getelementptr inbounds %struct.Reg, %struct.Reg* %7051, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %7052 to i64*
  %7053 = load i64, i64* %RBP.i88
  %7054 = sub i64 %7053, 56
  %7055 = load i64, i64* %RAX.i87
  %7056 = load i64, i64* %PC.i86
  %7057 = add i64 %7056, 4
  store i64 %7057, i64* %PC.i86
  %7058 = inttoptr i64 %7054 to i64*
  store i64 %7055, i64* %7058
  store %struct.Memory* %loadMem_43267e, %struct.Memory** %MEMORY
  %loadMem_432682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7060 = getelementptr inbounds %struct.GPR, %struct.GPR* %7059, i32 0, i32 33
  %7061 = getelementptr inbounds %struct.Reg, %struct.Reg* %7060, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %7061 to i64*
  %7062 = load i64, i64* %PC.i85
  %7063 = add i64 %7062, -189
  %7064 = load i64, i64* %PC.i85
  %7065 = add i64 %7064, 5
  store i64 %7065, i64* %PC.i85
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7063, i64* %7066, align 8
  store %struct.Memory* %loadMem_432682, %struct.Memory** %MEMORY
  br label %block_.L_4325c5

block_.L_432687:                                  ; preds = %block_43266c, %block_.L_4325c5
  %loadMem_432687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7068 = getelementptr inbounds %struct.GPR, %struct.GPR* %7067, i32 0, i32 33
  %7069 = getelementptr inbounds %struct.Reg, %struct.Reg* %7068, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %7069 to i64*
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7071 = getelementptr inbounds %struct.GPR, %struct.GPR* %7070, i32 0, i32 1
  %7072 = getelementptr inbounds %struct.Reg, %struct.Reg* %7071, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %7072 to i64*
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 15
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %7075 to i64*
  %7076 = load i64, i64* %RBP.i84
  %7077 = sub i64 %7076, 80
  %7078 = load i64, i64* %PC.i82
  %7079 = add i64 %7078, 4
  store i64 %7079, i64* %PC.i82
  %7080 = inttoptr i64 %7077 to i64*
  %7081 = load i64, i64* %7080
  store i64 %7081, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_432687, %struct.Memory** %MEMORY
  %loadMem_43268b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7083 = getelementptr inbounds %struct.GPR, %struct.GPR* %7082, i32 0, i32 33
  %7084 = getelementptr inbounds %struct.Reg, %struct.Reg* %7083, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %7084 to i64*
  %7085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7086 = getelementptr inbounds %struct.GPR, %struct.GPR* %7085, i32 0, i32 5
  %7087 = getelementptr inbounds %struct.Reg, %struct.Reg* %7086, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %7087 to i64*
  %7088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7089 = getelementptr inbounds %struct.GPR, %struct.GPR* %7088, i32 0, i32 15
  %7090 = getelementptr inbounds %struct.Reg, %struct.Reg* %7089, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %7090 to i64*
  %7091 = load i64, i64* %RBP.i81
  %7092 = sub i64 %7091, 112
  %7093 = load i64, i64* %PC.i79
  %7094 = add i64 %7093, 4
  store i64 %7094, i64* %PC.i79
  %7095 = inttoptr i64 %7092 to i64*
  %7096 = load i64, i64* %7095
  store i64 %7096, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_43268b, %struct.Memory** %MEMORY
  %loadMem_43268f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7098 = getelementptr inbounds %struct.GPR, %struct.GPR* %7097, i32 0, i32 33
  %7099 = getelementptr inbounds %struct.Reg, %struct.Reg* %7098, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %7099 to i64*
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7101 = getelementptr inbounds %struct.GPR, %struct.GPR* %7100, i32 0, i32 7
  %7102 = getelementptr inbounds %struct.Reg, %struct.Reg* %7101, i32 0, i32 0
  %RDX.i77 = bitcast %union.anon* %7102 to i64*
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7104 = getelementptr inbounds %struct.GPR, %struct.GPR* %7103, i32 0, i32 15
  %7105 = getelementptr inbounds %struct.Reg, %struct.Reg* %7104, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %7105 to i64*
  %7106 = load i64, i64* %RBP.i78
  %7107 = sub i64 %7106, 48
  %7108 = load i64, i64* %PC.i76
  %7109 = add i64 %7108, 4
  store i64 %7109, i64* %PC.i76
  %7110 = inttoptr i64 %7107 to i64*
  %7111 = load i64, i64* %7110
  store i64 %7111, i64* %RDX.i77, align 8
  store %struct.Memory* %loadMem_43268f, %struct.Memory** %MEMORY
  %loadMem_432693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7113 = getelementptr inbounds %struct.GPR, %struct.GPR* %7112, i32 0, i32 33
  %7114 = getelementptr inbounds %struct.Reg, %struct.Reg* %7113, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7114 to i64*
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7116 = getelementptr inbounds %struct.GPR, %struct.GPR* %7115, i32 0, i32 1
  %7117 = getelementptr inbounds %struct.Reg, %struct.Reg* %7116, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %7117 to i64*
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7119 = getelementptr inbounds %struct.GPR, %struct.GPR* %7118, i32 0, i32 5
  %7120 = getelementptr inbounds %struct.Reg, %struct.Reg* %7119, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %7120 to i64*
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7122 = getelementptr inbounds %struct.GPR, %struct.GPR* %7121, i32 0, i32 7
  %7123 = getelementptr inbounds %struct.Reg, %struct.Reg* %7122, i32 0, i32 0
  %RDX.i75 = bitcast %union.anon* %7123 to i64*
  %7124 = load i64, i64* %RCX.i74
  %7125 = load i64, i64* %RDX.i75
  %7126 = mul i64 %7125, 8
  %7127 = add i64 %7126, %7124
  %7128 = load i64, i64* %RAX.i73
  %7129 = load i64, i64* %PC.i72
  %7130 = add i64 %7129, 4
  store i64 %7130, i64* %PC.i72
  %7131 = inttoptr i64 %7127 to i64*
  store i64 %7128, i64* %7131
  store %struct.Memory* %loadMem_432693, %struct.Memory** %MEMORY
  %loadMem_432697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 33
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7134 to i64*
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 1
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 15
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %7140 to i64*
  %7141 = load i64, i64* %RBP.i71
  %7142 = sub i64 %7141, 88
  %7143 = load i64, i64* %PC.i69
  %7144 = add i64 %7143, 4
  store i64 %7144, i64* %PC.i69
  %7145 = inttoptr i64 %7142 to i64*
  %7146 = load i64, i64* %7145
  store i64 %7146, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_432697, %struct.Memory** %MEMORY
  %loadMem_43269b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7148 = getelementptr inbounds %struct.GPR, %struct.GPR* %7147, i32 0, i32 33
  %7149 = getelementptr inbounds %struct.Reg, %struct.Reg* %7148, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7149 to i64*
  %7150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7151 = getelementptr inbounds %struct.GPR, %struct.GPR* %7150, i32 0, i32 5
  %7152 = getelementptr inbounds %struct.Reg, %struct.Reg* %7151, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %7152 to i64*
  %7153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7154 = getelementptr inbounds %struct.GPR, %struct.GPR* %7153, i32 0, i32 15
  %7155 = getelementptr inbounds %struct.Reg, %struct.Reg* %7154, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %7155 to i64*
  %7156 = load i64, i64* %RBP.i68
  %7157 = sub i64 %7156, 120
  %7158 = load i64, i64* %PC.i66
  %7159 = add i64 %7158, 4
  store i64 %7159, i64* %PC.i66
  %7160 = inttoptr i64 %7157 to i64*
  %7161 = load i64, i64* %7160
  store i64 %7161, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_43269b, %struct.Memory** %MEMORY
  %loadMem_43269f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 33
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7164 to i64*
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7166 = getelementptr inbounds %struct.GPR, %struct.GPR* %7165, i32 0, i32 7
  %7167 = getelementptr inbounds %struct.Reg, %struct.Reg* %7166, i32 0, i32 0
  %RDX.i64 = bitcast %union.anon* %7167 to i64*
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 15
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %7170 to i64*
  %7171 = load i64, i64* %RBP.i65
  %7172 = sub i64 %7171, 48
  %7173 = load i64, i64* %PC.i63
  %7174 = add i64 %7173, 4
  store i64 %7174, i64* %PC.i63
  %7175 = inttoptr i64 %7172 to i64*
  %7176 = load i64, i64* %7175
  store i64 %7176, i64* %RDX.i64, align 8
  store %struct.Memory* %loadMem_43269f, %struct.Memory** %MEMORY
  %loadMem_4326a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 33
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %7179 to i64*
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 1
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 5
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 7
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %7188 to i64*
  %7189 = load i64, i64* %RCX.i61
  %7190 = load i64, i64* %RDX.i62
  %7191 = mul i64 %7190, 8
  %7192 = add i64 %7191, %7189
  %7193 = load i64, i64* %RAX.i60
  %7194 = load i64, i64* %PC.i59
  %7195 = add i64 %7194, 4
  store i64 %7195, i64* %PC.i59
  %7196 = inttoptr i64 %7192 to i64*
  store i64 %7193, i64* %7196
  store %struct.Memory* %loadMem_4326a3, %struct.Memory** %MEMORY
  %loadMem_4326a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7198 = getelementptr inbounds %struct.GPR, %struct.GPR* %7197, i32 0, i32 33
  %7199 = getelementptr inbounds %struct.Reg, %struct.Reg* %7198, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7199 to i64*
  %7200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7201 = getelementptr inbounds %struct.GPR, %struct.GPR* %7200, i32 0, i32 1
  %7202 = getelementptr inbounds %struct.Reg, %struct.Reg* %7201, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %7202 to i64*
  %7203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7204 = getelementptr inbounds %struct.GPR, %struct.GPR* %7203, i32 0, i32 15
  %7205 = getelementptr inbounds %struct.Reg, %struct.Reg* %7204, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %7205 to i64*
  %7206 = load i64, i64* %RBP.i58
  %7207 = sub i64 %7206, 48
  %7208 = load i64, i64* %PC.i56
  %7209 = add i64 %7208, 4
  store i64 %7209, i64* %PC.i56
  %7210 = inttoptr i64 %7207 to i64*
  %7211 = load i64, i64* %7210
  store i64 %7211, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_4326a7, %struct.Memory** %MEMORY
  %loadMem_4326ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 33
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %7214 to i64*
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 1
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %7217 to i64*
  %7218 = load i64, i64* %RAX.i55
  %7219 = load i64, i64* %PC.i54
  %7220 = add i64 %7219, 4
  store i64 %7220, i64* %PC.i54
  %7221 = add i64 1, %7218
  store i64 %7221, i64* %RAX.i55, align 8
  %7222 = icmp ult i64 %7221, %7218
  %7223 = icmp ult i64 %7221, 1
  %7224 = or i1 %7222, %7223
  %7225 = zext i1 %7224 to i8
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7225, i8* %7226, align 1
  %7227 = trunc i64 %7221 to i32
  %7228 = and i32 %7227, 255
  %7229 = call i32 @llvm.ctpop.i32(i32 %7228)
  %7230 = trunc i32 %7229 to i8
  %7231 = and i8 %7230, 1
  %7232 = xor i8 %7231, 1
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7232, i8* %7233, align 1
  %7234 = xor i64 1, %7218
  %7235 = xor i64 %7234, %7221
  %7236 = lshr i64 %7235, 4
  %7237 = trunc i64 %7236 to i8
  %7238 = and i8 %7237, 1
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7238, i8* %7239, align 1
  %7240 = icmp eq i64 %7221, 0
  %7241 = zext i1 %7240 to i8
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7241, i8* %7242, align 1
  %7243 = lshr i64 %7221, 63
  %7244 = trunc i64 %7243 to i8
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7244, i8* %7245, align 1
  %7246 = lshr i64 %7218, 63
  %7247 = xor i64 %7243, %7246
  %7248 = add i64 %7247, %7243
  %7249 = icmp eq i64 %7248, 2
  %7250 = zext i1 %7249 to i8
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7250, i8* %7251, align 1
  store %struct.Memory* %loadMem_4326ab, %struct.Memory** %MEMORY
  %loadMem_4326af = load %struct.Memory*, %struct.Memory** %MEMORY
  %7252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7253 = getelementptr inbounds %struct.GPR, %struct.GPR* %7252, i32 0, i32 33
  %7254 = getelementptr inbounds %struct.Reg, %struct.Reg* %7253, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7254 to i64*
  %7255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7256 = getelementptr inbounds %struct.GPR, %struct.GPR* %7255, i32 0, i32 1
  %7257 = getelementptr inbounds %struct.Reg, %struct.Reg* %7256, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7257 to i64*
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7259 = getelementptr inbounds %struct.GPR, %struct.GPR* %7258, i32 0, i32 15
  %7260 = getelementptr inbounds %struct.Reg, %struct.Reg* %7259, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %7260 to i64*
  %7261 = load i64, i64* %RBP.i53
  %7262 = sub i64 %7261, 48
  %7263 = load i64, i64* %RAX.i
  %7264 = load i64, i64* %PC.i52
  %7265 = add i64 %7264, 4
  store i64 %7265, i64* %PC.i52
  %7266 = inttoptr i64 %7262 to i64*
  store i64 %7263, i64* %7266
  store %struct.Memory* %loadMem_4326af, %struct.Memory** %MEMORY
  %loadMem_4326b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 33
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7269 to i64*
  %7270 = load i64, i64* %PC.i51
  %7271 = add i64 %7270, -653
  %7272 = load i64, i64* %PC.i51
  %7273 = add i64 %7272, 5
  store i64 %7273, i64* %PC.i51
  %7274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7271, i64* %7274, align 8
  store %struct.Memory* %loadMem_4326b3, %struct.Memory** %MEMORY
  br label %block_.L_432426

block_.L_4326b8:                                  ; preds = %block_.L_432426
  %loadMem_4326b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7276 = getelementptr inbounds %struct.GPR, %struct.GPR* %7275, i32 0, i32 33
  %7277 = getelementptr inbounds %struct.Reg, %struct.Reg* %7276, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7277 to i64*
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7279 = getelementptr inbounds %struct.GPR, %struct.GPR* %7278, i32 0, i32 11
  %7280 = getelementptr inbounds %struct.Reg, %struct.Reg* %7279, i32 0, i32 0
  %RDI.i49 = bitcast %union.anon* %7280 to i64*
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 15
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %7283 to i64*
  %7284 = load i64, i64* %RBP.i50
  %7285 = sub i64 %7284, 24
  %7286 = load i64, i64* %PC.i48
  %7287 = add i64 %7286, 4
  store i64 %7287, i64* %PC.i48
  %7288 = inttoptr i64 %7285 to i64*
  %7289 = load i64, i64* %7288
  store i64 %7289, i64* %RDI.i49, align 8
  store %struct.Memory* %loadMem_4326b8, %struct.Memory** %MEMORY
  %loadMem_4326bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7291 = getelementptr inbounds %struct.GPR, %struct.GPR* %7290, i32 0, i32 33
  %7292 = getelementptr inbounds %struct.Reg, %struct.Reg* %7291, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7292 to i64*
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7294 = getelementptr inbounds %struct.GPR, %struct.GPR* %7293, i32 0, i32 9
  %7295 = getelementptr inbounds %struct.Reg, %struct.Reg* %7294, i32 0, i32 0
  %RSI.i46 = bitcast %union.anon* %7295 to i64*
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 15
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7298 to i64*
  %7299 = load i64, i64* %RBP.i47
  %7300 = sub i64 %7299, 104
  %7301 = load i64, i64* %PC.i45
  %7302 = add i64 %7301, 4
  store i64 %7302, i64* %PC.i45
  %7303 = inttoptr i64 %7300 to i64*
  %7304 = load i64, i64* %7303
  store i64 %7304, i64* %RSI.i46, align 8
  store %struct.Memory* %loadMem_4326bc, %struct.Memory** %MEMORY
  %loadMem_4326c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7306 = getelementptr inbounds %struct.GPR, %struct.GPR* %7305, i32 0, i32 33
  %7307 = getelementptr inbounds %struct.Reg, %struct.Reg* %7306, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %7307 to i64*
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 7
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 15
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %7313 to i64*
  %7314 = load i64, i64* %RBP.i44
  %7315 = sub i64 %7314, 112
  %7316 = load i64, i64* %PC.i43
  %7317 = add i64 %7316, 4
  store i64 %7317, i64* %PC.i43
  %7318 = inttoptr i64 %7315 to i64*
  %7319 = load i64, i64* %7318
  store i64 %7319, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4326c0, %struct.Memory** %MEMORY
  %loadMem_4326c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 33
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7322 to i64*
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7324 = getelementptr inbounds %struct.GPR, %struct.GPR* %7323, i32 0, i32 5
  %7325 = getelementptr inbounds %struct.Reg, %struct.Reg* %7324, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %7325 to i64*
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7327 = getelementptr inbounds %struct.GPR, %struct.GPR* %7326, i32 0, i32 15
  %7328 = getelementptr inbounds %struct.Reg, %struct.Reg* %7327, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %7328 to i64*
  %7329 = load i64, i64* %RBP.i42
  %7330 = sub i64 %7329, 120
  %7331 = load i64, i64* %PC.i40
  %7332 = add i64 %7331, 4
  store i64 %7332, i64* %PC.i40
  %7333 = inttoptr i64 %7330 to i64*
  %7334 = load i64, i64* %7333
  store i64 %7334, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_4326c4, %struct.Memory** %MEMORY
  %loadMem1_4326c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7336 = getelementptr inbounds %struct.GPR, %struct.GPR* %7335, i32 0, i32 33
  %7337 = getelementptr inbounds %struct.Reg, %struct.Reg* %7336, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7337 to i64*
  %7338 = load i64, i64* %PC.i39
  %7339 = add i64 %7338, -2360
  %7340 = load i64, i64* %PC.i39
  %7341 = add i64 %7340, 5
  %7342 = load i64, i64* %PC.i39
  %7343 = add i64 %7342, 5
  store i64 %7343, i64* %PC.i39
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7345 = load i64, i64* %7344, align 8
  %7346 = add i64 %7345, -8
  %7347 = inttoptr i64 %7346 to i64*
  store i64 %7341, i64* %7347
  store i64 %7346, i64* %7344, align 8
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7339, i64* %7348, align 8
  store %struct.Memory* %loadMem1_4326c8, %struct.Memory** %MEMORY
  %loadMem2_4326c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326c8 = load i64, i64* %3
  %call2_4326c8 = call %struct.Memory* @sub_431d90.write_buffer(%struct.State* %0, i64 %loadPC_4326c8, %struct.Memory* %loadMem2_4326c8)
  store %struct.Memory* %call2_4326c8, %struct.Memory** %MEMORY
  %loadMem_4326cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7350 = getelementptr inbounds %struct.GPR, %struct.GPR* %7349, i32 0, i32 33
  %7351 = getelementptr inbounds %struct.Reg, %struct.Reg* %7350, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7351 to i64*
  %7352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7353 = getelementptr inbounds %struct.GPR, %struct.GPR* %7352, i32 0, i32 5
  %7354 = getelementptr inbounds %struct.Reg, %struct.Reg* %7353, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %7354 to i64*
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 15
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %7357 to i64*
  %7358 = load i64, i64* %RBP.i38
  %7359 = sub i64 %7358, 32
  %7360 = load i64, i64* %PC.i36
  %7361 = add i64 %7360, 4
  store i64 %7361, i64* %PC.i36
  %7362 = inttoptr i64 %7359 to i64*
  %7363 = load i64, i64* %7362
  store i64 %7363, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_4326cd, %struct.Memory** %MEMORY
  %loadMem_4326d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7365 = getelementptr inbounds %struct.GPR, %struct.GPR* %7364, i32 0, i32 33
  %7366 = getelementptr inbounds %struct.Reg, %struct.Reg* %7365, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7366 to i64*
  %7367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7368 = getelementptr inbounds %struct.GPR, %struct.GPR* %7367, i32 0, i32 5
  %7369 = getelementptr inbounds %struct.Reg, %struct.Reg* %7368, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %7369 to i64*
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 11
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %7372 to i64*
  %7373 = load i64, i64* %RCX.i34
  %7374 = load i64, i64* %PC.i33
  %7375 = add i64 %7374, 3
  store i64 %7375, i64* %PC.i33
  store i64 %7373, i64* %RDI.i35, align 8
  store %struct.Memory* %loadMem_4326d1, %struct.Memory** %MEMORY
  %loadMem1_4326d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 33
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7378 to i64*
  %7379 = load i64, i64* %PC.i32
  %7380 = add i64 %7379, -202580
  %7381 = load i64, i64* %PC.i32
  %7382 = add i64 %7381, 5
  %7383 = load i64, i64* %PC.i32
  %7384 = add i64 %7383, 5
  store i64 %7384, i64* %PC.i32
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7386 = load i64, i64* %7385, align 8
  %7387 = add i64 %7386, -8
  %7388 = inttoptr i64 %7387 to i64*
  store i64 %7382, i64* %7388
  store i64 %7387, i64* %7385, align 8
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7380, i64* %7389, align 8
  store %struct.Memory* %loadMem1_4326d4, %struct.Memory** %MEMORY
  %loadMem2_4326d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326d4 = load i64, i64* %3
  %7390 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4326d4)
  store %struct.Memory* %7390, %struct.Memory** %MEMORY
  %loadMem_4326d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7392 = getelementptr inbounds %struct.GPR, %struct.GPR* %7391, i32 0, i32 33
  %7393 = getelementptr inbounds %struct.Reg, %struct.Reg* %7392, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7393 to i64*
  %7394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7395 = getelementptr inbounds %struct.GPR, %struct.GPR* %7394, i32 0, i32 5
  %7396 = getelementptr inbounds %struct.Reg, %struct.Reg* %7395, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %7396 to i64*
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7398 = getelementptr inbounds %struct.GPR, %struct.GPR* %7397, i32 0, i32 15
  %7399 = getelementptr inbounds %struct.Reg, %struct.Reg* %7398, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %7399 to i64*
  %7400 = load i64, i64* %RBP.i29
  %7401 = sub i64 %7400, 104
  %7402 = load i64, i64* %PC.i27
  %7403 = add i64 %7402, 4
  store i64 %7403, i64* %PC.i27
  %7404 = inttoptr i64 %7401 to i64*
  %7405 = load i64, i64* %7404
  store i64 %7405, i64* %RCX.i28, align 8
  store %struct.Memory* %loadMem_4326d9, %struct.Memory** %MEMORY
  %loadMem_4326dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 33
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7408 to i64*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 5
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %7411 to i64*
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7413 = getelementptr inbounds %struct.GPR, %struct.GPR* %7412, i32 0, i32 11
  %7414 = getelementptr inbounds %struct.Reg, %struct.Reg* %7413, i32 0, i32 0
  %RDI.i26 = bitcast %union.anon* %7414 to i64*
  %7415 = load i64, i64* %RCX.i25
  %7416 = load i64, i64* %PC.i24
  %7417 = add i64 %7416, 3
  store i64 %7417, i64* %PC.i24
  store i64 %7415, i64* %RDI.i26, align 8
  store %struct.Memory* %loadMem_4326dd, %struct.Memory** %MEMORY
  %loadMem1_4326e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 33
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7420 to i64*
  %7421 = load i64, i64* %PC.i23
  %7422 = add i64 %7421, -202592
  %7423 = load i64, i64* %PC.i23
  %7424 = add i64 %7423, 5
  %7425 = load i64, i64* %PC.i23
  %7426 = add i64 %7425, 5
  store i64 %7426, i64* %PC.i23
  %7427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7428 = load i64, i64* %7427, align 8
  %7429 = add i64 %7428, -8
  %7430 = inttoptr i64 %7429 to i64*
  store i64 %7424, i64* %7430
  store i64 %7429, i64* %7427, align 8
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7422, i64* %7431, align 8
  store %struct.Memory* %loadMem1_4326e0, %struct.Memory** %MEMORY
  %loadMem2_4326e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326e0 = load i64, i64* %3
  %7432 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4326e0)
  store %struct.Memory* %7432, %struct.Memory** %MEMORY
  %loadMem_4326e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7434 = getelementptr inbounds %struct.GPR, %struct.GPR* %7433, i32 0, i32 33
  %7435 = getelementptr inbounds %struct.Reg, %struct.Reg* %7434, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7435 to i64*
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7437 = getelementptr inbounds %struct.GPR, %struct.GPR* %7436, i32 0, i32 5
  %7438 = getelementptr inbounds %struct.Reg, %struct.Reg* %7437, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %7438 to i64*
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 15
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7441 to i64*
  %7442 = load i64, i64* %RBP.i21
  %7443 = sub i64 %7442, 112
  %7444 = load i64, i64* %PC.i19
  %7445 = add i64 %7444, 4
  store i64 %7445, i64* %PC.i19
  %7446 = inttoptr i64 %7443 to i64*
  %7447 = load i64, i64* %7446
  store i64 %7447, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_4326e5, %struct.Memory** %MEMORY
  %loadMem_4326e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7449 = getelementptr inbounds %struct.GPR, %struct.GPR* %7448, i32 0, i32 33
  %7450 = getelementptr inbounds %struct.Reg, %struct.Reg* %7449, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7450 to i64*
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7452 = getelementptr inbounds %struct.GPR, %struct.GPR* %7451, i32 0, i32 5
  %7453 = getelementptr inbounds %struct.Reg, %struct.Reg* %7452, i32 0, i32 0
  %RCX.i17 = bitcast %union.anon* %7453 to i64*
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7455 = getelementptr inbounds %struct.GPR, %struct.GPR* %7454, i32 0, i32 11
  %7456 = getelementptr inbounds %struct.Reg, %struct.Reg* %7455, i32 0, i32 0
  %RDI.i18 = bitcast %union.anon* %7456 to i64*
  %7457 = load i64, i64* %RCX.i17
  %7458 = load i64, i64* %PC.i16
  %7459 = add i64 %7458, 3
  store i64 %7459, i64* %PC.i16
  store i64 %7457, i64* %RDI.i18, align 8
  store %struct.Memory* %loadMem_4326e9, %struct.Memory** %MEMORY
  %loadMem1_4326ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7461 = getelementptr inbounds %struct.GPR, %struct.GPR* %7460, i32 0, i32 33
  %7462 = getelementptr inbounds %struct.Reg, %struct.Reg* %7461, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7462 to i64*
  %7463 = load i64, i64* %PC.i15
  %7464 = add i64 %7463, -202604
  %7465 = load i64, i64* %PC.i15
  %7466 = add i64 %7465, 5
  %7467 = load i64, i64* %PC.i15
  %7468 = add i64 %7467, 5
  store i64 %7468, i64* %PC.i15
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7470 = load i64, i64* %7469, align 8
  %7471 = add i64 %7470, -8
  %7472 = inttoptr i64 %7471 to i64*
  store i64 %7466, i64* %7472
  store i64 %7471, i64* %7469, align 8
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7464, i64* %7473, align 8
  store %struct.Memory* %loadMem1_4326ec, %struct.Memory** %MEMORY
  %loadMem2_4326ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326ec = load i64, i64* %3
  %7474 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4326ec)
  store %struct.Memory* %7474, %struct.Memory** %MEMORY
  %loadMem_4326f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7476 = getelementptr inbounds %struct.GPR, %struct.GPR* %7475, i32 0, i32 33
  %7477 = getelementptr inbounds %struct.Reg, %struct.Reg* %7476, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %7477 to i64*
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 5
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %RCX.i11 = bitcast %union.anon* %7480 to i64*
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 15
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %7483 to i64*
  %7484 = load i64, i64* %RBP.i12
  %7485 = sub i64 %7484, 120
  %7486 = load i64, i64* %PC.i10
  %7487 = add i64 %7486, 4
  store i64 %7487, i64* %PC.i10
  %7488 = inttoptr i64 %7485 to i64*
  %7489 = load i64, i64* %7488
  store i64 %7489, i64* %RCX.i11, align 8
  store %struct.Memory* %loadMem_4326f1, %struct.Memory** %MEMORY
  %loadMem_4326f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7491 = getelementptr inbounds %struct.GPR, %struct.GPR* %7490, i32 0, i32 33
  %7492 = getelementptr inbounds %struct.Reg, %struct.Reg* %7491, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7492 to i64*
  %7493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7494 = getelementptr inbounds %struct.GPR, %struct.GPR* %7493, i32 0, i32 5
  %7495 = getelementptr inbounds %struct.Reg, %struct.Reg* %7494, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7495 to i64*
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7497 = getelementptr inbounds %struct.GPR, %struct.GPR* %7496, i32 0, i32 11
  %7498 = getelementptr inbounds %struct.Reg, %struct.Reg* %7497, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7498 to i64*
  %7499 = load i64, i64* %RCX.i
  %7500 = load i64, i64* %PC.i9
  %7501 = add i64 %7500, 3
  store i64 %7501, i64* %PC.i9
  store i64 %7499, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4326f5, %struct.Memory** %MEMORY
  %loadMem1_4326f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7503 = getelementptr inbounds %struct.GPR, %struct.GPR* %7502, i32 0, i32 33
  %7504 = getelementptr inbounds %struct.Reg, %struct.Reg* %7503, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7504 to i64*
  %7505 = load i64, i64* %PC.i8
  %7506 = add i64 %7505, -202616
  %7507 = load i64, i64* %PC.i8
  %7508 = add i64 %7507, 5
  %7509 = load i64, i64* %PC.i8
  %7510 = add i64 %7509, 5
  store i64 %7510, i64* %PC.i8
  %7511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7512 = load i64, i64* %7511, align 8
  %7513 = add i64 %7512, -8
  %7514 = inttoptr i64 %7513 to i64*
  store i64 %7508, i64* %7514
  store i64 %7513, i64* %7511, align 8
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7506, i64* %7515, align 8
  store %struct.Memory* %loadMem1_4326f8, %struct.Memory** %MEMORY
  %loadMem2_4326f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326f8 = load i64, i64* %3
  %7516 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4326f8)
  store %struct.Memory* %7516, %struct.Memory** %MEMORY
  %loadMem_4326fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7518 = getelementptr inbounds %struct.GPR, %struct.GPR* %7517, i32 0, i32 33
  %7519 = getelementptr inbounds %struct.Reg, %struct.Reg* %7518, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7519 to i64*
  %7520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7521 = getelementptr inbounds %struct.GPR, %struct.GPR* %7520, i32 0, i32 13
  %7522 = getelementptr inbounds %struct.Reg, %struct.Reg* %7521, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7522 to i64*
  %7523 = load i64, i64* %RSP.i
  %7524 = load i64, i64* %PC.i4
  %7525 = add i64 %7524, 7
  store i64 %7525, i64* %PC.i4
  %7526 = add i64 176, %7523
  store i64 %7526, i64* %RSP.i, align 8
  %7527 = icmp ult i64 %7526, %7523
  %7528 = icmp ult i64 %7526, 176
  %7529 = or i1 %7527, %7528
  %7530 = zext i1 %7529 to i8
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7530, i8* %7531, align 1
  %7532 = trunc i64 %7526 to i32
  %7533 = and i32 %7532, 255
  %7534 = call i32 @llvm.ctpop.i32(i32 %7533)
  %7535 = trunc i32 %7534 to i8
  %7536 = and i8 %7535, 1
  %7537 = xor i8 %7536, 1
  %7538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7537, i8* %7538, align 1
  %7539 = xor i64 176, %7523
  %7540 = xor i64 %7539, %7526
  %7541 = lshr i64 %7540, 4
  %7542 = trunc i64 %7541 to i8
  %7543 = and i8 %7542, 1
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7543, i8* %7544, align 1
  %7545 = icmp eq i64 %7526, 0
  %7546 = zext i1 %7545 to i8
  %7547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7546, i8* %7547, align 1
  %7548 = lshr i64 %7526, 63
  %7549 = trunc i64 %7548 to i8
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7549, i8* %7550, align 1
  %7551 = lshr i64 %7523, 63
  %7552 = xor i64 %7548, %7551
  %7553 = add i64 %7552, %7548
  %7554 = icmp eq i64 %7553, 2
  %7555 = zext i1 %7554 to i8
  %7556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7555, i8* %7556, align 1
  store %struct.Memory* %loadMem_4326fd, %struct.Memory** %MEMORY
  %loadMem_432704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7558 = getelementptr inbounds %struct.GPR, %struct.GPR* %7557, i32 0, i32 33
  %7559 = getelementptr inbounds %struct.Reg, %struct.Reg* %7558, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7559 to i64*
  %7560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7561 = getelementptr inbounds %struct.GPR, %struct.GPR* %7560, i32 0, i32 15
  %7562 = getelementptr inbounds %struct.Reg, %struct.Reg* %7561, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7562 to i64*
  %7563 = load i64, i64* %PC.i2
  %7564 = add i64 %7563, 1
  store i64 %7564, i64* %PC.i2
  %7565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7566 = load i64, i64* %7565, align 8
  %7567 = add i64 %7566, 8
  %7568 = inttoptr i64 %7566 to i64*
  %7569 = load i64, i64* %7568
  store i64 %7569, i64* %RBP.i3, align 8
  store i64 %7567, i64* %7565, align 8
  store %struct.Memory* %loadMem_432704, %struct.Memory** %MEMORY
  %loadMem_432705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7571 = getelementptr inbounds %struct.GPR, %struct.GPR* %7570, i32 0, i32 33
  %7572 = getelementptr inbounds %struct.Reg, %struct.Reg* %7571, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7572 to i64*
  %7573 = load i64, i64* %PC.i1
  %7574 = add i64 %7573, 1
  store i64 %7574, i64* %PC.i1
  %7575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7577 = load i64, i64* %7576, align 8
  %7578 = inttoptr i64 %7577 to i64*
  %7579 = load i64, i64* %7578
  store i64 %7579, i64* %7575, align 8
  %7580 = add i64 %7577, 8
  store i64 %7580, i64* %7576, align 8
  store %struct.Memory* %loadMem_432705, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_432705
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

define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 176
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 176
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
  %23 = xor i64 176, %9
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

define %struct.Memory* @routine_movq__0x4c054d___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c054d_type* @G__0x4c054d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cbe00_type* @G_0x6cbe00 to i64*)
  store i64 %11, i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c059e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c059e_type* @G__0x4c059e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cc010___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*)
  store i64 %11, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_0x9ac__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 2476
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cc010___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_432072(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c05b9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c05b9_type* @G__0x4c05b9 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 104
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

define %struct.Memory* @routine_jne_.L_4320a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c05d3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c05d3_type* @G__0x4c05d3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 112
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

define %struct.Memory* @routine_jne_.L_4320ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c05e5___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c05e5_type* @G__0x4c05e5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
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

define %struct.Memory* @routine_jne_.L_4320fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4c05f7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c05f7_type* @G__0x4c05f7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 0, i64* %13
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

define %struct.Memory* @routine_cmpq_0x6cc010___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* bitcast (%G_0x6cc010_type* @G_0x6cc010 to i64*)
  %13 = sub i64 %9, %12
  %14 = icmp ugt i64 %12, %9
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i64 %12, %9
  %25 = xor i64 %24, %13
  %26 = lshr i64 %25, 4
  %27 = trunc i64 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i64 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %13, 63
  %34 = trunc i64 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %9, 63
  %37 = lshr i64 %12, 63
  %38 = xor i64 %37, %36
  %39 = xor i64 %33, %36
  %40 = add i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_432143(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6f9740___rax_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 7313216
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jmpq_.L_43210c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_shrq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = lshr i64 %9, 63
  %13 = trunc i64 %12 to i8
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %9, 1
  store i64 %16, i64* %RCX, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %19 = trunc i64 %16 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %18, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i64 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %13, i8* %30, align 1
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

define %struct.Memory* @routine_andl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_orq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = or i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_cvtsi2ssq__rsi___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssq__rax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testq__rax___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %RAX
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = and i64 %10, %9
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = trunc i64 %13 to i32
  %16 = and i32 %15, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %13, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 132
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_js_.L_43218e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x84__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss_MINUS0x88__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movq_0x299e73__rip____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x299e73__rip__type* @G_0x299e73__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssq__rsi___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssq__rax___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x i32>*
  %16 = load <2 x i32>, <2 x i32>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = sitofp i64 %12 to float
  %21 = bitcast i8* %11 to float*
  store float %20, float* %21, align 1
  %22 = extractelement <2 x i32> %16, i32 1
  %23 = getelementptr inbounds i8, i8* %11, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %19, i32 0
  %26 = bitcast i8* %17 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %19, i32 1
  %28 = getelementptr inbounds i8, i8* %11, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 140
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 148
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_js_.L_4321ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 148
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x8b630__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x8b630__rip__type* @G_0x8b630__rip_ to i64)
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

define %struct.Memory* @routine_movaps__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subss__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fsub float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si__xmm2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = fptosi float %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x8000000000000000___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_cvttss2si__xmm1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = fptosi float %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmovbq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = icmp ne i8 %16, 0
  %18 = load i64, i64* %RAX, align 8
  %19 = select i1 %17, i64 %12, i64 %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.get_LeakyBucketRate(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_je_.L_432408(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  store i64 0, i64* %13
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

define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_432403(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 48
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

define %struct.Memory* @routine_jne_.L_432323(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 156
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_js_.L_4322b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss_MINUS0x9c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movq_0x29963a__rip____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x29963a__rip__type* @G_0x29963a__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x30__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 48
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

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fmul float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x8b561__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x8b561__rip__type* @G_0x8b561__rip_ to i64)
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

define %struct.Memory* @routine_subss__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fsub float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si__xmm0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = fptosi float %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x14__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_divq__rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = zext i64 %15 to i128
  %17 = shl i128 %16, 64
  %18 = zext i64 %13 to i128
  %19 = or i128 %17, %18
  %20 = zext i64 %9 to i128
  %21 = udiv i128 %19, %20
  %22 = and i128 %21, 18446744073709551615
  %23 = icmp eq i128 %21, %22
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %block_400488
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %26, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:28:                                     ; preds = %block_400488
  %29 = urem i128 %19, %20
  %30 = trunc i128 %29 to i64
  %31 = trunc i128 %21 to i64
  store i64 %31, i64* %12, align 8
  store i64 %30, i64* %14, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L9DIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %28
  %38 = phi %struct.Memory* [ %27, %24 ], [ %2, %28 ]
  ret %struct.Memory* %38
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rax____rcx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4323ed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x8__rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -8
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i64*
  %20 = load i64, i64* %19
  store i64 %20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 164
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_js_.L_432377(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss_MINUS0xa4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_shrq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = lshr i64 %9, 1
  %13 = trunc i64 %12 to i8
  %14 = and i8 %13, 1
  %15 = lshr i64 %12, 1
  store i64 %15, i64* %RAX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %15 to i32
  %19 = and i32 %18, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %15, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x29956d__rip____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x29956d__rip__type* @G_0x29956d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x30__rax____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 48
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

define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fmul float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x299555__rip____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x299555__rip__type* @G_0x299555__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_incl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %13, %12
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %13, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %13, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = xor i32 %29, %32
  %34 = add i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x i32>*
  %17 = load <2 x i32>, <2 x i32>* %16, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to <2 x i32>*
  %20 = load <2 x i32>, <2 x i32>* %19, align 1
  %21 = sitofp i32 %12 to float
  %22 = bitcast i8* %11 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %17, i32 1
  %24 = getelementptr inbounds i8, i8* %11, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %20, i32 0
  %27 = bitcast i8* %18 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %20, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x8b47c__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x8b47c__rip__type* @G_0x8b47c__rip_ to i64)
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

define %struct.Memory* @routine_movq__0x8000000000000000___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 -9223372036854775808, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %12
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_cvttss2si__xmm0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = fptosi float %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmovbq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = load i64, i64* %RAX, align 8
  %19 = select i1 %17, i64 %12, i64 %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4323f2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_432253(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_432408(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.Sort(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imulq__0x14__MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  %18 = sext i64 %17 to i128
  %19 = and i128 %18, -18446744073709551616
  %20 = zext i64 %17 to i128
  %21 = or i128 %19, %20
  %22 = mul i128 %21, 20
  %23 = trunc i128 %22 to i64
  store i64 %23, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rsi__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jae_.L_4326b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x2994b1__rip____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2994b1__rip__type* @G_0x2994b1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_incl__edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %13, %12
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %13, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %13, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = xor i32 %29, %32
  %34 = add i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sext i64 %12 to i128
  %17 = and i128 %16, -18446744073709551616
  %18 = sext i64 %13 to i128
  %19 = and i128 %18, -18446744073709551616
  %20 = zext i64 %12 to i128
  %21 = or i128 %17, %20
  %22 = zext i64 %13 to i128
  %23 = or i128 %19, %22
  %24 = mul i128 %23, %21
  %25 = trunc i128 %24 to i64
  store i64 %25, i64* %RAX, align 8
  %26 = sext i64 %25 to i128
  %27 = icmp ne i128 %26, %24
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = trunc i128 %24 to i32
  %31 = and i32 %30, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %38, align 1
  %39 = lshr i64 %25, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 172
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_js_.L_43249a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0xa8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss_MINUS0xac__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_divss_0x30__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fdiv float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvttss2si__xmm0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = call float @llvm.trunc.f32(float %16)
  %18 = fptosi float %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
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

define %struct.Memory* @routine_jae_.L_43259a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_subq_0x6f9740___rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, 7313216
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  %20 = sub i64 %12, %19
  store i64 %20, i64* %RAX, align 8
  %21 = icmp ugt i64 %19, %12
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %22, i8* %23, align 1
  %24 = trunc i64 %20 to i32
  %25 = and i32 %24, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i64 %19, %12
  %32 = xor i64 %31, %20
  %33 = lshr i64 %32, 4
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i64 %20, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i64 %20, 63
  %41 = trunc i64 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i64 %12, 63
  %44 = lshr i64 %19, 63
  %45 = xor i64 %44, %43
  %46 = xor i64 %40, %43
  %47 = add i64 %46, %45
  %48 = icmp eq i64 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
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

define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_43253f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = add i64 %18, %12
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ult i64 %19, %12
  %21 = icmp ult i64 %19, %18
  %22 = or i1 %20, %21
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = trunc i64 %19 to i32
  %26 = and i32 %25, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %18, %12
  %33 = xor i64 %32, %19
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %19, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %19, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %12, 63
  %45 = lshr i64 %18, 63
  %46 = xor i64 %41, %44
  %47 = xor i64 %41, %45
  %48 = add i64 %46, %47
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x8__rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, 8
  %19 = add i64 %18, %17
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %19 to i64*
  store i64 %20, i64* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %12, 8
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i64*
  %20 = load i64, i64* %19
  store i64 %20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_432584(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_432589(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4324db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  store i64 %19, i64* %RAX, align 8
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6f9740___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6f9740_type* @G_0x6f9740 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_jae_.L_432687(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = trunc i64 %19 to i32
  %22 = and i32 %21, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i64 %19, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %19, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %19, 63
  %36 = xor i64 %32, %35
  %37 = add i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_432638(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = sub i64 %12, %13
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  store i64 0, i64* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i64*
  %18 = load i64, i64* %17
  %19 = sub i64 %12, %18
  %20 = icmp ugt i64 %18, %12
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = trunc i64 %19 to i32
  %24 = and i32 %23, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = xor i64 %18, %12
  %31 = xor i64 %30, %19
  %32 = lshr i64 %31, 4
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i64 %19, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %19, 63
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i64 %12, 63
  %43 = lshr i64 %18, 63
  %44 = xor i64 %43, %42
  %45 = xor i64 %39, %42
  %46 = add i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_432671(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_432687(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_432676(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4325c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_432426(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.write_buffer(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 176, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 176
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
  %25 = xor i64 176, %9
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
