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
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xa65c2__rip__type = type <{ [8 x i8] }>
%G_0xa66d5__rip__type = type <{ [4 x i8] }>
%G_0xa6743__rip__type = type <{ [4 x i8] }>
%G_0xa6747__rip__type = type <{ [4 x i8] }>
%G_0xa6761__rip__type = type <{ [4 x i8] }>
%G_0xa67ac__rip__type = type <{ [4 x i8] }>
%G_0xa689b__rip__type = type <{ [4 x i8] }>
%G_0xa68d1__rip__type = type <{ [4 x i8] }>
%G_0xa68df__rip__type = type <{ [4 x i8] }>
%G_0xa6921__rip__type = type <{ [4 x i8] }>
%G_0xa6ae1__rip__type = type <{ [4 x i8] }>
%G_0xa6af1__rip__type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0x57d7b6_type = type <{ [8 x i8] }>
%G__0x57dbac_type = type <{ [8 x i8] }>
%G__0x57dbbc_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xa65c2__rip_ = global %G_0xa65c2__rip__type zeroinitializer
@G_0xa66d5__rip_ = global %G_0xa66d5__rip__type zeroinitializer
@G_0xa6743__rip_ = global %G_0xa6743__rip__type zeroinitializer
@G_0xa6747__rip_ = global %G_0xa6747__rip__type zeroinitializer
@G_0xa6761__rip_ = global %G_0xa6761__rip__type zeroinitializer
@G_0xa67ac__rip_ = global %G_0xa67ac__rip__type zeroinitializer
@G_0xa689b__rip_ = global %G_0xa689b__rip__type zeroinitializer
@G_0xa68d1__rip_ = global %G_0xa68d1__rip__type zeroinitializer
@G_0xa68df__rip_ = global %G_0xa68df__rip__type zeroinitializer
@G_0xa6921__rip_ = global %G_0xa6921__rip__type zeroinitializer
@G_0xa6ae1__rip_ = global %G_0xa6ae1__rip__type zeroinitializer
@G_0xa6af1__rip_ = global %G_0xa6af1__rip__type zeroinitializer
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G__0x57d7b6 = global %G__0x57d7b6_type zeroinitializer
@G__0x57dbac = global %G__0x57dbac_type zeroinitializer
@G__0x57dbbc = global %G__0x57dbbc_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

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

declare %struct.Memory* @sub_415ac0.does_capture_something(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @evaluate_diagonal_intersection(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_43c650 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43c650, %struct.Memory** %MEMORY
  %loadMem_43c651 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_43c651, %struct.Memory** %MEMORY
  %loadMem_43c654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i61 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i61
  %36 = load i64, i64* %PC.i60
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i60
  %38 = sub i64 %35, 144
  store i64 %38, i64* %RSP.i61, align 8
  %39 = icmp ult i64 %35, 144
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
  %49 = xor i64 144, %35
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
  store %struct.Memory* %loadMem_43c654, %struct.Memory** %MEMORY
  %loadMem_43c65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i119 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %73 = load i64, i64* %PC.i118
  %74 = add i64 %73, ptrtoint (%G_0xa6af1__rip__type* @G_0xa6af1__rip_ to i64)
  %75 = load i64, i64* %PC.i118
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i118
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
  store %struct.Memory* %loadMem_43c65b, %struct.Memory** %MEMORY
  %loadMem_43c663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %90 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %89, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %90 to %"class.std::bitset"*
  %91 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %92 = load i64, i64* %PC.i135
  %93 = add i64 %92, ptrtoint (%G_0xa6ae1__rip__type* @G_0xa6ae1__rip_ to i64)
  %94 = load i64, i64* %PC.i135
  %95 = add i64 %94, 8
  store i64 %95, i64* %PC.i135
  %96 = inttoptr i64 %93 to float*
  %97 = load float, float* %96
  %98 = bitcast i8* %91 to float*
  store float %97, float* %98, align 1
  %99 = getelementptr inbounds i8, i8* %91, i64 4
  %100 = bitcast i8* %99 to float*
  store float 0.000000e+00, float* %100, align 1
  %101 = getelementptr inbounds i8, i8* %91, i64 8
  %102 = bitcast i8* %101 to float*
  store float 0.000000e+00, float* %102, align 1
  %103 = getelementptr inbounds i8, i8* %91, i64 12
  %104 = bitcast i8* %103 to float*
  store float 0.000000e+00, float* %104, align 1
  store %struct.Memory* %loadMem_43c663, %struct.Memory** %MEMORY
  %loadMem_43c66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %110 to i64*
  %111 = load i64, i64* %PC.i176
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC.i176
  store i64 3, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_43c66b, %struct.Memory** %MEMORY
  %loadMem_43c670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 33
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %115 to i64*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %116, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %117 to %"class.std::bitset"*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %118, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %119 to %union.vec128_t*
  %120 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %121 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %122 = bitcast %union.vec128_t* %XMM2.i to i8*
  %123 = load i64, i64* %PC.i187
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC.i187
  %125 = bitcast i8* %121 to i64*
  %126 = load i64, i64* %125, align 1
  %127 = getelementptr inbounds i8, i8* %121, i64 8
  %128 = bitcast i8* %127 to i64*
  %129 = load i64, i64* %128, align 1
  %130 = bitcast i8* %122 to i64*
  %131 = load i64, i64* %130, align 1
  %132 = getelementptr inbounds i8, i8* %122, i64 8
  %133 = bitcast i8* %132 to i64*
  %134 = load i64, i64* %133, align 1
  %135 = xor i64 %131, %126
  %136 = xor i64 %134, %129
  %137 = trunc i64 %135 to i32
  %138 = lshr i64 %135, 32
  %139 = trunc i64 %138 to i32
  %140 = bitcast i8* %120 to i32*
  store i32 %137, i32* %140, align 1
  %141 = getelementptr inbounds i8, i8* %120, i64 4
  %142 = bitcast i8* %141 to i32*
  store i32 %139, i32* %142, align 1
  %143 = trunc i64 %136 to i32
  %144 = getelementptr inbounds i8, i8* %120, i64 8
  %145 = bitcast i8* %144 to i32*
  store i32 %143, i32* %145, align 1
  %146 = lshr i64 %136, 32
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds i8, i8* %120, i64 12
  %149 = bitcast i8* %148 to i32*
  store i32 %147, i32* %149, align 1
  store %struct.Memory* %loadMem_43c670, %struct.Memory** %MEMORY
  %loadMem_43c673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i562
  %160 = sub i64 %159, 8
  %161 = load i32, i32* %EDI.i
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC.i561
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC.i561
  %165 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %165
  store %struct.Memory* %loadMem_43c673, %struct.Memory** %MEMORY
  %loadMem_43c676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 33
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %168 to i64*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %ESI.i674 = bitcast %union.anon* %171 to i32*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 15
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %RBP.i675
  %176 = sub i64 %175, 12
  %177 = load i32, i32* %ESI.i674
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* %PC.i673
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC.i673
  %181 = inttoptr i64 %176 to i32*
  store i32 %177, i32* %181
  store %struct.Memory* %loadMem_43c676, %struct.Memory** %MEMORY
  %loadMem_43c679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 7
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %EDX.i671 = bitcast %union.anon* %187 to i32*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 15
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %RBP.i672
  %192 = sub i64 %191, 16
  %193 = load i32, i32* %EDX.i671
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %PC.i670
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC.i670
  %197 = inttoptr i64 %192 to i32*
  store i32 %193, i32* %197
  store %struct.Memory* %loadMem_43c679, %struct.Memory** %MEMORY
  %loadMem_43c67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 15
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %206 to i64*
  %207 = load i64, i64* %RBP.i669
  %208 = sub i64 %207, 24
  %209 = load i64, i64* %RCX.i668
  %210 = load i64, i64* %PC.i667
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC.i667
  %212 = inttoptr i64 %208 to i64*
  store i64 %209, i64* %212
  store %struct.Memory* %loadMem_43c67c, %struct.Memory** %MEMORY
  %loadMem_43c680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 17
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %R8.i666 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %RBP.i665
  %223 = sub i64 %222, 32
  %224 = load i64, i64* %R8.i666
  %225 = load i64, i64* %PC.i664
  %226 = add i64 %225, 4
  store i64 %226, i64* %PC.i664
  %227 = inttoptr i64 %223 to i64*
  store i64 %224, i64* %227
  store %struct.Memory* %loadMem_43c680, %struct.Memory** %MEMORY
  %loadMem_43c684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 15
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 19
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %R9.i663 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %RBP.i662
  %238 = sub i64 %237, 40
  %239 = load i64, i64* %R9.i663
  %240 = load i64, i64* %PC.i661
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC.i661
  %242 = inttoptr i64 %238 to i64*
  store i64 %239, i64* %242
  store %struct.Memory* %loadMem_43c684, %struct.Memory** %MEMORY
  %loadMem_43c688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 15
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %250 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %249, i64 0, i64 2
  %XMM2.i660 = bitcast %union.VectorReg* %250 to %union.vec128_t*
  %251 = load i64, i64* %RBP.i659
  %252 = sub i64 %251, 44
  %253 = bitcast %union.vec128_t* %XMM2.i660 to i8*
  %254 = load i64, i64* %PC.i658
  %255 = add i64 %254, 5
  store i64 %255, i64* %PC.i658
  %256 = bitcast i8* %253 to <2 x float>*
  %257 = load <2 x float>, <2 x float>* %256, align 1
  %258 = extractelement <2 x float> %257, i32 0
  %259 = inttoptr i64 %252 to float*
  store float %258, float* %259
  store %struct.Memory* %loadMem_43c688, %struct.Memory** %MEMORY
  %loadMem_43c68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 33
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %262 to i64*
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 15
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %268 to i64*
  %269 = load i64, i64* %RAX.i656
  %270 = load i64, i64* %RBP.i657
  %271 = sub i64 %270, 16
  %272 = load i64, i64* %PC.i655
  %273 = add i64 %272, 3
  store i64 %273, i64* %PC.i655
  %274 = trunc i64 %269 to i32
  %275 = inttoptr i64 %271 to i32*
  %276 = load i32, i32* %275
  %277 = sub i32 %274, %276
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RAX.i656, align 8
  %279 = icmp ult i32 %274, %276
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %280, i8* %281, align 1
  %282 = and i32 %277, 255
  %283 = call i32 @llvm.ctpop.i32(i32 %282)
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %286, i8* %287, align 1
  %288 = xor i32 %276, %274
  %289 = xor i32 %288, %277
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %292, i8* %293, align 1
  %294 = icmp eq i32 %277, 0
  %295 = zext i1 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %295, i8* %296, align 1
  %297 = lshr i32 %277, 31
  %298 = trunc i32 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %298, i8* %299, align 1
  %300 = lshr i32 %274, 31
  %301 = lshr i32 %276, 31
  %302 = xor i32 %301, %300
  %303 = xor i32 %297, %300
  %304 = add i32 %303, %302
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %306, i8* %307, align 1
  store %struct.Memory* %loadMem_43c68d, %struct.Memory** %MEMORY
  %loadMem_43c690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 33
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %310 to i64*
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %EAX.i653 = bitcast %union.anon* %313 to i32*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 15
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %316 to i64*
  %317 = load i64, i64* %RBP.i654
  %318 = sub i64 %317, 48
  %319 = load i32, i32* %EAX.i653
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC.i652
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC.i652
  %323 = inttoptr i64 %318 to i32*
  store i32 %319, i32* %323
  store %struct.Memory* %loadMem_43c690, %struct.Memory** %MEMORY
  %loadMem_43c693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 15
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %RBP.i651
  %334 = sub i64 %333, 8
  %335 = load i64, i64* %PC.i649
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC.i649
  %337 = inttoptr i64 %334 to i32*
  %338 = load i32, i32* %337
  %339 = sext i32 %338 to i64
  %340 = mul i64 %339, 20
  %341 = trunc i64 %340 to i32
  %342 = and i64 %340, 4294967295
  store i64 %342, i64* %RAX.i650, align 8
  %343 = shl i64 %340, 32
  %344 = ashr exact i64 %343, 32
  %345 = icmp ne i64 %344, %340
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %346, i8* %347, align 1
  %348 = and i32 %341, 255
  %349 = call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %352, i8* %353, align 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %354, align 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %355, align 1
  %356 = lshr i32 %341, 31
  %357 = trunc i32 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %357, i8* %358, align 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %346, i8* %359, align 1
  store %struct.Memory* %loadMem_43c693, %struct.Memory** %MEMORY
  %loadMem_43c697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 33
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %RAX.i648
  %367 = load i64, i64* %PC.i647
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC.i647
  %369 = trunc i64 %366 to i32
  %370 = add i32 21, %369
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX.i648, align 8
  %372 = icmp ult i32 %370, %369
  %373 = icmp ult i32 %370, 21
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %375, i8* %376, align 1
  %377 = and i32 %370, 255
  %378 = call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %381, i8* %382, align 1
  %383 = xor i64 21, %366
  %384 = trunc i64 %383 to i32
  %385 = xor i32 %384, %370
  %386 = lshr i32 %385, 4
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %388, i8* %389, align 1
  %390 = icmp eq i32 %370, 0
  %391 = zext i1 %390 to i8
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %391, i8* %392, align 1
  %393 = lshr i32 %370, 31
  %394 = trunc i32 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %394, i8* %395, align 1
  %396 = lshr i32 %369, 31
  %397 = xor i32 %393, %396
  %398 = add i32 %397, %393
  %399 = icmp eq i32 %398, 2
  %400 = zext i1 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %400, i8* %401, align 1
  store %struct.Memory* %loadMem_43c697, %struct.Memory** %MEMORY
  %loadMem_43c69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %407 to i64*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 15
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %RAX.i645
  %412 = load i64, i64* %RBP.i646
  %413 = sub i64 %412, 12
  %414 = load i64, i64* %PC.i644
  %415 = add i64 %414, 3
  store i64 %415, i64* %PC.i644
  %416 = trunc i64 %411 to i32
  %417 = inttoptr i64 %413 to i32*
  %418 = load i32, i32* %417
  %419 = add i32 %418, %416
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i645, align 8
  %421 = icmp ult i32 %419, %416
  %422 = icmp ult i32 %419, %418
  %423 = or i1 %421, %422
  %424 = zext i1 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %424, i8* %425, align 1
  %426 = and i32 %419, 255
  %427 = call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %430, i8* %431, align 1
  %432 = xor i32 %418, %416
  %433 = xor i32 %432, %419
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %436, i8* %437, align 1
  %438 = icmp eq i32 %419, 0
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %439, i8* %440, align 1
  %441 = lshr i32 %419, 31
  %442 = trunc i32 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %442, i8* %443, align 1
  %444 = lshr i32 %416, 31
  %445 = lshr i32 %418, 31
  %446 = xor i32 %441, %444
  %447 = xor i32 %441, %445
  %448 = add i32 %446, %447
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %450, i8* %451, align 1
  store %struct.Memory* %loadMem_43c69a, %struct.Memory** %MEMORY
  %loadMem_43c69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 1
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %EAX.i642 = bitcast %union.anon* %457 to i32*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 15
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %RBP.i643
  %462 = sub i64 %461, 52
  %463 = load i32, i32* %EAX.i642
  %464 = zext i32 %463 to i64
  %465 = load i64, i64* %PC.i641
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC.i641
  %467 = inttoptr i64 %462 to i32*
  store i32 %463, i32* %467
  store %struct.Memory* %loadMem_43c69d, %struct.Memory** %MEMORY
  %loadMem_43c6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 33
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 15
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RBP.i640
  %475 = sub i64 %474, 56
  %476 = load i64, i64* %PC.i639
  %477 = add i64 %476, 7
  store i64 %477, i64* %PC.i639
  %478 = inttoptr i64 %475 to i32*
  store i32 0, i32* %478
  store %struct.Memory* %loadMem_43c6a0, %struct.Memory** %MEMORY
  %loadMem_43c6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 33
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 15
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %484 to i64*
  %485 = load i64, i64* %RBP.i638
  %486 = sub i64 %485, 60
  %487 = load i64, i64* %PC.i637
  %488 = add i64 %487, 7
  store i64 %488, i64* %PC.i637
  %489 = inttoptr i64 %486 to i32*
  store i32 0, i32* %489
  store %struct.Memory* %loadMem_43c6a7, %struct.Memory** %MEMORY
  %loadMem_43c6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 33
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 15
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %RBP.i636
  %497 = sub i64 %496, 64
  %498 = load i64, i64* %PC.i635
  %499 = add i64 %498, 7
  store i64 %499, i64* %PC.i635
  %500 = inttoptr i64 %497 to i32*
  store i32 0, i32* %500
  store %struct.Memory* %loadMem_43c6ae, %struct.Memory** %MEMORY
  %loadMem_43c6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 15
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RBP.i634
  %508 = sub i64 %507, 68
  %509 = load i64, i64* %PC.i633
  %510 = add i64 %509, 7
  store i64 %510, i64* %PC.i633
  %511 = inttoptr i64 %508 to i32*
  store i32 0, i32* %511
  store %struct.Memory* %loadMem_43c6b5, %struct.Memory** %MEMORY
  %loadMem_43c6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 33
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %514 to i64*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 15
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %517 to i64*
  %518 = load i64, i64* %RBP.i632
  %519 = sub i64 %518, 72
  %520 = load i64, i64* %PC.i631
  %521 = add i64 %520, 7
  store i64 %521, i64* %PC.i631
  %522 = inttoptr i64 %519 to i32*
  store i32 0, i32* %522
  store %struct.Memory* %loadMem_43c6bc, %struct.Memory** %MEMORY
  %loadMem_43c6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 15
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %530 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %529, i64 0, i64 1
  %XMM1.i630 = bitcast %union.VectorReg* %530 to %union.vec128_t*
  %531 = load i64, i64* %RBP.i629
  %532 = sub i64 %531, 76
  %533 = bitcast %union.vec128_t* %XMM1.i630 to i8*
  %534 = load i64, i64* %PC.i628
  %535 = add i64 %534, 5
  store i64 %535, i64* %PC.i628
  %536 = bitcast i8* %533 to <2 x float>*
  %537 = load <2 x float>, <2 x float>* %536, align 1
  %538 = extractelement <2 x float> %537, i32 0
  %539 = inttoptr i64 %532 to float*
  store float %538, float* %539
  store %struct.Memory* %loadMem_43c6c3, %struct.Memory** %MEMORY
  %loadMem_43c6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 15
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %547 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %546, i64 0, i64 0
  %XMM0.i627 = bitcast %union.VectorReg* %547 to %union.vec128_t*
  %548 = load i64, i64* %RBP.i626
  %549 = sub i64 %548, 80
  %550 = bitcast %union.vec128_t* %XMM0.i627 to i8*
  %551 = load i64, i64* %PC.i625
  %552 = add i64 %551, 5
  store i64 %552, i64* %PC.i625
  %553 = bitcast i8* %550 to <2 x float>*
  %554 = load <2 x float>, <2 x float>* %553, align 1
  %555 = extractelement <2 x float> %554, i32 0
  %556 = inttoptr i64 %549 to float*
  store float %555, float* %556
  store %struct.Memory* %loadMem_43c6c8, %struct.Memory** %MEMORY
  %loadMem_43c6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 33
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %559 to i64*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 5
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 15
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %565 to i64*
  %566 = load i64, i64* %RBP.i624
  %567 = sub i64 %566, 24
  %568 = load i64, i64* %PC.i622
  %569 = add i64 %568, 4
  store i64 %569, i64* %PC.i622
  %570 = inttoptr i64 %567 to i64*
  %571 = load i64, i64* %570
  store i64 %571, i64* %RCX.i623, align 8
  store %struct.Memory* %loadMem_43c6cd, %struct.Memory** %MEMORY
  %loadMem_43c6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 5
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RCX.i621 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %RCX.i621
  %579 = load i64, i64* %PC.i620
  %580 = add i64 %579, 6
  store i64 %580, i64* %PC.i620
  %581 = inttoptr i64 %578 to i32*
  store i32 0, i32* %581
  store %struct.Memory* %loadMem_43c6d1, %struct.Memory** %MEMORY
  %loadMem_43c6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 5
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 15
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %590 to i64*
  %591 = load i64, i64* %RBP.i619
  %592 = sub i64 %591, 32
  %593 = load i64, i64* %PC.i617
  %594 = add i64 %593, 4
  store i64 %594, i64* %PC.i617
  %595 = inttoptr i64 %592 to i64*
  %596 = load i64, i64* %595
  store i64 %596, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_43c6d7, %struct.Memory** %MEMORY
  %loadMem_43c6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 5
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %RCX.i616
  %604 = load i64, i64* %PC.i615
  %605 = add i64 %604, 6
  store i64 %605, i64* %PC.i615
  %606 = inttoptr i64 %603 to i32*
  store i32 0, i32* %606
  store %struct.Memory* %loadMem_43c6db, %struct.Memory** %MEMORY
  %loadMem_43c6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 15
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RBP.i614
  %614 = sub i64 %613, 8
  %615 = load i64, i64* %PC.i613
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC.i613
  %617 = inttoptr i64 %614 to i32*
  %618 = load i32, i32* %617
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %619, align 1
  %620 = and i32 %618, 255
  %621 = call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %624, i8* %625, align 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %626, align 1
  %627 = icmp eq i32 %618, 0
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %628, i8* %629, align 1
  %630 = lshr i32 %618, 31
  %631 = trunc i32 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %631, i8* %632, align 1
  %633 = lshr i32 %618, 31
  %634 = xor i32 %630, %633
  %635 = add i32 %634, %633
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %637, i8* %638, align 1
  store %struct.Memory* %loadMem_43c6e1, %struct.Memory** %MEMORY
  %loadMem_43c6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 33
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %PC.i612
  %643 = add i64 %642, 22
  %644 = load i64, i64* %PC.i612
  %645 = add i64 %644, 6
  %646 = load i64, i64* %PC.i612
  %647 = add i64 %646, 6
  store i64 %647, i64* %PC.i612
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %649 = load i8, i8* %648, align 1
  %650 = icmp ne i8 %649, 0
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %652 = load i8, i8* %651, align 1
  %653 = icmp ne i8 %652, 0
  %654 = xor i1 %650, %653
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %BRANCH_TAKEN, align 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %657 = select i1 %654, i64 %643, i64 %645
  store i64 %657, i64* %656, align 8
  store %struct.Memory* %loadMem_43c6e5, %struct.Memory** %MEMORY
  %loadBr_43c6e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c6e5 = icmp eq i8 %loadBr_43c6e5, 1
  br i1 %cmpBr_43c6e5, label %block_.L_43c6fb, label %block_43c6eb

block_43c6eb:                                     ; preds = %entry
  %loadMem_43c6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 33
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 1
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 15
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %RBP.i611
  %668 = sub i64 %667, 8
  %669 = load i64, i64* %PC.i609
  %670 = add i64 %669, 3
  store i64 %670, i64* %PC.i609
  %671 = inttoptr i64 %668 to i32*
  %672 = load i32, i32* %671
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_43c6eb, %struct.Memory** %MEMORY
  %loadMem_43c6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %EAX.i608 = bitcast %union.anon* %679 to i32*
  %680 = load i32, i32* %EAX.i608
  %681 = zext i32 %680 to i64
  %682 = load i64, i64* %PC.i607
  %683 = add i64 %682, 7
  store i64 %683, i64* %PC.i607
  %684 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %685 = sub i32 %680, %684
  %686 = icmp ult i32 %680, %684
  %687 = zext i1 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %687, i8* %688, align 1
  %689 = and i32 %685, 255
  %690 = call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %693, i8* %694, align 1
  %695 = xor i32 %684, %680
  %696 = xor i32 %695, %685
  %697 = lshr i32 %696, 4
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %699, i8* %700, align 1
  %701 = icmp eq i32 %685, 0
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %702, i8* %703, align 1
  %704 = lshr i32 %685, 31
  %705 = trunc i32 %704 to i8
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %705, i8* %706, align 1
  %707 = lshr i32 %680, 31
  %708 = lshr i32 %684, 31
  %709 = xor i32 %708, %707
  %710 = xor i32 %704, %707
  %711 = add i32 %710, %709
  %712 = icmp eq i32 %711, 2
  %713 = zext i1 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %713, i8* %714, align 1
  store %struct.Memory* %loadMem_43c6ee, %struct.Memory** %MEMORY
  %loadMem_43c6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %PC.i606
  %719 = add i64 %718, 15
  %720 = load i64, i64* %PC.i606
  %721 = add i64 %720, 6
  %722 = load i64, i64* %PC.i606
  %723 = add i64 %722, 6
  store i64 %723, i64* %PC.i606
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %725 = load i8, i8* %724, align 1
  %726 = icmp ne i8 %725, 0
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %728 = load i8, i8* %727, align 1
  %729 = icmp ne i8 %728, 0
  %730 = xor i1 %726, %729
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %BRANCH_TAKEN, align 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %733 = select i1 %730, i64 %719, i64 %721
  store i64 %733, i64* %732, align 8
  store %struct.Memory* %loadMem_43c6f5, %struct.Memory** %MEMORY
  %loadBr_43c6f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c6f5 = icmp eq i8 %loadBr_43c6f5, 1
  br i1 %cmpBr_43c6f5, label %block_.L_43c704, label %block_.L_43c6fb

block_.L_43c6fb:                                  ; preds = %block_43c6eb, %entry
  %loadMem_43c6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 33
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %736 to i64*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 1
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 15
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %742 to i64*
  %743 = load i64, i64* %RBP.i605
  %744 = sub i64 %743, 72
  %745 = load i64, i64* %PC.i603
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC.i603
  %747 = inttoptr i64 %744 to i32*
  %748 = load i32, i32* %747
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_43c6fb, %struct.Memory** %MEMORY
  %loadMem_43c6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %755 to i64*
  %756 = load i64, i64* %RAX.i602
  %757 = load i64, i64* %PC.i601
  %758 = add i64 %757, 3
  store i64 %758, i64* %PC.i601
  %759 = trunc i64 %756 to i32
  %760 = add i32 1, %759
  %761 = zext i32 %760 to i64
  store i64 %761, i64* %RAX.i602, align 8
  %762 = icmp ult i32 %760, %759
  %763 = icmp ult i32 %760, 1
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %765, i8* %766, align 1
  %767 = and i32 %760, 255
  %768 = call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %771, i8* %772, align 1
  %773 = xor i64 1, %756
  %774 = trunc i64 %773 to i32
  %775 = xor i32 %774, %760
  %776 = lshr i32 %775, 4
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %778, i8* %779, align 1
  %780 = icmp eq i32 %760, 0
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %781, i8* %782, align 1
  %783 = lshr i32 %760, 31
  %784 = trunc i32 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %784, i8* %785, align 1
  %786 = lshr i32 %759, 31
  %787 = xor i32 %783, %786
  %788 = add i32 %787, %783
  %789 = icmp eq i32 %788, 2
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %790, i8* %791, align 1
  store %struct.Memory* %loadMem_43c6fe, %struct.Memory** %MEMORY
  %loadMem_43c701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 33
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %794 to i64*
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 1
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %EAX.i599 = bitcast %union.anon* %797 to i32*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 15
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %RBP.i600
  %802 = sub i64 %801, 72
  %803 = load i32, i32* %EAX.i599
  %804 = zext i32 %803 to i64
  %805 = load i64, i64* %PC.i598
  %806 = add i64 %805, 3
  store i64 %806, i64* %PC.i598
  %807 = inttoptr i64 %802 to i32*
  store i32 %803, i32* %807
  store %struct.Memory* %loadMem_43c701, %struct.Memory** %MEMORY
  br label %block_.L_43c704

block_.L_43c704:                                  ; preds = %block_.L_43c6fb, %block_43c6eb
  %loadMem_43c704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 15
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %RBP.i597
  %815 = sub i64 %814, 12
  %816 = load i64, i64* %PC.i596
  %817 = add i64 %816, 4
  store i64 %817, i64* %PC.i596
  %818 = inttoptr i64 %815 to i32*
  %819 = load i32, i32* %818
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %820, align 1
  %821 = and i32 %819, 255
  %822 = call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %825, i8* %826, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %827, align 1
  %828 = icmp eq i32 %819, 0
  %829 = zext i1 %828 to i8
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %829, i8* %830, align 1
  %831 = lshr i32 %819, 31
  %832 = trunc i32 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %832, i8* %833, align 1
  %834 = lshr i32 %819, 31
  %835 = xor i32 %831, %834
  %836 = add i32 %835, %834
  %837 = icmp eq i32 %836, 2
  %838 = zext i1 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %838, i8* %839, align 1
  store %struct.Memory* %loadMem_43c704, %struct.Memory** %MEMORY
  %loadMem_43c708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 33
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %842 to i64*
  %843 = load i64, i64* %PC.i595
  %844 = add i64 %843, 22
  %845 = load i64, i64* %PC.i595
  %846 = add i64 %845, 6
  %847 = load i64, i64* %PC.i595
  %848 = add i64 %847, 6
  store i64 %848, i64* %PC.i595
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %850 = load i8, i8* %849, align 1
  %851 = icmp ne i8 %850, 0
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %853 = load i8, i8* %852, align 1
  %854 = icmp ne i8 %853, 0
  %855 = xor i1 %851, %854
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %BRANCH_TAKEN, align 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %858 = select i1 %855, i64 %844, i64 %846
  store i64 %858, i64* %857, align 8
  store %struct.Memory* %loadMem_43c708, %struct.Memory** %MEMORY
  %loadBr_43c708 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c708 = icmp eq i8 %loadBr_43c708, 1
  br i1 %cmpBr_43c708, label %block_.L_43c71e, label %block_43c70e

block_43c70e:                                     ; preds = %block_.L_43c704
  %loadMem_43c70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 1
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 15
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %RBP.i594
  %869 = sub i64 %868, 12
  %870 = load i64, i64* %PC.i592
  %871 = add i64 %870, 3
  store i64 %871, i64* %PC.i592
  %872 = inttoptr i64 %869 to i32*
  %873 = load i32, i32* %872
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_43c70e, %struct.Memory** %MEMORY
  %loadMem_43c711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 33
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 1
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %EAX.i591 = bitcast %union.anon* %880 to i32*
  %881 = load i32, i32* %EAX.i591
  %882 = zext i32 %881 to i64
  %883 = load i64, i64* %PC.i590
  %884 = add i64 %883, 7
  store i64 %884, i64* %PC.i590
  %885 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %886 = sub i32 %881, %885
  %887 = icmp ult i32 %881, %885
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %888, i8* %889, align 1
  %890 = and i32 %886, 255
  %891 = call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %894, i8* %895, align 1
  %896 = xor i32 %885, %881
  %897 = xor i32 %896, %886
  %898 = lshr i32 %897, 4
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %900, i8* %901, align 1
  %902 = icmp eq i32 %886, 0
  %903 = zext i1 %902 to i8
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %903, i8* %904, align 1
  %905 = lshr i32 %886, 31
  %906 = trunc i32 %905 to i8
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %906, i8* %907, align 1
  %908 = lshr i32 %881, 31
  %909 = lshr i32 %885, 31
  %910 = xor i32 %909, %908
  %911 = xor i32 %905, %908
  %912 = add i32 %911, %910
  %913 = icmp eq i32 %912, 2
  %914 = zext i1 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %914, i8* %915, align 1
  store %struct.Memory* %loadMem_43c711, %struct.Memory** %MEMORY
  %loadMem_43c718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %PC.i589
  %920 = add i64 %919, 15
  %921 = load i64, i64* %PC.i589
  %922 = add i64 %921, 6
  %923 = load i64, i64* %PC.i589
  %924 = add i64 %923, 6
  store i64 %924, i64* %PC.i589
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %926 = load i8, i8* %925, align 1
  %927 = icmp ne i8 %926, 0
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %929 = load i8, i8* %928, align 1
  %930 = icmp ne i8 %929, 0
  %931 = xor i1 %927, %930
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %BRANCH_TAKEN, align 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %934 = select i1 %931, i64 %920, i64 %922
  store i64 %934, i64* %933, align 8
  store %struct.Memory* %loadMem_43c718, %struct.Memory** %MEMORY
  %loadBr_43c718 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c718 = icmp eq i8 %loadBr_43c718, 1
  br i1 %cmpBr_43c718, label %block_.L_43c727, label %block_.L_43c71e

block_.L_43c71e:                                  ; preds = %block_43c70e, %block_.L_43c704
  %loadMem_43c71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 15
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RBP.i588
  %945 = sub i64 %944, 72
  %946 = load i64, i64* %PC.i586
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i586
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RAX.i587, align 8
  store %struct.Memory* %loadMem_43c71e, %struct.Memory** %MEMORY
  %loadMem_43c721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 1
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %956 to i64*
  %957 = load i64, i64* %RAX.i585
  %958 = load i64, i64* %PC.i584
  %959 = add i64 %958, 3
  store i64 %959, i64* %PC.i584
  %960 = trunc i64 %957 to i32
  %961 = add i32 1, %960
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RAX.i585, align 8
  %963 = icmp ult i32 %961, %960
  %964 = icmp ult i32 %961, 1
  %965 = or i1 %963, %964
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %966, i8* %967, align 1
  %968 = and i32 %961, 255
  %969 = call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %972, i8* %973, align 1
  %974 = xor i64 1, %957
  %975 = trunc i64 %974 to i32
  %976 = xor i32 %975, %961
  %977 = lshr i32 %976, 4
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %979, i8* %980, align 1
  %981 = icmp eq i32 %961, 0
  %982 = zext i1 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %982, i8* %983, align 1
  %984 = lshr i32 %961, 31
  %985 = trunc i32 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %985, i8* %986, align 1
  %987 = lshr i32 %960, 31
  %988 = xor i32 %984, %987
  %989 = add i32 %988, %984
  %990 = icmp eq i32 %989, 2
  %991 = zext i1 %990 to i8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %991, i8* %992, align 1
  store %struct.Memory* %loadMem_43c721, %struct.Memory** %MEMORY
  %loadMem_43c724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 1
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %998 to i32*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 15
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RBP.i583
  %1003 = sub i64 %1002, 72
  %1004 = load i32, i32* %EAX.i582
  %1005 = zext i32 %1004 to i64
  %1006 = load i64, i64* %PC.i581
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC.i581
  %1008 = inttoptr i64 %1003 to i32*
  store i32 %1004, i32* %1008
  store %struct.Memory* %loadMem_43c724, %struct.Memory** %MEMORY
  br label %block_.L_43c727

block_.L_43c727:                                  ; preds = %block_.L_43c71e, %block_43c70e
  %loadMem_43c727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 15
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %1014 to i64*
  %1015 = load i64, i64* %RBP.i580
  %1016 = sub i64 %1015, 72
  %1017 = load i64, i64* %PC.i579
  %1018 = add i64 %1017, 4
  store i64 %1018, i64* %PC.i579
  %1019 = inttoptr i64 %1016 to i32*
  %1020 = load i32, i32* %1019
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1021, align 1
  %1022 = and i32 %1020, 255
  %1023 = call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1026, i8* %1027, align 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1028, align 1
  %1029 = icmp eq i32 %1020, 0
  %1030 = zext i1 %1029 to i8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1030, i8* %1031, align 1
  %1032 = lshr i32 %1020, 31
  %1033 = trunc i32 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1033, i8* %1034, align 1
  %1035 = lshr i32 %1020, 31
  %1036 = xor i32 %1032, %1035
  %1037 = add i32 %1036, %1035
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1039, i8* %1040, align 1
  store %struct.Memory* %loadMem_43c727, %struct.Memory** %MEMORY
  %loadMem_43c72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1043 to i64*
  %1044 = load i64, i64* %PC.i578
  %1045 = add i64 %1044, 39
  %1046 = load i64, i64* %PC.i578
  %1047 = add i64 %1046, 6
  %1048 = load i64, i64* %PC.i578
  %1049 = add i64 %1048, 6
  store i64 %1049, i64* %PC.i578
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1051 = load i8, i8* %1050, align 1
  %1052 = icmp ne i8 %1051, 0
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1054 = load i8, i8* %1053, align 1
  %1055 = icmp ne i8 %1054, 0
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1057 = load i8, i8* %1056, align 1
  %1058 = icmp ne i8 %1057, 0
  %1059 = xor i1 %1055, %1058
  %1060 = or i1 %1052, %1059
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %BRANCH_TAKEN, align 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1063 = select i1 %1060, i64 %1045, i64 %1047
  store i64 %1063, i64* %1062, align 8
  store %struct.Memory* %loadMem_43c72b, %struct.Memory** %MEMORY
  %loadBr_43c72b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c72b = icmp eq i8 %loadBr_43c72b, 1
  br i1 %cmpBr_43c72b, label %block_.L_43c752, label %block_43c731

block_43c731:                                     ; preds = %block_.L_43c727
  %loadMem_43c731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 33
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 1
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %PC.i576
  %1071 = add i64 %1070, 5
  store i64 %1071, i64* %PC.i576
  store i64 2, i64* %RAX.i577, align 8
  store %struct.Memory* %loadMem_43c731, %struct.Memory** %MEMORY
  %loadMem_43c736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 5
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 15
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RBP.i575
  %1082 = sub i64 %1081, 72
  %1083 = load i64, i64* %PC.i573
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC.i573
  %1085 = inttoptr i64 %1082 to i32*
  %1086 = load i32, i32* %1085
  %1087 = zext i32 %1086 to i64
  store i64 %1087, i64* %RCX.i574, align 8
  store %struct.Memory* %loadMem_43c736, %struct.Memory** %MEMORY
  %loadMem_43c739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %EAX.i571 = bitcast %union.anon* %1093 to i32*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 15
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RBP.i572
  %1098 = sub i64 %1097, 92
  %1099 = load i32, i32* %EAX.i571
  %1100 = zext i32 %1099 to i64
  %1101 = load i64, i64* %PC.i570
  %1102 = add i64 %1101, 3
  store i64 %1102, i64* %PC.i570
  %1103 = inttoptr i64 %1098 to i32*
  store i32 %1099, i32* %1103
  store %struct.Memory* %loadMem_43c739, %struct.Memory** %MEMORY
  %loadMem_43c73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 5
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %ECX.i568 = bitcast %union.anon* %1109 to i32*
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1111 = getelementptr inbounds %struct.GPR, %struct.GPR* %1110, i32 0, i32 1
  %1112 = getelementptr inbounds %struct.Reg, %struct.Reg* %1111, i32 0, i32 0
  %RAX.i569 = bitcast %union.anon* %1112 to i64*
  %1113 = load i32, i32* %ECX.i568
  %1114 = zext i32 %1113 to i64
  %1115 = load i64, i64* %PC.i567
  %1116 = add i64 %1115, 2
  store i64 %1116, i64* %PC.i567
  %1117 = and i64 %1114, 4294967295
  store i64 %1117, i64* %RAX.i569, align 8
  store %struct.Memory* %loadMem_43c73c, %struct.Memory** %MEMORY
  %loadMem_43c73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1120 to i64*
  %1121 = load i64, i64* %PC.i566
  %1122 = add i64 %1121, 1
  store i64 %1122, i64* %PC.i566
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1125 = bitcast %union.anon* %1124 to i32*
  %1126 = load i32, i32* %1125, align 8
  %1127 = sext i32 %1126 to i64
  %1128 = lshr i64 %1127, 32
  store i64 %1128, i64* %1123, align 8
  store %struct.Memory* %loadMem_43c73e, %struct.Memory** %MEMORY
  %loadMem_43c73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 33
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1131 to i64*
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 5
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 15
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %1137 to i64*
  %1138 = load i64, i64* %RBP.i565
  %1139 = sub i64 %1138, 92
  %1140 = load i64, i64* %PC.i563
  %1141 = add i64 %1140, 3
  store i64 %1141, i64* %PC.i563
  %1142 = inttoptr i64 %1139 to i32*
  %1143 = load i32, i32* %1142
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RCX.i564, align 8
  store %struct.Memory* %loadMem_43c73f, %struct.Memory** %MEMORY
  %loadMem_43c742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 5
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %ECX.i559 = bitcast %union.anon* %1150 to i32*
  %1151 = load i32, i32* %ECX.i559
  %1152 = zext i32 %1151 to i64
  %1153 = load i64, i64* %PC.i558
  %1154 = add i64 %1153, 2
  store i64 %1154, i64* %PC.i558
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1156 = bitcast %union.anon* %1155 to i32*
  %1157 = load i32, i32* %1156, align 8
  %1158 = zext i32 %1157 to i64
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1160 = bitcast %union.anon* %1159 to i32*
  %1161 = load i32, i32* %1160, align 8
  %1162 = zext i32 %1161 to i64
  %1163 = shl i64 %1152, 32
  %1164 = ashr exact i64 %1163, 32
  %1165 = shl i64 %1162, 32
  %1166 = or i64 %1165, %1158
  %1167 = sdiv i64 %1166, %1164
  %1168 = shl i64 %1167, 32
  %1169 = ashr exact i64 %1168, 32
  %1170 = icmp eq i64 %1167, %1169
  br i1 %1170, label %1175, label %1171

; <label>:1171:                                   ; preds = %block_43c731
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1173 = load i64, i64* %1172, align 8
  %1174 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1173, %struct.Memory* %loadMem_43c742)
  br label %routine_idivl__ecx.exit560

; <label>:1175:                                   ; preds = %block_43c731
  %1176 = srem i64 %1166, %1164
  %1177 = getelementptr inbounds %union.anon, %union.anon* %1155, i64 0, i32 0
  %1178 = and i64 %1167, 4294967295
  store i64 %1178, i64* %1177, align 8
  %1179 = getelementptr inbounds %union.anon, %union.anon* %1159, i64 0, i32 0
  %1180 = and i64 %1176, 4294967295
  store i64 %1180, i64* %1179, align 8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1181, align 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1182, align 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1183, align 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1184, align 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1185, align 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1186, align 1
  br label %routine_idivl__ecx.exit560

routine_idivl__ecx.exit560:                       ; preds = %1171, %1175
  %1187 = phi %struct.Memory* [ %1174, %1171 ], [ %loadMem_43c742, %1175 ]
  store %struct.Memory* %1187, %struct.Memory** %MEMORY
  %loadMem_43c744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 7
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %EDX.i556 = bitcast %union.anon* %1193 to i32*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1194, i64 0, i64 0
  %YMM0.i557 = bitcast %union.VectorReg* %1195 to %"class.std::bitset"*
  %1196 = bitcast %"class.std::bitset"* %YMM0.i557 to i8*
  %1197 = load i32, i32* %EDX.i556
  %1198 = zext i32 %1197 to i64
  %1199 = load i64, i64* %PC.i555
  %1200 = add i64 %1199, 4
  store i64 %1200, i64* %PC.i555
  %1201 = bitcast i8* %1196 to <2 x i32>*
  %1202 = load <2 x i32>, <2 x i32>* %1201, align 1
  %1203 = getelementptr inbounds i8, i8* %1196, i64 8
  %1204 = bitcast i8* %1203 to <2 x i32>*
  %1205 = load <2 x i32>, <2 x i32>* %1204, align 1
  %1206 = sitofp i32 %1197 to float
  %1207 = bitcast i8* %1196 to float*
  store float %1206, float* %1207, align 1
  %1208 = extractelement <2 x i32> %1202, i32 1
  %1209 = getelementptr inbounds i8, i8* %1196, i64 4
  %1210 = bitcast i8* %1209 to i32*
  store i32 %1208, i32* %1210, align 1
  %1211 = extractelement <2 x i32> %1205, i32 0
  %1212 = bitcast i8* %1203 to i32*
  store i32 %1211, i32* %1212, align 1
  %1213 = extractelement <2 x i32> %1205, i32 1
  %1214 = getelementptr inbounds i8, i8* %1196, i64 12
  %1215 = bitcast i8* %1214 to i32*
  store i32 %1213, i32* %1215, align 1
  store %struct.Memory* %loadMem_43c744, %struct.Memory** %MEMORY
  %loadMem_43c748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 33
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 15
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1222, i64 0, i64 0
  %XMM0.i554 = bitcast %union.VectorReg* %1223 to %union.vec128_t*
  %1224 = load i64, i64* %RBP.i553
  %1225 = sub i64 %1224, 4
  %1226 = bitcast %union.vec128_t* %XMM0.i554 to i8*
  %1227 = load i64, i64* %PC.i552
  %1228 = add i64 %1227, 5
  store i64 %1228, i64* %PC.i552
  %1229 = bitcast i8* %1226 to <2 x float>*
  %1230 = load <2 x float>, <2 x float>* %1229, align 1
  %1231 = extractelement <2 x float> %1230, i32 0
  %1232 = inttoptr i64 %1225 to float*
  store float %1231, float* %1232
  store %struct.Memory* %loadMem_43c748, %struct.Memory** %MEMORY
  %loadMem_43c74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1235 to i64*
  %1236 = load i64, i64* %PC.i551
  %1237 = add i64 %1236, 1134
  %1238 = load i64, i64* %PC.i551
  %1239 = add i64 %1238, 5
  store i64 %1239, i64* %PC.i551
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1237, i64* %1240, align 8
  store %struct.Memory* %loadMem_43c74d, %struct.Memory** %MEMORY
  br label %block_.L_43cbbb

block_.L_43c752:                                  ; preds = %block_.L_43c727
  %loadMem_43c752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1243 to i64*
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 1
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %1246 to i64*
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 15
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %1249 to i64*
  %1250 = load i64, i64* %RBP.i550
  %1251 = sub i64 %1250, 40
  %1252 = load i64, i64* %PC.i548
  %1253 = add i64 %1252, 4
  store i64 %1253, i64* %PC.i548
  %1254 = inttoptr i64 %1251 to i64*
  %1255 = load i64, i64* %1254
  store i64 %1255, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_43c752, %struct.Memory** %MEMORY
  %loadMem_43c756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 5
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %RCX.i546 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 15
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %1264 to i64*
  %1265 = load i64, i64* %RBP.i547
  %1266 = sub i64 %1265, 52
  %1267 = load i64, i64* %PC.i545
  %1268 = add i64 %1267, 4
  store i64 %1268, i64* %PC.i545
  %1269 = inttoptr i64 %1266 to i32*
  %1270 = load i32, i32* %1269
  %1271 = sext i32 %1270 to i64
  store i64 %1271, i64* %RCX.i546, align 8
  store %struct.Memory* %loadMem_43c756, %struct.Memory** %MEMORY
  %loadMem_43c75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 5
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %1277 to i64*
  %1278 = load i64, i64* %RCX.i544
  %1279 = load i64, i64* %PC.i543
  %1280 = add i64 %1279, 4
  store i64 %1280, i64* %PC.i543
  %1281 = sext i64 %1278 to i128
  %1282 = and i128 %1281, -18446744073709551616
  %1283 = zext i64 %1278 to i128
  %1284 = or i128 %1282, %1283
  %1285 = mul i128 36, %1284
  %1286 = trunc i128 %1285 to i64
  store i64 %1286, i64* %RCX.i544, align 8
  %1287 = sext i64 %1286 to i128
  %1288 = icmp ne i128 %1287, %1285
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1289, i8* %1290, align 1
  %1291 = trunc i128 %1285 to i32
  %1292 = and i32 %1291, 255
  %1293 = call i32 @llvm.ctpop.i32(i32 %1292)
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1296, i8* %1297, align 1
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1298, align 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1299, align 1
  %1300 = lshr i64 %1286, 63
  %1301 = trunc i64 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1301, i8* %1302, align 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1289, i8* %1303, align 1
  store %struct.Memory* %loadMem_43c75a, %struct.Memory** %MEMORY
  %loadMem_43c75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 1
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 5
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %RAX.i541
  %1314 = load i64, i64* %RCX.i542
  %1315 = load i64, i64* %PC.i540
  %1316 = add i64 %1315, 3
  store i64 %1316, i64* %PC.i540
  %1317 = add i64 %1314, %1313
  store i64 %1317, i64* %RAX.i541, align 8
  %1318 = icmp ult i64 %1317, %1313
  %1319 = icmp ult i64 %1317, %1314
  %1320 = or i1 %1318, %1319
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1321, i8* %1322, align 1
  %1323 = trunc i64 %1317 to i32
  %1324 = and i32 %1323, 255
  %1325 = call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1329, align 1
  %1330 = xor i64 %1314, %1313
  %1331 = xor i64 %1330, %1317
  %1332 = lshr i64 %1331, 4
  %1333 = trunc i64 %1332 to i8
  %1334 = and i8 %1333, 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1334, i8* %1335, align 1
  %1336 = icmp eq i64 %1317, 0
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1337, i8* %1338, align 1
  %1339 = lshr i64 %1317, 63
  %1340 = trunc i64 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1340, i8* %1341, align 1
  %1342 = lshr i64 %1313, 63
  %1343 = lshr i64 %1314, 63
  %1344 = xor i64 %1339, %1342
  %1345 = xor i64 %1339, %1343
  %1346 = add i64 %1344, %1345
  %1347 = icmp eq i64 %1346, 2
  %1348 = zext i1 %1347 to i8
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1348, i8* %1349, align 1
  store %struct.Memory* %loadMem_43c75e, %struct.Memory** %MEMORY
  %loadMem_43c761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 1
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %1355 to i64*
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 7
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %1358 to i64*
  %1359 = load i64, i64* %RAX.i538
  %1360 = load i64, i64* %PC.i537
  %1361 = add i64 %1360, 2
  store i64 %1361, i64* %PC.i537
  %1362 = inttoptr i64 %1359 to i32*
  %1363 = load i32, i32* %1362
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RDX.i539, align 8
  store %struct.Memory* %loadMem_43c761, %struct.Memory** %MEMORY
  %loadMem_43c763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 9
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RSI.i535 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i536
  %1375 = sub i64 %1374, 16
  %1376 = load i64, i64* %PC.i534
  %1377 = add i64 %1376, 3
  store i64 %1377, i64* %PC.i534
  %1378 = inttoptr i64 %1375 to i32*
  %1379 = load i32, i32* %1378
  %1380 = zext i32 %1379 to i64
  store i64 %1380, i64* %RSI.i535, align 8
  store %struct.Memory* %loadMem_43c763, %struct.Memory** %MEMORY
  %loadMem_43c766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 33
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 9
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RSI.i533 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RSI.i533
  %1388 = load i64, i64* %PC.i532
  %1389 = add i64 %1388, 3
  store i64 %1389, i64* %PC.i532
  %1390 = trunc i64 %1387 to i32
  %1391 = add i32 4, %1390
  %1392 = zext i32 %1391 to i64
  store i64 %1392, i64* %RSI.i533, align 8
  %1393 = icmp ult i32 %1391, %1390
  %1394 = icmp ult i32 %1391, 4
  %1395 = or i1 %1393, %1394
  %1396 = zext i1 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1396, i8* %1397, align 1
  %1398 = and i32 %1391, 255
  %1399 = call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1402, i8* %1403, align 1
  %1404 = xor i64 4, %1387
  %1405 = trunc i64 %1404 to i32
  %1406 = xor i32 %1405, %1391
  %1407 = lshr i32 %1406, 4
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1409, i8* %1410, align 1
  %1411 = icmp eq i32 %1391, 0
  %1412 = zext i1 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1412, i8* %1413, align 1
  %1414 = lshr i32 %1391, 31
  %1415 = trunc i32 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1415, i8* %1416, align 1
  %1417 = lshr i32 %1390, 31
  %1418 = xor i32 %1414, %1417
  %1419 = add i32 %1418, %1414
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1421, i8* %1422, align 1
  store %struct.Memory* %loadMem_43c766, %struct.Memory** %MEMORY
  %loadMem_43c769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 33
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 9
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RSI.i531 = bitcast %union.anon* %1428 to i64*
  %1429 = load i64, i64* %RSI.i531
  %1430 = load i64, i64* %PC.i530
  %1431 = add i64 %1430, 3
  store i64 %1431, i64* %PC.i530
  %1432 = trunc i64 %1429 to i32
  %1433 = sub i32 %1432, 1
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RSI.i531, align 8
  %1435 = icmp ult i32 %1432, 1
  %1436 = zext i1 %1435 to i8
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1436, i8* %1437, align 1
  %1438 = and i32 %1433, 255
  %1439 = call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1442, i8* %1443, align 1
  %1444 = xor i64 1, %1429
  %1445 = trunc i64 %1444 to i32
  %1446 = xor i32 %1445, %1433
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1449, i8* %1450, align 1
  %1451 = icmp eq i32 %1433, 0
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1452, i8* %1453, align 1
  %1454 = lshr i32 %1433, 31
  %1455 = trunc i32 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1455, i8* %1456, align 1
  %1457 = lshr i32 %1432, 31
  %1458 = xor i32 %1454, %1457
  %1459 = add i32 %1458, %1457
  %1460 = icmp eq i32 %1459, 2
  %1461 = zext i1 %1460 to i8
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1461, i8* %1462, align 1
  store %struct.Memory* %loadMem_43c769, %struct.Memory** %MEMORY
  %loadMem_43c76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 33
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 7
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %EDX.i528 = bitcast %union.anon* %1468 to i32*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 9
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %ESI.i529 = bitcast %union.anon* %1471 to i32*
  %1472 = load i32, i32* %EDX.i528
  %1473 = zext i32 %1472 to i64
  %1474 = load i32, i32* %ESI.i529
  %1475 = zext i32 %1474 to i64
  %1476 = load i64, i64* %PC.i527
  %1477 = add i64 %1476, 2
  store i64 %1477, i64* %PC.i527
  %1478 = sub i32 %1472, %1474
  %1479 = icmp ult i32 %1472, %1474
  %1480 = zext i1 %1479 to i8
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1480, i8* %1481, align 1
  %1482 = and i32 %1478, 255
  %1483 = call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1486, i8* %1487, align 1
  %1488 = xor i64 %1475, %1473
  %1489 = trunc i64 %1488 to i32
  %1490 = xor i32 %1489, %1478
  %1491 = lshr i32 %1490, 4
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1493, i8* %1494, align 1
  %1495 = icmp eq i32 %1478, 0
  %1496 = zext i1 %1495 to i8
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1496, i8* %1497, align 1
  %1498 = lshr i32 %1478, 31
  %1499 = trunc i32 %1498 to i8
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1499, i8* %1500, align 1
  %1501 = lshr i32 %1472, 31
  %1502 = lshr i32 %1474, 31
  %1503 = xor i32 %1502, %1501
  %1504 = xor i32 %1498, %1501
  %1505 = add i32 %1504, %1503
  %1506 = icmp eq i32 %1505, 2
  %1507 = zext i1 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1507, i8* %1508, align 1
  store %struct.Memory* %loadMem_43c76c, %struct.Memory** %MEMORY
  %loadMem_43c76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %PC.i526
  %1513 = add i64 %1512, 113
  %1514 = load i64, i64* %PC.i526
  %1515 = add i64 %1514, 6
  %1516 = load i64, i64* %PC.i526
  %1517 = add i64 %1516, 6
  store i64 %1517, i64* %PC.i526
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1519 = load i8, i8* %1518, align 1
  %1520 = icmp eq i8 %1519, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %BRANCH_TAKEN, align 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1523 = select i1 %1520, i64 %1513, i64 %1515
  store i64 %1523, i64* %1522, align 8
  store %struct.Memory* %loadMem_43c76e, %struct.Memory** %MEMORY
  %loadBr_43c76e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c76e = icmp eq i8 %loadBr_43c76e, 1
  br i1 %cmpBr_43c76e, label %block_.L_43c7df, label %block_43c774

block_43c774:                                     ; preds = %block_.L_43c752
  %loadMem_43c774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 1
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 15
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %RBP.i525
  %1534 = sub i64 %1533, 40
  %1535 = load i64, i64* %PC.i523
  %1536 = add i64 %1535, 4
  store i64 %1536, i64* %PC.i523
  %1537 = inttoptr i64 %1534 to i64*
  %1538 = load i64, i64* %1537
  store i64 %1538, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_43c774, %struct.Memory** %MEMORY
  %loadMem_43c778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 5
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RBP.i522
  %1549 = sub i64 %1548, 52
  %1550 = load i64, i64* %PC.i520
  %1551 = add i64 %1550, 4
  store i64 %1551, i64* %PC.i520
  %1552 = inttoptr i64 %1549 to i32*
  %1553 = load i32, i32* %1552
  %1554 = sext i32 %1553 to i64
  store i64 %1554, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_43c778, %struct.Memory** %MEMORY
  %loadMem_43c77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %RCX.i519
  %1562 = load i64, i64* %PC.i518
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %PC.i518
  %1564 = sext i64 %1561 to i128
  %1565 = and i128 %1564, -18446744073709551616
  %1566 = zext i64 %1561 to i128
  %1567 = or i128 %1565, %1566
  %1568 = mul i128 36, %1567
  %1569 = trunc i128 %1568 to i64
  store i64 %1569, i64* %RCX.i519, align 8
  %1570 = sext i64 %1569 to i128
  %1571 = icmp ne i128 %1570, %1568
  %1572 = zext i1 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1572, i8* %1573, align 1
  %1574 = trunc i128 %1568 to i32
  %1575 = and i32 %1574, 255
  %1576 = call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1579, i8* %1580, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1581, align 1
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1582, align 1
  %1583 = lshr i64 %1569, 63
  %1584 = trunc i64 %1583 to i8
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1584, i8* %1585, align 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1572, i8* %1586, align 1
  store %struct.Memory* %loadMem_43c77c, %struct.Memory** %MEMORY
  %loadMem_43c780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 1
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RAX.i516 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 5
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RCX.i517 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RAX.i516
  %1597 = load i64, i64* %RCX.i517
  %1598 = load i64, i64* %PC.i515
  %1599 = add i64 %1598, 3
  store i64 %1599, i64* %PC.i515
  %1600 = add i64 %1597, %1596
  store i64 %1600, i64* %RAX.i516, align 8
  %1601 = icmp ult i64 %1600, %1596
  %1602 = icmp ult i64 %1600, %1597
  %1603 = or i1 %1601, %1602
  %1604 = zext i1 %1603 to i8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1604, i8* %1605, align 1
  %1606 = trunc i64 %1600 to i32
  %1607 = and i32 %1606, 255
  %1608 = call i32 @llvm.ctpop.i32(i32 %1607)
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1611, i8* %1612, align 1
  %1613 = xor i64 %1597, %1596
  %1614 = xor i64 %1613, %1600
  %1615 = lshr i64 %1614, 4
  %1616 = trunc i64 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1617, i8* %1618, align 1
  %1619 = icmp eq i64 %1600, 0
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1620, i8* %1621, align 1
  %1622 = lshr i64 %1600, 63
  %1623 = trunc i64 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1623, i8* %1624, align 1
  %1625 = lshr i64 %1596, 63
  %1626 = lshr i64 %1597, 63
  %1627 = xor i64 %1622, %1625
  %1628 = xor i64 %1622, %1626
  %1629 = add i64 %1627, %1628
  %1630 = icmp eq i64 %1629, 2
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1631, i8* %1632, align 1
  store %struct.Memory* %loadMem_43c780, %struct.Memory** %MEMORY
  %loadMem_43c783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 1
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RAX.i514 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RAX.i514
  %1640 = add i64 %1639, 28
  %1641 = load i64, i64* %PC.i513
  %1642 = add i64 %1641, 4
  store i64 %1642, i64* %PC.i513
  %1643 = inttoptr i64 %1640 to i8*
  %1644 = load i8, i8* %1643
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1645, align 1
  %1646 = zext i8 %1644 to i32
  %1647 = call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1650, i8* %1651, align 1
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1652, align 1
  %1653 = icmp eq i8 %1644, 0
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1654, i8* %1655, align 1
  %1656 = lshr i8 %1644, 7
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1656, i8* %1657, align 1
  %1658 = lshr i8 %1644, 7
  %1659 = xor i8 %1656, %1658
  %1660 = add i8 %1659, %1658
  %1661 = icmp eq i8 %1660, 2
  %1662 = zext i1 %1661 to i8
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1662, i8* %1663, align 1
  store %struct.Memory* %loadMem_43c783, %struct.Memory** %MEMORY
  %loadMem_43c787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %PC.i512
  %1668 = add i64 %1667, 88
  %1669 = load i64, i64* %PC.i512
  %1670 = add i64 %1669, 6
  %1671 = load i64, i64* %PC.i512
  %1672 = add i64 %1671, 6
  store i64 %1672, i64* %PC.i512
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1674 = load i8, i8* %1673, align 1
  %1675 = icmp eq i8 %1674, 0
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %BRANCH_TAKEN, align 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1678 = select i1 %1675, i64 %1668, i64 %1670
  store i64 %1678, i64* %1677, align 8
  store %struct.Memory* %loadMem_43c787, %struct.Memory** %MEMORY
  %loadBr_43c787 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c787 = icmp eq i8 %loadBr_43c787, 1
  br i1 %cmpBr_43c787, label %block_.L_43c7df, label %block_43c78d

block_43c78d:                                     ; preds = %block_43c774
  %loadMem_43c78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 33
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %1681 to i64*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 1
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 15
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %1687 to i64*
  %1688 = load i64, i64* %RBP.i511
  %1689 = sub i64 %1688, 40
  %1690 = load i64, i64* %PC.i509
  %1691 = add i64 %1690, 4
  store i64 %1691, i64* %PC.i509
  %1692 = inttoptr i64 %1689 to i64*
  %1693 = load i64, i64* %1692
  store i64 %1693, i64* %RAX.i510, align 8
  store %struct.Memory* %loadMem_43c78d, %struct.Memory** %MEMORY
  %loadMem_43c791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1696 to i64*
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 5
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 15
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %1702 to i64*
  %1703 = load i64, i64* %RBP.i508
  %1704 = sub i64 %1703, 52
  %1705 = load i64, i64* %PC.i506
  %1706 = add i64 %1705, 4
  store i64 %1706, i64* %PC.i506
  %1707 = inttoptr i64 %1704 to i32*
  %1708 = load i32, i32* %1707
  %1709 = sext i32 %1708 to i64
  store i64 %1709, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_43c791, %struct.Memory** %MEMORY
  %loadMem_43c795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 33
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 5
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %RCX.i505
  %1717 = load i64, i64* %PC.i504
  %1718 = add i64 %1717, 4
  store i64 %1718, i64* %PC.i504
  %1719 = sext i64 %1716 to i128
  %1720 = and i128 %1719, -18446744073709551616
  %1721 = zext i64 %1716 to i128
  %1722 = or i128 %1720, %1721
  %1723 = mul i128 36, %1722
  %1724 = trunc i128 %1723 to i64
  store i64 %1724, i64* %RCX.i505, align 8
  %1725 = sext i64 %1724 to i128
  %1726 = icmp ne i128 %1725, %1723
  %1727 = zext i1 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1727, i8* %1728, align 1
  %1729 = trunc i128 %1723 to i32
  %1730 = and i32 %1729, 255
  %1731 = call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1734, i8* %1735, align 1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1736, align 1
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1737, align 1
  %1738 = lshr i64 %1724, 63
  %1739 = trunc i64 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1739, i8* %1740, align 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1727, i8* %1741, align 1
  store %struct.Memory* %loadMem_43c795, %struct.Memory** %MEMORY
  %loadMem_43c799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 1
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 5
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %1750 to i64*
  %1751 = load i64, i64* %RAX.i502
  %1752 = load i64, i64* %RCX.i503
  %1753 = load i64, i64* %PC.i501
  %1754 = add i64 %1753, 3
  store i64 %1754, i64* %PC.i501
  %1755 = add i64 %1752, %1751
  store i64 %1755, i64* %RAX.i502, align 8
  %1756 = icmp ult i64 %1755, %1751
  %1757 = icmp ult i64 %1755, %1752
  %1758 = or i1 %1756, %1757
  %1759 = zext i1 %1758 to i8
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1759, i8* %1760, align 1
  %1761 = trunc i64 %1755 to i32
  %1762 = and i32 %1761, 255
  %1763 = call i32 @llvm.ctpop.i32(i32 %1762)
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  %1766 = xor i8 %1765, 1
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1766, i8* %1767, align 1
  %1768 = xor i64 %1752, %1751
  %1769 = xor i64 %1768, %1755
  %1770 = lshr i64 %1769, 4
  %1771 = trunc i64 %1770 to i8
  %1772 = and i8 %1771, 1
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1772, i8* %1773, align 1
  %1774 = icmp eq i64 %1755, 0
  %1775 = zext i1 %1774 to i8
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1775, i8* %1776, align 1
  %1777 = lshr i64 %1755, 63
  %1778 = trunc i64 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1778, i8* %1779, align 1
  %1780 = lshr i64 %1751, 63
  %1781 = lshr i64 %1752, 63
  %1782 = xor i64 %1777, %1780
  %1783 = xor i64 %1777, %1781
  %1784 = add i64 %1782, %1783
  %1785 = icmp eq i64 %1784, 2
  %1786 = zext i1 %1785 to i8
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1786, i8* %1787, align 1
  store %struct.Memory* %loadMem_43c799, %struct.Memory** %MEMORY
  %loadMem_43c79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 33
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 1
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 7
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %RAX.i499
  %1798 = add i64 %1797, 31
  %1799 = load i64, i64* %PC.i498
  %1800 = add i64 %1799, 4
  store i64 %1800, i64* %PC.i498
  %1801 = inttoptr i64 %1798 to i8*
  %1802 = load i8, i8* %1801
  %1803 = sext i8 %1802 to i64
  %1804 = and i64 %1803, 4294967295
  store i64 %1804, i64* %RDX.i500, align 8
  store %struct.Memory* %loadMem_43c79c, %struct.Memory** %MEMORY
  %loadMem_43c7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 7
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %EDX.i497 = bitcast %union.anon* %1810 to i32*
  %1811 = load i32, i32* %EDX.i497
  %1812 = zext i32 %1811 to i64
  %1813 = load i64, i64* %PC.i496
  %1814 = add i64 %1813, 3
  store i64 %1814, i64* %PC.i496
  %1815 = sub i32 %1811, 2
  %1816 = icmp ult i32 %1811, 2
  %1817 = zext i1 %1816 to i8
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1817, i8* %1818, align 1
  %1819 = and i32 %1815, 255
  %1820 = call i32 @llvm.ctpop.i32(i32 %1819)
  %1821 = trunc i32 %1820 to i8
  %1822 = and i8 %1821, 1
  %1823 = xor i8 %1822, 1
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1823, i8* %1824, align 1
  %1825 = xor i64 2, %1812
  %1826 = trunc i64 %1825 to i32
  %1827 = xor i32 %1826, %1815
  %1828 = lshr i32 %1827, 4
  %1829 = trunc i32 %1828 to i8
  %1830 = and i8 %1829, 1
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1830, i8* %1831, align 1
  %1832 = icmp eq i32 %1815, 0
  %1833 = zext i1 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1833, i8* %1834, align 1
  %1835 = lshr i32 %1815, 31
  %1836 = trunc i32 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1836, i8* %1837, align 1
  %1838 = lshr i32 %1811, 31
  %1839 = xor i32 %1835, %1838
  %1840 = add i32 %1839, %1838
  %1841 = icmp eq i32 %1840, 2
  %1842 = zext i1 %1841 to i8
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1842, i8* %1843, align 1
  store %struct.Memory* %loadMem_43c7a0, %struct.Memory** %MEMORY
  %loadMem_43c7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1846 to i64*
  %1847 = load i64, i64* %PC.i495
  %1848 = add i64 %1847, 60
  %1849 = load i64, i64* %PC.i495
  %1850 = add i64 %1849, 6
  %1851 = load i64, i64* %PC.i495
  %1852 = add i64 %1851, 6
  store i64 %1852, i64* %PC.i495
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1854 = load i8, i8* %1853, align 1
  %1855 = icmp ne i8 %1854, 0
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1857 = load i8, i8* %1856, align 1
  %1858 = icmp ne i8 %1857, 0
  %1859 = xor i1 %1855, %1858
  %1860 = xor i1 %1859, true
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %BRANCH_TAKEN, align 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1863 = select i1 %1859, i64 %1850, i64 %1848
  store i64 %1863, i64* %1862, align 8
  store %struct.Memory* %loadMem_43c7a3, %struct.Memory** %MEMORY
  %loadBr_43c7a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c7a3 = icmp eq i8 %loadBr_43c7a3, 1
  br i1 %cmpBr_43c7a3, label %block_.L_43c7df, label %block_43c7a9

block_43c7a9:                                     ; preds = %block_43c78d
  %loadMem_43c7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 1
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 15
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RBP.i494
  %1874 = sub i64 %1873, 52
  %1875 = load i64, i64* %PC.i492
  %1876 = add i64 %1875, 4
  store i64 %1876, i64* %PC.i492
  %1877 = inttoptr i64 %1874 to i32*
  %1878 = load i32, i32* %1877
  %1879 = sext i32 %1878 to i64
  store i64 %1879, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_43c7a9, %struct.Memory** %MEMORY
  %loadMem_43c7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 5
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %RAX.i490
  %1890 = add i64 %1889, 12099168
  %1891 = load i64, i64* %PC.i489
  %1892 = add i64 %1891, 8
  store i64 %1892, i64* %PC.i489
  %1893 = inttoptr i64 %1890 to i8*
  %1894 = load i8, i8* %1893
  %1895 = zext i8 %1894 to i64
  store i64 %1895, i64* %RCX.i491, align 8
  store %struct.Memory* %loadMem_43c7ad, %struct.Memory** %MEMORY
  %loadMem_43c7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 5
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %ECX.i488 = bitcast %union.anon* %1901 to i32*
  %1902 = load i32, i32* %ECX.i488
  %1903 = zext i32 %1902 to i64
  %1904 = load i64, i64* %PC.i487
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %PC.i487
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1906, align 1
  %1907 = and i32 %1902, 255
  %1908 = call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1911, i8* %1912, align 1
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1913, align 1
  %1914 = icmp eq i32 %1902, 0
  %1915 = zext i1 %1914 to i8
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1915, i8* %1916, align 1
  %1917 = lshr i32 %1902, 31
  %1918 = trunc i32 %1917 to i8
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1918, i8* %1919, align 1
  %1920 = lshr i32 %1902, 31
  %1921 = xor i32 %1917, %1920
  %1922 = add i32 %1921, %1920
  %1923 = icmp eq i32 %1922, 2
  %1924 = zext i1 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1924, i8* %1925, align 1
  store %struct.Memory* %loadMem_43c7b5, %struct.Memory** %MEMORY
  %loadMem_43c7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %1928 to i64*
  %1929 = load i64, i64* %PC.i486
  %1930 = add i64 %1929, 26
  %1931 = load i64, i64* %PC.i486
  %1932 = add i64 %1931, 6
  %1933 = load i64, i64* %PC.i486
  %1934 = add i64 %1933, 6
  store i64 %1934, i64* %PC.i486
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1936 = load i8, i8* %1935, align 1
  %1937 = icmp eq i8 %1936, 0
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %BRANCH_TAKEN, align 1
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1940 = select i1 %1937, i64 %1930, i64 %1932
  store i64 %1940, i64* %1939, align 8
  store %struct.Memory* %loadMem_43c7b8, %struct.Memory** %MEMORY
  %loadBr_43c7b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c7b8 = icmp eq i8 %loadBr_43c7b8, 1
  br i1 %cmpBr_43c7b8, label %block_.L_43c7d2, label %block_43c7be

block_43c7be:                                     ; preds = %block_43c7a9
  %loadMem_43c7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 11
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RDI.i484 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 15
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %RBP.i485
  %1951 = sub i64 %1950, 52
  %1952 = load i64, i64* %PC.i483
  %1953 = add i64 %1952, 3
  store i64 %1953, i64* %PC.i483
  %1954 = inttoptr i64 %1951 to i32*
  %1955 = load i32, i32* %1954
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RDI.i484, align 8
  store %struct.Memory* %loadMem_43c7be, %struct.Memory** %MEMORY
  %loadMem_43c7c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 9
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %RSI.i481 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 15
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RBP.i482
  %1967 = sub i64 %1966, 48
  %1968 = load i64, i64* %PC.i480
  %1969 = add i64 %1968, 3
  store i64 %1969, i64* %PC.i480
  %1970 = inttoptr i64 %1967 to i32*
  %1971 = load i32, i32* %1970
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RSI.i481, align 8
  store %struct.Memory* %loadMem_43c7c1, %struct.Memory** %MEMORY
  %loadMem1_43c7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1975 to i64*
  %1976 = load i64, i64* %PC.i479
  %1977 = add i64 %1976, -158980
  %1978 = load i64, i64* %PC.i479
  %1979 = add i64 %1978, 5
  %1980 = load i64, i64* %PC.i479
  %1981 = add i64 %1980, 5
  store i64 %1981, i64* %PC.i479
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1983 = load i64, i64* %1982, align 8
  %1984 = add i64 %1983, -8
  %1985 = inttoptr i64 %1984 to i64*
  store i64 %1979, i64* %1985
  store i64 %1984, i64* %1982, align 8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1977, i64* %1986, align 8
  store %struct.Memory* %loadMem1_43c7c4, %struct.Memory** %MEMORY
  %loadMem2_43c7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c7c4 = load i64, i64* %3
  %call2_43c7c4 = call %struct.Memory* @sub_415ac0.does_capture_something(%struct.State* %0, i64 %loadPC_43c7c4, %struct.Memory* %loadMem2_43c7c4)
  store %struct.Memory* %call2_43c7c4, %struct.Memory** %MEMORY
  %loadMem_43c7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 33
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 1
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %1992 to i32*
  %1993 = load i32, i32* %EAX.i478
  %1994 = zext i32 %1993 to i64
  %1995 = load i64, i64* %PC.i477
  %1996 = add i64 %1995, 3
  store i64 %1996, i64* %PC.i477
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1997, align 1
  %1998 = and i32 %1993, 255
  %1999 = call i32 @llvm.ctpop.i32(i32 %1998)
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = xor i8 %2001, 1
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2002, i8* %2003, align 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2004, align 1
  %2005 = icmp eq i32 %1993, 0
  %2006 = zext i1 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2006, i8* %2007, align 1
  %2008 = lshr i32 %1993, 31
  %2009 = trunc i32 %2008 to i8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2009, i8* %2010, align 1
  %2011 = lshr i32 %1993, 31
  %2012 = xor i32 %2008, %2011
  %2013 = add i32 %2012, %2011
  %2014 = icmp eq i32 %2013, 2
  %2015 = zext i1 %2014 to i8
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2015, i8* %2016, align 1
  store %struct.Memory* %loadMem_43c7c9, %struct.Memory** %MEMORY
  %loadMem_43c7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %PC.i476
  %2021 = add i64 %2020, 19
  %2022 = load i64, i64* %PC.i476
  %2023 = add i64 %2022, 6
  %2024 = load i64, i64* %PC.i476
  %2025 = add i64 %2024, 6
  store i64 %2025, i64* %PC.i476
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2027 = load i8, i8* %2026, align 1
  %2028 = icmp eq i8 %2027, 0
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %BRANCH_TAKEN, align 1
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2031 = select i1 %2028, i64 %2021, i64 %2023
  store i64 %2031, i64* %2030, align 8
  store %struct.Memory* %loadMem_43c7cc, %struct.Memory** %MEMORY
  %loadBr_43c7cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c7cc = icmp eq i8 %loadBr_43c7cc, 1
  br i1 %cmpBr_43c7cc, label %block_.L_43c7df, label %block_.L_43c7d2

block_.L_43c7d2:                                  ; preds = %block_43c7be, %block_43c7a9
  %loadMem_43c7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2035, i64 0, i64 0
  %YMM0.i474 = bitcast %union.VectorReg* %2036 to %"class.std::bitset"*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2037, i64 0, i64 0
  %XMM0.i475 = bitcast %union.VectorReg* %2038 to %union.vec128_t*
  %2039 = bitcast %"class.std::bitset"* %YMM0.i474 to i8*
  %2040 = bitcast %"class.std::bitset"* %YMM0.i474 to i8*
  %2041 = bitcast %union.vec128_t* %XMM0.i475 to i8*
  %2042 = load i64, i64* %PC.i473
  %2043 = add i64 %2042, 3
  store i64 %2043, i64* %PC.i473
  %2044 = bitcast i8* %2040 to i64*
  %2045 = load i64, i64* %2044, align 1
  %2046 = getelementptr inbounds i8, i8* %2040, i64 8
  %2047 = bitcast i8* %2046 to i64*
  %2048 = load i64, i64* %2047, align 1
  %2049 = bitcast i8* %2041 to i64*
  %2050 = load i64, i64* %2049, align 1
  %2051 = getelementptr inbounds i8, i8* %2041, i64 8
  %2052 = bitcast i8* %2051 to i64*
  %2053 = load i64, i64* %2052, align 1
  %2054 = xor i64 %2050, %2045
  %2055 = xor i64 %2053, %2048
  %2056 = trunc i64 %2054 to i32
  %2057 = lshr i64 %2054, 32
  %2058 = trunc i64 %2057 to i32
  %2059 = bitcast i8* %2039 to i32*
  store i32 %2056, i32* %2059, align 1
  %2060 = getelementptr inbounds i8, i8* %2039, i64 4
  %2061 = bitcast i8* %2060 to i32*
  store i32 %2058, i32* %2061, align 1
  %2062 = trunc i64 %2055 to i32
  %2063 = getelementptr inbounds i8, i8* %2039, i64 8
  %2064 = bitcast i8* %2063 to i32*
  store i32 %2062, i32* %2064, align 1
  %2065 = lshr i64 %2055, 32
  %2066 = trunc i64 %2065 to i32
  %2067 = getelementptr inbounds i8, i8* %2039, i64 12
  %2068 = bitcast i8* %2067 to i32*
  store i32 %2066, i32* %2068, align 1
  store %struct.Memory* %loadMem_43c7d2, %struct.Memory** %MEMORY
  %loadMem_43c7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 15
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2076 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2075, i64 0, i64 0
  %XMM0.i472 = bitcast %union.VectorReg* %2076 to %union.vec128_t*
  %2077 = load i64, i64* %RBP.i471
  %2078 = sub i64 %2077, 4
  %2079 = bitcast %union.vec128_t* %XMM0.i472 to i8*
  %2080 = load i64, i64* %PC.i470
  %2081 = add i64 %2080, 5
  store i64 %2081, i64* %PC.i470
  %2082 = bitcast i8* %2079 to <2 x float>*
  %2083 = load <2 x float>, <2 x float>* %2082, align 1
  %2084 = extractelement <2 x float> %2083, i32 0
  %2085 = inttoptr i64 %2078 to float*
  store float %2084, float* %2085
  store %struct.Memory* %loadMem_43c7d5, %struct.Memory** %MEMORY
  %loadMem_43c7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %PC.i469
  %2090 = add i64 %2089, 993
  %2091 = load i64, i64* %PC.i469
  %2092 = add i64 %2091, 5
  store i64 %2092, i64* %PC.i469
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2090, i64* %2093, align 8
  store %struct.Memory* %loadMem_43c7da, %struct.Memory** %MEMORY
  br label %block_.L_43cbbb

block_.L_43c7df:                                  ; preds = %block_43c7be, %block_43c78d, %block_43c774, %block_.L_43c752
  %loadMem_43c7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2096 to i64*
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 1
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 15
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %RBP.i468
  %2104 = sub i64 %2103, 52
  %2105 = load i64, i64* %PC.i466
  %2106 = add i64 %2105, 4
  store i64 %2106, i64* %PC.i466
  %2107 = inttoptr i64 %2104 to i32*
  %2108 = load i32, i32* %2107
  %2109 = sext i32 %2108 to i64
  store i64 %2109, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_43c7df, %struct.Memory** %MEMORY
  %loadMem_43c7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 1
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 5
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RAX.i464
  %2120 = add i64 %2119, 12099168
  %2121 = load i64, i64* %PC.i463
  %2122 = add i64 %2121, 8
  store i64 %2122, i64* %PC.i463
  %2123 = inttoptr i64 %2120 to i8*
  %2124 = load i8, i8* %2123
  %2125 = zext i8 %2124 to i64
  store i64 %2125, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_43c7e3, %struct.Memory** %MEMORY
  %loadMem_43c7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 5
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %ECX.i462 = bitcast %union.anon* %2131 to i32*
  %2132 = load i32, i32* %ECX.i462
  %2133 = zext i32 %2132 to i64
  %2134 = load i64, i64* %PC.i461
  %2135 = add i64 %2134, 3
  store i64 %2135, i64* %PC.i461
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2136, align 1
  %2137 = and i32 %2132, 255
  %2138 = call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2141, i8* %2142, align 1
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2143, align 1
  %2144 = icmp eq i32 %2132, 0
  %2145 = zext i1 %2144 to i8
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2145, i8* %2146, align 1
  %2147 = lshr i32 %2132, 31
  %2148 = trunc i32 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2148, i8* %2149, align 1
  %2150 = lshr i32 %2132, 31
  %2151 = xor i32 %2147, %2150
  %2152 = add i32 %2151, %2150
  %2153 = icmp eq i32 %2152, 2
  %2154 = zext i1 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2154, i8* %2155, align 1
  store %struct.Memory* %loadMem_43c7eb, %struct.Memory** %MEMORY
  %loadMem_43c7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 33
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2158 to i64*
  %2159 = load i64, i64* %PC.i460
  %2160 = add i64 %2159, 186
  %2161 = load i64, i64* %PC.i460
  %2162 = add i64 %2161, 6
  %2163 = load i64, i64* %PC.i460
  %2164 = add i64 %2163, 6
  store i64 %2164, i64* %PC.i460
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2166 = load i8, i8* %2165, align 1
  %2167 = icmp eq i8 %2166, 0
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %BRANCH_TAKEN, align 1
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2170 = select i1 %2167, i64 %2160, i64 %2162
  store i64 %2170, i64* %2169, align 8
  store %struct.Memory* %loadMem_43c7ee, %struct.Memory** %MEMORY
  %loadBr_43c7ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c7ee = icmp eq i8 %loadBr_43c7ee, 1
  br i1 %cmpBr_43c7ee, label %block_.L_43c8a8, label %block_43c7f4

block_43c7f4:                                     ; preds = %block_.L_43c7df
  %loadMem_43c7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 11
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RDI.i458 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 15
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %RBP.i459
  %2181 = sub i64 %2180, 52
  %2182 = load i64, i64* %PC.i457
  %2183 = add i64 %2182, 3
  store i64 %2183, i64* %PC.i457
  %2184 = inttoptr i64 %2181 to i32*
  %2185 = load i32, i32* %2184
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RDI.i458, align 8
  store %struct.Memory* %loadMem_43c7f4, %struct.Memory** %MEMORY
  %loadMem_43c7f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 33
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2189 to i64*
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 9
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %RSI.i455 = bitcast %union.anon* %2192 to i64*
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 15
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %2195 to i64*
  %2196 = load i64, i64* %RBP.i456
  %2197 = sub i64 %2196, 48
  %2198 = load i64, i64* %PC.i454
  %2199 = add i64 %2198, 3
  store i64 %2199, i64* %PC.i454
  %2200 = inttoptr i64 %2197 to i32*
  %2201 = load i32, i32* %2200
  %2202 = zext i32 %2201 to i64
  store i64 %2202, i64* %RSI.i455, align 8
  store %struct.Memory* %loadMem_43c7f7, %struct.Memory** %MEMORY
  %loadMem1_43c7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 33
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2205 to i64*
  %2206 = load i64, i64* %PC.i453
  %2207 = add i64 %2206, 193590
  %2208 = load i64, i64* %PC.i453
  %2209 = add i64 %2208, 5
  %2210 = load i64, i64* %PC.i453
  %2211 = add i64 %2210, 5
  store i64 %2211, i64* %PC.i453
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2213 = load i64, i64* %2212, align 8
  %2214 = add i64 %2213, -8
  %2215 = inttoptr i64 %2214 to i64*
  store i64 %2209, i64* %2215
  store i64 %2214, i64* %2212, align 8
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2207, i64* %2216, align 8
  store %struct.Memory* %loadMem1_43c7fa, %struct.Memory** %MEMORY
  %loadMem2_43c7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c7fa = load i64, i64* %3
  %call2_43c7fa = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64 %loadPC_43c7fa, %struct.Memory* %loadMem2_43c7fa)
  store %struct.Memory* %call2_43c7fa, %struct.Memory** %MEMORY
  %loadMem_43c7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 1
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %EAX.i451 = bitcast %union.anon* %2222 to i32*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 15
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RBP.i452
  %2227 = sub i64 %2226, 84
  %2228 = load i32, i32* %EAX.i451
  %2229 = zext i32 %2228 to i64
  %2230 = load i64, i64* %PC.i450
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %PC.i450
  %2232 = inttoptr i64 %2227 to i32*
  store i32 %2228, i32* %2232
  store %struct.Memory* %loadMem_43c7ff, %struct.Memory** %MEMORY
  %loadMem_43c802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 15
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RBP.i449
  %2240 = sub i64 %2239, 84
  %2241 = load i64, i64* %PC.i448
  %2242 = add i64 %2241, 4
  store i64 %2242, i64* %PC.i448
  %2243 = inttoptr i64 %2240 to i32*
  %2244 = load i32, i32* %2243
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2245, align 1
  %2246 = and i32 %2244, 255
  %2247 = call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2250, i8* %2251, align 1
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2252, align 1
  %2253 = icmp eq i32 %2244, 0
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2254, i8* %2255, align 1
  %2256 = lshr i32 %2244, 31
  %2257 = trunc i32 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2257, i8* %2258, align 1
  %2259 = lshr i32 %2244, 31
  %2260 = xor i32 %2256, %2259
  %2261 = add i32 %2260, %2259
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2263, i8* %2264, align 1
  store %struct.Memory* %loadMem_43c802, %struct.Memory** %MEMORY
  %loadMem_43c806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2267 to i64*
  %2268 = load i64, i64* %PC.i447
  %2269 = add i64 %2268, 19
  %2270 = load i64, i64* %PC.i447
  %2271 = add i64 %2270, 6
  %2272 = load i64, i64* %PC.i447
  %2273 = add i64 %2272, 6
  store i64 %2273, i64* %PC.i447
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2275 = load i8, i8* %2274, align 1
  %2276 = icmp eq i8 %2275, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %BRANCH_TAKEN, align 1
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2279 = select i1 %2276, i64 %2269, i64 %2271
  store i64 %2279, i64* %2278, align 8
  store %struct.Memory* %loadMem_43c806, %struct.Memory** %MEMORY
  %loadBr_43c806 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c806 = icmp eq i8 %loadBr_43c806, 1
  br i1 %cmpBr_43c806, label %block_.L_43c819, label %block_43c80c

block_43c80c:                                     ; preds = %block_43c7f4
  %loadMem_43c80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2283, i64 0, i64 0
  %YMM0.i445 = bitcast %union.VectorReg* %2284 to %"class.std::bitset"*
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2285, i64 0, i64 0
  %XMM0.i446 = bitcast %union.VectorReg* %2286 to %union.vec128_t*
  %2287 = bitcast %"class.std::bitset"* %YMM0.i445 to i8*
  %2288 = bitcast %"class.std::bitset"* %YMM0.i445 to i8*
  %2289 = bitcast %union.vec128_t* %XMM0.i446 to i8*
  %2290 = load i64, i64* %PC.i444
  %2291 = add i64 %2290, 3
  store i64 %2291, i64* %PC.i444
  %2292 = bitcast i8* %2288 to i64*
  %2293 = load i64, i64* %2292, align 1
  %2294 = getelementptr inbounds i8, i8* %2288, i64 8
  %2295 = bitcast i8* %2294 to i64*
  %2296 = load i64, i64* %2295, align 1
  %2297 = bitcast i8* %2289 to i64*
  %2298 = load i64, i64* %2297, align 1
  %2299 = getelementptr inbounds i8, i8* %2289, i64 8
  %2300 = bitcast i8* %2299 to i64*
  %2301 = load i64, i64* %2300, align 1
  %2302 = xor i64 %2298, %2293
  %2303 = xor i64 %2301, %2296
  %2304 = trunc i64 %2302 to i32
  %2305 = lshr i64 %2302, 32
  %2306 = trunc i64 %2305 to i32
  %2307 = bitcast i8* %2287 to i32*
  store i32 %2304, i32* %2307, align 1
  %2308 = getelementptr inbounds i8, i8* %2287, i64 4
  %2309 = bitcast i8* %2308 to i32*
  store i32 %2306, i32* %2309, align 1
  %2310 = trunc i64 %2303 to i32
  %2311 = getelementptr inbounds i8, i8* %2287, i64 8
  %2312 = bitcast i8* %2311 to i32*
  store i32 %2310, i32* %2312, align 1
  %2313 = lshr i64 %2303, 32
  %2314 = trunc i64 %2313 to i32
  %2315 = getelementptr inbounds i8, i8* %2287, i64 12
  %2316 = bitcast i8* %2315 to i32*
  store i32 %2314, i32* %2316, align 1
  store %struct.Memory* %loadMem_43c80c, %struct.Memory** %MEMORY
  %loadMem_43c80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 33
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 15
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2323, i64 0, i64 0
  %XMM0.i443 = bitcast %union.VectorReg* %2324 to %union.vec128_t*
  %2325 = load i64, i64* %RBP.i442
  %2326 = sub i64 %2325, 44
  %2327 = bitcast %union.vec128_t* %XMM0.i443 to i8*
  %2328 = load i64, i64* %PC.i441
  %2329 = add i64 %2328, 5
  store i64 %2329, i64* %PC.i441
  %2330 = bitcast i8* %2327 to <2 x float>*
  %2331 = load <2 x float>, <2 x float>* %2330, align 1
  %2332 = extractelement <2 x float> %2331, i32 0
  %2333 = inttoptr i64 %2326 to float*
  store float %2332, float* %2333
  store %struct.Memory* %loadMem_43c80f, %struct.Memory** %MEMORY
  %loadMem_43c814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2336 to i64*
  %2337 = load i64, i64* %PC.i440
  %2338 = add i64 %2337, 131
  %2339 = load i64, i64* %PC.i440
  %2340 = add i64 %2339, 5
  store i64 %2340, i64* %PC.i440
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2338, i64* %2341, align 8
  store %struct.Memory* %loadMem_43c814, %struct.Memory** %MEMORY
  br label %block_.L_43c897

block_.L_43c819:                                  ; preds = %block_43c7f4
  %loadMem_43c819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 15
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %RBP.i439
  %2349 = sub i64 %2348, 84
  %2350 = load i64, i64* %PC.i438
  %2351 = add i64 %2350, 4
  store i64 %2351, i64* %PC.i438
  %2352 = inttoptr i64 %2349 to i32*
  %2353 = load i32, i32* %2352
  %2354 = sub i32 %2353, 5
  %2355 = icmp ult i32 %2353, 5
  %2356 = zext i1 %2355 to i8
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2356, i8* %2357, align 1
  %2358 = and i32 %2354, 255
  %2359 = call i32 @llvm.ctpop.i32(i32 %2358)
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  %2362 = xor i8 %2361, 1
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2362, i8* %2363, align 1
  %2364 = xor i32 %2353, 5
  %2365 = xor i32 %2364, %2354
  %2366 = lshr i32 %2365, 4
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2368, i8* %2369, align 1
  %2370 = icmp eq i32 %2354, 0
  %2371 = zext i1 %2370 to i8
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2371, i8* %2372, align 1
  %2373 = lshr i32 %2354, 31
  %2374 = trunc i32 %2373 to i8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2374, i8* %2375, align 1
  %2376 = lshr i32 %2353, 31
  %2377 = xor i32 %2373, %2376
  %2378 = add i32 %2377, %2376
  %2379 = icmp eq i32 %2378, 2
  %2380 = zext i1 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2380, i8* %2381, align 1
  store %struct.Memory* %loadMem_43c819, %struct.Memory** %MEMORY
  %loadMem_43c81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 33
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %PC.i437
  %2386 = add i64 %2385, 24
  %2387 = load i64, i64* %PC.i437
  %2388 = add i64 %2387, 6
  %2389 = load i64, i64* %PC.i437
  %2390 = add i64 %2389, 6
  store i64 %2390, i64* %PC.i437
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2392 = load i8, i8* %2391, align 1
  store i8 %2392, i8* %BRANCH_TAKEN, align 1
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2394 = icmp ne i8 %2392, 0
  %2395 = select i1 %2394, i64 %2386, i64 %2388
  store i64 %2395, i64* %2393, align 8
  store %struct.Memory* %loadMem_43c81d, %struct.Memory** %MEMORY
  %loadBr_43c81d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c81d = icmp eq i8 %loadBr_43c81d, 1
  br i1 %cmpBr_43c81d, label %block_.L_43c835, label %block_43c823

block_43c823:                                     ; preds = %block_.L_43c819
  %loadMem_43c823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2397 = getelementptr inbounds %struct.GPR, %struct.GPR* %2396, i32 0, i32 33
  %2398 = getelementptr inbounds %struct.Reg, %struct.Reg* %2397, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2398 to i64*
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2400 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2399, i64 0, i64 0
  %YMM0.i436 = bitcast %union.VectorReg* %2400 to %"class.std::bitset"*
  %2401 = bitcast %"class.std::bitset"* %YMM0.i436 to i8*
  %2402 = load i64, i64* %PC.i435
  %2403 = add i64 %2402, ptrtoint (%G_0xa6921__rip__type* @G_0xa6921__rip_ to i64)
  %2404 = load i64, i64* %PC.i435
  %2405 = add i64 %2404, 8
  store i64 %2405, i64* %PC.i435
  %2406 = inttoptr i64 %2403 to float*
  %2407 = load float, float* %2406
  %2408 = bitcast i8* %2401 to float*
  store float %2407, float* %2408, align 1
  %2409 = getelementptr inbounds i8, i8* %2401, i64 4
  %2410 = bitcast i8* %2409 to float*
  store float 0.000000e+00, float* %2410, align 1
  %2411 = getelementptr inbounds i8, i8* %2401, i64 8
  %2412 = bitcast i8* %2411 to float*
  store float 0.000000e+00, float* %2412, align 1
  %2413 = getelementptr inbounds i8, i8* %2401, i64 12
  %2414 = bitcast i8* %2413 to float*
  store float 0.000000e+00, float* %2414, align 1
  store %struct.Memory* %loadMem_43c823, %struct.Memory** %MEMORY
  %loadMem_43c82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 33
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2417 to i64*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 15
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %2420 to i64*
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2421, i64 0, i64 0
  %XMM0.i434 = bitcast %union.VectorReg* %2422 to %union.vec128_t*
  %2423 = load i64, i64* %RBP.i433
  %2424 = sub i64 %2423, 44
  %2425 = bitcast %union.vec128_t* %XMM0.i434 to i8*
  %2426 = load i64, i64* %PC.i432
  %2427 = add i64 %2426, 5
  store i64 %2427, i64* %PC.i432
  %2428 = bitcast i8* %2425 to <2 x float>*
  %2429 = load <2 x float>, <2 x float>* %2428, align 1
  %2430 = extractelement <2 x float> %2429, i32 0
  %2431 = inttoptr i64 %2424 to float*
  store float %2430, float* %2431
  store %struct.Memory* %loadMem_43c82b, %struct.Memory** %MEMORY
  %loadMem_43c830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2434 to i64*
  %2435 = load i64, i64* %PC.i431
  %2436 = add i64 %2435, 98
  %2437 = load i64, i64* %PC.i431
  %2438 = add i64 %2437, 5
  store i64 %2438, i64* %PC.i431
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2436, i64* %2439, align 8
  store %struct.Memory* %loadMem_43c830, %struct.Memory** %MEMORY
  br label %block_.L_43c892

block_.L_43c835:                                  ; preds = %block_.L_43c819
  %loadMem_43c835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 11
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %RDI.i429 = bitcast %union.anon* %2445 to i64*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 15
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %2448 to i64*
  %2449 = load i64, i64* %RBP.i430
  %2450 = sub i64 %2449, 52
  %2451 = load i64, i64* %PC.i428
  %2452 = add i64 %2451, 3
  store i64 %2452, i64* %PC.i428
  %2453 = inttoptr i64 %2450 to i32*
  %2454 = load i32, i32* %2453
  %2455 = zext i32 %2454 to i64
  store i64 %2455, i64* %RDI.i429, align 8
  store %struct.Memory* %loadMem_43c835, %struct.Memory** %MEMORY
  %loadMem_43c838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 9
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RSI.i426 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %2464 to i64*
  %2465 = load i64, i64* %RBP.i427
  %2466 = sub i64 %2465, 16
  %2467 = load i64, i64* %PC.i425
  %2468 = add i64 %2467, 3
  store i64 %2468, i64* %PC.i425
  %2469 = inttoptr i64 %2466 to i32*
  %2470 = load i32, i32* %2469
  %2471 = zext i32 %2470 to i64
  store i64 %2471, i64* %RSI.i426, align 8
  store %struct.Memory* %loadMem_43c838, %struct.Memory** %MEMORY
  %loadMem1_43c83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 33
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2474 to i64*
  %2475 = load i64, i64* %PC.i424
  %2476 = add i64 %2475, 193525
  %2477 = load i64, i64* %PC.i424
  %2478 = add i64 %2477, 5
  %2479 = load i64, i64* %PC.i424
  %2480 = add i64 %2479, 5
  store i64 %2480, i64* %PC.i424
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2482 = load i64, i64* %2481, align 8
  %2483 = add i64 %2482, -8
  %2484 = inttoptr i64 %2483 to i64*
  store i64 %2478, i64* %2484
  store i64 %2483, i64* %2481, align 8
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2476, i64* %2485, align 8
  store %struct.Memory* %loadMem1_43c83b, %struct.Memory** %MEMORY
  %loadMem2_43c83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c83b = load i64, i64* %3
  %call2_43c83b = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64 %loadPC_43c83b, %struct.Memory* %loadMem2_43c83b)
  store %struct.Memory* %call2_43c83b, %struct.Memory** %MEMORY
  %loadMem_43c840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 33
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2488 to i64*
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 1
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %EAX.i422 = bitcast %union.anon* %2491 to i32*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 15
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %2494 to i64*
  %2495 = load i64, i64* %RBP.i423
  %2496 = sub i64 %2495, 88
  %2497 = load i32, i32* %EAX.i422
  %2498 = zext i32 %2497 to i64
  %2499 = load i64, i64* %PC.i421
  %2500 = add i64 %2499, 3
  store i64 %2500, i64* %PC.i421
  %2501 = inttoptr i64 %2496 to i32*
  store i32 %2497, i32* %2501
  store %struct.Memory* %loadMem_43c840, %struct.Memory** %MEMORY
  %loadMem_43c843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 33
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i420
  %2509 = sub i64 %2508, 88
  %2510 = load i64, i64* %PC.i419
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC.i419
  %2512 = inttoptr i64 %2509 to i32*
  %2513 = load i32, i32* %2512
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2514, align 1
  %2515 = and i32 %2513, 255
  %2516 = call i32 @llvm.ctpop.i32(i32 %2515)
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = xor i8 %2518, 1
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2519, i8* %2520, align 1
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2521, align 1
  %2522 = icmp eq i32 %2513, 0
  %2523 = zext i1 %2522 to i8
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2523, i8* %2524, align 1
  %2525 = lshr i32 %2513, 31
  %2526 = trunc i32 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2526, i8* %2527, align 1
  %2528 = lshr i32 %2513, 31
  %2529 = xor i32 %2525, %2528
  %2530 = add i32 %2529, %2528
  %2531 = icmp eq i32 %2530, 2
  %2532 = zext i1 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2532, i8* %2533, align 1
  store %struct.Memory* %loadMem_43c843, %struct.Memory** %MEMORY
  %loadMem_43c847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2536 to i64*
  %2537 = load i64, i64* %PC.i418
  %2538 = add i64 %2537, 24
  %2539 = load i64, i64* %PC.i418
  %2540 = add i64 %2539, 6
  %2541 = load i64, i64* %PC.i418
  %2542 = add i64 %2541, 6
  store i64 %2542, i64* %PC.i418
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2544 = load i8, i8* %2543, align 1
  %2545 = icmp eq i8 %2544, 0
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %BRANCH_TAKEN, align 1
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2548 = select i1 %2545, i64 %2538, i64 %2540
  store i64 %2548, i64* %2547, align 8
  store %struct.Memory* %loadMem_43c847, %struct.Memory** %MEMORY
  %loadBr_43c847 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c847 = icmp eq i8 %loadBr_43c847, 1
  br i1 %cmpBr_43c847, label %block_.L_43c85f, label %block_43c84d

block_43c84d:                                     ; preds = %block_.L_43c835
  %loadMem_43c84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2551 to i64*
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2553 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2552, i64 0, i64 0
  %YMM0.i417 = bitcast %union.VectorReg* %2553 to %"class.std::bitset"*
  %2554 = bitcast %"class.std::bitset"* %YMM0.i417 to i8*
  %2555 = load i64, i64* %PC.i416
  %2556 = add i64 %2555, ptrtoint (%G_0xa68df__rip__type* @G_0xa68df__rip_ to i64)
  %2557 = load i64, i64* %PC.i416
  %2558 = add i64 %2557, 8
  store i64 %2558, i64* %PC.i416
  %2559 = inttoptr i64 %2556 to float*
  %2560 = load float, float* %2559
  %2561 = bitcast i8* %2554 to float*
  store float %2560, float* %2561, align 1
  %2562 = getelementptr inbounds i8, i8* %2554, i64 4
  %2563 = bitcast i8* %2562 to float*
  store float 0.000000e+00, float* %2563, align 1
  %2564 = getelementptr inbounds i8, i8* %2554, i64 8
  %2565 = bitcast i8* %2564 to float*
  store float 0.000000e+00, float* %2565, align 1
  %2566 = getelementptr inbounds i8, i8* %2554, i64 12
  %2567 = bitcast i8* %2566 to float*
  store float 0.000000e+00, float* %2567, align 1
  store %struct.Memory* %loadMem_43c84d, %struct.Memory** %MEMORY
  %loadMem_43c855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 33
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 15
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %2573 to i64*
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2574, i64 0, i64 0
  %XMM0.i415 = bitcast %union.VectorReg* %2575 to %union.vec128_t*
  %2576 = load i64, i64* %RBP.i414
  %2577 = sub i64 %2576, 44
  %2578 = bitcast %union.vec128_t* %XMM0.i415 to i8*
  %2579 = load i64, i64* %PC.i413
  %2580 = add i64 %2579, 5
  store i64 %2580, i64* %PC.i413
  %2581 = bitcast i8* %2578 to <2 x float>*
  %2582 = load <2 x float>, <2 x float>* %2581, align 1
  %2583 = extractelement <2 x float> %2582, i32 0
  %2584 = inttoptr i64 %2577 to float*
  store float %2583, float* %2584
  store %struct.Memory* %loadMem_43c855, %struct.Memory** %MEMORY
  %loadMem_43c85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %PC.i412
  %2589 = add i64 %2588, 51
  %2590 = load i64, i64* %PC.i412
  %2591 = add i64 %2590, 5
  store i64 %2591, i64* %PC.i412
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2589, i64* %2592, align 8
  store %struct.Memory* %loadMem_43c85a, %struct.Memory** %MEMORY
  br label %block_.L_43c88d

block_.L_43c85f:                                  ; preds = %block_.L_43c835
  %loadMem_43c85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 15
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %2598 to i64*
  %2599 = load i64, i64* %RBP.i411
  %2600 = sub i64 %2599, 88
  %2601 = load i64, i64* %PC.i410
  %2602 = add i64 %2601, 4
  store i64 %2602, i64* %PC.i410
  %2603 = inttoptr i64 %2600 to i32*
  %2604 = load i32, i32* %2603
  %2605 = sub i32 %2604, 5
  %2606 = icmp ult i32 %2604, 5
  %2607 = zext i1 %2606 to i8
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2607, i8* %2608, align 1
  %2609 = and i32 %2605, 255
  %2610 = call i32 @llvm.ctpop.i32(i32 %2609)
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2613, i8* %2614, align 1
  %2615 = xor i32 %2604, 5
  %2616 = xor i32 %2615, %2605
  %2617 = lshr i32 %2616, 4
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2619, i8* %2620, align 1
  %2621 = icmp eq i32 %2605, 0
  %2622 = zext i1 %2621 to i8
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2622, i8* %2623, align 1
  %2624 = lshr i32 %2605, 31
  %2625 = trunc i32 %2624 to i8
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2625, i8* %2626, align 1
  %2627 = lshr i32 %2604, 31
  %2628 = xor i32 %2624, %2627
  %2629 = add i32 %2628, %2627
  %2630 = icmp eq i32 %2629, 2
  %2631 = zext i1 %2630 to i8
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2631, i8* %2632, align 1
  store %struct.Memory* %loadMem_43c85f, %struct.Memory** %MEMORY
  %loadMem_43c863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2635 to i64*
  %2636 = load i64, i64* %PC.i409
  %2637 = add i64 %2636, 24
  %2638 = load i64, i64* %PC.i409
  %2639 = add i64 %2638, 6
  %2640 = load i64, i64* %PC.i409
  %2641 = add i64 %2640, 6
  store i64 %2641, i64* %PC.i409
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2643 = load i8, i8* %2642, align 1
  %2644 = icmp eq i8 %2643, 0
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %BRANCH_TAKEN, align 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2647 = select i1 %2644, i64 %2637, i64 %2639
  store i64 %2647, i64* %2646, align 8
  store %struct.Memory* %loadMem_43c863, %struct.Memory** %MEMORY
  %loadBr_43c863 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c863 = icmp eq i8 %loadBr_43c863, 1
  br i1 %cmpBr_43c863, label %block_.L_43c87b, label %block_43c869

block_43c869:                                     ; preds = %block_.L_43c85f
  %loadMem_43c869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2652 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2651, i64 0, i64 0
  %YMM0.i408 = bitcast %union.VectorReg* %2652 to %"class.std::bitset"*
  %2653 = bitcast %"class.std::bitset"* %YMM0.i408 to i8*
  %2654 = load i64, i64* %PC.i407
  %2655 = add i64 %2654, ptrtoint (%G_0xa689b__rip__type* @G_0xa689b__rip_ to i64)
  %2656 = load i64, i64* %PC.i407
  %2657 = add i64 %2656, 8
  store i64 %2657, i64* %PC.i407
  %2658 = inttoptr i64 %2655 to float*
  %2659 = load float, float* %2658
  %2660 = bitcast i8* %2653 to float*
  store float %2659, float* %2660, align 1
  %2661 = getelementptr inbounds i8, i8* %2653, i64 4
  %2662 = bitcast i8* %2661 to float*
  store float 0.000000e+00, float* %2662, align 1
  %2663 = getelementptr inbounds i8, i8* %2653, i64 8
  %2664 = bitcast i8* %2663 to float*
  store float 0.000000e+00, float* %2664, align 1
  %2665 = getelementptr inbounds i8, i8* %2653, i64 12
  %2666 = bitcast i8* %2665 to float*
  store float 0.000000e+00, float* %2666, align 1
  store %struct.Memory* %loadMem_43c869, %struct.Memory** %MEMORY
  %loadMem_43c871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 33
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %2669 to i64*
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 15
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2673, i64 0, i64 0
  %XMM0.i406 = bitcast %union.VectorReg* %2674 to %union.vec128_t*
  %2675 = load i64, i64* %RBP.i405
  %2676 = sub i64 %2675, 44
  %2677 = bitcast %union.vec128_t* %XMM0.i406 to i8*
  %2678 = load i64, i64* %PC.i404
  %2679 = add i64 %2678, 5
  store i64 %2679, i64* %PC.i404
  %2680 = bitcast i8* %2677 to <2 x float>*
  %2681 = load <2 x float>, <2 x float>* %2680, align 1
  %2682 = extractelement <2 x float> %2681, i32 0
  %2683 = inttoptr i64 %2676 to float*
  store float %2682, float* %2683
  store %struct.Memory* %loadMem_43c871, %struct.Memory** %MEMORY
  %loadMem_43c876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %PC.i403
  %2688 = add i64 %2687, 18
  %2689 = load i64, i64* %PC.i403
  %2690 = add i64 %2689, 5
  store i64 %2690, i64* %PC.i403
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2688, i64* %2691, align 8
  store %struct.Memory* %loadMem_43c876, %struct.Memory** %MEMORY
  br label %block_.L_43c888

block_.L_43c87b:                                  ; preds = %block_.L_43c85f
  %loadMem_43c87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2696 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2695, i64 0, i64 0
  %YMM0.i402 = bitcast %union.VectorReg* %2696 to %"class.std::bitset"*
  %2697 = bitcast %"class.std::bitset"* %YMM0.i402 to i8*
  %2698 = load i64, i64* %PC.i401
  %2699 = add i64 %2698, ptrtoint (%G_0xa68d1__rip__type* @G_0xa68d1__rip_ to i64)
  %2700 = load i64, i64* %PC.i401
  %2701 = add i64 %2700, 8
  store i64 %2701, i64* %PC.i401
  %2702 = inttoptr i64 %2699 to float*
  %2703 = load float, float* %2702
  %2704 = bitcast i8* %2697 to float*
  store float %2703, float* %2704, align 1
  %2705 = getelementptr inbounds i8, i8* %2697, i64 4
  %2706 = bitcast i8* %2705 to float*
  store float 0.000000e+00, float* %2706, align 1
  %2707 = getelementptr inbounds i8, i8* %2697, i64 8
  %2708 = bitcast i8* %2707 to float*
  store float 0.000000e+00, float* %2708, align 1
  %2709 = getelementptr inbounds i8, i8* %2697, i64 12
  %2710 = bitcast i8* %2709 to float*
  store float 0.000000e+00, float* %2710, align 1
  store %struct.Memory* %loadMem_43c87b, %struct.Memory** %MEMORY
  %loadMem_43c883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 15
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2717, i64 0, i64 0
  %XMM0.i400 = bitcast %union.VectorReg* %2718 to %union.vec128_t*
  %2719 = load i64, i64* %RBP.i399
  %2720 = sub i64 %2719, 44
  %2721 = bitcast %union.vec128_t* %XMM0.i400 to i8*
  %2722 = load i64, i64* %PC.i398
  %2723 = add i64 %2722, 5
  store i64 %2723, i64* %PC.i398
  %2724 = bitcast i8* %2721 to <2 x float>*
  %2725 = load <2 x float>, <2 x float>* %2724, align 1
  %2726 = extractelement <2 x float> %2725, i32 0
  %2727 = inttoptr i64 %2720 to float*
  store float %2726, float* %2727
  store %struct.Memory* %loadMem_43c883, %struct.Memory** %MEMORY
  br label %block_.L_43c888

block_.L_43c888:                                  ; preds = %block_.L_43c87b, %block_43c869
  %loadMem_43c888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %PC.i397
  %2732 = add i64 %2731, 5
  %2733 = load i64, i64* %PC.i397
  %2734 = add i64 %2733, 5
  store i64 %2734, i64* %PC.i397
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2732, i64* %2735, align 8
  store %struct.Memory* %loadMem_43c888, %struct.Memory** %MEMORY
  br label %block_.L_43c88d

block_.L_43c88d:                                  ; preds = %block_.L_43c888, %block_43c84d
  %loadMem_43c88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2738 to i64*
  %2739 = load i64, i64* %PC.i396
  %2740 = add i64 %2739, 5
  %2741 = load i64, i64* %PC.i396
  %2742 = add i64 %2741, 5
  store i64 %2742, i64* %PC.i396
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2740, i64* %2743, align 8
  store %struct.Memory* %loadMem_43c88d, %struct.Memory** %MEMORY
  br label %block_.L_43c892

block_.L_43c892:                                  ; preds = %block_.L_43c88d, %block_43c823
  %loadMem_43c892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2746 to i64*
  %2747 = load i64, i64* %PC.i395
  %2748 = add i64 %2747, 5
  %2749 = load i64, i64* %PC.i395
  %2750 = add i64 %2749, 5
  store i64 %2750, i64* %PC.i395
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2748, i64* %2751, align 8
  store %struct.Memory* %loadMem_43c892, %struct.Memory** %MEMORY
  br label %block_.L_43c897

block_.L_43c897:                                  ; preds = %block_.L_43c892, %block_43c80c
  %loadMem_43c897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 1
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 15
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %2760 to i64*
  %2761 = load i64, i64* %RBP.i394
  %2762 = sub i64 %2761, 52
  %2763 = load i64, i64* %PC.i392
  %2764 = add i64 %2763, 3
  store i64 %2764, i64* %PC.i392
  %2765 = inttoptr i64 %2762 to i32*
  %2766 = load i32, i32* %2765
  %2767 = zext i32 %2766 to i64
  store i64 %2767, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_43c897, %struct.Memory** %MEMORY
  %loadMem_43c89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 33
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 1
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %2773 to i32*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 15
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %RBP.i391
  %2778 = sub i64 %2777, 60
  %2779 = load i32, i32* %EAX.i390
  %2780 = zext i32 %2779 to i64
  %2781 = load i64, i64* %PC.i389
  %2782 = add i64 %2781, 3
  store i64 %2782, i64* %PC.i389
  %2783 = inttoptr i64 %2778 to i32*
  store i32 %2779, i32* %2783
  store %struct.Memory* %loadMem_43c89a, %struct.Memory** %MEMORY
  %loadMem_43c89d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 33
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 1
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 15
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %RBP.i388
  %2794 = sub i64 %2793, 52
  %2795 = load i64, i64* %PC.i386
  %2796 = add i64 %2795, 3
  store i64 %2796, i64* %PC.i386
  %2797 = inttoptr i64 %2794 to i32*
  %2798 = load i32, i32* %2797
  %2799 = zext i32 %2798 to i64
  store i64 %2799, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_43c89d, %struct.Memory** %MEMORY
  %loadMem_43c8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 1
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %EAX.i384 = bitcast %union.anon* %2805 to i32*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 15
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RBP.i385
  %2810 = sub i64 %2809, 68
  %2811 = load i32, i32* %EAX.i384
  %2812 = zext i32 %2811 to i64
  %2813 = load i64, i64* %PC.i383
  %2814 = add i64 %2813, 3
  store i64 %2814, i64* %PC.i383
  %2815 = inttoptr i64 %2810 to i32*
  store i32 %2811, i32* %2815
  store %struct.Memory* %loadMem_43c8a0, %struct.Memory** %MEMORY
  %loadMem_43c8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %PC.i382
  %2820 = add i64 %2819, 449
  %2821 = load i64, i64* %PC.i382
  %2822 = add i64 %2821, 5
  store i64 %2822, i64* %PC.i382
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2820, i64* %2823, align 8
  store %struct.Memory* %loadMem_43c8a3, %struct.Memory** %MEMORY
  br label %block_.L_43ca64

block_.L_43c8a8:                                  ; preds = %block_.L_43c7df
  %loadMem_43c8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 1
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %2829 to i64*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 15
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %RBP.i381
  %2834 = sub i64 %2833, 52
  %2835 = load i64, i64* %PC.i379
  %2836 = add i64 %2835, 4
  store i64 %2836, i64* %PC.i379
  %2837 = inttoptr i64 %2834 to i32*
  %2838 = load i32, i32* %2837
  %2839 = sext i32 %2838 to i64
  store i64 %2839, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_43c8a8, %struct.Memory** %MEMORY
  %loadMem_43c8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 1
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 5
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %RAX.i377
  %2850 = add i64 %2849, 12099168
  %2851 = load i64, i64* %PC.i376
  %2852 = add i64 %2851, 8
  store i64 %2852, i64* %PC.i376
  %2853 = inttoptr i64 %2850 to i8*
  %2854 = load i8, i8* %2853
  %2855 = zext i8 %2854 to i64
  store i64 %2855, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_43c8ac, %struct.Memory** %MEMORY
  %loadMem_43c8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 5
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %ECX.i374 = bitcast %union.anon* %2861 to i32*
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 15
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %2864 to i64*
  %2865 = load i32, i32* %ECX.i374
  %2866 = zext i32 %2865 to i64
  %2867 = load i64, i64* %RBP.i375
  %2868 = sub i64 %2867, 16
  %2869 = load i64, i64* %PC.i373
  %2870 = add i64 %2869, 3
  store i64 %2870, i64* %PC.i373
  %2871 = inttoptr i64 %2868 to i32*
  %2872 = load i32, i32* %2871
  %2873 = sub i32 %2865, %2872
  %2874 = icmp ult i32 %2865, %2872
  %2875 = zext i1 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2875, i8* %2876, align 1
  %2877 = and i32 %2873, 255
  %2878 = call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2881, i8* %2882, align 1
  %2883 = xor i32 %2872, %2865
  %2884 = xor i32 %2883, %2873
  %2885 = lshr i32 %2884, 4
  %2886 = trunc i32 %2885 to i8
  %2887 = and i8 %2886, 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2887, i8* %2888, align 1
  %2889 = icmp eq i32 %2873, 0
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2890, i8* %2891, align 1
  %2892 = lshr i32 %2873, 31
  %2893 = trunc i32 %2892 to i8
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2893, i8* %2894, align 1
  %2895 = lshr i32 %2865, 31
  %2896 = lshr i32 %2872, 31
  %2897 = xor i32 %2896, %2895
  %2898 = xor i32 %2892, %2895
  %2899 = add i32 %2898, %2897
  %2900 = icmp eq i32 %2899, 2
  %2901 = zext i1 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2901, i8* %2902, align 1
  store %struct.Memory* %loadMem_43c8b4, %struct.Memory** %MEMORY
  %loadMem_43c8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 33
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2905 to i64*
  %2906 = load i64, i64* %PC.i372
  %2907 = add i64 %2906, 19
  %2908 = load i64, i64* %PC.i372
  %2909 = add i64 %2908, 6
  %2910 = load i64, i64* %PC.i372
  %2911 = add i64 %2910, 6
  store i64 %2911, i64* %PC.i372
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2913 = load i8, i8* %2912, align 1
  %2914 = icmp eq i8 %2913, 0
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %BRANCH_TAKEN, align 1
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2917 = select i1 %2914, i64 %2907, i64 %2909
  store i64 %2917, i64* %2916, align 8
  store %struct.Memory* %loadMem_43c8b7, %struct.Memory** %MEMORY
  %loadBr_43c8b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c8b7 = icmp eq i8 %loadBr_43c8b7, 1
  br i1 %cmpBr_43c8b7, label %block_.L_43c8ca, label %block_43c8bd

block_43c8bd:                                     ; preds = %block_.L_43c8a8
  %loadMem_43c8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2922 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2921, i64 0, i64 0
  %YMM0.i370 = bitcast %union.VectorReg* %2922 to %"class.std::bitset"*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2923, i64 0, i64 0
  %XMM0.i371 = bitcast %union.VectorReg* %2924 to %union.vec128_t*
  %2925 = bitcast %"class.std::bitset"* %YMM0.i370 to i8*
  %2926 = bitcast %"class.std::bitset"* %YMM0.i370 to i8*
  %2927 = bitcast %union.vec128_t* %XMM0.i371 to i8*
  %2928 = load i64, i64* %PC.i369
  %2929 = add i64 %2928, 3
  store i64 %2929, i64* %PC.i369
  %2930 = bitcast i8* %2926 to i64*
  %2931 = load i64, i64* %2930, align 1
  %2932 = getelementptr inbounds i8, i8* %2926, i64 8
  %2933 = bitcast i8* %2932 to i64*
  %2934 = load i64, i64* %2933, align 1
  %2935 = bitcast i8* %2927 to i64*
  %2936 = load i64, i64* %2935, align 1
  %2937 = getelementptr inbounds i8, i8* %2927, i64 8
  %2938 = bitcast i8* %2937 to i64*
  %2939 = load i64, i64* %2938, align 1
  %2940 = xor i64 %2936, %2931
  %2941 = xor i64 %2939, %2934
  %2942 = trunc i64 %2940 to i32
  %2943 = lshr i64 %2940, 32
  %2944 = trunc i64 %2943 to i32
  %2945 = bitcast i8* %2925 to i32*
  store i32 %2942, i32* %2945, align 1
  %2946 = getelementptr inbounds i8, i8* %2925, i64 4
  %2947 = bitcast i8* %2946 to i32*
  store i32 %2944, i32* %2947, align 1
  %2948 = trunc i64 %2941 to i32
  %2949 = getelementptr inbounds i8, i8* %2925, i64 8
  %2950 = bitcast i8* %2949 to i32*
  store i32 %2948, i32* %2950, align 1
  %2951 = lshr i64 %2941, 32
  %2952 = trunc i64 %2951 to i32
  %2953 = getelementptr inbounds i8, i8* %2925, i64 12
  %2954 = bitcast i8* %2953 to i32*
  store i32 %2952, i32* %2954, align 1
  store %struct.Memory* %loadMem_43c8bd, %struct.Memory** %MEMORY
  %loadMem_43c8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 15
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2962 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2961, i64 0, i64 0
  %XMM0.i368 = bitcast %union.VectorReg* %2962 to %union.vec128_t*
  %2963 = load i64, i64* %RBP.i367
  %2964 = sub i64 %2963, 44
  %2965 = bitcast %union.vec128_t* %XMM0.i368 to i8*
  %2966 = load i64, i64* %PC.i366
  %2967 = add i64 %2966, 5
  store i64 %2967, i64* %PC.i366
  %2968 = bitcast i8* %2965 to <2 x float>*
  %2969 = load <2 x float>, <2 x float>* %2968, align 1
  %2970 = extractelement <2 x float> %2969, i32 0
  %2971 = inttoptr i64 %2964 to float*
  store float %2970, float* %2971
  store %struct.Memory* %loadMem_43c8c0, %struct.Memory** %MEMORY
  %loadMem_43c8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2974 to i64*
  %2975 = load i64, i64* %PC.i365
  %2976 = add i64 %2975, 410
  %2977 = load i64, i64* %PC.i365
  %2978 = add i64 %2977, 5
  store i64 %2978, i64* %PC.i365
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2976, i64* %2979, align 8
  store %struct.Memory* %loadMem_43c8c5, %struct.Memory** %MEMORY
  br label %block_.L_43ca5f

block_.L_43c8ca:                                  ; preds = %block_.L_43c8a8
  %loadMem_43c8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 15
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RBP.i364
  %2990 = sub i64 %2989, 52
  %2991 = load i64, i64* %PC.i362
  %2992 = add i64 %2991, 4
  store i64 %2992, i64* %PC.i362
  %2993 = inttoptr i64 %2990 to i32*
  %2994 = load i32, i32* %2993
  %2995 = sext i32 %2994 to i64
  store i64 %2995, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_43c8ca, %struct.Memory** %MEMORY
  %loadMem_43c8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 1
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 5
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RAX.i360
  %3006 = add i64 %3005, 12099168
  %3007 = load i64, i64* %PC.i359
  %3008 = add i64 %3007, 8
  store i64 %3008, i64* %PC.i359
  %3009 = inttoptr i64 %3006 to i8*
  %3010 = load i8, i8* %3009
  %3011 = zext i8 %3010 to i64
  store i64 %3011, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_43c8ce, %struct.Memory** %MEMORY
  %loadMem_43c8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 5
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %ECX.i357 = bitcast %union.anon* %3017 to i32*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 15
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %3020 to i64*
  %3021 = load i32, i32* %ECX.i357
  %3022 = zext i32 %3021 to i64
  %3023 = load i64, i64* %RBP.i358
  %3024 = sub i64 %3023, 48
  %3025 = load i64, i64* %PC.i356
  %3026 = add i64 %3025, 3
  store i64 %3026, i64* %PC.i356
  %3027 = inttoptr i64 %3024 to i32*
  %3028 = load i32, i32* %3027
  %3029 = sub i32 %3021, %3028
  %3030 = icmp ult i32 %3021, %3028
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3031, i8* %3032, align 1
  %3033 = and i32 %3029, 255
  %3034 = call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3037, i8* %3038, align 1
  %3039 = xor i32 %3028, %3021
  %3040 = xor i32 %3039, %3029
  %3041 = lshr i32 %3040, 4
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3043, i8* %3044, align 1
  %3045 = icmp eq i32 %3029, 0
  %3046 = zext i1 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3046, i8* %3047, align 1
  %3048 = lshr i32 %3029, 31
  %3049 = trunc i32 %3048 to i8
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3049, i8* %3050, align 1
  %3051 = lshr i32 %3021, 31
  %3052 = lshr i32 %3028, 31
  %3053 = xor i32 %3052, %3051
  %3054 = xor i32 %3048, %3051
  %3055 = add i32 %3054, %3053
  %3056 = icmp eq i32 %3055, 2
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3057, i8* %3058, align 1
  store %struct.Memory* %loadMem_43c8d6, %struct.Memory** %MEMORY
  %loadMem_43c8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 33
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3061 to i64*
  %3062 = load i64, i64* %PC.i355
  %3063 = add i64 %3062, 385
  %3064 = load i64, i64* %PC.i355
  %3065 = add i64 %3064, 6
  %3066 = load i64, i64* %PC.i355
  %3067 = add i64 %3066, 6
  store i64 %3067, i64* %PC.i355
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3069 = load i8, i8* %3068, align 1
  %3070 = icmp eq i8 %3069, 0
  %3071 = zext i1 %3070 to i8
  store i8 %3071, i8* %BRANCH_TAKEN, align 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3073 = select i1 %3070, i64 %3063, i64 %3065
  store i64 %3073, i64* %3072, align 8
  store %struct.Memory* %loadMem_43c8d9, %struct.Memory** %MEMORY
  %loadBr_43c8d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c8d9 = icmp eq i8 %loadBr_43c8d9, 1
  br i1 %cmpBr_43c8d9, label %block_.L_43ca5a, label %block_43c8df

block_43c8df:                                     ; preds = %block_.L_43c8ca
  %loadMem_43c8df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 33
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %3076 to i64*
  %3077 = load i64, i64* %PC.i354
  %3078 = add i64 %3077, 8
  store i64 %3078, i64* %PC.i354
  %3079 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3080, align 1
  %3081 = and i32 %3079, 255
  %3082 = call i32 @llvm.ctpop.i32(i32 %3081)
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  %3085 = xor i8 %3084, 1
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3085, i8* %3086, align 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3087, align 1
  %3088 = icmp eq i32 %3079, 0
  %3089 = zext i1 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3089, i8* %3090, align 1
  %3091 = lshr i32 %3079, 31
  %3092 = trunc i32 %3091 to i8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3092, i8* %3093, align 1
  %3094 = lshr i32 %3079, 31
  %3095 = xor i32 %3091, %3094
  %3096 = add i32 %3095, %3094
  %3097 = icmp eq i32 %3096, 2
  %3098 = zext i1 %3097 to i8
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3098, i8* %3099, align 1
  store %struct.Memory* %loadMem_43c8df, %struct.Memory** %MEMORY
  %loadMem_43c8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 33
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %PC.i353
  %3104 = add i64 %3103, 116
  %3105 = load i64, i64* %PC.i353
  %3106 = add i64 %3105, 6
  %3107 = load i64, i64* %PC.i353
  %3108 = add i64 %3107, 6
  store i64 %3108, i64* %PC.i353
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3110 = load i8, i8* %3109, align 1
  %3111 = icmp eq i8 %3110, 0
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %BRANCH_TAKEN, align 1
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3114 = select i1 %3111, i64 %3104, i64 %3106
  store i64 %3114, i64* %3113, align 8
  store %struct.Memory* %loadMem_43c8e7, %struct.Memory** %MEMORY
  %loadBr_43c8e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c8e7 = icmp eq i8 %loadBr_43c8e7, 1
  br i1 %cmpBr_43c8e7, label %block_.L_43c95b, label %block_43c8ed

block_43c8ed:                                     ; preds = %block_43c8df
  %loadMem_43c8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %3117 to i64*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3119 = getelementptr inbounds %struct.GPR, %struct.GPR* %3118, i32 0, i32 1
  %3120 = getelementptr inbounds %struct.Reg, %struct.Reg* %3119, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %3120 to i64*
  %3121 = load i64, i64* %PC.i351
  %3122 = add i64 %3121, 10
  store i64 %3122, i64* %PC.i351
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_43c8ed, %struct.Memory** %MEMORY
  %loadMem_43c8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 5
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 15
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %3131 to i64*
  %3132 = load i64, i64* %RBP.i350
  %3133 = sub i64 %3132, 52
  %3134 = load i64, i64* %PC.i348
  %3135 = add i64 %3134, 4
  store i64 %3135, i64* %PC.i348
  %3136 = inttoptr i64 %3133 to i32*
  %3137 = load i32, i32* %3136
  %3138 = sext i32 %3137 to i64
  store i64 %3138, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_43c8f7, %struct.Memory** %MEMORY
  %loadMem_43c8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 33
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 5
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RCX.i347
  %3146 = load i64, i64* %PC.i346
  %3147 = add i64 %3146, 7
  store i64 %3147, i64* %PC.i346
  %3148 = sext i64 %3145 to i128
  %3149 = and i128 %3148, -18446744073709551616
  %3150 = zext i64 %3145 to i128
  %3151 = or i128 %3149, %3150
  %3152 = mul i128 380, %3151
  %3153 = trunc i128 %3152 to i64
  store i64 %3153, i64* %RCX.i347, align 8
  %3154 = sext i64 %3153 to i128
  %3155 = icmp ne i128 %3154, %3152
  %3156 = zext i1 %3155 to i8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3156, i8* %3157, align 1
  %3158 = trunc i128 %3152 to i32
  %3159 = and i32 %3158, 255
  %3160 = call i32 @llvm.ctpop.i32(i32 %3159)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3163, i8* %3164, align 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3165, align 1
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3166, align 1
  %3167 = lshr i64 %3153, 63
  %3168 = trunc i64 %3167 to i8
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3168, i8* %3169, align 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3156, i8* %3170, align 1
  store %struct.Memory* %loadMem_43c8fb, %struct.Memory** %MEMORY
  %loadMem_43c902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 1
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 7
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RDX.i345 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RAX.i344
  %3181 = load i64, i64* %PC.i343
  %3182 = add i64 %3181, 3
  store i64 %3182, i64* %PC.i343
  store i64 %3180, i64* %RDX.i345, align 8
  store %struct.Memory* %loadMem_43c902, %struct.Memory** %MEMORY
  %loadMem_43c905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 5
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 7
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RDX.i342
  %3193 = load i64, i64* %RCX.i341
  %3194 = load i64, i64* %PC.i340
  %3195 = add i64 %3194, 3
  store i64 %3195, i64* %PC.i340
  %3196 = add i64 %3193, %3192
  store i64 %3196, i64* %RDX.i342, align 8
  %3197 = icmp ult i64 %3196, %3192
  %3198 = icmp ult i64 %3196, %3193
  %3199 = or i1 %3197, %3198
  %3200 = zext i1 %3199 to i8
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3200, i8* %3201, align 1
  %3202 = trunc i64 %3196 to i32
  %3203 = and i32 %3202, 255
  %3204 = call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3207, i8* %3208, align 1
  %3209 = xor i64 %3193, %3192
  %3210 = xor i64 %3209, %3196
  %3211 = lshr i64 %3210, 4
  %3212 = trunc i64 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3213, i8* %3214, align 1
  %3215 = icmp eq i64 %3196, 0
  %3216 = zext i1 %3215 to i8
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3216, i8* %3217, align 1
  %3218 = lshr i64 %3196, 63
  %3219 = trunc i64 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3219, i8* %3220, align 1
  %3221 = lshr i64 %3192, 63
  %3222 = lshr i64 %3193, 63
  %3223 = xor i64 %3218, %3221
  %3224 = xor i64 %3218, %3222
  %3225 = add i64 %3223, %3224
  %3226 = icmp eq i64 %3225, 2
  %3227 = zext i1 %3226 to i8
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3227, i8* %3228, align 1
  store %struct.Memory* %loadMem_43c905, %struct.Memory** %MEMORY
  %loadMem_43c908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 33
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3231 to i64*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 7
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 9
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %RSI.i339 = bitcast %union.anon* %3237 to i64*
  %3238 = load i64, i64* %RDX.i338
  %3239 = add i64 %3238, 100
  %3240 = load i64, i64* %PC.i337
  %3241 = add i64 %3240, 3
  store i64 %3241, i64* %PC.i337
  %3242 = inttoptr i64 %3239 to i32*
  %3243 = load i32, i32* %3242
  %3244 = zext i32 %3243 to i64
  store i64 %3244, i64* %RSI.i339, align 8
  store %struct.Memory* %loadMem_43c908, %struct.Memory** %MEMORY
  %loadMem_43c90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 33
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 9
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %ESI.i335 = bitcast %union.anon* %3250 to i32*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 15
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %RBP.i336
  %3255 = sub i64 %3254, 56
  %3256 = load i32, i32* %ESI.i335
  %3257 = zext i32 %3256 to i64
  %3258 = load i64, i64* %PC.i334
  %3259 = add i64 %3258, 3
  store i64 %3259, i64* %PC.i334
  %3260 = inttoptr i64 %3255 to i32*
  store i32 %3256, i32* %3260
  store %struct.Memory* %loadMem_43c90b, %struct.Memory** %MEMORY
  %loadMem_43c90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 33
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 5
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 15
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3269 to i64*
  %3270 = load i64, i64* %RBP.i333
  %3271 = sub i64 %3270, 52
  %3272 = load i64, i64* %PC.i331
  %3273 = add i64 %3272, 4
  store i64 %3273, i64* %PC.i331
  %3274 = inttoptr i64 %3271 to i32*
  %3275 = load i32, i32* %3274
  %3276 = sext i32 %3275 to i64
  store i64 %3276, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_43c90e, %struct.Memory** %MEMORY
  %loadMem_43c912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 33
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 5
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %3282 to i64*
  %3283 = load i64, i64* %RCX.i330
  %3284 = load i64, i64* %PC.i329
  %3285 = add i64 %3284, 7
  store i64 %3285, i64* %PC.i329
  %3286 = sext i64 %3283 to i128
  %3287 = and i128 %3286, -18446744073709551616
  %3288 = zext i64 %3283 to i128
  %3289 = or i128 %3287, %3288
  %3290 = mul i128 380, %3289
  %3291 = trunc i128 %3290 to i64
  store i64 %3291, i64* %RCX.i330, align 8
  %3292 = sext i64 %3291 to i128
  %3293 = icmp ne i128 %3292, %3290
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3294, i8* %3295, align 1
  %3296 = trunc i128 %3290 to i32
  %3297 = and i32 %3296, 255
  %3298 = call i32 @llvm.ctpop.i32(i32 %3297)
  %3299 = trunc i32 %3298 to i8
  %3300 = and i8 %3299, 1
  %3301 = xor i8 %3300, 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3301, i8* %3302, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3303, align 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3304, align 1
  %3305 = lshr i64 %3291, 63
  %3306 = trunc i64 %3305 to i8
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3306, i8* %3307, align 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3294, i8* %3308, align 1
  store %struct.Memory* %loadMem_43c912, %struct.Memory** %MEMORY
  %loadMem_43c919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %3314 to i64*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 7
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %RAX.i327
  %3319 = load i64, i64* %PC.i326
  %3320 = add i64 %3319, 3
  store i64 %3320, i64* %PC.i326
  store i64 %3318, i64* %RDX.i328, align 8
  store %struct.Memory* %loadMem_43c919, %struct.Memory** %MEMORY
  %loadMem_43c91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 5
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 7
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RDX.i325 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RDX.i325
  %3331 = load i64, i64* %RCX.i324
  %3332 = load i64, i64* %PC.i323
  %3333 = add i64 %3332, 3
  store i64 %3333, i64* %PC.i323
  %3334 = add i64 %3331, %3330
  store i64 %3334, i64* %RDX.i325, align 8
  %3335 = icmp ult i64 %3334, %3330
  %3336 = icmp ult i64 %3334, %3331
  %3337 = or i1 %3335, %3336
  %3338 = zext i1 %3337 to i8
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3338, i8* %3339, align 1
  %3340 = trunc i64 %3334 to i32
  %3341 = and i32 %3340, 255
  %3342 = call i32 @llvm.ctpop.i32(i32 %3341)
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  %3345 = xor i8 %3344, 1
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3345, i8* %3346, align 1
  %3347 = xor i64 %3331, %3330
  %3348 = xor i64 %3347, %3334
  %3349 = lshr i64 %3348, 4
  %3350 = trunc i64 %3349 to i8
  %3351 = and i8 %3350, 1
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3351, i8* %3352, align 1
  %3353 = icmp eq i64 %3334, 0
  %3354 = zext i1 %3353 to i8
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3354, i8* %3355, align 1
  %3356 = lshr i64 %3334, 63
  %3357 = trunc i64 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3357, i8* %3358, align 1
  %3359 = lshr i64 %3330, 63
  %3360 = lshr i64 %3331, 63
  %3361 = xor i64 %3356, %3359
  %3362 = xor i64 %3356, %3360
  %3363 = add i64 %3361, %3362
  %3364 = icmp eq i64 %3363, 2
  %3365 = zext i1 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3365, i8* %3366, align 1
  store %struct.Memory* %loadMem_43c91c, %struct.Memory** %MEMORY
  %loadMem_43c91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 7
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 9
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RSI.i322 = bitcast %union.anon* %3375 to i64*
  %3376 = load i64, i64* %RDX.i321
  %3377 = add i64 %3376, 60
  %3378 = load i64, i64* %PC.i320
  %3379 = add i64 %3378, 3
  store i64 %3379, i64* %PC.i320
  %3380 = inttoptr i64 %3377 to i32*
  %3381 = load i32, i32* %3380
  %3382 = zext i32 %3381 to i64
  store i64 %3382, i64* %RSI.i322, align 8
  store %struct.Memory* %loadMem_43c91f, %struct.Memory** %MEMORY
  %loadMem_43c922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 9
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %ESI.i318 = bitcast %union.anon* %3388 to i32*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 15
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RBP.i319
  %3393 = sub i64 %3392, 60
  %3394 = load i32, i32* %ESI.i318
  %3395 = zext i32 %3394 to i64
  %3396 = load i64, i64* %PC.i317
  %3397 = add i64 %3396, 3
  store i64 %3397, i64* %PC.i317
  %3398 = inttoptr i64 %3393 to i32*
  store i32 %3394, i32* %3398
  store %struct.Memory* %loadMem_43c922, %struct.Memory** %MEMORY
  %loadMem_43c925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 5
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 15
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %RBP.i316
  %3409 = sub i64 %3408, 52
  %3410 = load i64, i64* %PC.i314
  %3411 = add i64 %3410, 4
  store i64 %3411, i64* %PC.i314
  %3412 = inttoptr i64 %3409 to i32*
  %3413 = load i32, i32* %3412
  %3414 = sext i32 %3413 to i64
  store i64 %3414, i64* %RCX.i315, align 8
  store %struct.Memory* %loadMem_43c925, %struct.Memory** %MEMORY
  %loadMem_43c929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 33
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 5
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %RCX.i313
  %3422 = load i64, i64* %PC.i312
  %3423 = add i64 %3422, 7
  store i64 %3423, i64* %PC.i312
  %3424 = sext i64 %3421 to i128
  %3425 = and i128 %3424, -18446744073709551616
  %3426 = zext i64 %3421 to i128
  %3427 = or i128 %3425, %3426
  %3428 = mul i128 380, %3427
  %3429 = trunc i128 %3428 to i64
  store i64 %3429, i64* %RCX.i313, align 8
  %3430 = sext i64 %3429 to i128
  %3431 = icmp ne i128 %3430, %3428
  %3432 = zext i1 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3432, i8* %3433, align 1
  %3434 = trunc i128 %3428 to i32
  %3435 = and i32 %3434, 255
  %3436 = call i32 @llvm.ctpop.i32(i32 %3435)
  %3437 = trunc i32 %3436 to i8
  %3438 = and i8 %3437, 1
  %3439 = xor i8 %3438, 1
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3439, i8* %3440, align 1
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3441, align 1
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3442, align 1
  %3443 = lshr i64 %3429, 63
  %3444 = trunc i64 %3443 to i8
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3444, i8* %3445, align 1
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3432, i8* %3446, align 1
  store %struct.Memory* %loadMem_43c929, %struct.Memory** %MEMORY
  %loadMem_43c930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 1
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %3452 to i64*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 7
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %3455 to i64*
  %3456 = load i64, i64* %RAX.i310
  %3457 = load i64, i64* %PC.i309
  %3458 = add i64 %3457, 3
  store i64 %3458, i64* %PC.i309
  store i64 %3456, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_43c930, %struct.Memory** %MEMORY
  %loadMem_43c933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 5
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 7
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RDX.i308 = bitcast %union.anon* %3467 to i64*
  %3468 = load i64, i64* %RDX.i308
  %3469 = load i64, i64* %RCX.i307
  %3470 = load i64, i64* %PC.i306
  %3471 = add i64 %3470, 3
  store i64 %3471, i64* %PC.i306
  %3472 = add i64 %3469, %3468
  store i64 %3472, i64* %RDX.i308, align 8
  %3473 = icmp ult i64 %3472, %3468
  %3474 = icmp ult i64 %3472, %3469
  %3475 = or i1 %3473, %3474
  %3476 = zext i1 %3475 to i8
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3476, i8* %3477, align 1
  %3478 = trunc i64 %3472 to i32
  %3479 = and i32 %3478, 255
  %3480 = call i32 @llvm.ctpop.i32(i32 %3479)
  %3481 = trunc i32 %3480 to i8
  %3482 = and i8 %3481, 1
  %3483 = xor i8 %3482, 1
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3483, i8* %3484, align 1
  %3485 = xor i64 %3469, %3468
  %3486 = xor i64 %3485, %3472
  %3487 = lshr i64 %3486, 4
  %3488 = trunc i64 %3487 to i8
  %3489 = and i8 %3488, 1
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3489, i8* %3490, align 1
  %3491 = icmp eq i64 %3472, 0
  %3492 = zext i1 %3491 to i8
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3492, i8* %3493, align 1
  %3494 = lshr i64 %3472, 63
  %3495 = trunc i64 %3494 to i8
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3495, i8* %3496, align 1
  %3497 = lshr i64 %3468, 63
  %3498 = lshr i64 %3469, 63
  %3499 = xor i64 %3494, %3497
  %3500 = xor i64 %3494, %3498
  %3501 = add i64 %3499, %3500
  %3502 = icmp eq i64 %3501, 2
  %3503 = zext i1 %3502 to i8
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3503, i8* %3504, align 1
  store %struct.Memory* %loadMem_43c933, %struct.Memory** %MEMORY
  %loadMem_43c936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 7
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RDX.i304 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 9
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RSI.i305 = bitcast %union.anon* %3513 to i64*
  %3514 = load i64, i64* %RDX.i304
  %3515 = add i64 %3514, 180
  %3516 = load i64, i64* %PC.i303
  %3517 = add i64 %3516, 6
  store i64 %3517, i64* %PC.i303
  %3518 = inttoptr i64 %3515 to i32*
  %3519 = load i32, i32* %3518
  %3520 = zext i32 %3519 to i64
  store i64 %3520, i64* %RSI.i305, align 8
  store %struct.Memory* %loadMem_43c936, %struct.Memory** %MEMORY
  %loadMem_43c93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3522 = getelementptr inbounds %struct.GPR, %struct.GPR* %3521, i32 0, i32 33
  %3523 = getelementptr inbounds %struct.Reg, %struct.Reg* %3522, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3523 to i64*
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3525 = getelementptr inbounds %struct.GPR, %struct.GPR* %3524, i32 0, i32 9
  %3526 = getelementptr inbounds %struct.Reg, %struct.Reg* %3525, i32 0, i32 0
  %ESI.i301 = bitcast %union.anon* %3526 to i32*
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3528 = getelementptr inbounds %struct.GPR, %struct.GPR* %3527, i32 0, i32 15
  %3529 = getelementptr inbounds %struct.Reg, %struct.Reg* %3528, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %3529 to i64*
  %3530 = load i64, i64* %RBP.i302
  %3531 = sub i64 %3530, 64
  %3532 = load i32, i32* %ESI.i301
  %3533 = zext i32 %3532 to i64
  %3534 = load i64, i64* %PC.i300
  %3535 = add i64 %3534, 3
  store i64 %3535, i64* %PC.i300
  %3536 = inttoptr i64 %3531 to i32*
  store i32 %3532, i32* %3536
  store %struct.Memory* %loadMem_43c93c, %struct.Memory** %MEMORY
  %loadMem_43c93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 33
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 5
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 15
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %3545 to i64*
  %3546 = load i64, i64* %RBP.i299
  %3547 = sub i64 %3546, 52
  %3548 = load i64, i64* %PC.i297
  %3549 = add i64 %3548, 4
  store i64 %3549, i64* %PC.i297
  %3550 = inttoptr i64 %3547 to i32*
  %3551 = load i32, i32* %3550
  %3552 = sext i32 %3551 to i64
  store i64 %3552, i64* %RCX.i298, align 8
  store %struct.Memory* %loadMem_43c93f, %struct.Memory** %MEMORY
  %loadMem_43c943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 5
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %3558 to i64*
  %3559 = load i64, i64* %RCX.i296
  %3560 = load i64, i64* %PC.i295
  %3561 = add i64 %3560, 7
  store i64 %3561, i64* %PC.i295
  %3562 = sext i64 %3559 to i128
  %3563 = and i128 %3562, -18446744073709551616
  %3564 = zext i64 %3559 to i128
  %3565 = or i128 %3563, %3564
  %3566 = mul i128 380, %3565
  %3567 = trunc i128 %3566 to i64
  store i64 %3567, i64* %RCX.i296, align 8
  %3568 = sext i64 %3567 to i128
  %3569 = icmp ne i128 %3568, %3566
  %3570 = zext i1 %3569 to i8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3570, i8* %3571, align 1
  %3572 = trunc i128 %3566 to i32
  %3573 = and i32 %3572, 255
  %3574 = call i32 @llvm.ctpop.i32(i32 %3573)
  %3575 = trunc i32 %3574 to i8
  %3576 = and i8 %3575, 1
  %3577 = xor i8 %3576, 1
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3577, i8* %3578, align 1
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3579, align 1
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3580, align 1
  %3581 = lshr i64 %3567, 63
  %3582 = trunc i64 %3581 to i8
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3582, i8* %3583, align 1
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3570, i8* %3584, align 1
  store %struct.Memory* %loadMem_43c943, %struct.Memory** %MEMORY
  %loadMem_43c94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3586 = getelementptr inbounds %struct.GPR, %struct.GPR* %3585, i32 0, i32 33
  %3587 = getelementptr inbounds %struct.Reg, %struct.Reg* %3586, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3587 to i64*
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 1
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 5
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %3593 to i64*
  %3594 = load i64, i64* %RAX.i293
  %3595 = load i64, i64* %RCX.i294
  %3596 = load i64, i64* %PC.i292
  %3597 = add i64 %3596, 3
  store i64 %3597, i64* %PC.i292
  %3598 = add i64 %3595, %3594
  store i64 %3598, i64* %RAX.i293, align 8
  %3599 = icmp ult i64 %3598, %3594
  %3600 = icmp ult i64 %3598, %3595
  %3601 = or i1 %3599, %3600
  %3602 = zext i1 %3601 to i8
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3602, i8* %3603, align 1
  %3604 = trunc i64 %3598 to i32
  %3605 = and i32 %3604, 255
  %3606 = call i32 @llvm.ctpop.i32(i32 %3605)
  %3607 = trunc i32 %3606 to i8
  %3608 = and i8 %3607, 1
  %3609 = xor i8 %3608, 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3609, i8* %3610, align 1
  %3611 = xor i64 %3595, %3594
  %3612 = xor i64 %3611, %3598
  %3613 = lshr i64 %3612, 4
  %3614 = trunc i64 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3615, i8* %3616, align 1
  %3617 = icmp eq i64 %3598, 0
  %3618 = zext i1 %3617 to i8
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3618, i8* %3619, align 1
  %3620 = lshr i64 %3598, 63
  %3621 = trunc i64 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3621, i8* %3622, align 1
  %3623 = lshr i64 %3594, 63
  %3624 = lshr i64 %3595, 63
  %3625 = xor i64 %3620, %3623
  %3626 = xor i64 %3620, %3624
  %3627 = add i64 %3625, %3626
  %3628 = icmp eq i64 %3627, 2
  %3629 = zext i1 %3628 to i8
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3629, i8* %3630, align 1
  store %struct.Memory* %loadMem_43c94a, %struct.Memory** %MEMORY
  %loadMem_43c94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 33
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 1
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %3636 to i64*
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 9
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %RSI.i291 = bitcast %union.anon* %3639 to i64*
  %3640 = load i64, i64* %RAX.i290
  %3641 = add i64 %3640, 140
  %3642 = load i64, i64* %PC.i289
  %3643 = add i64 %3642, 6
  store i64 %3643, i64* %PC.i289
  %3644 = inttoptr i64 %3641 to i32*
  %3645 = load i32, i32* %3644
  %3646 = zext i32 %3645 to i64
  store i64 %3646, i64* %RSI.i291, align 8
  store %struct.Memory* %loadMem_43c94d, %struct.Memory** %MEMORY
  %loadMem_43c953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 9
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3652 to i32*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 15
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3655 to i64*
  %3656 = load i64, i64* %RBP.i288
  %3657 = sub i64 %3656, 68
  %3658 = load i32, i32* %ESI.i
  %3659 = zext i32 %3658 to i64
  %3660 = load i64, i64* %PC.i287
  %3661 = add i64 %3660, 3
  store i64 %3661, i64* %PC.i287
  %3662 = inttoptr i64 %3657 to i32*
  store i32 %3658, i32* %3662
  store %struct.Memory* %loadMem_43c953, %struct.Memory** %MEMORY
  %loadMem_43c956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %PC.i286
  %3667 = add i64 %3666, 32
  %3668 = load i64, i64* %PC.i286
  %3669 = add i64 %3668, 5
  store i64 %3669, i64* %PC.i286
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3667, i64* %3670, align 8
  store %struct.Memory* %loadMem_43c956, %struct.Memory** %MEMORY
  br label %block_.L_43c976

block_.L_43c95b:                                  ; preds = %block_43c8df
  %loadMem_43c95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 9
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RSI.i284 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 15
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %RBP.i285
  %3681 = sub i64 %3680, 56
  %3682 = load i64, i64* %PC.i283
  %3683 = add i64 %3682, 4
  store i64 %3683, i64* %PC.i283
  store i64 %3681, i64* %RSI.i284, align 8
  store %struct.Memory* %loadMem_43c95b, %struct.Memory** %MEMORY
  %loadMem_43c95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 7
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 15
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %3692 to i64*
  %3693 = load i64, i64* %RBP.i282
  %3694 = sub i64 %3693, 60
  %3695 = load i64, i64* %PC.i280
  %3696 = add i64 %3695, 4
  store i64 %3696, i64* %PC.i280
  store i64 %3694, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_43c95f, %struct.Memory** %MEMORY
  %loadMem_43c963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 33
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3699 to i64*
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 5
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 15
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %3705 to i64*
  %3706 = load i64, i64* %RBP.i279
  %3707 = sub i64 %3706, 64
  %3708 = load i64, i64* %PC.i277
  %3709 = add i64 %3708, 4
  store i64 %3709, i64* %PC.i277
  store i64 %3707, i64* %RCX.i278, align 8
  store %struct.Memory* %loadMem_43c963, %struct.Memory** %MEMORY
  %loadMem_43c967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 33
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 15
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 17
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3718 to i64*
  %3719 = load i64, i64* %RBP.i276
  %3720 = sub i64 %3719, 68
  %3721 = load i64, i64* %PC.i275
  %3722 = add i64 %3721, 4
  store i64 %3722, i64* %PC.i275
  store i64 %3720, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_43c967, %struct.Memory** %MEMORY
  %loadMem_43c96b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 33
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3725 to i64*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 11
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RDI.i273 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 15
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %RBP.i274
  %3733 = sub i64 %3732, 52
  %3734 = load i64, i64* %PC.i272
  %3735 = add i64 %3734, 3
  store i64 %3735, i64* %PC.i272
  %3736 = inttoptr i64 %3733 to i32*
  %3737 = load i32, i32* %3736
  %3738 = zext i32 %3737 to i64
  store i64 %3738, i64* %RDI.i273, align 8
  store %struct.Memory* %loadMem_43c96b, %struct.Memory** %MEMORY
  %loadMem1_43c96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3741 to i64*
  %3742 = load i64, i64* %PC.i271
  %3743 = add i64 %3742, 188354
  %3744 = load i64, i64* %PC.i271
  %3745 = add i64 %3744, 5
  %3746 = load i64, i64* %PC.i271
  %3747 = add i64 %3746, 5
  store i64 %3747, i64* %PC.i271
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3749 = load i64, i64* %3748, align 8
  %3750 = add i64 %3749, -8
  %3751 = inttoptr i64 %3750 to i64*
  store i64 %3745, i64* %3751
  store i64 %3750, i64* %3748, align 8
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3743, i64* %3752, align 8
  store %struct.Memory* %loadMem1_43c96e, %struct.Memory** %MEMORY
  %loadMem2_43c96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43c96e = load i64, i64* %3
  %call2_43c96e = call %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* %0, i64 %loadPC_43c96e, %struct.Memory* %loadMem2_43c96e)
  store %struct.Memory* %call2_43c96e, %struct.Memory** %MEMORY
  %loadMem_43c973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 33
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3755 to i64*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 1
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %3758 to i32*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 15
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %3761 to i64*
  %3762 = load i64, i64* %RBP.i270
  %3763 = sub i64 %3762, 96
  %3764 = load i32, i32* %EAX.i269
  %3765 = zext i32 %3764 to i64
  %3766 = load i64, i64* %PC.i268
  %3767 = add i64 %3766, 3
  store i64 %3767, i64* %PC.i268
  %3768 = inttoptr i64 %3763 to i32*
  store i32 %3764, i32* %3768
  store %struct.Memory* %loadMem_43c973, %struct.Memory** %MEMORY
  br label %block_.L_43c976

block_.L_43c976:                                  ; preds = %block_.L_43c95b, %block_43c8ed
  %loadMem_43c976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 33
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %3771 to i64*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 15
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3774 to i64*
  %3775 = load i64, i64* %RBP.i267
  %3776 = sub i64 %3775, 56
  %3777 = load i64, i64* %PC.i266
  %3778 = add i64 %3777, 4
  store i64 %3778, i64* %PC.i266
  %3779 = inttoptr i64 %3776 to i32*
  %3780 = load i32, i32* %3779
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3781, align 1
  %3782 = and i32 %3780, 255
  %3783 = call i32 @llvm.ctpop.i32(i32 %3782)
  %3784 = trunc i32 %3783 to i8
  %3785 = and i8 %3784, 1
  %3786 = xor i8 %3785, 1
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3786, i8* %3787, align 1
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3788, align 1
  %3789 = icmp eq i32 %3780, 0
  %3790 = zext i1 %3789 to i8
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3790, i8* %3791, align 1
  %3792 = lshr i32 %3780, 31
  %3793 = trunc i32 %3792 to i8
  %3794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3793, i8* %3794, align 1
  %3795 = lshr i32 %3780, 31
  %3796 = xor i32 %3792, %3795
  %3797 = add i32 %3796, %3795
  %3798 = icmp eq i32 %3797, 2
  %3799 = zext i1 %3798 to i8
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3799, i8* %3800, align 1
  store %struct.Memory* %loadMem_43c976, %struct.Memory** %MEMORY
  %loadMem_43c97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 33
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %PC.i265
  %3805 = add i64 %3804, 24
  %3806 = load i64, i64* %PC.i265
  %3807 = add i64 %3806, 6
  %3808 = load i64, i64* %PC.i265
  %3809 = add i64 %3808, 6
  store i64 %3809, i64* %PC.i265
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3811 = load i8, i8* %3810, align 1
  %3812 = icmp eq i8 %3811, 0
  %3813 = zext i1 %3812 to i8
  store i8 %3813, i8* %BRANCH_TAKEN, align 1
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3815 = select i1 %3812, i64 %3805, i64 %3807
  store i64 %3815, i64* %3814, align 8
  store %struct.Memory* %loadMem_43c97a, %struct.Memory** %MEMORY
  %loadBr_43c97a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c97a = icmp eq i8 %loadBr_43c97a, 1
  br i1 %cmpBr_43c97a, label %block_.L_43c992, label %block_43c980

block_43c980:                                     ; preds = %block_.L_43c976
  %loadMem_43c980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3820 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3819, i64 0, i64 0
  %YMM0.i264 = bitcast %union.VectorReg* %3820 to %"class.std::bitset"*
  %3821 = bitcast %"class.std::bitset"* %YMM0.i264 to i8*
  %3822 = load i64, i64* %PC.i263
  %3823 = add i64 %3822, ptrtoint (%G_0xa67ac__rip__type* @G_0xa67ac__rip_ to i64)
  %3824 = load i64, i64* %PC.i263
  %3825 = add i64 %3824, 8
  store i64 %3825, i64* %PC.i263
  %3826 = inttoptr i64 %3823 to float*
  %3827 = load float, float* %3826
  %3828 = bitcast i8* %3821 to float*
  store float %3827, float* %3828, align 1
  %3829 = getelementptr inbounds i8, i8* %3821, i64 4
  %3830 = bitcast i8* %3829 to float*
  store float 0.000000e+00, float* %3830, align 1
  %3831 = getelementptr inbounds i8, i8* %3821, i64 8
  %3832 = bitcast i8* %3831 to float*
  store float 0.000000e+00, float* %3832, align 1
  %3833 = getelementptr inbounds i8, i8* %3821, i64 12
  %3834 = bitcast i8* %3833 to float*
  store float 0.000000e+00, float* %3834, align 1
  store %struct.Memory* %loadMem_43c980, %struct.Memory** %MEMORY
  %loadMem_43c988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 15
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3841, i64 0, i64 0
  %XMM0.i262 = bitcast %union.VectorReg* %3842 to %union.vec128_t*
  %3843 = load i64, i64* %RBP.i261
  %3844 = sub i64 %3843, 44
  %3845 = bitcast %union.vec128_t* %XMM0.i262 to i8*
  %3846 = load i64, i64* %PC.i260
  %3847 = add i64 %3846, 5
  store i64 %3847, i64* %PC.i260
  %3848 = bitcast i8* %3845 to <2 x float>*
  %3849 = load <2 x float>, <2 x float>* %3848, align 1
  %3850 = extractelement <2 x float> %3849, i32 0
  %3851 = inttoptr i64 %3844 to float*
  store float %3850, float* %3851
  store %struct.Memory* %loadMem_43c988, %struct.Memory** %MEMORY
  %loadMem_43c98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 33
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3854 to i64*
  %3855 = load i64, i64* %PC.i259
  %3856 = add i64 %3855, 200
  %3857 = load i64, i64* %PC.i259
  %3858 = add i64 %3857, 5
  store i64 %3858, i64* %PC.i259
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3856, i64* %3859, align 8
  store %struct.Memory* %loadMem_43c98d, %struct.Memory** %MEMORY
  br label %block_.L_43ca55

block_.L_43c992:                                  ; preds = %block_.L_43c976
  %loadMem_43c992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 33
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3862 to i64*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 15
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3865 to i64*
  %3866 = load i64, i64* %RBP.i258
  %3867 = sub i64 %3866, 64
  %3868 = load i64, i64* %PC.i257
  %3869 = add i64 %3868, 4
  store i64 %3869, i64* %PC.i257
  %3870 = inttoptr i64 %3867 to i32*
  %3871 = load i32, i32* %3870
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3872, align 1
  %3873 = and i32 %3871, 255
  %3874 = call i32 @llvm.ctpop.i32(i32 %3873)
  %3875 = trunc i32 %3874 to i8
  %3876 = and i8 %3875, 1
  %3877 = xor i8 %3876, 1
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3877, i8* %3878, align 1
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3879, align 1
  %3880 = icmp eq i32 %3871, 0
  %3881 = zext i1 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3881, i8* %3882, align 1
  %3883 = lshr i32 %3871, 31
  %3884 = trunc i32 %3883 to i8
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3884, i8* %3885, align 1
  %3886 = lshr i32 %3871, 31
  %3887 = xor i32 %3883, %3886
  %3888 = add i32 %3887, %3886
  %3889 = icmp eq i32 %3888, 2
  %3890 = zext i1 %3889 to i8
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3890, i8* %3891, align 1
  store %struct.Memory* %loadMem_43c992, %struct.Memory** %MEMORY
  %loadMem_43c996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 33
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3894 to i64*
  %3895 = load i64, i64* %PC.i256
  %3896 = add i64 %3895, 19
  %3897 = load i64, i64* %PC.i256
  %3898 = add i64 %3897, 6
  %3899 = load i64, i64* %PC.i256
  %3900 = add i64 %3899, 6
  store i64 %3900, i64* %PC.i256
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3902 = load i8, i8* %3901, align 1
  %3903 = icmp eq i8 %3902, 0
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %BRANCH_TAKEN, align 1
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3906 = select i1 %3903, i64 %3896, i64 %3898
  store i64 %3906, i64* %3905, align 8
  store %struct.Memory* %loadMem_43c996, %struct.Memory** %MEMORY
  %loadBr_43c996 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c996 = icmp eq i8 %loadBr_43c996, 1
  br i1 %cmpBr_43c996, label %block_.L_43c9a9, label %block_43c99c

block_43c99c:                                     ; preds = %block_.L_43c992
  %loadMem_43c99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3908 = getelementptr inbounds %struct.GPR, %struct.GPR* %3907, i32 0, i32 33
  %3909 = getelementptr inbounds %struct.Reg, %struct.Reg* %3908, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3909 to i64*
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3910, i64 0, i64 0
  %YMM0.i254 = bitcast %union.VectorReg* %3911 to %"class.std::bitset"*
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3913 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3912, i64 0, i64 0
  %XMM0.i255 = bitcast %union.VectorReg* %3913 to %union.vec128_t*
  %3914 = bitcast %"class.std::bitset"* %YMM0.i254 to i8*
  %3915 = bitcast %"class.std::bitset"* %YMM0.i254 to i8*
  %3916 = bitcast %union.vec128_t* %XMM0.i255 to i8*
  %3917 = load i64, i64* %PC.i253
  %3918 = add i64 %3917, 3
  store i64 %3918, i64* %PC.i253
  %3919 = bitcast i8* %3915 to i64*
  %3920 = load i64, i64* %3919, align 1
  %3921 = getelementptr inbounds i8, i8* %3915, i64 8
  %3922 = bitcast i8* %3921 to i64*
  %3923 = load i64, i64* %3922, align 1
  %3924 = bitcast i8* %3916 to i64*
  %3925 = load i64, i64* %3924, align 1
  %3926 = getelementptr inbounds i8, i8* %3916, i64 8
  %3927 = bitcast i8* %3926 to i64*
  %3928 = load i64, i64* %3927, align 1
  %3929 = xor i64 %3925, %3920
  %3930 = xor i64 %3928, %3923
  %3931 = trunc i64 %3929 to i32
  %3932 = lshr i64 %3929, 32
  %3933 = trunc i64 %3932 to i32
  %3934 = bitcast i8* %3914 to i32*
  store i32 %3931, i32* %3934, align 1
  %3935 = getelementptr inbounds i8, i8* %3914, i64 4
  %3936 = bitcast i8* %3935 to i32*
  store i32 %3933, i32* %3936, align 1
  %3937 = trunc i64 %3930 to i32
  %3938 = getelementptr inbounds i8, i8* %3914, i64 8
  %3939 = bitcast i8* %3938 to i32*
  store i32 %3937, i32* %3939, align 1
  %3940 = lshr i64 %3930, 32
  %3941 = trunc i64 %3940 to i32
  %3942 = getelementptr inbounds i8, i8* %3914, i64 12
  %3943 = bitcast i8* %3942 to i32*
  store i32 %3941, i32* %3943, align 1
  store %struct.Memory* %loadMem_43c99c, %struct.Memory** %MEMORY
  %loadMem_43c99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 15
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %3949 to i64*
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3951 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3950, i64 0, i64 0
  %XMM0.i252 = bitcast %union.VectorReg* %3951 to %union.vec128_t*
  %3952 = load i64, i64* %RBP.i251
  %3953 = sub i64 %3952, 44
  %3954 = bitcast %union.vec128_t* %XMM0.i252 to i8*
  %3955 = load i64, i64* %PC.i250
  %3956 = add i64 %3955, 5
  store i64 %3956, i64* %PC.i250
  %3957 = bitcast i8* %3954 to <2 x float>*
  %3958 = load <2 x float>, <2 x float>* %3957, align 1
  %3959 = extractelement <2 x float> %3958, i32 0
  %3960 = inttoptr i64 %3953 to float*
  store float %3959, float* %3960
  store %struct.Memory* %loadMem_43c99f, %struct.Memory** %MEMORY
  %loadMem_43c9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3963 to i64*
  %3964 = load i64, i64* %PC.i249
  %3965 = add i64 %3964, 172
  %3966 = load i64, i64* %PC.i249
  %3967 = add i64 %3966, 5
  store i64 %3967, i64* %PC.i249
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3965, i64* %3968, align 8
  store %struct.Memory* %loadMem_43c9a4, %struct.Memory** %MEMORY
  br label %block_.L_43ca50

block_.L_43c9a9:                                  ; preds = %block_.L_43c992
  %loadMem_43c9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 33
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 15
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RBP.i248
  %3976 = sub i64 %3975, 56
  %3977 = load i64, i64* %PC.i247
  %3978 = add i64 %3977, 4
  store i64 %3978, i64* %PC.i247
  %3979 = inttoptr i64 %3976 to i32*
  %3980 = load i32, i32* %3979
  %3981 = sub i32 %3980, 5
  %3982 = icmp ult i32 %3980, 5
  %3983 = zext i1 %3982 to i8
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3983, i8* %3984, align 1
  %3985 = and i32 %3981, 255
  %3986 = call i32 @llvm.ctpop.i32(i32 %3985)
  %3987 = trunc i32 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = xor i8 %3988, 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3989, i8* %3990, align 1
  %3991 = xor i32 %3980, 5
  %3992 = xor i32 %3991, %3981
  %3993 = lshr i32 %3992, 4
  %3994 = trunc i32 %3993 to i8
  %3995 = and i8 %3994, 1
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3995, i8* %3996, align 1
  %3997 = icmp eq i32 %3981, 0
  %3998 = zext i1 %3997 to i8
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3998, i8* %3999, align 1
  %4000 = lshr i32 %3981, 31
  %4001 = trunc i32 %4000 to i8
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4001, i8* %4002, align 1
  %4003 = lshr i32 %3980, 31
  %4004 = xor i32 %4000, %4003
  %4005 = add i32 %4004, %4003
  %4006 = icmp eq i32 %4005, 2
  %4007 = zext i1 %4006 to i8
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4007, i8* %4008, align 1
  store %struct.Memory* %loadMem_43c9a9, %struct.Memory** %MEMORY
  %loadMem_43c9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 33
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %4011 to i64*
  %4012 = load i64, i64* %PC.i246
  %4013 = add i64 %4012, 34
  %4014 = load i64, i64* %PC.i246
  %4015 = add i64 %4014, 6
  %4016 = load i64, i64* %PC.i246
  %4017 = add i64 %4016, 6
  store i64 %4017, i64* %PC.i246
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4019 = load i8, i8* %4018, align 1
  %4020 = icmp eq i8 %4019, 0
  %4021 = zext i1 %4020 to i8
  store i8 %4021, i8* %BRANCH_TAKEN, align 1
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4023 = select i1 %4020, i64 %4013, i64 %4015
  store i64 %4023, i64* %4022, align 8
  store %struct.Memory* %loadMem_43c9ad, %struct.Memory** %MEMORY
  %loadBr_43c9ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c9ad = icmp eq i8 %loadBr_43c9ad, 1
  br i1 %cmpBr_43c9ad, label %block_.L_43c9cf, label %block_43c9b3

block_43c9b3:                                     ; preds = %block_.L_43c9a9
  %loadMem_43c9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4026 to i64*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4028 = getelementptr inbounds %struct.GPR, %struct.GPR* %4027, i32 0, i32 15
  %4029 = getelementptr inbounds %struct.Reg, %struct.Reg* %4028, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %4029 to i64*
  %4030 = load i64, i64* %RBP.i245
  %4031 = sub i64 %4030, 64
  %4032 = load i64, i64* %PC.i244
  %4033 = add i64 %4032, 4
  store i64 %4033, i64* %PC.i244
  %4034 = inttoptr i64 %4031 to i32*
  %4035 = load i32, i32* %4034
  %4036 = sub i32 %4035, 5
  %4037 = icmp ult i32 %4035, 5
  %4038 = zext i1 %4037 to i8
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4038, i8* %4039, align 1
  %4040 = and i32 %4036, 255
  %4041 = call i32 @llvm.ctpop.i32(i32 %4040)
  %4042 = trunc i32 %4041 to i8
  %4043 = and i8 %4042, 1
  %4044 = xor i8 %4043, 1
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4044, i8* %4045, align 1
  %4046 = xor i32 %4035, 5
  %4047 = xor i32 %4046, %4036
  %4048 = lshr i32 %4047, 4
  %4049 = trunc i32 %4048 to i8
  %4050 = and i8 %4049, 1
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4050, i8* %4051, align 1
  %4052 = icmp eq i32 %4036, 0
  %4053 = zext i1 %4052 to i8
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4053, i8* %4054, align 1
  %4055 = lshr i32 %4036, 31
  %4056 = trunc i32 %4055 to i8
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4056, i8* %4057, align 1
  %4058 = lshr i32 %4035, 31
  %4059 = xor i32 %4055, %4058
  %4060 = add i32 %4059, %4058
  %4061 = icmp eq i32 %4060, 2
  %4062 = zext i1 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4062, i8* %4063, align 1
  store %struct.Memory* %loadMem_43c9b3, %struct.Memory** %MEMORY
  %loadMem_43c9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %PC.i243
  %4068 = add i64 %4067, 24
  %4069 = load i64, i64* %PC.i243
  %4070 = add i64 %4069, 6
  %4071 = load i64, i64* %PC.i243
  %4072 = add i64 %4071, 6
  store i64 %4072, i64* %PC.i243
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4074 = load i8, i8* %4073, align 1
  %4075 = icmp eq i8 %4074, 0
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %BRANCH_TAKEN, align 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4078 = select i1 %4075, i64 %4068, i64 %4070
  store i64 %4078, i64* %4077, align 8
  store %struct.Memory* %loadMem_43c9b7, %struct.Memory** %MEMORY
  %loadBr_43c9b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c9b7 = icmp eq i8 %loadBr_43c9b7, 1
  br i1 %cmpBr_43c9b7, label %block_.L_43c9cf, label %block_43c9bd

block_43c9bd:                                     ; preds = %block_43c9b3
  %loadMem_43c9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4082, i64 0, i64 0
  %YMM0.i242 = bitcast %union.VectorReg* %4083 to %"class.std::bitset"*
  %4084 = bitcast %"class.std::bitset"* %YMM0.i242 to i8*
  %4085 = load i64, i64* %PC.i241
  %4086 = add i64 %4085, ptrtoint (%G_0xa6747__rip__type* @G_0xa6747__rip_ to i64)
  %4087 = load i64, i64* %PC.i241
  %4088 = add i64 %4087, 8
  store i64 %4088, i64* %PC.i241
  %4089 = inttoptr i64 %4086 to float*
  %4090 = load float, float* %4089
  %4091 = bitcast i8* %4084 to float*
  store float %4090, float* %4091, align 1
  %4092 = getelementptr inbounds i8, i8* %4084, i64 4
  %4093 = bitcast i8* %4092 to float*
  store float 0.000000e+00, float* %4093, align 1
  %4094 = getelementptr inbounds i8, i8* %4084, i64 8
  %4095 = bitcast i8* %4094 to float*
  store float 0.000000e+00, float* %4095, align 1
  %4096 = getelementptr inbounds i8, i8* %4084, i64 12
  %4097 = bitcast i8* %4096 to float*
  store float 0.000000e+00, float* %4097, align 1
  store %struct.Memory* %loadMem_43c9bd, %struct.Memory** %MEMORY
  %loadMem_43c9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4100 to i64*
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 15
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4104, i64 0, i64 0
  %XMM0.i240 = bitcast %union.VectorReg* %4105 to %union.vec128_t*
  %4106 = load i64, i64* %RBP.i239
  %4107 = sub i64 %4106, 44
  %4108 = bitcast %union.vec128_t* %XMM0.i240 to i8*
  %4109 = load i64, i64* %PC.i238
  %4110 = add i64 %4109, 5
  store i64 %4110, i64* %PC.i238
  %4111 = bitcast i8* %4108 to <2 x float>*
  %4112 = load <2 x float>, <2 x float>* %4111, align 1
  %4113 = extractelement <2 x float> %4112, i32 0
  %4114 = inttoptr i64 %4107 to float*
  store float %4113, float* %4114
  store %struct.Memory* %loadMem_43c9c5, %struct.Memory** %MEMORY
  %loadMem_43c9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 33
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %PC.i237
  %4119 = add i64 %4118, 129
  %4120 = load i64, i64* %PC.i237
  %4121 = add i64 %4120, 5
  store i64 %4121, i64* %PC.i237
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4119, i64* %4122, align 8
  store %struct.Memory* %loadMem_43c9ca, %struct.Memory** %MEMORY
  br label %block_.L_43ca4b

block_.L_43c9cf:                                  ; preds = %block_43c9b3, %block_.L_43c9a9
  %loadMem_43c9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 33
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 15
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %RBP.i236
  %4130 = sub i64 %4129, 56
  %4131 = load i64, i64* %PC.i235
  %4132 = add i64 %4131, 4
  store i64 %4132, i64* %PC.i235
  %4133 = inttoptr i64 %4130 to i32*
  %4134 = load i32, i32* %4133
  %4135 = sub i32 %4134, 5
  %4136 = icmp ult i32 %4134, 5
  %4137 = zext i1 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4137, i8* %4138, align 1
  %4139 = and i32 %4135, 255
  %4140 = call i32 @llvm.ctpop.i32(i32 %4139)
  %4141 = trunc i32 %4140 to i8
  %4142 = and i8 %4141, 1
  %4143 = xor i8 %4142, 1
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4143, i8* %4144, align 1
  %4145 = xor i32 %4134, 5
  %4146 = xor i32 %4145, %4135
  %4147 = lshr i32 %4146, 4
  %4148 = trunc i32 %4147 to i8
  %4149 = and i8 %4148, 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4149, i8* %4150, align 1
  %4151 = icmp eq i32 %4135, 0
  %4152 = zext i1 %4151 to i8
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4152, i8* %4153, align 1
  %4154 = lshr i32 %4135, 31
  %4155 = trunc i32 %4154 to i8
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4155, i8* %4156, align 1
  %4157 = lshr i32 %4134, 31
  %4158 = xor i32 %4154, %4157
  %4159 = add i32 %4158, %4157
  %4160 = icmp eq i32 %4159, 2
  %4161 = zext i1 %4160 to i8
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4161, i8* %4162, align 1
  store %struct.Memory* %loadMem_43c9cf, %struct.Memory** %MEMORY
  %loadMem_43c9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4165 to i64*
  %4166 = load i64, i64* %PC.i234
  %4167 = add i64 %4166, 34
  %4168 = load i64, i64* %PC.i234
  %4169 = add i64 %4168, 6
  %4170 = load i64, i64* %PC.i234
  %4171 = add i64 %4170, 6
  store i64 %4171, i64* %PC.i234
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4173 = load i8, i8* %4172, align 1
  %4174 = icmp eq i8 %4173, 0
  %4175 = zext i1 %4174 to i8
  store i8 %4175, i8* %BRANCH_TAKEN, align 1
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4177 = select i1 %4174, i64 %4167, i64 %4169
  store i64 %4177, i64* %4176, align 8
  store %struct.Memory* %loadMem_43c9d3, %struct.Memory** %MEMORY
  %loadBr_43c9d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c9d3 = icmp eq i8 %loadBr_43c9d3, 1
  br i1 %cmpBr_43c9d3, label %block_.L_43c9f5, label %block_43c9d9

block_43c9d9:                                     ; preds = %block_.L_43c9cf
  %loadMem_43c9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 33
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4180 to i64*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 15
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %RBP.i233
  %4185 = sub i64 %4184, 64
  %4186 = load i64, i64* %PC.i232
  %4187 = add i64 %4186, 4
  store i64 %4187, i64* %PC.i232
  %4188 = inttoptr i64 %4185 to i32*
  %4189 = load i32, i32* %4188
  %4190 = sub i32 %4189, 5
  %4191 = icmp ult i32 %4189, 5
  %4192 = zext i1 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4192, i8* %4193, align 1
  %4194 = and i32 %4190, 255
  %4195 = call i32 @llvm.ctpop.i32(i32 %4194)
  %4196 = trunc i32 %4195 to i8
  %4197 = and i8 %4196, 1
  %4198 = xor i8 %4197, 1
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4198, i8* %4199, align 1
  %4200 = xor i32 %4189, 5
  %4201 = xor i32 %4200, %4190
  %4202 = lshr i32 %4201, 4
  %4203 = trunc i32 %4202 to i8
  %4204 = and i8 %4203, 1
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4204, i8* %4205, align 1
  %4206 = icmp eq i32 %4190, 0
  %4207 = zext i1 %4206 to i8
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4207, i8* %4208, align 1
  %4209 = lshr i32 %4190, 31
  %4210 = trunc i32 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4210, i8* %4211, align 1
  %4212 = lshr i32 %4189, 31
  %4213 = xor i32 %4209, %4212
  %4214 = add i32 %4213, %4212
  %4215 = icmp eq i32 %4214, 2
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4216, i8* %4217, align 1
  store %struct.Memory* %loadMem_43c9d9, %struct.Memory** %MEMORY
  %loadMem_43c9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 33
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4220 to i64*
  %4221 = load i64, i64* %PC.i231
  %4222 = add i64 %4221, 24
  %4223 = load i64, i64* %PC.i231
  %4224 = add i64 %4223, 6
  %4225 = load i64, i64* %PC.i231
  %4226 = add i64 %4225, 6
  store i64 %4226, i64* %PC.i231
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4228 = load i8, i8* %4227, align 1
  store i8 %4228, i8* %BRANCH_TAKEN, align 1
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4230 = icmp ne i8 %4228, 0
  %4231 = select i1 %4230, i64 %4222, i64 %4224
  store i64 %4231, i64* %4229, align 8
  store %struct.Memory* %loadMem_43c9dd, %struct.Memory** %MEMORY
  %loadBr_43c9dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c9dd = icmp eq i8 %loadBr_43c9dd, 1
  br i1 %cmpBr_43c9dd, label %block_.L_43c9f5, label %block_43c9e3

block_43c9e3:                                     ; preds = %block_43c9d9
  %loadMem_43c9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4235, i64 0, i64 0
  %YMM0.i230 = bitcast %union.VectorReg* %4236 to %"class.std::bitset"*
  %4237 = bitcast %"class.std::bitset"* %YMM0.i230 to i8*
  %4238 = load i64, i64* %PC.i229
  %4239 = add i64 %4238, ptrtoint (%G_0xa6761__rip__type* @G_0xa6761__rip_ to i64)
  %4240 = load i64, i64* %PC.i229
  %4241 = add i64 %4240, 8
  store i64 %4241, i64* %PC.i229
  %4242 = inttoptr i64 %4239 to float*
  %4243 = load float, float* %4242
  %4244 = bitcast i8* %4237 to float*
  store float %4243, float* %4244, align 1
  %4245 = getelementptr inbounds i8, i8* %4237, i64 4
  %4246 = bitcast i8* %4245 to float*
  store float 0.000000e+00, float* %4246, align 1
  %4247 = getelementptr inbounds i8, i8* %4237, i64 8
  %4248 = bitcast i8* %4247 to float*
  store float 0.000000e+00, float* %4248, align 1
  %4249 = getelementptr inbounds i8, i8* %4237, i64 12
  %4250 = bitcast i8* %4249 to float*
  store float 0.000000e+00, float* %4250, align 1
  store %struct.Memory* %loadMem_43c9e3, %struct.Memory** %MEMORY
  %loadMem_43c9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 15
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4258 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4257, i64 0, i64 0
  %XMM0.i228 = bitcast %union.VectorReg* %4258 to %union.vec128_t*
  %4259 = load i64, i64* %RBP.i227
  %4260 = sub i64 %4259, 44
  %4261 = bitcast %union.vec128_t* %XMM0.i228 to i8*
  %4262 = load i64, i64* %PC.i226
  %4263 = add i64 %4262, 5
  store i64 %4263, i64* %PC.i226
  %4264 = bitcast i8* %4261 to <2 x float>*
  %4265 = load <2 x float>, <2 x float>* %4264, align 1
  %4266 = extractelement <2 x float> %4265, i32 0
  %4267 = inttoptr i64 %4260 to float*
  store float %4266, float* %4267
  store %struct.Memory* %loadMem_43c9eb, %struct.Memory** %MEMORY
  %loadMem_43c9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 33
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4270 to i64*
  %4271 = load i64, i64* %PC.i225
  %4272 = add i64 %4271, 86
  %4273 = load i64, i64* %PC.i225
  %4274 = add i64 %4273, 5
  store i64 %4274, i64* %PC.i225
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4272, i64* %4275, align 8
  store %struct.Memory* %loadMem_43c9f0, %struct.Memory** %MEMORY
  br label %block_.L_43ca46

block_.L_43c9f5:                                  ; preds = %block_43c9d9, %block_.L_43c9cf
  %loadMem_43c9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 33
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4278 to i64*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 15
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %4281 to i64*
  %4282 = load i64, i64* %RBP.i224
  %4283 = sub i64 %4282, 56
  %4284 = load i64, i64* %PC.i223
  %4285 = add i64 %4284, 4
  store i64 %4285, i64* %PC.i223
  %4286 = inttoptr i64 %4283 to i32*
  %4287 = load i32, i32* %4286
  %4288 = sub i32 %4287, 5
  %4289 = icmp ult i32 %4287, 5
  %4290 = zext i1 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4290, i8* %4291, align 1
  %4292 = and i32 %4288, 255
  %4293 = call i32 @llvm.ctpop.i32(i32 %4292)
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  %4296 = xor i8 %4295, 1
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4296, i8* %4297, align 1
  %4298 = xor i32 %4287, 5
  %4299 = xor i32 %4298, %4288
  %4300 = lshr i32 %4299, 4
  %4301 = trunc i32 %4300 to i8
  %4302 = and i8 %4301, 1
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4302, i8* %4303, align 1
  %4304 = icmp eq i32 %4288, 0
  %4305 = zext i1 %4304 to i8
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4305, i8* %4306, align 1
  %4307 = lshr i32 %4288, 31
  %4308 = trunc i32 %4307 to i8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4308, i8* %4309, align 1
  %4310 = lshr i32 %4287, 31
  %4311 = xor i32 %4307, %4310
  %4312 = add i32 %4311, %4310
  %4313 = icmp eq i32 %4312, 2
  %4314 = zext i1 %4313 to i8
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4314, i8* %4315, align 1
  store %struct.Memory* %loadMem_43c9f5, %struct.Memory** %MEMORY
  %loadMem_43c9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %4318 to i64*
  %4319 = load i64, i64* %PC.i222
  %4320 = add i64 %4319, 34
  %4321 = load i64, i64* %PC.i222
  %4322 = add i64 %4321, 6
  %4323 = load i64, i64* %PC.i222
  %4324 = add i64 %4323, 6
  store i64 %4324, i64* %PC.i222
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4326 = load i8, i8* %4325, align 1
  store i8 %4326, i8* %BRANCH_TAKEN, align 1
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4328 = icmp ne i8 %4326, 0
  %4329 = select i1 %4328, i64 %4320, i64 %4322
  store i64 %4329, i64* %4327, align 8
  store %struct.Memory* %loadMem_43c9f9, %struct.Memory** %MEMORY
  %loadBr_43c9f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43c9f9 = icmp eq i8 %loadBr_43c9f9, 1
  br i1 %cmpBr_43c9f9, label %block_.L_43ca1b, label %block_43c9ff

block_43c9ff:                                     ; preds = %block_.L_43c9f5
  %loadMem_43c9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 15
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RBP.i221
  %4337 = sub i64 %4336, 64
  %4338 = load i64, i64* %PC.i220
  %4339 = add i64 %4338, 4
  store i64 %4339, i64* %PC.i220
  %4340 = inttoptr i64 %4337 to i32*
  %4341 = load i32, i32* %4340
  %4342 = sub i32 %4341, 5
  %4343 = icmp ult i32 %4341, 5
  %4344 = zext i1 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4344, i8* %4345, align 1
  %4346 = and i32 %4342, 255
  %4347 = call i32 @llvm.ctpop.i32(i32 %4346)
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  %4350 = xor i8 %4349, 1
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4350, i8* %4351, align 1
  %4352 = xor i32 %4341, 5
  %4353 = xor i32 %4352, %4342
  %4354 = lshr i32 %4353, 4
  %4355 = trunc i32 %4354 to i8
  %4356 = and i8 %4355, 1
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4356, i8* %4357, align 1
  %4358 = icmp eq i32 %4342, 0
  %4359 = zext i1 %4358 to i8
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4359, i8* %4360, align 1
  %4361 = lshr i32 %4342, 31
  %4362 = trunc i32 %4361 to i8
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4362, i8* %4363, align 1
  %4364 = lshr i32 %4341, 31
  %4365 = xor i32 %4361, %4364
  %4366 = add i32 %4365, %4364
  %4367 = icmp eq i32 %4366, 2
  %4368 = zext i1 %4367 to i8
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4368, i8* %4369, align 1
  store %struct.Memory* %loadMem_43c9ff, %struct.Memory** %MEMORY
  %loadMem_43ca03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4371 = getelementptr inbounds %struct.GPR, %struct.GPR* %4370, i32 0, i32 33
  %4372 = getelementptr inbounds %struct.Reg, %struct.Reg* %4371, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %4372 to i64*
  %4373 = load i64, i64* %PC.i219
  %4374 = add i64 %4373, 24
  %4375 = load i64, i64* %PC.i219
  %4376 = add i64 %4375, 6
  %4377 = load i64, i64* %PC.i219
  %4378 = add i64 %4377, 6
  store i64 %4378, i64* %PC.i219
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4380 = load i8, i8* %4379, align 1
  %4381 = icmp eq i8 %4380, 0
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %BRANCH_TAKEN, align 1
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4384 = select i1 %4381, i64 %4374, i64 %4376
  store i64 %4384, i64* %4383, align 8
  store %struct.Memory* %loadMem_43ca03, %struct.Memory** %MEMORY
  %loadBr_43ca03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca03 = icmp eq i8 %loadBr_43ca03, 1
  br i1 %cmpBr_43ca03, label %block_.L_43ca1b, label %block_43ca09

block_43ca09:                                     ; preds = %block_43c9ff
  %loadMem_43ca09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4389 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4388, i64 0, i64 0
  %YMM0.i218 = bitcast %union.VectorReg* %4389 to %"class.std::bitset"*
  %4390 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %4391 = load i64, i64* %PC.i217
  %4392 = add i64 %4391, ptrtoint (%G_0xa6743__rip__type* @G_0xa6743__rip_ to i64)
  %4393 = load i64, i64* %PC.i217
  %4394 = add i64 %4393, 8
  store i64 %4394, i64* %PC.i217
  %4395 = inttoptr i64 %4392 to float*
  %4396 = load float, float* %4395
  %4397 = bitcast i8* %4390 to float*
  store float %4396, float* %4397, align 1
  %4398 = getelementptr inbounds i8, i8* %4390, i64 4
  %4399 = bitcast i8* %4398 to float*
  store float 0.000000e+00, float* %4399, align 1
  %4400 = getelementptr inbounds i8, i8* %4390, i64 8
  %4401 = bitcast i8* %4400 to float*
  store float 0.000000e+00, float* %4401, align 1
  %4402 = getelementptr inbounds i8, i8* %4390, i64 12
  %4403 = bitcast i8* %4402 to float*
  store float 0.000000e+00, float* %4403, align 1
  store %struct.Memory* %loadMem_43ca09, %struct.Memory** %MEMORY
  %loadMem_43ca11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 33
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4406 to i64*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 15
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %4409 to i64*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4410, i64 0, i64 0
  %XMM0.i216 = bitcast %union.VectorReg* %4411 to %union.vec128_t*
  %4412 = load i64, i64* %RBP.i215
  %4413 = sub i64 %4412, 44
  %4414 = bitcast %union.vec128_t* %XMM0.i216 to i8*
  %4415 = load i64, i64* %PC.i214
  %4416 = add i64 %4415, 5
  store i64 %4416, i64* %PC.i214
  %4417 = bitcast i8* %4414 to <2 x float>*
  %4418 = load <2 x float>, <2 x float>* %4417, align 1
  %4419 = extractelement <2 x float> %4418, i32 0
  %4420 = inttoptr i64 %4413 to float*
  store float %4419, float* %4420
  store %struct.Memory* %loadMem_43ca11, %struct.Memory** %MEMORY
  %loadMem_43ca16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4423 to i64*
  %4424 = load i64, i64* %PC.i213
  %4425 = add i64 %4424, 43
  %4426 = load i64, i64* %PC.i213
  %4427 = add i64 %4426, 5
  store i64 %4427, i64* %PC.i213
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4425, i64* %4428, align 8
  store %struct.Memory* %loadMem_43ca16, %struct.Memory** %MEMORY
  br label %block_.L_43ca41

block_.L_43ca1b:                                  ; preds = %block_43c9ff, %block_.L_43c9f5
  %loadMem_43ca1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4431 to i64*
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 15
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %4434 to i64*
  %4435 = load i64, i64* %RBP.i212
  %4436 = sub i64 %4435, 56
  %4437 = load i64, i64* %PC.i211
  %4438 = add i64 %4437, 4
  store i64 %4438, i64* %PC.i211
  %4439 = inttoptr i64 %4436 to i32*
  %4440 = load i32, i32* %4439
  %4441 = sub i32 %4440, 5
  %4442 = icmp ult i32 %4440, 5
  %4443 = zext i1 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4443, i8* %4444, align 1
  %4445 = and i32 %4441, 255
  %4446 = call i32 @llvm.ctpop.i32(i32 %4445)
  %4447 = trunc i32 %4446 to i8
  %4448 = and i8 %4447, 1
  %4449 = xor i8 %4448, 1
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4449, i8* %4450, align 1
  %4451 = xor i32 %4440, 5
  %4452 = xor i32 %4451, %4441
  %4453 = lshr i32 %4452, 4
  %4454 = trunc i32 %4453 to i8
  %4455 = and i8 %4454, 1
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4455, i8* %4456, align 1
  %4457 = icmp eq i32 %4441, 0
  %4458 = zext i1 %4457 to i8
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4458, i8* %4459, align 1
  %4460 = lshr i32 %4441, 31
  %4461 = trunc i32 %4460 to i8
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4461, i8* %4462, align 1
  %4463 = lshr i32 %4440, 31
  %4464 = xor i32 %4460, %4463
  %4465 = add i32 %4464, %4463
  %4466 = icmp eq i32 %4465, 2
  %4467 = zext i1 %4466 to i8
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4467, i8* %4468, align 1
  store %struct.Memory* %loadMem_43ca1b, %struct.Memory** %MEMORY
  %loadMem_43ca1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 33
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %4471 to i64*
  %4472 = load i64, i64* %PC.i210
  %4473 = add i64 %4472, 29
  %4474 = load i64, i64* %PC.i210
  %4475 = add i64 %4474, 6
  %4476 = load i64, i64* %PC.i210
  %4477 = add i64 %4476, 6
  store i64 %4477, i64* %PC.i210
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4479 = load i8, i8* %4478, align 1
  store i8 %4479, i8* %BRANCH_TAKEN, align 1
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4481 = icmp ne i8 %4479, 0
  %4482 = select i1 %4481, i64 %4473, i64 %4475
  store i64 %4482, i64* %4480, align 8
  store %struct.Memory* %loadMem_43ca1f, %struct.Memory** %MEMORY
  %loadBr_43ca1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca1f = icmp eq i8 %loadBr_43ca1f, 1
  br i1 %cmpBr_43ca1f, label %block_.L_43ca3c, label %block_43ca25

block_43ca25:                                     ; preds = %block_.L_43ca1b
  %loadMem_43ca25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4484 = getelementptr inbounds %struct.GPR, %struct.GPR* %4483, i32 0, i32 33
  %4485 = getelementptr inbounds %struct.Reg, %struct.Reg* %4484, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %4485 to i64*
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4487 = getelementptr inbounds %struct.GPR, %struct.GPR* %4486, i32 0, i32 15
  %4488 = getelementptr inbounds %struct.Reg, %struct.Reg* %4487, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %4488 to i64*
  %4489 = load i64, i64* %RBP.i209
  %4490 = sub i64 %4489, 64
  %4491 = load i64, i64* %PC.i208
  %4492 = add i64 %4491, 4
  store i64 %4492, i64* %PC.i208
  %4493 = inttoptr i64 %4490 to i32*
  %4494 = load i32, i32* %4493
  %4495 = sub i32 %4494, 5
  %4496 = icmp ult i32 %4494, 5
  %4497 = zext i1 %4496 to i8
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4497, i8* %4498, align 1
  %4499 = and i32 %4495, 255
  %4500 = call i32 @llvm.ctpop.i32(i32 %4499)
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  %4503 = xor i8 %4502, 1
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4503, i8* %4504, align 1
  %4505 = xor i32 %4494, 5
  %4506 = xor i32 %4505, %4495
  %4507 = lshr i32 %4506, 4
  %4508 = trunc i32 %4507 to i8
  %4509 = and i8 %4508, 1
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4509, i8* %4510, align 1
  %4511 = icmp eq i32 %4495, 0
  %4512 = zext i1 %4511 to i8
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4512, i8* %4513, align 1
  %4514 = lshr i32 %4495, 31
  %4515 = trunc i32 %4514 to i8
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4515, i8* %4516, align 1
  %4517 = lshr i32 %4494, 31
  %4518 = xor i32 %4514, %4517
  %4519 = add i32 %4518, %4517
  %4520 = icmp eq i32 %4519, 2
  %4521 = zext i1 %4520 to i8
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4521, i8* %4522, align 1
  store %struct.Memory* %loadMem_43ca25, %struct.Memory** %MEMORY
  %loadMem_43ca29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 33
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4525 to i64*
  %4526 = load i64, i64* %PC.i207
  %4527 = add i64 %4526, 19
  %4528 = load i64, i64* %PC.i207
  %4529 = add i64 %4528, 6
  %4530 = load i64, i64* %PC.i207
  %4531 = add i64 %4530, 6
  store i64 %4531, i64* %PC.i207
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4533 = load i8, i8* %4532, align 1
  store i8 %4533, i8* %BRANCH_TAKEN, align 1
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4535 = icmp ne i8 %4533, 0
  %4536 = select i1 %4535, i64 %4527, i64 %4529
  store i64 %4536, i64* %4534, align 8
  store %struct.Memory* %loadMem_43ca29, %struct.Memory** %MEMORY
  %loadBr_43ca29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca29 = icmp eq i8 %loadBr_43ca29, 1
  br i1 %cmpBr_43ca29, label %block_.L_43ca3c, label %block_43ca2f

block_43ca2f:                                     ; preds = %block_43ca25
  %loadMem_43ca2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 33
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4539 to i64*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4541 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4540, i64 0, i64 0
  %YMM0.i206 = bitcast %union.VectorReg* %4541 to %"class.std::bitset"*
  %4542 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %4543 = load i64, i64* %PC.i205
  %4544 = add i64 %4543, ptrtoint (%G_0xa66d5__rip__type* @G_0xa66d5__rip_ to i64)
  %4545 = load i64, i64* %PC.i205
  %4546 = add i64 %4545, 8
  store i64 %4546, i64* %PC.i205
  %4547 = inttoptr i64 %4544 to float*
  %4548 = load float, float* %4547
  %4549 = bitcast i8* %4542 to float*
  store float %4548, float* %4549, align 1
  %4550 = getelementptr inbounds i8, i8* %4542, i64 4
  %4551 = bitcast i8* %4550 to float*
  store float 0.000000e+00, float* %4551, align 1
  %4552 = getelementptr inbounds i8, i8* %4542, i64 8
  %4553 = bitcast i8* %4552 to float*
  store float 0.000000e+00, float* %4553, align 1
  %4554 = getelementptr inbounds i8, i8* %4542, i64 12
  %4555 = bitcast i8* %4554 to float*
  store float 0.000000e+00, float* %4555, align 1
  store %struct.Memory* %loadMem_43ca2f, %struct.Memory** %MEMORY
  %loadMem_43ca37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 33
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4558 to i64*
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 15
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %4561 to i64*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4563 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4562, i64 0, i64 0
  %XMM0.i204 = bitcast %union.VectorReg* %4563 to %union.vec128_t*
  %4564 = load i64, i64* %RBP.i203
  %4565 = sub i64 %4564, 44
  %4566 = bitcast %union.vec128_t* %XMM0.i204 to i8*
  %4567 = load i64, i64* %PC.i202
  %4568 = add i64 %4567, 5
  store i64 %4568, i64* %PC.i202
  %4569 = bitcast i8* %4566 to <2 x float>*
  %4570 = load <2 x float>, <2 x float>* %4569, align 1
  %4571 = extractelement <2 x float> %4570, i32 0
  %4572 = inttoptr i64 %4565 to float*
  store float %4571, float* %4572
  store %struct.Memory* %loadMem_43ca37, %struct.Memory** %MEMORY
  br label %block_.L_43ca3c

block_.L_43ca3c:                                  ; preds = %block_43ca2f, %block_43ca25, %block_.L_43ca1b
  %loadMem_43ca3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 33
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4575 to i64*
  %4576 = load i64, i64* %PC.i201
  %4577 = add i64 %4576, 5
  %4578 = load i64, i64* %PC.i201
  %4579 = add i64 %4578, 5
  store i64 %4579, i64* %PC.i201
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4577, i64* %4580, align 8
  store %struct.Memory* %loadMem_43ca3c, %struct.Memory** %MEMORY
  br label %block_.L_43ca41

block_.L_43ca41:                                  ; preds = %block_.L_43ca3c, %block_43ca09
  %loadMem_43ca41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %PC.i200
  %4585 = add i64 %4584, 5
  %4586 = load i64, i64* %PC.i200
  %4587 = add i64 %4586, 5
  store i64 %4587, i64* %PC.i200
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4585, i64* %4588, align 8
  store %struct.Memory* %loadMem_43ca41, %struct.Memory** %MEMORY
  br label %block_.L_43ca46

block_.L_43ca46:                                  ; preds = %block_.L_43ca41, %block_43c9e3
  %loadMem_43ca46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %PC.i199
  %4593 = add i64 %4592, 5
  %4594 = load i64, i64* %PC.i199
  %4595 = add i64 %4594, 5
  store i64 %4595, i64* %PC.i199
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4593, i64* %4596, align 8
  store %struct.Memory* %loadMem_43ca46, %struct.Memory** %MEMORY
  br label %block_.L_43ca4b

block_.L_43ca4b:                                  ; preds = %block_.L_43ca46, %block_43c9bd
  %loadMem_43ca4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 33
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %4599 to i64*
  %4600 = load i64, i64* %PC.i198
  %4601 = add i64 %4600, 5
  %4602 = load i64, i64* %PC.i198
  %4603 = add i64 %4602, 5
  store i64 %4603, i64* %PC.i198
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4601, i64* %4604, align 8
  store %struct.Memory* %loadMem_43ca4b, %struct.Memory** %MEMORY
  br label %block_.L_43ca50

block_.L_43ca50:                                  ; preds = %block_.L_43ca4b, %block_43c99c
  %loadMem_43ca50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %4607 to i64*
  %4608 = load i64, i64* %PC.i197
  %4609 = add i64 %4608, 5
  %4610 = load i64, i64* %PC.i197
  %4611 = add i64 %4610, 5
  store i64 %4611, i64* %PC.i197
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4609, i64* %4612, align 8
  store %struct.Memory* %loadMem_43ca50, %struct.Memory** %MEMORY
  br label %block_.L_43ca55

block_.L_43ca55:                                  ; preds = %block_.L_43ca50, %block_43c980
  %loadMem_43ca55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 33
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4615 to i64*
  %4616 = load i64, i64* %PC.i196
  %4617 = add i64 %4616, 5
  %4618 = load i64, i64* %PC.i196
  %4619 = add i64 %4618, 5
  store i64 %4619, i64* %PC.i196
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4617, i64* %4620, align 8
  store %struct.Memory* %loadMem_43ca55, %struct.Memory** %MEMORY
  br label %block_.L_43ca5a

block_.L_43ca5a:                                  ; preds = %block_.L_43ca55, %block_.L_43c8ca
  %loadMem_43ca5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %PC.i195
  %4625 = add i64 %4624, 5
  %4626 = load i64, i64* %PC.i195
  %4627 = add i64 %4626, 5
  store i64 %4627, i64* %PC.i195
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4625, i64* %4628, align 8
  store %struct.Memory* %loadMem_43ca5a, %struct.Memory** %MEMORY
  br label %block_.L_43ca5f

block_.L_43ca5f:                                  ; preds = %block_.L_43ca5a, %block_43c8bd
  %loadMem_43ca5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %4631 to i64*
  %4632 = load i64, i64* %PC.i194
  %4633 = add i64 %4632, 5
  %4634 = load i64, i64* %PC.i194
  %4635 = add i64 %4634, 5
  store i64 %4635, i64* %PC.i194
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4633, i64* %4636, align 8
  store %struct.Memory* %loadMem_43ca5f, %struct.Memory** %MEMORY
  br label %block_.L_43ca64

block_.L_43ca64:                                  ; preds = %block_.L_43ca5f, %block_.L_43c897
  %loadMem_43ca64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4640, i64 0, i64 0
  %YMM0.i192 = bitcast %union.VectorReg* %4641 to %"class.std::bitset"*
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4642, i64 0, i64 0
  %XMM0.i193 = bitcast %union.VectorReg* %4643 to %union.vec128_t*
  %4644 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %4645 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %4646 = bitcast %union.vec128_t* %XMM0.i193 to i8*
  %4647 = load i64, i64* %PC.i191
  %4648 = add i64 %4647, 3
  store i64 %4648, i64* %PC.i191
  %4649 = bitcast i8* %4645 to i64*
  %4650 = load i64, i64* %4649, align 1
  %4651 = getelementptr inbounds i8, i8* %4645, i64 8
  %4652 = bitcast i8* %4651 to i64*
  %4653 = load i64, i64* %4652, align 1
  %4654 = bitcast i8* %4646 to i64*
  %4655 = load i64, i64* %4654, align 1
  %4656 = getelementptr inbounds i8, i8* %4646, i64 8
  %4657 = bitcast i8* %4656 to i64*
  %4658 = load i64, i64* %4657, align 1
  %4659 = xor i64 %4655, %4650
  %4660 = xor i64 %4658, %4653
  %4661 = trunc i64 %4659 to i32
  %4662 = lshr i64 %4659, 32
  %4663 = trunc i64 %4662 to i32
  %4664 = bitcast i8* %4644 to i32*
  store i32 %4661, i32* %4664, align 1
  %4665 = getelementptr inbounds i8, i8* %4644, i64 4
  %4666 = bitcast i8* %4665 to i32*
  store i32 %4663, i32* %4666, align 1
  %4667 = trunc i64 %4660 to i32
  %4668 = getelementptr inbounds i8, i8* %4644, i64 8
  %4669 = bitcast i8* %4668 to i32*
  store i32 %4667, i32* %4669, align 1
  %4670 = lshr i64 %4660, 32
  %4671 = trunc i64 %4670 to i32
  %4672 = getelementptr inbounds i8, i8* %4644, i64 12
  %4673 = bitcast i8* %4672 to i32*
  store i32 %4671, i32* %4673, align 1
  store %struct.Memory* %loadMem_43ca64, %struct.Memory** %MEMORY
  %loadMem_43ca67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 15
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4681 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4680, i64 0, i64 1
  %YMM1.i190 = bitcast %union.VectorReg* %4681 to %"class.std::bitset"*
  %4682 = bitcast %"class.std::bitset"* %YMM1.i190 to i8*
  %4683 = load i64, i64* %RBP.i189
  %4684 = sub i64 %4683, 44
  %4685 = load i64, i64* %PC.i188
  %4686 = add i64 %4685, 5
  store i64 %4686, i64* %PC.i188
  %4687 = inttoptr i64 %4684 to float*
  %4688 = load float, float* %4687
  %4689 = fpext float %4688 to double
  %4690 = bitcast i8* %4682 to double*
  store double %4689, double* %4690, align 1
  store %struct.Memory* %loadMem_43ca67, %struct.Memory** %MEMORY
  %loadMem_43ca6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 33
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4693 to i64*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4694, i64 0, i64 0
  %XMM0.i185 = bitcast %union.VectorReg* %4695 to %union.vec128_t*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4697 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4696, i64 0, i64 1
  %XMM1.i186 = bitcast %union.VectorReg* %4697 to %union.vec128_t*
  %4698 = bitcast %union.vec128_t* %XMM1.i186 to i8*
  %4699 = bitcast %union.vec128_t* %XMM0.i185 to i8*
  %4700 = load i64, i64* %PC.i184
  %4701 = add i64 %4700, 4
  store i64 %4701, i64* %PC.i184
  %4702 = bitcast i8* %4698 to double*
  %4703 = load double, double* %4702, align 1
  %4704 = bitcast i8* %4699 to double*
  %4705 = load double, double* %4704, align 1
  %4706 = fcmp uno double %4703, %4705
  br i1 %4706, label %4707, label %4719

; <label>:4707:                                   ; preds = %block_.L_43ca64
  %4708 = fadd double %4703, %4705
  %4709 = bitcast double %4708 to i64
  %4710 = and i64 %4709, 9221120237041090560
  %4711 = icmp eq i64 %4710, 9218868437227405312
  %4712 = and i64 %4709, 2251799813685247
  %4713 = icmp ne i64 %4712, 0
  %4714 = and i1 %4711, %4713
  br i1 %4714, label %4715, label %4725

; <label>:4715:                                   ; preds = %4707
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4717 = load i64, i64* %4716, align 8
  %4718 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4717, %struct.Memory* %loadMem_43ca6c)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4719:                                   ; preds = %block_.L_43ca64
  %4720 = fcmp ogt double %4703, %4705
  br i1 %4720, label %4725, label %4721

; <label>:4721:                                   ; preds = %4719
  %4722 = fcmp olt double %4703, %4705
  br i1 %4722, label %4725, label %4723

; <label>:4723:                                   ; preds = %4721
  %4724 = fcmp oeq double %4703, %4705
  br i1 %4724, label %4725, label %4732

; <label>:4725:                                   ; preds = %4723, %4721, %4719, %4707
  %4726 = phi i8 [ 0, %4719 ], [ 0, %4721 ], [ 1, %4723 ], [ 1, %4707 ]
  %4727 = phi i8 [ 0, %4719 ], [ 0, %4721 ], [ 0, %4723 ], [ 1, %4707 ]
  %4728 = phi i8 [ 0, %4719 ], [ 1, %4721 ], [ 0, %4723 ], [ 1, %4707 ]
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4726, i8* %4729, align 1
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4727, i8* %4730, align 1
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4728, i8* %4731, align 1
  br label %4732

; <label>:4732:                                   ; preds = %4725, %4723
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4733, align 1
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4734, align 1
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4735, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %4715, %4732
  %4736 = phi %struct.Memory* [ %4718, %4715 ], [ %loadMem_43ca6c, %4732 ]
  store %struct.Memory* %4736, %struct.Memory** %MEMORY
  %loadMem_43ca70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 33
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %PC.i183
  %4741 = add i64 %4740, 321
  %4742 = load i64, i64* %PC.i183
  %4743 = add i64 %4742, 6
  %4744 = load i64, i64* %PC.i183
  %4745 = add i64 %4744, 6
  store i64 %4745, i64* %PC.i183
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4747 = load i8, i8* %4746, align 1
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4749 = load i8, i8* %4748, align 1
  %4750 = or i8 %4749, %4747
  %4751 = icmp ne i8 %4750, 0
  %4752 = zext i1 %4751 to i8
  store i8 %4752, i8* %BRANCH_TAKEN, align 1
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4754 = select i1 %4751, i64 %4741, i64 %4743
  store i64 %4754, i64* %4753, align 8
  store %struct.Memory* %loadMem_43ca70, %struct.Memory** %MEMORY
  %loadBr_43ca70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca70 = icmp eq i8 %loadBr_43ca70, 1
  br i1 %cmpBr_43ca70, label %block_.L_43cbb1, label %block_43ca76

block_43ca76:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_43ca76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4756 = getelementptr inbounds %struct.GPR, %struct.GPR* %4755, i32 0, i32 33
  %4757 = getelementptr inbounds %struct.Reg, %struct.Reg* %4756, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4757 to i64*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4758, i64 0, i64 0
  %YMM0.i182 = bitcast %union.VectorReg* %4759 to %"class.std::bitset"*
  %4760 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %4761 = load i64, i64* %PC.i181
  %4762 = add i64 %4761, ptrtoint (%G_0xa65c2__rip__type* @G_0xa65c2__rip_ to i64)
  %4763 = load i64, i64* %PC.i181
  %4764 = add i64 %4763, 8
  store i64 %4764, i64* %PC.i181
  %4765 = inttoptr i64 %4762 to double*
  %4766 = load double, double* %4765
  %4767 = bitcast i8* %4760 to double*
  store double %4766, double* %4767, align 1
  %4768 = getelementptr inbounds i8, i8* %4760, i64 8
  %4769 = bitcast i8* %4768 to double*
  store double 0.000000e+00, double* %4769, align 1
  store %struct.Memory* %loadMem_43ca76, %struct.Memory** %MEMORY
  %loadMem_43ca7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 15
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4777 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4776, i64 0, i64 1
  %YMM1.i180 = bitcast %union.VectorReg* %4777 to %"class.std::bitset"*
  %4778 = bitcast %"class.std::bitset"* %YMM1.i180 to i8*
  %4779 = load i64, i64* %RBP.i179
  %4780 = sub i64 %4779, 44
  %4781 = load i64, i64* %PC.i178
  %4782 = add i64 %4781, 5
  store i64 %4782, i64* %PC.i178
  %4783 = inttoptr i64 %4780 to float*
  %4784 = load float, float* %4783
  %4785 = fpext float %4784 to double
  %4786 = bitcast i8* %4778 to double*
  store double %4785, double* %4786, align 1
  store %struct.Memory* %loadMem_43ca7e, %struct.Memory** %MEMORY
  %loadMem_43ca83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 33
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4789 to i64*
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4791 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4790, i64 0, i64 0
  %XMM0.i175 = bitcast %union.VectorReg* %4791 to %union.vec128_t*
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4792, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4793 to %union.vec128_t*
  %4794 = bitcast %union.vec128_t* %XMM0.i175 to i8*
  %4795 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4796 = load i64, i64* %PC.i174
  %4797 = add i64 %4796, 4
  store i64 %4797, i64* %PC.i174
  %4798 = bitcast i8* %4794 to double*
  %4799 = load double, double* %4798, align 1
  %4800 = bitcast i8* %4795 to double*
  %4801 = load double, double* %4800, align 1
  %4802 = fcmp uno double %4799, %4801
  br i1 %4802, label %4803, label %4815

; <label>:4803:                                   ; preds = %block_43ca76
  %4804 = fadd double %4799, %4801
  %4805 = bitcast double %4804 to i64
  %4806 = and i64 %4805, 9221120237041090560
  %4807 = icmp eq i64 %4806, 9218868437227405312
  %4808 = and i64 %4805, 2251799813685247
  %4809 = icmp ne i64 %4808, 0
  %4810 = and i1 %4807, %4809
  br i1 %4810, label %4811, label %4821

; <label>:4811:                                   ; preds = %4803
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4813 = load i64, i64* %4812, align 8
  %4814 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4813, %struct.Memory* %loadMem_43ca83)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:4815:                                   ; preds = %block_43ca76
  %4816 = fcmp ogt double %4799, %4801
  br i1 %4816, label %4821, label %4817

; <label>:4817:                                   ; preds = %4815
  %4818 = fcmp olt double %4799, %4801
  br i1 %4818, label %4821, label %4819

; <label>:4819:                                   ; preds = %4817
  %4820 = fcmp oeq double %4799, %4801
  br i1 %4820, label %4821, label %4828

; <label>:4821:                                   ; preds = %4819, %4817, %4815, %4803
  %4822 = phi i8 [ 0, %4815 ], [ 0, %4817 ], [ 1, %4819 ], [ 1, %4803 ]
  %4823 = phi i8 [ 0, %4815 ], [ 0, %4817 ], [ 0, %4819 ], [ 1, %4803 ]
  %4824 = phi i8 [ 0, %4815 ], [ 1, %4817 ], [ 0, %4819 ], [ 1, %4803 ]
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4822, i8* %4825, align 1
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4823, i8* %4826, align 1
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4824, i8* %4827, align 1
  br label %4828

; <label>:4828:                                   ; preds = %4821, %4819
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4829, align 1
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4830, align 1
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4831, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %4811, %4828
  %4832 = phi %struct.Memory* [ %4814, %4811 ], [ %loadMem_43ca83, %4828 ]
  store %struct.Memory* %4832, %struct.Memory** %MEMORY
  %loadMem_43ca87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 33
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4835 to i64*
  %4836 = load i64, i64* %PC.i173
  %4837 = add i64 %4836, 298
  %4838 = load i64, i64* %PC.i173
  %4839 = add i64 %4838, 6
  %4840 = load i64, i64* %PC.i173
  %4841 = add i64 %4840, 6
  store i64 %4841, i64* %PC.i173
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4843 = load i8, i8* %4842, align 1
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4845 = load i8, i8* %4844, align 1
  %4846 = or i8 %4845, %4843
  %4847 = icmp ne i8 %4846, 0
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %BRANCH_TAKEN, align 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4850 = select i1 %4847, i64 %4837, i64 %4839
  store i64 %4850, i64* %4849, align 8
  store %struct.Memory* %loadMem_43ca87, %struct.Memory** %MEMORY
  %loadBr_43ca87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca87 = icmp eq i8 %loadBr_43ca87, 1
  br i1 %cmpBr_43ca87, label %block_.L_43cbb1, label %block_43ca8d

block_43ca8d:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_43ca8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 33
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4853 to i64*
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 15
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %4856 to i64*
  %4857 = load i64, i64* %RBP.i172
  %4858 = sub i64 %4857, 60
  %4859 = load i64, i64* %PC.i171
  %4860 = add i64 %4859, 7
  store i64 %4860, i64* %PC.i171
  %4861 = inttoptr i64 %4858 to i32*
  %4862 = load i32, i32* %4861
  %4863 = sub i32 %4862, 421
  %4864 = icmp ult i32 %4862, 421
  %4865 = zext i1 %4864 to i8
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4865, i8* %4866, align 1
  %4867 = and i32 %4863, 255
  %4868 = call i32 @llvm.ctpop.i32(i32 %4867)
  %4869 = trunc i32 %4868 to i8
  %4870 = and i8 %4869, 1
  %4871 = xor i8 %4870, 1
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4871, i8* %4872, align 1
  %4873 = xor i32 %4862, 421
  %4874 = xor i32 %4873, %4863
  %4875 = lshr i32 %4874, 4
  %4876 = trunc i32 %4875 to i8
  %4877 = and i8 %4876, 1
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4877, i8* %4878, align 1
  %4879 = icmp eq i32 %4863, 0
  %4880 = zext i1 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4880, i8* %4881, align 1
  %4882 = lshr i32 %4863, 31
  %4883 = trunc i32 %4882 to i8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4883, i8* %4884, align 1
  %4885 = lshr i32 %4862, 31
  %4886 = xor i32 %4882, %4885
  %4887 = add i32 %4886, %4885
  %4888 = icmp eq i32 %4887, 2
  %4889 = zext i1 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4889, i8* %4890, align 1
  store %struct.Memory* %loadMem_43ca8d, %struct.Memory** %MEMORY
  %loadMem_43ca94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4892 = getelementptr inbounds %struct.GPR, %struct.GPR* %4891, i32 0, i32 33
  %4893 = getelementptr inbounds %struct.Reg, %struct.Reg* %4892, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4893 to i64*
  %4894 = load i64, i64* %PC.i170
  %4895 = add i64 %4894, 32
  %4896 = load i64, i64* %PC.i170
  %4897 = add i64 %4896, 6
  %4898 = load i64, i64* %PC.i170
  %4899 = add i64 %4898, 6
  store i64 %4899, i64* %PC.i170
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4901 = load i8, i8* %4900, align 1
  %4902 = icmp eq i8 %4901, 0
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %BRANCH_TAKEN, align 1
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4905 = select i1 %4902, i64 %4895, i64 %4897
  store i64 %4905, i64* %4904, align 8
  store %struct.Memory* %loadMem_43ca94, %struct.Memory** %MEMORY
  %loadBr_43ca94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ca94 = icmp eq i8 %loadBr_43ca94, 1
  br i1 %cmpBr_43ca94, label %block_.L_43cab4, label %block_43ca9a

block_43ca9a:                                     ; preds = %block_43ca8d
  %loadMem_43ca9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 33
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 1
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 15
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %RBP.i169
  %4916 = sub i64 %4915, 60
  %4917 = load i64, i64* %PC.i167
  %4918 = add i64 %4917, 4
  store i64 %4918, i64* %PC.i167
  %4919 = inttoptr i64 %4916 to i32*
  %4920 = load i32, i32* %4919
  %4921 = sext i32 %4920 to i64
  store i64 %4921, i64* %RAX.i168, align 8
  store %struct.Memory* %loadMem_43ca9a, %struct.Memory** %MEMORY
  %loadMem_43ca9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 1
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 5
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %4930 to i64*
  %4931 = load i64, i64* %RAX.i165
  %4932 = add i64 %4931, 12099168
  %4933 = load i64, i64* %PC.i164
  %4934 = add i64 %4933, 8
  store i64 %4934, i64* %PC.i164
  %4935 = inttoptr i64 %4932 to i8*
  %4936 = load i8, i8* %4935
  %4937 = zext i8 %4936 to i64
  store i64 %4937, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_43ca9e, %struct.Memory** %MEMORY
  %loadMem_43caa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4939 = getelementptr inbounds %struct.GPR, %struct.GPR* %4938, i32 0, i32 33
  %4940 = getelementptr inbounds %struct.Reg, %struct.Reg* %4939, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4940 to i64*
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 5
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %ECX.i163 = bitcast %union.anon* %4943 to i32*
  %4944 = load i32, i32* %ECX.i163
  %4945 = zext i32 %4944 to i64
  %4946 = load i64, i64* %PC.i162
  %4947 = add i64 %4946, 3
  store i64 %4947, i64* %PC.i162
  %4948 = sub i32 %4944, 3
  %4949 = icmp ult i32 %4944, 3
  %4950 = zext i1 %4949 to i8
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4950, i8* %4951, align 1
  %4952 = and i32 %4948, 255
  %4953 = call i32 @llvm.ctpop.i32(i32 %4952)
  %4954 = trunc i32 %4953 to i8
  %4955 = and i8 %4954, 1
  %4956 = xor i8 %4955, 1
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4956, i8* %4957, align 1
  %4958 = xor i64 3, %4945
  %4959 = trunc i64 %4958 to i32
  %4960 = xor i32 %4959, %4948
  %4961 = lshr i32 %4960, 4
  %4962 = trunc i32 %4961 to i8
  %4963 = and i8 %4962, 1
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4963, i8* %4964, align 1
  %4965 = icmp eq i32 %4948, 0
  %4966 = zext i1 %4965 to i8
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4966, i8* %4967, align 1
  %4968 = lshr i32 %4948, 31
  %4969 = trunc i32 %4968 to i8
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4969, i8* %4970, align 1
  %4971 = lshr i32 %4944, 31
  %4972 = xor i32 %4968, %4971
  %4973 = add i32 %4972, %4971
  %4974 = icmp eq i32 %4973, 2
  %4975 = zext i1 %4974 to i8
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4975, i8* %4976, align 1
  store %struct.Memory* %loadMem_43caa6, %struct.Memory** %MEMORY
  %loadMem_43caa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4978 = getelementptr inbounds %struct.GPR, %struct.GPR* %4977, i32 0, i32 33
  %4979 = getelementptr inbounds %struct.Reg, %struct.Reg* %4978, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4979 to i64*
  %4980 = load i64, i64* %PC.i161
  %4981 = add i64 %4980, 11
  %4982 = load i64, i64* %PC.i161
  %4983 = add i64 %4982, 6
  %4984 = load i64, i64* %PC.i161
  %4985 = add i64 %4984, 6
  store i64 %4985, i64* %PC.i161
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4987 = load i8, i8* %4986, align 1
  store i8 %4987, i8* %BRANCH_TAKEN, align 1
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4989 = icmp ne i8 %4987, 0
  %4990 = select i1 %4989, i64 %4981, i64 %4983
  store i64 %4990, i64* %4988, align 8
  store %struct.Memory* %loadMem_43caa9, %struct.Memory** %MEMORY
  %loadBr_43caa9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43caa9 = icmp eq i8 %loadBr_43caa9, 1
  br i1 %cmpBr_43caa9, label %block_.L_43cab4, label %block_43caaf

block_43caaf:                                     ; preds = %block_43ca9a
  %loadMem_43caaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4993 to i64*
  %4994 = load i64, i64* %PC.i160
  %4995 = add i64 %4994, 94
  %4996 = load i64, i64* %PC.i160
  %4997 = add i64 %4996, 5
  store i64 %4997, i64* %PC.i160
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4995, i64* %4998, align 8
  store %struct.Memory* %loadMem_43caaf, %struct.Memory** %MEMORY
  br label %block_.L_43cb0d

block_.L_43cab4:                                  ; preds = %block_43ca9a, %block_43ca8d
  %loadMem_43cab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 33
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 11
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RDI.i159 = bitcast %union.anon* %5004 to i64*
  %5005 = load i64, i64* %PC.i158
  %5006 = add i64 %5005, 10
  store i64 %5006, i64* %PC.i158
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i159, align 8
  store %struct.Memory* %loadMem_43cab4, %struct.Memory** %MEMORY
  %loadMem_43cabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 9
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RSI.i157 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %PC.i156
  %5014 = add i64 %5013, 5
  store i64 %5014, i64* %PC.i156
  store i64 1758, i64* %RSI.i157, align 8
  store %struct.Memory* %loadMem_43cabe, %struct.Memory** %MEMORY
  %loadMem_43cac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 33
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 7
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %5020 to i64*
  %5021 = load i64, i64* %PC.i154
  %5022 = add i64 %5021, 10
  store i64 %5022, i64* %PC.i154
  store i64 ptrtoint (%G__0x57dbac_type* @G__0x57dbac to i64), i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_43cac3, %struct.Memory** %MEMORY
  %loadMem_43cacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 1
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %5028 to i64*
  %5029 = load i64, i64* %PC.i152
  %5030 = add i64 %5029, 5
  store i64 %5030, i64* %PC.i152
  store i64 20, i64* %RAX.i153, align 8
  store %struct.Memory* %loadMem_43cacd, %struct.Memory** %MEMORY
  %loadMem_43cad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 33
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 5
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %5036 to i64*
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 15
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %5039 to i64*
  %5040 = load i64, i64* %RBP.i151
  %5041 = sub i64 %5040, 60
  %5042 = load i64, i64* %PC.i149
  %5043 = add i64 %5042, 3
  store i64 %5043, i64* %PC.i149
  %5044 = inttoptr i64 %5041 to i32*
  %5045 = load i32, i32* %5044
  %5046 = zext i32 %5045 to i64
  store i64 %5046, i64* %RCX.i150, align 8
  store %struct.Memory* %loadMem_43cad2, %struct.Memory** %MEMORY
  %loadMem_43cad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 33
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %5049 to i64*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 1
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %EAX.i147 = bitcast %union.anon* %5052 to i32*
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 15
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %5055 to i64*
  %5056 = load i64, i64* %RBP.i148
  %5057 = sub i64 %5056, 100
  %5058 = load i32, i32* %EAX.i147
  %5059 = zext i32 %5058 to i64
  %5060 = load i64, i64* %PC.i146
  %5061 = add i64 %5060, 3
  store i64 %5061, i64* %PC.i146
  %5062 = inttoptr i64 %5057 to i32*
  store i32 %5058, i32* %5062
  store %struct.Memory* %loadMem_43cad5, %struct.Memory** %MEMORY
  %loadMem_43cad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 33
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %5065 to i64*
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5067 = getelementptr inbounds %struct.GPR, %struct.GPR* %5066, i32 0, i32 5
  %5068 = getelementptr inbounds %struct.Reg, %struct.Reg* %5067, i32 0, i32 0
  %ECX.i144 = bitcast %union.anon* %5068 to i32*
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5070 = getelementptr inbounds %struct.GPR, %struct.GPR* %5069, i32 0, i32 1
  %5071 = getelementptr inbounds %struct.Reg, %struct.Reg* %5070, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %5071 to i64*
  %5072 = load i32, i32* %ECX.i144
  %5073 = zext i32 %5072 to i64
  %5074 = load i64, i64* %PC.i143
  %5075 = add i64 %5074, 2
  store i64 %5075, i64* %PC.i143
  %5076 = and i64 %5073, 4294967295
  store i64 %5076, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_43cad8, %struct.Memory** %MEMORY
  %loadMem_43cada = load %struct.Memory*, %struct.Memory** %MEMORY
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 33
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5079 to i64*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 7
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %5082 to i64*
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 15
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %5085 to i64*
  %5086 = load i64, i64* %RBP.i142
  %5087 = sub i64 %5086, 112
  %5088 = load i64, i64* %RDX.i141
  %5089 = load i64, i64* %PC.i140
  %5090 = add i64 %5089, 4
  store i64 %5090, i64* %PC.i140
  %5091 = inttoptr i64 %5087 to i64*
  store i64 %5088, i64* %5091
  store %struct.Memory* %loadMem_43cada, %struct.Memory** %MEMORY
  %loadMem_43cade = load %struct.Memory*, %struct.Memory** %MEMORY
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 33
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5094 to i64*
  %5095 = load i64, i64* %PC.i139
  %5096 = add i64 %5095, 1
  store i64 %5096, i64* %PC.i139
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5099 = bitcast %union.anon* %5098 to i32*
  %5100 = load i32, i32* %5099, align 8
  %5101 = sext i32 %5100 to i64
  %5102 = lshr i64 %5101, 32
  store i64 %5102, i64* %5097, align 8
  store %struct.Memory* %loadMem_43cade, %struct.Memory** %MEMORY
  %loadMem_43cadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 33
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5105 to i64*
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5107 = getelementptr inbounds %struct.GPR, %struct.GPR* %5106, i32 0, i32 5
  %5108 = getelementptr inbounds %struct.Reg, %struct.Reg* %5107, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %5108 to i64*
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5110 = getelementptr inbounds %struct.GPR, %struct.GPR* %5109, i32 0, i32 15
  %5111 = getelementptr inbounds %struct.Reg, %struct.Reg* %5110, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %5111 to i64*
  %5112 = load i64, i64* %RBP.i138
  %5113 = sub i64 %5112, 100
  %5114 = load i64, i64* %PC.i136
  %5115 = add i64 %5114, 3
  store i64 %5115, i64* %PC.i136
  %5116 = inttoptr i64 %5113 to i32*
  %5117 = load i32, i32* %5116
  %5118 = zext i32 %5117 to i64
  store i64 %5118, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_43cadf, %struct.Memory** %MEMORY
  %loadMem_43cae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 33
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5121 to i64*
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 5
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %ECX.i133 = bitcast %union.anon* %5124 to i32*
  %5125 = load i32, i32* %ECX.i133
  %5126 = zext i32 %5125 to i64
  %5127 = load i64, i64* %PC.i132
  %5128 = add i64 %5127, 2
  store i64 %5128, i64* %PC.i132
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5130 = bitcast %union.anon* %5129 to i32*
  %5131 = load i32, i32* %5130, align 8
  %5132 = zext i32 %5131 to i64
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5134 = bitcast %union.anon* %5133 to i32*
  %5135 = load i32, i32* %5134, align 8
  %5136 = zext i32 %5135 to i64
  %5137 = shl i64 %5126, 32
  %5138 = ashr exact i64 %5137, 32
  %5139 = shl i64 %5136, 32
  %5140 = or i64 %5139, %5132
  %5141 = sdiv i64 %5140, %5138
  %5142 = shl i64 %5141, 32
  %5143 = ashr exact i64 %5142, 32
  %5144 = icmp eq i64 %5141, %5143
  br i1 %5144, label %5149, label %5145

; <label>:5145:                                   ; preds = %block_.L_43cab4
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5147 = load i64, i64* %5146, align 8
  %5148 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5147, %struct.Memory* %loadMem_43cae2)
  br label %routine_idivl__ecx.exit134

; <label>:5149:                                   ; preds = %block_.L_43cab4
  %5150 = srem i64 %5140, %5138
  %5151 = getelementptr inbounds %union.anon, %union.anon* %5129, i64 0, i32 0
  %5152 = and i64 %5141, 4294967295
  store i64 %5152, i64* %5151, align 8
  %5153 = getelementptr inbounds %union.anon, %union.anon* %5133, i64 0, i32 0
  %5154 = and i64 %5150, 4294967295
  store i64 %5154, i64* %5153, align 8
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5155, align 1
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5156, align 1
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5157, align 1
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5158, align 1
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5159, align 1
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5160, align 1
  br label %routine_idivl__ecx.exit134

routine_idivl__ecx.exit134:                       ; preds = %5145, %5149
  %5161 = phi %struct.Memory* [ %5148, %5145 ], [ %loadMem_43cae2, %5149 ]
  store %struct.Memory* %5161, %struct.Memory** %MEMORY
  %loadMem_43cae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 33
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5164 to i64*
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 1
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %5167 to i64*
  %5168 = load i64, i64* %RAX.i131
  %5169 = load i64, i64* %PC.i130
  %5170 = add i64 %5169, 3
  store i64 %5170, i64* %PC.i130
  %5171 = trunc i64 %5168 to i32
  %5172 = sub i32 %5171, 1
  %5173 = zext i32 %5172 to i64
  store i64 %5173, i64* %RAX.i131, align 8
  %5174 = icmp ult i32 %5171, 1
  %5175 = zext i1 %5174 to i8
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5175, i8* %5176, align 1
  %5177 = and i32 %5172, 255
  %5178 = call i32 @llvm.ctpop.i32(i32 %5177)
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  %5181 = xor i8 %5180, 1
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5181, i8* %5182, align 1
  %5183 = xor i64 1, %5168
  %5184 = trunc i64 %5183 to i32
  %5185 = xor i32 %5184, %5172
  %5186 = lshr i32 %5185, 4
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5188, i8* %5189, align 1
  %5190 = icmp eq i32 %5172, 0
  %5191 = zext i1 %5190 to i8
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5191, i8* %5192, align 1
  %5193 = lshr i32 %5172, 31
  %5194 = trunc i32 %5193 to i8
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5194, i8* %5195, align 1
  %5196 = lshr i32 %5171, 31
  %5197 = xor i32 %5193, %5196
  %5198 = add i32 %5197, %5196
  %5199 = icmp eq i32 %5198, 2
  %5200 = zext i1 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5200, i8* %5201, align 1
  store %struct.Memory* %loadMem_43cae4, %struct.Memory** %MEMORY
  %loadMem_43cae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 33
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5204 to i64*
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 17
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %R8D.i128 = bitcast %union.anon* %5207 to i32*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 15
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %5210 to i64*
  %5211 = bitcast i32* %R8D.i128 to i64*
  %5212 = load i64, i64* %RBP.i129
  %5213 = sub i64 %5212, 60
  %5214 = load i64, i64* %PC.i127
  %5215 = add i64 %5214, 4
  store i64 %5215, i64* %PC.i127
  %5216 = inttoptr i64 %5213 to i32*
  %5217 = load i32, i32* %5216
  %5218 = zext i32 %5217 to i64
  store i64 %5218, i64* %5211, align 8
  store %struct.Memory* %loadMem_43cae7, %struct.Memory** %MEMORY
  %loadMem_43caeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 33
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 1
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %5224 to i32*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 15
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %5227 to i64*
  %5228 = load i64, i64* %RBP.i126
  %5229 = sub i64 %5228, 116
  %5230 = load i32, i32* %EAX.i125
  %5231 = zext i32 %5230 to i64
  %5232 = load i64, i64* %PC.i124
  %5233 = add i64 %5232, 3
  store i64 %5233, i64* %PC.i124
  %5234 = inttoptr i64 %5229 to i32*
  store i32 %5230, i32* %5234
  store %struct.Memory* %loadMem_43caeb, %struct.Memory** %MEMORY
  %loadMem_43caee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5236 = getelementptr inbounds %struct.GPR, %struct.GPR* %5235, i32 0, i32 33
  %5237 = getelementptr inbounds %struct.Reg, %struct.Reg* %5236, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5237 to i64*
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 17
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %R8D.i122 = bitcast %union.anon* %5240 to i32*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 1
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %5243 to i64*
  %5244 = load i32, i32* %R8D.i122
  %5245 = zext i32 %5244 to i64
  %5246 = load i64, i64* %PC.i121
  %5247 = add i64 %5246, 3
  store i64 %5247, i64* %PC.i121
  %5248 = and i64 %5245, 4294967295
  store i64 %5248, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_43caee, %struct.Memory** %MEMORY
  %loadMem_43caf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 33
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5251 to i64*
  %5252 = load i64, i64* %PC.i120
  %5253 = add i64 %5252, 1
  store i64 %5253, i64* %PC.i120
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5256 = bitcast %union.anon* %5255 to i32*
  %5257 = load i32, i32* %5256, align 8
  %5258 = sext i32 %5257 to i64
  %5259 = lshr i64 %5258, 32
  store i64 %5259, i64* %5254, align 8
  store %struct.Memory* %loadMem_43caf1, %struct.Memory** %MEMORY
  %loadMem_43caf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 33
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5262 to i64*
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 5
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %ECX.i116 = bitcast %union.anon* %5265 to i32*
  %5266 = load i32, i32* %ECX.i116
  %5267 = zext i32 %5266 to i64
  %5268 = load i64, i64* %PC.i115
  %5269 = add i64 %5268, 2
  store i64 %5269, i64* %PC.i115
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5271 = bitcast %union.anon* %5270 to i32*
  %5272 = load i32, i32* %5271, align 8
  %5273 = zext i32 %5272 to i64
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5275 = bitcast %union.anon* %5274 to i32*
  %5276 = load i32, i32* %5275, align 8
  %5277 = zext i32 %5276 to i64
  %5278 = shl i64 %5267, 32
  %5279 = ashr exact i64 %5278, 32
  %5280 = shl i64 %5277, 32
  %5281 = or i64 %5280, %5273
  %5282 = sdiv i64 %5281, %5279
  %5283 = shl i64 %5282, 32
  %5284 = ashr exact i64 %5283, 32
  %5285 = icmp eq i64 %5282, %5284
  br i1 %5285, label %5290, label %5286

; <label>:5286:                                   ; preds = %routine_idivl__ecx.exit134
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5288 = load i64, i64* %5287, align 8
  %5289 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5288, %struct.Memory* %loadMem_43caf2)
  br label %routine_idivl__ecx.exit117

; <label>:5290:                                   ; preds = %routine_idivl__ecx.exit134
  %5291 = srem i64 %5281, %5279
  %5292 = getelementptr inbounds %union.anon, %union.anon* %5270, i64 0, i32 0
  %5293 = and i64 %5282, 4294967295
  store i64 %5293, i64* %5292, align 8
  %5294 = getelementptr inbounds %union.anon, %union.anon* %5274, i64 0, i32 0
  %5295 = and i64 %5291, 4294967295
  store i64 %5295, i64* %5294, align 8
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5296, align 1
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5297, align 1
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5298, align 1
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5299, align 1
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5300, align 1
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5301, align 1
  br label %routine_idivl__ecx.exit117

routine_idivl__ecx.exit117:                       ; preds = %5286, %5290
  %5302 = phi %struct.Memory* [ %5289, %5286 ], [ %loadMem_43caf2, %5290 ]
  store %struct.Memory* %5302, %struct.Memory** %MEMORY
  %loadMem_43caf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 33
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 7
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %5308 to i64*
  %5309 = load i64, i64* %RDX.i114
  %5310 = load i64, i64* %PC.i113
  %5311 = add i64 %5310, 3
  store i64 %5311, i64* %PC.i113
  %5312 = trunc i64 %5309 to i32
  %5313 = sub i32 %5312, 1
  %5314 = zext i32 %5313 to i64
  store i64 %5314, i64* %RDX.i114, align 8
  %5315 = icmp ult i32 %5312, 1
  %5316 = zext i1 %5315 to i8
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5316, i8* %5317, align 1
  %5318 = and i32 %5313, 255
  %5319 = call i32 @llvm.ctpop.i32(i32 %5318)
  %5320 = trunc i32 %5319 to i8
  %5321 = and i8 %5320, 1
  %5322 = xor i8 %5321, 1
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5322, i8* %5323, align 1
  %5324 = xor i64 1, %5309
  %5325 = trunc i64 %5324 to i32
  %5326 = xor i32 %5325, %5313
  %5327 = lshr i32 %5326, 4
  %5328 = trunc i32 %5327 to i8
  %5329 = and i8 %5328, 1
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5329, i8* %5330, align 1
  %5331 = icmp eq i32 %5313, 0
  %5332 = zext i1 %5331 to i8
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5332, i8* %5333, align 1
  %5334 = lshr i32 %5313, 31
  %5335 = trunc i32 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5335, i8* %5336, align 1
  %5337 = lshr i32 %5312, 31
  %5338 = xor i32 %5334, %5337
  %5339 = add i32 %5338, %5337
  %5340 = icmp eq i32 %5339, 2
  %5341 = zext i1 %5340 to i8
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5341, i8* %5342, align 1
  store %struct.Memory* %loadMem_43caf4, %struct.Memory** %MEMORY
  %loadMem_43caf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 33
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %5345 to i64*
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 15
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %5348 to i64*
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5350 = getelementptr inbounds %struct.GPR, %struct.GPR* %5349, i32 0, i32 19
  %5351 = getelementptr inbounds %struct.Reg, %struct.Reg* %5350, i32 0, i32 0
  %R9.i112 = bitcast %union.anon* %5351 to i64*
  %5352 = load i64, i64* %RBP.i111
  %5353 = sub i64 %5352, 112
  %5354 = load i64, i64* %PC.i110
  %5355 = add i64 %5354, 4
  store i64 %5355, i64* %PC.i110
  %5356 = inttoptr i64 %5353 to i64*
  %5357 = load i64, i64* %5356
  store i64 %5357, i64* %R9.i112, align 8
  store %struct.Memory* %loadMem_43caf7, %struct.Memory** %MEMORY
  %loadMem_43cafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 33
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5360 to i64*
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5362 = getelementptr inbounds %struct.GPR, %struct.GPR* %5361, i32 0, i32 7
  %5363 = getelementptr inbounds %struct.Reg, %struct.Reg* %5362, i32 0, i32 0
  %EDX.i108 = bitcast %union.anon* %5363 to i32*
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 15
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %5366 to i64*
  %5367 = load i64, i64* %RBP.i109
  %5368 = sub i64 %5367, 120
  %5369 = load i32, i32* %EDX.i108
  %5370 = zext i32 %5369 to i64
  %5371 = load i64, i64* %PC.i107
  %5372 = add i64 %5371, 3
  store i64 %5372, i64* %PC.i107
  %5373 = inttoptr i64 %5368 to i32*
  store i32 %5369, i32* %5373
  store %struct.Memory* %loadMem_43cafb, %struct.Memory** %MEMORY
  %loadMem_43cafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5375 = getelementptr inbounds %struct.GPR, %struct.GPR* %5374, i32 0, i32 33
  %5376 = getelementptr inbounds %struct.Reg, %struct.Reg* %5375, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %5376 to i64*
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5378 = getelementptr inbounds %struct.GPR, %struct.GPR* %5377, i32 0, i32 7
  %5379 = getelementptr inbounds %struct.Reg, %struct.Reg* %5378, i32 0, i32 0
  %RDX.i105 = bitcast %union.anon* %5379 to i64*
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 19
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %R9.i106 = bitcast %union.anon* %5382 to i64*
  %5383 = load i64, i64* %R9.i106
  %5384 = load i64, i64* %PC.i104
  %5385 = add i64 %5384, 3
  store i64 %5385, i64* %PC.i104
  store i64 %5383, i64* %RDX.i105, align 8
  store %struct.Memory* %loadMem_43cafe, %struct.Memory** %MEMORY
  %loadMem_43cb01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5387 = getelementptr inbounds %struct.GPR, %struct.GPR* %5386, i32 0, i32 33
  %5388 = getelementptr inbounds %struct.Reg, %struct.Reg* %5387, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %5388 to i64*
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5390 = getelementptr inbounds %struct.GPR, %struct.GPR* %5389, i32 0, i32 5
  %5391 = getelementptr inbounds %struct.Reg, %struct.Reg* %5390, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %5391 to i64*
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5393 = getelementptr inbounds %struct.GPR, %struct.GPR* %5392, i32 0, i32 15
  %5394 = getelementptr inbounds %struct.Reg, %struct.Reg* %5393, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %5394 to i64*
  %5395 = load i64, i64* %RBP.i103
  %5396 = sub i64 %5395, 116
  %5397 = load i64, i64* %PC.i101
  %5398 = add i64 %5397, 3
  store i64 %5398, i64* %PC.i101
  %5399 = inttoptr i64 %5396 to i32*
  %5400 = load i32, i32* %5399
  %5401 = zext i32 %5400 to i64
  store i64 %5401, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_43cb01, %struct.Memory** %MEMORY
  %loadMem_43cb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 33
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5404 to i64*
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5406 = getelementptr inbounds %struct.GPR, %struct.GPR* %5405, i32 0, i32 17
  %5407 = getelementptr inbounds %struct.Reg, %struct.Reg* %5406, i32 0, i32 0
  %R8D.i99 = bitcast %union.anon* %5407 to i32*
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 15
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %5410 to i64*
  %5411 = bitcast i32* %R8D.i99 to i64*
  %5412 = load i64, i64* %RBP.i100
  %5413 = sub i64 %5412, 120
  %5414 = load i64, i64* %PC.i98
  %5415 = add i64 %5414, 4
  store i64 %5415, i64* %PC.i98
  %5416 = inttoptr i64 %5413 to i32*
  %5417 = load i32, i32* %5416
  %5418 = zext i32 %5417 to i64
  store i64 %5418, i64* %5411, align 8
  store %struct.Memory* %loadMem_43cb04, %struct.Memory** %MEMORY
  %loadMem1_43cb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5420 = getelementptr inbounds %struct.GPR, %struct.GPR* %5419, i32 0, i32 33
  %5421 = getelementptr inbounds %struct.Reg, %struct.Reg* %5420, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5421 to i64*
  %5422 = load i64, i64* %PC.i97
  %5423 = add i64 %5422, 87432
  %5424 = load i64, i64* %PC.i97
  %5425 = add i64 %5424, 5
  %5426 = load i64, i64* %PC.i97
  %5427 = add i64 %5426, 5
  store i64 %5427, i64* %PC.i97
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5429 = load i64, i64* %5428, align 8
  %5430 = add i64 %5429, -8
  %5431 = inttoptr i64 %5430 to i64*
  store i64 %5425, i64* %5431
  store i64 %5430, i64* %5428, align 8
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5423, i64* %5432, align 8
  store %struct.Memory* %loadMem1_43cb08, %struct.Memory** %MEMORY
  %loadMem2_43cb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43cb08 = load i64, i64* %3
  %call2_43cb08 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_43cb08, %struct.Memory* %loadMem2_43cb08)
  store %struct.Memory* %call2_43cb08, %struct.Memory** %MEMORY
  br label %block_.L_43cb0d

block_.L_43cb0d:                                  ; preds = %routine_idivl__ecx.exit117, %block_43caaf
  %loadMem_43cb0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 33
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5435 to i64*
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 15
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %5438 to i64*
  %5439 = load i64, i64* %RBP.i96
  %5440 = sub i64 %5439, 68
  %5441 = load i64, i64* %PC.i95
  %5442 = add i64 %5441, 7
  store i64 %5442, i64* %PC.i95
  %5443 = inttoptr i64 %5440 to i32*
  %5444 = load i32, i32* %5443
  %5445 = sub i32 %5444, 421
  %5446 = icmp ult i32 %5444, 421
  %5447 = zext i1 %5446 to i8
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5447, i8* %5448, align 1
  %5449 = and i32 %5445, 255
  %5450 = call i32 @llvm.ctpop.i32(i32 %5449)
  %5451 = trunc i32 %5450 to i8
  %5452 = and i8 %5451, 1
  %5453 = xor i8 %5452, 1
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5453, i8* %5454, align 1
  %5455 = xor i32 %5444, 421
  %5456 = xor i32 %5455, %5445
  %5457 = lshr i32 %5456, 4
  %5458 = trunc i32 %5457 to i8
  %5459 = and i8 %5458, 1
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5459, i8* %5460, align 1
  %5461 = icmp eq i32 %5445, 0
  %5462 = zext i1 %5461 to i8
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5462, i8* %5463, align 1
  %5464 = lshr i32 %5445, 31
  %5465 = trunc i32 %5464 to i8
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5465, i8* %5466, align 1
  %5467 = lshr i32 %5444, 31
  %5468 = xor i32 %5464, %5467
  %5469 = add i32 %5468, %5467
  %5470 = icmp eq i32 %5469, 2
  %5471 = zext i1 %5470 to i8
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5471, i8* %5472, align 1
  store %struct.Memory* %loadMem_43cb0d, %struct.Memory** %MEMORY
  %loadMem_43cb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 33
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5475 to i64*
  %5476 = load i64, i64* %PC.i94
  %5477 = add i64 %5476, 32
  %5478 = load i64, i64* %PC.i94
  %5479 = add i64 %5478, 6
  %5480 = load i64, i64* %PC.i94
  %5481 = add i64 %5480, 6
  store i64 %5481, i64* %PC.i94
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5483 = load i8, i8* %5482, align 1
  %5484 = icmp eq i8 %5483, 0
  %5485 = zext i1 %5484 to i8
  store i8 %5485, i8* %BRANCH_TAKEN, align 1
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5487 = select i1 %5484, i64 %5477, i64 %5479
  store i64 %5487, i64* %5486, align 8
  store %struct.Memory* %loadMem_43cb14, %struct.Memory** %MEMORY
  %loadBr_43cb14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cb14 = icmp eq i8 %loadBr_43cb14, 1
  br i1 %cmpBr_43cb14, label %block_.L_43cb34, label %block_43cb1a

block_43cb1a:                                     ; preds = %block_.L_43cb0d
  %loadMem_43cb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 1
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 15
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %5496 to i64*
  %5497 = load i64, i64* %RBP.i93
  %5498 = sub i64 %5497, 68
  %5499 = load i64, i64* %PC.i91
  %5500 = add i64 %5499, 4
  store i64 %5500, i64* %PC.i91
  %5501 = inttoptr i64 %5498 to i32*
  %5502 = load i32, i32* %5501
  %5503 = sext i32 %5502 to i64
  store i64 %5503, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_43cb1a, %struct.Memory** %MEMORY
  %loadMem_43cb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5505 = getelementptr inbounds %struct.GPR, %struct.GPR* %5504, i32 0, i32 33
  %5506 = getelementptr inbounds %struct.Reg, %struct.Reg* %5505, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5506 to i64*
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5508 = getelementptr inbounds %struct.GPR, %struct.GPR* %5507, i32 0, i32 1
  %5509 = getelementptr inbounds %struct.Reg, %struct.Reg* %5508, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %5509 to i64*
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 5
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %5512 to i64*
  %5513 = load i64, i64* %RAX.i89
  %5514 = add i64 %5513, 12099168
  %5515 = load i64, i64* %PC.i88
  %5516 = add i64 %5515, 8
  store i64 %5516, i64* %PC.i88
  %5517 = inttoptr i64 %5514 to i8*
  %5518 = load i8, i8* %5517
  %5519 = zext i8 %5518 to i64
  store i64 %5519, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_43cb1e, %struct.Memory** %MEMORY
  %loadMem_43cb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 5
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %ECX.i87 = bitcast %union.anon* %5525 to i32*
  %5526 = load i32, i32* %ECX.i87
  %5527 = zext i32 %5526 to i64
  %5528 = load i64, i64* %PC.i86
  %5529 = add i64 %5528, 3
  store i64 %5529, i64* %PC.i86
  %5530 = sub i32 %5526, 3
  %5531 = icmp ult i32 %5526, 3
  %5532 = zext i1 %5531 to i8
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5532, i8* %5533, align 1
  %5534 = and i32 %5530, 255
  %5535 = call i32 @llvm.ctpop.i32(i32 %5534)
  %5536 = trunc i32 %5535 to i8
  %5537 = and i8 %5536, 1
  %5538 = xor i8 %5537, 1
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5538, i8* %5539, align 1
  %5540 = xor i64 3, %5527
  %5541 = trunc i64 %5540 to i32
  %5542 = xor i32 %5541, %5530
  %5543 = lshr i32 %5542, 4
  %5544 = trunc i32 %5543 to i8
  %5545 = and i8 %5544, 1
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5545, i8* %5546, align 1
  %5547 = icmp eq i32 %5530, 0
  %5548 = zext i1 %5547 to i8
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5548, i8* %5549, align 1
  %5550 = lshr i32 %5530, 31
  %5551 = trunc i32 %5550 to i8
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5551, i8* %5552, align 1
  %5553 = lshr i32 %5526, 31
  %5554 = xor i32 %5550, %5553
  %5555 = add i32 %5554, %5553
  %5556 = icmp eq i32 %5555, 2
  %5557 = zext i1 %5556 to i8
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5557, i8* %5558, align 1
  store %struct.Memory* %loadMem_43cb26, %struct.Memory** %MEMORY
  %loadMem_43cb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 33
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5561 to i64*
  %5562 = load i64, i64* %PC.i85
  %5563 = add i64 %5562, 11
  %5564 = load i64, i64* %PC.i85
  %5565 = add i64 %5564, 6
  %5566 = load i64, i64* %PC.i85
  %5567 = add i64 %5566, 6
  store i64 %5567, i64* %PC.i85
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5569 = load i8, i8* %5568, align 1
  store i8 %5569, i8* %BRANCH_TAKEN, align 1
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5571 = icmp ne i8 %5569, 0
  %5572 = select i1 %5571, i64 %5563, i64 %5565
  store i64 %5572, i64* %5570, align 8
  store %struct.Memory* %loadMem_43cb29, %struct.Memory** %MEMORY
  %loadBr_43cb29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43cb29 = icmp eq i8 %loadBr_43cb29, 1
  br i1 %cmpBr_43cb29, label %block_.L_43cb34, label %block_43cb2f

block_43cb2f:                                     ; preds = %block_43cb1a
  %loadMem_43cb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 33
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5575 to i64*
  %5576 = load i64, i64* %PC.i84
  %5577 = add i64 %5576, 112
  %5578 = load i64, i64* %PC.i84
  %5579 = add i64 %5578, 5
  store i64 %5579, i64* %PC.i84
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5577, i64* %5580, align 8
  store %struct.Memory* %loadMem_43cb2f, %struct.Memory** %MEMORY
  br label %block_.L_43cb9f

block_.L_43cb34:                                  ; preds = %block_43cb1a, %block_.L_43cb0d
  %loadMem_43cb34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5582 = getelementptr inbounds %struct.GPR, %struct.GPR* %5581, i32 0, i32 33
  %5583 = getelementptr inbounds %struct.Reg, %struct.Reg* %5582, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5583 to i64*
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 11
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5586 to i64*
  %5587 = load i64, i64* %PC.i83
  %5588 = add i64 %5587, 10
  store i64 %5588, i64* %PC.i83
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43cb34, %struct.Memory** %MEMORY
  %loadMem_43cb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5590 = getelementptr inbounds %struct.GPR, %struct.GPR* %5589, i32 0, i32 33
  %5591 = getelementptr inbounds %struct.Reg, %struct.Reg* %5590, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5591 to i64*
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 9
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5594 to i64*
  %5595 = load i64, i64* %PC.i82
  %5596 = add i64 %5595, 5
  store i64 %5596, i64* %PC.i82
  store i64 1759, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_43cb3e, %struct.Memory** %MEMORY
  %loadMem_43cb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 33
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 7
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %PC.i80
  %5604 = add i64 %5603, 10
  store i64 %5604, i64* %PC.i80
  store i64 ptrtoint (%G__0x57dbbc_type* @G__0x57dbbc to i64), i64* %RDX.i81, align 8
  store %struct.Memory* %loadMem_43cb43, %struct.Memory** %MEMORY
  %loadMem_43cb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 33
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %5607 to i64*
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5609 = getelementptr inbounds %struct.GPR, %struct.GPR* %5608, i32 0, i32 1
  %5610 = getelementptr inbounds %struct.Reg, %struct.Reg* %5609, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %5610 to i64*
  %5611 = load i64, i64* %PC.i78
  %5612 = add i64 %5611, 5
  store i64 %5612, i64* %PC.i78
  store i64 20, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_43cb4d, %struct.Memory** %MEMORY
  %loadMem_43cb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 33
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5615 to i64*
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5617 = getelementptr inbounds %struct.GPR, %struct.GPR* %5616, i32 0, i32 5
  %5618 = getelementptr inbounds %struct.Reg, %struct.Reg* %5617, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %5618 to i64*
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 15
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %5621 to i64*
  %5622 = load i64, i64* %RBP.i77
  %5623 = sub i64 %5622, 68
  %5624 = load i64, i64* %PC.i75
  %5625 = add i64 %5624, 3
  store i64 %5625, i64* %PC.i75
  %5626 = inttoptr i64 %5623 to i32*
  %5627 = load i32, i32* %5626
  %5628 = zext i32 %5627 to i64
  store i64 %5628, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_43cb52, %struct.Memory** %MEMORY
  %loadMem_43cb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 33
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %5631 to i64*
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 1
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %EAX.i73 = bitcast %union.anon* %5634 to i32*
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 15
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %5637 to i64*
  %5638 = load i64, i64* %RBP.i74
  %5639 = sub i64 %5638, 124
  %5640 = load i32, i32* %EAX.i73
  %5641 = zext i32 %5640 to i64
  %5642 = load i64, i64* %PC.i72
  %5643 = add i64 %5642, 3
  store i64 %5643, i64* %PC.i72
  %5644 = inttoptr i64 %5639 to i32*
  store i32 %5640, i32* %5644
  store %struct.Memory* %loadMem_43cb55, %struct.Memory** %MEMORY
  %loadMem_43cb58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 33
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5649 = getelementptr inbounds %struct.GPR, %struct.GPR* %5648, i32 0, i32 5
  %5650 = getelementptr inbounds %struct.Reg, %struct.Reg* %5649, i32 0, i32 0
  %ECX.i70 = bitcast %union.anon* %5650 to i32*
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 1
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %5653 to i64*
  %5654 = load i32, i32* %ECX.i70
  %5655 = zext i32 %5654 to i64
  %5656 = load i64, i64* %PC.i69
  %5657 = add i64 %5656, 2
  store i64 %5657, i64* %PC.i69
  %5658 = and i64 %5655, 4294967295
  store i64 %5658, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_43cb58, %struct.Memory** %MEMORY
  %loadMem_43cb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 33
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 7
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RDX.i67 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 15
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %5667 to i64*
  %5668 = load i64, i64* %RBP.i68
  %5669 = sub i64 %5668, 136
  %5670 = load i64, i64* %RDX.i67
  %5671 = load i64, i64* %PC.i66
  %5672 = add i64 %5671, 7
  store i64 %5672, i64* %PC.i66
  %5673 = inttoptr i64 %5669 to i64*
  store i64 %5670, i64* %5673
  store %struct.Memory* %loadMem_43cb5a, %struct.Memory** %MEMORY
  %loadMem_43cb61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %PC.i65
  %5678 = add i64 %5677, 1
  store i64 %5678, i64* %PC.i65
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5681 = bitcast %union.anon* %5680 to i32*
  %5682 = load i32, i32* %5681, align 8
  %5683 = sext i32 %5682 to i64
  %5684 = lshr i64 %5683, 32
  store i64 %5684, i64* %5679, align 8
  store %struct.Memory* %loadMem_43cb61, %struct.Memory** %MEMORY
  %loadMem_43cb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5686 = getelementptr inbounds %struct.GPR, %struct.GPR* %5685, i32 0, i32 33
  %5687 = getelementptr inbounds %struct.Reg, %struct.Reg* %5686, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5687 to i64*
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 5
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 15
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %5693 to i64*
  %5694 = load i64, i64* %RBP.i64
  %5695 = sub i64 %5694, 124
  %5696 = load i64, i64* %PC.i62
  %5697 = add i64 %5696, 3
  store i64 %5697, i64* %PC.i62
  %5698 = inttoptr i64 %5695 to i32*
  %5699 = load i32, i32* %5698
  %5700 = zext i32 %5699 to i64
  store i64 %5700, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_43cb62, %struct.Memory** %MEMORY
  %loadMem_43cb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5702 = getelementptr inbounds %struct.GPR, %struct.GPR* %5701, i32 0, i32 33
  %5703 = getelementptr inbounds %struct.Reg, %struct.Reg* %5702, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5703 to i64*
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 5
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %ECX.i58 = bitcast %union.anon* %5706 to i32*
  %5707 = load i32, i32* %ECX.i58
  %5708 = zext i32 %5707 to i64
  %5709 = load i64, i64* %PC.i57
  %5710 = add i64 %5709, 2
  store i64 %5710, i64* %PC.i57
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5712 = bitcast %union.anon* %5711 to i32*
  %5713 = load i32, i32* %5712, align 8
  %5714 = zext i32 %5713 to i64
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5716 = bitcast %union.anon* %5715 to i32*
  %5717 = load i32, i32* %5716, align 8
  %5718 = zext i32 %5717 to i64
  %5719 = shl i64 %5708, 32
  %5720 = ashr exact i64 %5719, 32
  %5721 = shl i64 %5718, 32
  %5722 = or i64 %5721, %5714
  %5723 = sdiv i64 %5722, %5720
  %5724 = shl i64 %5723, 32
  %5725 = ashr exact i64 %5724, 32
  %5726 = icmp eq i64 %5723, %5725
  br i1 %5726, label %5731, label %5727

; <label>:5727:                                   ; preds = %block_.L_43cb34
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5729 = load i64, i64* %5728, align 8
  %5730 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5729, %struct.Memory* %loadMem_43cb65)
  br label %routine_idivl__ecx.exit59

; <label>:5731:                                   ; preds = %block_.L_43cb34
  %5732 = srem i64 %5722, %5720
  %5733 = getelementptr inbounds %union.anon, %union.anon* %5711, i64 0, i32 0
  %5734 = and i64 %5723, 4294967295
  store i64 %5734, i64* %5733, align 8
  %5735 = getelementptr inbounds %union.anon, %union.anon* %5715, i64 0, i32 0
  %5736 = and i64 %5732, 4294967295
  store i64 %5736, i64* %5735, align 8
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5737, align 1
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5738, align 1
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5739, align 1
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5740, align 1
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5741, align 1
  %5742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5742, align 1
  br label %routine_idivl__ecx.exit59

routine_idivl__ecx.exit59:                        ; preds = %5727, %5731
  %5743 = phi %struct.Memory* [ %5730, %5727 ], [ %loadMem_43cb65, %5731 ]
  store %struct.Memory* %5743, %struct.Memory** %MEMORY
  %loadMem_43cb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 33
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5746 to i64*
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5748 = getelementptr inbounds %struct.GPR, %struct.GPR* %5747, i32 0, i32 1
  %5749 = getelementptr inbounds %struct.Reg, %struct.Reg* %5748, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %5749 to i64*
  %5750 = load i64, i64* %RAX.i56
  %5751 = load i64, i64* %PC.i55
  %5752 = add i64 %5751, 3
  store i64 %5752, i64* %PC.i55
  %5753 = trunc i64 %5750 to i32
  %5754 = sub i32 %5753, 1
  %5755 = zext i32 %5754 to i64
  store i64 %5755, i64* %RAX.i56, align 8
  %5756 = icmp ult i32 %5753, 1
  %5757 = zext i1 %5756 to i8
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5757, i8* %5758, align 1
  %5759 = and i32 %5754, 255
  %5760 = call i32 @llvm.ctpop.i32(i32 %5759)
  %5761 = trunc i32 %5760 to i8
  %5762 = and i8 %5761, 1
  %5763 = xor i8 %5762, 1
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5763, i8* %5764, align 1
  %5765 = xor i64 1, %5750
  %5766 = trunc i64 %5765 to i32
  %5767 = xor i32 %5766, %5754
  %5768 = lshr i32 %5767, 4
  %5769 = trunc i32 %5768 to i8
  %5770 = and i8 %5769, 1
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5770, i8* %5771, align 1
  %5772 = icmp eq i32 %5754, 0
  %5773 = zext i1 %5772 to i8
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5773, i8* %5774, align 1
  %5775 = lshr i32 %5754, 31
  %5776 = trunc i32 %5775 to i8
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5776, i8* %5777, align 1
  %5778 = lshr i32 %5753, 31
  %5779 = xor i32 %5775, %5778
  %5780 = add i32 %5779, %5778
  %5781 = icmp eq i32 %5780, 2
  %5782 = zext i1 %5781 to i8
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5782, i8* %5783, align 1
  store %struct.Memory* %loadMem_43cb67, %struct.Memory** %MEMORY
  %loadMem_43cb6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5785 = getelementptr inbounds %struct.GPR, %struct.GPR* %5784, i32 0, i32 33
  %5786 = getelementptr inbounds %struct.Reg, %struct.Reg* %5785, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5786 to i64*
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 17
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %R8D.i53 = bitcast %union.anon* %5789 to i32*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 15
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %5792 to i64*
  %5793 = bitcast i32* %R8D.i53 to i64*
  %5794 = load i64, i64* %RBP.i54
  %5795 = sub i64 %5794, 68
  %5796 = load i64, i64* %PC.i52
  %5797 = add i64 %5796, 4
  store i64 %5797, i64* %PC.i52
  %5798 = inttoptr i64 %5795 to i32*
  %5799 = load i32, i32* %5798
  %5800 = zext i32 %5799 to i64
  store i64 %5800, i64* %5793, align 8
  store %struct.Memory* %loadMem_43cb6a, %struct.Memory** %MEMORY
  %loadMem_43cb6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 33
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5803 to i64*
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 1
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %EAX.i50 = bitcast %union.anon* %5806 to i32*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 15
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %5809 to i64*
  %5810 = load i64, i64* %RBP.i51
  %5811 = sub i64 %5810, 140
  %5812 = load i32, i32* %EAX.i50
  %5813 = zext i32 %5812 to i64
  %5814 = load i64, i64* %PC.i49
  %5815 = add i64 %5814, 6
  store i64 %5815, i64* %PC.i49
  %5816 = inttoptr i64 %5811 to i32*
  store i32 %5812, i32* %5816
  store %struct.Memory* %loadMem_43cb6e, %struct.Memory** %MEMORY
  %loadMem_43cb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 33
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5819 to i64*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 17
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %R8D.i47 = bitcast %union.anon* %5822 to i32*
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 1
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %5825 to i64*
  %5826 = load i32, i32* %R8D.i47
  %5827 = zext i32 %5826 to i64
  %5828 = load i64, i64* %PC.i46
  %5829 = add i64 %5828, 3
  store i64 %5829, i64* %PC.i46
  %5830 = and i64 %5827, 4294967295
  store i64 %5830, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_43cb74, %struct.Memory** %MEMORY
  %loadMem_43cb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 33
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %PC.i45
  %5835 = add i64 %5834, 1
  store i64 %5835, i64* %PC.i45
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5838 = bitcast %union.anon* %5837 to i32*
  %5839 = load i32, i32* %5838, align 8
  %5840 = sext i32 %5839 to i64
  %5841 = lshr i64 %5840, 32
  store i64 %5841, i64* %5836, align 8
  store %struct.Memory* %loadMem_43cb77, %struct.Memory** %MEMORY
  %loadMem_43cb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 33
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5844 to i64*
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5846 = getelementptr inbounds %struct.GPR, %struct.GPR* %5845, i32 0, i32 5
  %5847 = getelementptr inbounds %struct.Reg, %struct.Reg* %5846, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5847 to i32*
  %5848 = load i32, i32* %ECX.i
  %5849 = zext i32 %5848 to i64
  %5850 = load i64, i64* %PC.i41
  %5851 = add i64 %5850, 2
  store i64 %5851, i64* %PC.i41
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5853 = bitcast %union.anon* %5852 to i32*
  %5854 = load i32, i32* %5853, align 8
  %5855 = zext i32 %5854 to i64
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5857 = bitcast %union.anon* %5856 to i32*
  %5858 = load i32, i32* %5857, align 8
  %5859 = zext i32 %5858 to i64
  %5860 = shl i64 %5849, 32
  %5861 = ashr exact i64 %5860, 32
  %5862 = shl i64 %5859, 32
  %5863 = or i64 %5862, %5855
  %5864 = sdiv i64 %5863, %5861
  %5865 = shl i64 %5864, 32
  %5866 = ashr exact i64 %5865, 32
  %5867 = icmp eq i64 %5864, %5866
  br i1 %5867, label %5872, label %5868

; <label>:5868:                                   ; preds = %routine_idivl__ecx.exit59
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5870 = load i64, i64* %5869, align 8
  %5871 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5870, %struct.Memory* %loadMem_43cb78)
  br label %routine_idivl__ecx.exit

; <label>:5872:                                   ; preds = %routine_idivl__ecx.exit59
  %5873 = srem i64 %5863, %5861
  %5874 = getelementptr inbounds %union.anon, %union.anon* %5852, i64 0, i32 0
  %5875 = and i64 %5864, 4294967295
  store i64 %5875, i64* %5874, align 8
  %5876 = getelementptr inbounds %union.anon, %union.anon* %5856, i64 0, i32 0
  %5877 = and i64 %5873, 4294967295
  store i64 %5877, i64* %5876, align 8
  %5878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5878, align 1
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5879, align 1
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5880, align 1
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5881, align 1
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5882, align 1
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5883, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5868, %5872
  %5884 = phi %struct.Memory* [ %5871, %5868 ], [ %loadMem_43cb78, %5872 ]
  store %struct.Memory* %5884, %struct.Memory** %MEMORY
  %loadMem_43cb7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5886 = getelementptr inbounds %struct.GPR, %struct.GPR* %5885, i32 0, i32 33
  %5887 = getelementptr inbounds %struct.Reg, %struct.Reg* %5886, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5887 to i64*
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5889 = getelementptr inbounds %struct.GPR, %struct.GPR* %5888, i32 0, i32 7
  %5890 = getelementptr inbounds %struct.Reg, %struct.Reg* %5889, i32 0, i32 0
  %RDX.i40 = bitcast %union.anon* %5890 to i64*
  %5891 = load i64, i64* %RDX.i40
  %5892 = load i64, i64* %PC.i39
  %5893 = add i64 %5892, 3
  store i64 %5893, i64* %PC.i39
  %5894 = trunc i64 %5891 to i32
  %5895 = sub i32 %5894, 1
  %5896 = zext i32 %5895 to i64
  store i64 %5896, i64* %RDX.i40, align 8
  %5897 = icmp ult i32 %5894, 1
  %5898 = zext i1 %5897 to i8
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5898, i8* %5899, align 1
  %5900 = and i32 %5895, 255
  %5901 = call i32 @llvm.ctpop.i32(i32 %5900)
  %5902 = trunc i32 %5901 to i8
  %5903 = and i8 %5902, 1
  %5904 = xor i8 %5903, 1
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5904, i8* %5905, align 1
  %5906 = xor i64 1, %5891
  %5907 = trunc i64 %5906 to i32
  %5908 = xor i32 %5907, %5895
  %5909 = lshr i32 %5908, 4
  %5910 = trunc i32 %5909 to i8
  %5911 = and i8 %5910, 1
  %5912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5911, i8* %5912, align 1
  %5913 = icmp eq i32 %5895, 0
  %5914 = zext i1 %5913 to i8
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5914, i8* %5915, align 1
  %5916 = lshr i32 %5895, 31
  %5917 = trunc i32 %5916 to i8
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5917, i8* %5918, align 1
  %5919 = lshr i32 %5894, 31
  %5920 = xor i32 %5916, %5919
  %5921 = add i32 %5920, %5919
  %5922 = icmp eq i32 %5921, 2
  %5923 = zext i1 %5922 to i8
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5923, i8* %5924, align 1
  store %struct.Memory* %loadMem_43cb7a, %struct.Memory** %MEMORY
  %loadMem_43cb7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 15
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 19
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %R9.i38 = bitcast %union.anon* %5933 to i64*
  %5934 = load i64, i64* %RBP.i37
  %5935 = sub i64 %5934, 136
  %5936 = load i64, i64* %PC.i36
  %5937 = add i64 %5936, 7
  store i64 %5937, i64* %PC.i36
  %5938 = inttoptr i64 %5935 to i64*
  %5939 = load i64, i64* %5938
  store i64 %5939, i64* %R9.i38, align 8
  store %struct.Memory* %loadMem_43cb7d, %struct.Memory** %MEMORY
  %loadMem_43cb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5941 = getelementptr inbounds %struct.GPR, %struct.GPR* %5940, i32 0, i32 33
  %5942 = getelementptr inbounds %struct.Reg, %struct.Reg* %5941, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5942 to i64*
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 7
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5945 to i32*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 15
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5948 to i64*
  %5949 = load i64, i64* %RBP.i35
  %5950 = sub i64 %5949, 144
  %5951 = load i32, i32* %EDX.i
  %5952 = zext i32 %5951 to i64
  %5953 = load i64, i64* %PC.i34
  %5954 = add i64 %5953, 6
  store i64 %5954, i64* %PC.i34
  %5955 = inttoptr i64 %5950 to i32*
  store i32 %5951, i32* %5955
  store %struct.Memory* %loadMem_43cb84, %struct.Memory** %MEMORY
  %loadMem_43cb8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5957 = getelementptr inbounds %struct.GPR, %struct.GPR* %5956, i32 0, i32 33
  %5958 = getelementptr inbounds %struct.Reg, %struct.Reg* %5957, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5958 to i64*
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5960 = getelementptr inbounds %struct.GPR, %struct.GPR* %5959, i32 0, i32 7
  %5961 = getelementptr inbounds %struct.Reg, %struct.Reg* %5960, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5961 to i64*
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5963 = getelementptr inbounds %struct.GPR, %struct.GPR* %5962, i32 0, i32 19
  %5964 = getelementptr inbounds %struct.Reg, %struct.Reg* %5963, i32 0, i32 0
  %R9.i = bitcast %union.anon* %5964 to i64*
  %5965 = load i64, i64* %R9.i
  %5966 = load i64, i64* %PC.i33
  %5967 = add i64 %5966, 3
  store i64 %5967, i64* %PC.i33
  store i64 %5965, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_43cb8a, %struct.Memory** %MEMORY
  %loadMem_43cb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5969 = getelementptr inbounds %struct.GPR, %struct.GPR* %5968, i32 0, i32 33
  %5970 = getelementptr inbounds %struct.Reg, %struct.Reg* %5969, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5970 to i64*
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5972 = getelementptr inbounds %struct.GPR, %struct.GPR* %5971, i32 0, i32 5
  %5973 = getelementptr inbounds %struct.Reg, %struct.Reg* %5972, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %5973 to i64*
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5975 = getelementptr inbounds %struct.GPR, %struct.GPR* %5974, i32 0, i32 15
  %5976 = getelementptr inbounds %struct.Reg, %struct.Reg* %5975, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %5976 to i64*
  %5977 = load i64, i64* %RBP.i32
  %5978 = sub i64 %5977, 140
  %5979 = load i64, i64* %PC.i30
  %5980 = add i64 %5979, 6
  store i64 %5980, i64* %PC.i30
  %5981 = inttoptr i64 %5978 to i32*
  %5982 = load i32, i32* %5981
  %5983 = zext i32 %5982 to i64
  store i64 %5983, i64* %RCX.i31, align 8
  store %struct.Memory* %loadMem_43cb8d, %struct.Memory** %MEMORY
  %loadMem_43cb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 33
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5986 to i64*
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 17
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5989 to i32*
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 15
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %5992 to i64*
  %5993 = bitcast i32* %R8D.i to i64*
  %5994 = load i64, i64* %RBP.i29
  %5995 = sub i64 %5994, 144
  %5996 = load i64, i64* %PC.i28
  %5997 = add i64 %5996, 7
  store i64 %5997, i64* %PC.i28
  %5998 = inttoptr i64 %5995 to i32*
  %5999 = load i32, i32* %5998
  %6000 = zext i32 %5999 to i64
  store i64 %6000, i64* %5993, align 8
  store %struct.Memory* %loadMem_43cb93, %struct.Memory** %MEMORY
  %loadMem1_43cb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 33
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6003 to i64*
  %6004 = load i64, i64* %PC.i27
  %6005 = add i64 %6004, 87286
  %6006 = load i64, i64* %PC.i27
  %6007 = add i64 %6006, 5
  %6008 = load i64, i64* %PC.i27
  %6009 = add i64 %6008, 5
  store i64 %6009, i64* %PC.i27
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6011 = load i64, i64* %6010, align 8
  %6012 = add i64 %6011, -8
  %6013 = inttoptr i64 %6012 to i64*
  store i64 %6007, i64* %6013
  store i64 %6012, i64* %6010, align 8
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6005, i64* %6014, align 8
  store %struct.Memory* %loadMem1_43cb9a, %struct.Memory** %MEMORY
  %loadMem2_43cb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43cb9a = load i64, i64* %3
  %call2_43cb9a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_43cb9a, %struct.Memory* %loadMem2_43cb9a)
  store %struct.Memory* %call2_43cb9a, %struct.Memory** %MEMORY
  br label %block_.L_43cb9f

block_.L_43cb9f:                                  ; preds = %routine_idivl__ecx.exit, %block_43cb2f
  %loadMem_43cb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 33
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %6017 to i64*
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6019 = getelementptr inbounds %struct.GPR, %struct.GPR* %6018, i32 0, i32 1
  %6020 = getelementptr inbounds %struct.Reg, %struct.Reg* %6019, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %6020 to i64*
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 15
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %6023 to i64*
  %6024 = load i64, i64* %RBP.i26
  %6025 = sub i64 %6024, 68
  %6026 = load i64, i64* %PC.i24
  %6027 = add i64 %6026, 3
  store i64 %6027, i64* %PC.i24
  %6028 = inttoptr i64 %6025 to i32*
  %6029 = load i32, i32* %6028
  %6030 = zext i32 %6029 to i64
  store i64 %6030, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_43cb9f, %struct.Memory** %MEMORY
  %loadMem_43cba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 33
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %6033 to i64*
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 5
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %RCX.i22 = bitcast %union.anon* %6036 to i64*
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6038 = getelementptr inbounds %struct.GPR, %struct.GPR* %6037, i32 0, i32 15
  %6039 = getelementptr inbounds %struct.Reg, %struct.Reg* %6038, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %6039 to i64*
  %6040 = load i64, i64* %RBP.i23
  %6041 = sub i64 %6040, 24
  %6042 = load i64, i64* %PC.i21
  %6043 = add i64 %6042, 4
  store i64 %6043, i64* %PC.i21
  %6044 = inttoptr i64 %6041 to i64*
  %6045 = load i64, i64* %6044
  store i64 %6045, i64* %RCX.i22, align 8
  store %struct.Memory* %loadMem_43cba2, %struct.Memory** %MEMORY
  %loadMem_43cba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 33
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6048 to i64*
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6050 = getelementptr inbounds %struct.GPR, %struct.GPR* %6049, i32 0, i32 1
  %6051 = getelementptr inbounds %struct.Reg, %struct.Reg* %6050, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %6051 to i32*
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 5
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %6054 to i64*
  %6055 = load i64, i64* %RCX.i20
  %6056 = load i32, i32* %EAX.i19
  %6057 = zext i32 %6056 to i64
  %6058 = load i64, i64* %PC.i18
  %6059 = add i64 %6058, 2
  store i64 %6059, i64* %PC.i18
  %6060 = inttoptr i64 %6055 to i32*
  store i32 %6056, i32* %6060
  store %struct.Memory* %loadMem_43cba6, %struct.Memory** %MEMORY
  %loadMem_43cba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 33
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6063 to i64*
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 1
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 15
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %6069 to i64*
  %6070 = load i64, i64* %RBP.i17
  %6071 = sub i64 %6070, 60
  %6072 = load i64, i64* %PC.i16
  %6073 = add i64 %6072, 3
  store i64 %6073, i64* %PC.i16
  %6074 = inttoptr i64 %6071 to i32*
  %6075 = load i32, i32* %6074
  %6076 = zext i32 %6075 to i64
  store i64 %6076, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_43cba8, %struct.Memory** %MEMORY
  %loadMem_43cbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 33
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6079 to i64*
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 5
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %6082 to i64*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 15
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %6085 to i64*
  %6086 = load i64, i64* %RBP.i15
  %6087 = sub i64 %6086, 32
  %6088 = load i64, i64* %PC.i13
  %6089 = add i64 %6088, 4
  store i64 %6089, i64* %PC.i13
  %6090 = inttoptr i64 %6087 to i64*
  %6091 = load i64, i64* %6090
  store i64 %6091, i64* %RCX.i14, align 8
  store %struct.Memory* %loadMem_43cbab, %struct.Memory** %MEMORY
  %loadMem_43cbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 33
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6094 to i64*
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 1
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6097 to i32*
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 5
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6100 to i64*
  %6101 = load i64, i64* %RCX.i
  %6102 = load i32, i32* %EAX.i
  %6103 = zext i32 %6102 to i64
  %6104 = load i64, i64* %PC.i12
  %6105 = add i64 %6104, 2
  store i64 %6105, i64* %PC.i12
  %6106 = inttoptr i64 %6101 to i32*
  store i32 %6102, i32* %6106
  store %struct.Memory* %loadMem_43cbaf, %struct.Memory** %MEMORY
  br label %block_.L_43cbb1

block_.L_43cbb1:                                  ; preds = %block_.L_43cb9f, %routine_ucomisd__xmm1___xmm0.exit, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_43cbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6108 = getelementptr inbounds %struct.GPR, %struct.GPR* %6107, i32 0, i32 33
  %6109 = getelementptr inbounds %struct.Reg, %struct.Reg* %6108, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6109 to i64*
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 15
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6114 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6113, i64 0, i64 0
  %YMM0.i11 = bitcast %union.VectorReg* %6114 to %"class.std::bitset"*
  %6115 = bitcast %"class.std::bitset"* %YMM0.i11 to i8*
  %6116 = load i64, i64* %RBP.i10
  %6117 = sub i64 %6116, 44
  %6118 = load i64, i64* %PC.i9
  %6119 = add i64 %6118, 5
  store i64 %6119, i64* %PC.i9
  %6120 = inttoptr i64 %6117 to float*
  %6121 = load float, float* %6120
  %6122 = bitcast i8* %6115 to float*
  store float %6121, float* %6122, align 1
  %6123 = getelementptr inbounds i8, i8* %6115, i64 4
  %6124 = bitcast i8* %6123 to float*
  store float 0.000000e+00, float* %6124, align 1
  %6125 = getelementptr inbounds i8, i8* %6115, i64 8
  %6126 = bitcast i8* %6125 to float*
  store float 0.000000e+00, float* %6126, align 1
  %6127 = getelementptr inbounds i8, i8* %6115, i64 12
  %6128 = bitcast i8* %6127 to float*
  store float 0.000000e+00, float* %6128, align 1
  store %struct.Memory* %loadMem_43cbb1, %struct.Memory** %MEMORY
  %loadMem_43cbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 33
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %6131 to i64*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 15
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %6134 to i64*
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6135, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %6136 to %union.vec128_t*
  %6137 = load i64, i64* %RBP.i8
  %6138 = sub i64 %6137, 4
  %6139 = bitcast %union.vec128_t* %XMM0.i to i8*
  %6140 = load i64, i64* %PC.i7
  %6141 = add i64 %6140, 5
  store i64 %6141, i64* %PC.i7
  %6142 = bitcast i8* %6139 to <2 x float>*
  %6143 = load <2 x float>, <2 x float>* %6142, align 1
  %6144 = extractelement <2 x float> %6143, i32 0
  %6145 = inttoptr i64 %6138 to float*
  store float %6144, float* %6145
  store %struct.Memory* %loadMem_43cbb6, %struct.Memory** %MEMORY
  br label %block_.L_43cbbb

block_.L_43cbbb:                                  ; preds = %block_.L_43cbb1, %block_.L_43c7d2, %routine_idivl__ecx.exit560
  %loadMem_43cbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 33
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6148 to i64*
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6150 = getelementptr inbounds %struct.GPR, %struct.GPR* %6149, i32 0, i32 15
  %6151 = getelementptr inbounds %struct.Reg, %struct.Reg* %6150, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %6151 to i64*
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6152, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %6153 to %"class.std::bitset"*
  %6154 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %6155 = load i64, i64* %RBP.i6
  %6156 = sub i64 %6155, 4
  %6157 = load i64, i64* %PC.i5
  %6158 = add i64 %6157, 5
  store i64 %6158, i64* %PC.i5
  %6159 = inttoptr i64 %6156 to float*
  %6160 = load float, float* %6159
  %6161 = bitcast i8* %6154 to float*
  store float %6160, float* %6161, align 1
  %6162 = getelementptr inbounds i8, i8* %6154, i64 4
  %6163 = bitcast i8* %6162 to float*
  store float 0.000000e+00, float* %6163, align 1
  %6164 = getelementptr inbounds i8, i8* %6154, i64 8
  %6165 = bitcast i8* %6164 to float*
  store float 0.000000e+00, float* %6165, align 1
  %6166 = getelementptr inbounds i8, i8* %6154, i64 12
  %6167 = bitcast i8* %6166 to float*
  store float 0.000000e+00, float* %6167, align 1
  store %struct.Memory* %loadMem_43cbbb, %struct.Memory** %MEMORY
  %loadMem_43cbc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6169 = getelementptr inbounds %struct.GPR, %struct.GPR* %6168, i32 0, i32 33
  %6170 = getelementptr inbounds %struct.Reg, %struct.Reg* %6169, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6170 to i64*
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 13
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6173 to i64*
  %6174 = load i64, i64* %RSP.i
  %6175 = load i64, i64* %PC.i4
  %6176 = add i64 %6175, 7
  store i64 %6176, i64* %PC.i4
  %6177 = add i64 144, %6174
  store i64 %6177, i64* %RSP.i, align 8
  %6178 = icmp ult i64 %6177, %6174
  %6179 = icmp ult i64 %6177, 144
  %6180 = or i1 %6178, %6179
  %6181 = zext i1 %6180 to i8
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6181, i8* %6182, align 1
  %6183 = trunc i64 %6177 to i32
  %6184 = and i32 %6183, 255
  %6185 = call i32 @llvm.ctpop.i32(i32 %6184)
  %6186 = trunc i32 %6185 to i8
  %6187 = and i8 %6186, 1
  %6188 = xor i8 %6187, 1
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6188, i8* %6189, align 1
  %6190 = xor i64 144, %6174
  %6191 = xor i64 %6190, %6177
  %6192 = lshr i64 %6191, 4
  %6193 = trunc i64 %6192 to i8
  %6194 = and i8 %6193, 1
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6194, i8* %6195, align 1
  %6196 = icmp eq i64 %6177, 0
  %6197 = zext i1 %6196 to i8
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6197, i8* %6198, align 1
  %6199 = lshr i64 %6177, 63
  %6200 = trunc i64 %6199 to i8
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6200, i8* %6201, align 1
  %6202 = lshr i64 %6174, 63
  %6203 = xor i64 %6199, %6202
  %6204 = add i64 %6203, %6199
  %6205 = icmp eq i64 %6204, 2
  %6206 = zext i1 %6205 to i8
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6206, i8* %6207, align 1
  store %struct.Memory* %loadMem_43cbc0, %struct.Memory** %MEMORY
  %loadMem_43cbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 33
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6210 to i64*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 15
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6213 to i64*
  %6214 = load i64, i64* %PC.i2
  %6215 = add i64 %6214, 1
  store i64 %6215, i64* %PC.i2
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6217 = load i64, i64* %6216, align 8
  %6218 = add i64 %6217, 8
  %6219 = inttoptr i64 %6217 to i64*
  %6220 = load i64, i64* %6219
  store i64 %6220, i64* %RBP.i3, align 8
  store i64 %6218, i64* %6216, align 8
  store %struct.Memory* %loadMem_43cbc7, %struct.Memory** %MEMORY
  %loadMem_43cbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 33
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6223 to i64*
  %6224 = load i64, i64* %PC.i1
  %6225 = add i64 %6224, 1
  store i64 %6225, i64* %PC.i1
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6228 = load i64, i64* %6227, align 8
  %6229 = inttoptr i64 %6228 to i64*
  %6230 = load i64, i64* %6229
  store i64 %6230, i64* %6226, align 8
  %6231 = add i64 %6228, 8
  store i64 %6231, i64* %6227, align 8
  store %struct.Memory* %loadMem_43cbc8, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43cbc8
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 144
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 144
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
  %23 = xor i64 144, %9
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

define %struct.Memory* @routine_movss_0xa6af1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa6af1__rip__type* @G_0xa6af1__rip_ to i64)
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

define %struct.Memory* @routine_movss_0xa6ae1__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa6ae1__rip__type* @G_0xa6ae1__rip_ to i64)
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

define %struct.Memory* @routine_xorps__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm2__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 44
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_imull__0x14__MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RAX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x15___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 21
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
  %26 = xor i64 21, %9
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

define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 76
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i32*
  store i32 0, i32* %12
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_43c6fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
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

define %struct.Memory* @routine_jl_.L_43c704(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_43c71e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_43c727(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_43c752(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cvtsi2ssl__edx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EDX
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 4
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

define %struct.Memory* @routine_jmpq_.L_43cbbb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 36, %15
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

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %12, 1
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
  %24 = xor i64 1, %9
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

define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jne_.L_43c7df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  %14 = load i8, i8* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_0x1f__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 31
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = sext i8 %17 to i64
  %19 = and i64 %18, 4294967295
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_43c7df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43c7d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.does_capture_something(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43c8a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.safe_move(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
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

define %struct.Memory* @routine_jne_.L_43c819(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 44
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

define %struct.Memory* @routine_jmpq_.L_43c897(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_je_.L_43c835(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xa6921__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa6921__rip__type* @G_0xa6921__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43c892(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
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

define %struct.Memory* @routine_jne_.L_43c85f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xa68df__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa68df__rip__type* @G_0xa68df__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43c88d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_jne_.L_43c87b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xa689b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa689b__rip__type* @G_0xa689b__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43c888(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0xa68d1__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa68d1__rip__type* @G_0xa68d1__rip_ to i64)
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_43ca64(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_jne_.L_43c8ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43ca5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 48
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

define %struct.Memory* @routine_jne_.L_43ca5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43c95b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_0x64__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb4__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0x8c__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43c976(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x3c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x44__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack_and_defend(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43c992(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xa67ac__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa67ac__rip__type* @G_0xa67ac__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43ca55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43c9a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43ca50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_jne_.L_43c9cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_movss_0xa6747__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa6747__rip__type* @G_0xa6747__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43ca4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_43c9f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43c9f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xa6761__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa6761__rip__type* @G_0xa6761__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43ca46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43ca1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_43ca1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xa6743__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa6743__rip__type* @G_0xa6743__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43ca41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_43ca3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xa66d5__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa66d5__rip__type* @G_0xa66d5__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_43ca5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x2c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_jbe_.L_43cbb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xa65c2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa65c2__rip__type* @G_0xa65c2__rip_ to i64)
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 421
  %16 = icmp ult i32 %14, 421
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
  %25 = xor i32 %14, 421
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

define %struct.Memory* @routine_jae_.L_43cab4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_je_.L_43cab4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43cb0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6de___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1758, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57dbac___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dbac_type* @G__0x57dbac to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 1
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
  %24 = xor i64 1, %9
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %12, 1
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
  %24 = xor i64 1, %9
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x78__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 421
  %16 = icmp ult i32 %14, 421
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
  %25 = xor i32 %14, 421
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

define %struct.Memory* @routine_jae_.L_43cb34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_43cb34(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_43cb9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x6df___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1759, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57dbbc___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57dbbc_type* @G__0x57dbbc to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x90__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movss_MINUS0x2c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
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

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 144, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 144
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
  %25 = xor i64 144, %9
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
