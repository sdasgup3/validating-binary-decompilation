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
%G_0x5d6d2__rip__type = type <{ [8 x i8] }>
%G_0x5d79a__rip__type = type <{ [8 x i8] }>
%G_0x5d7fd__rip__type = type <{ [8 x i8] }>
%G_0x5d853__rip__type = type <{ [8 x i8] }>
%G_0x5d87d__rip__type = type <{ [8 x i8] }>
%G_0x5d87e__rip__type = type <{ [8 x i8] }>
%G_0x5d8ae__rip__type = type <{ [8 x i8] }>
%G_0x5d8b5__rip__type = type <{ [8 x i8] }>
%G_0x5d925__rip__type = type <{ [8 x i8] }>
%G_0x5d933__rip__type = type <{ [4 x i8] }>
%G_0x5d95e__rip__type = type <{ [4 x i8] }>
%G_0x5d995__rip__type = type <{ [8 x i8] }>
%G_0x5d9f4__rip__type = type <{ [8 x i8] }>
%G_0x5db6e__rip__type = type <{ [4 x i8] }>
%G_0xab0fbc_type = type <{ [1 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
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
@G_0x5d6d2__rip_ = global %G_0x5d6d2__rip__type zeroinitializer
@G_0x5d79a__rip_ = global %G_0x5d79a__rip__type zeroinitializer
@G_0x5d7fd__rip_ = global %G_0x5d7fd__rip__type zeroinitializer
@G_0x5d853__rip_ = global %G_0x5d853__rip__type zeroinitializer
@G_0x5d87d__rip_ = global %G_0x5d87d__rip__type zeroinitializer
@G_0x5d87e__rip_ = global %G_0x5d87e__rip__type zeroinitializer
@G_0x5d8ae__rip_ = global %G_0x5d8ae__rip__type zeroinitializer
@G_0x5d8b5__rip_ = global %G_0x5d8b5__rip__type zeroinitializer
@G_0x5d925__rip_ = global %G_0x5d925__rip__type zeroinitializer
@G_0x5d933__rip_ = global %G_0x5d933__rip__type zeroinitializer
@G_0x5d95e__rip_ = global %G_0x5d95e__rip__type zeroinitializer
@G_0x5d995__rip_ = global %G_0x5d995__rip__type zeroinitializer
@G_0x5d9f4__rip_ = global %G_0x5d9f4__rip__type zeroinitializer
@G_0x5db6e__rip_ = global %G_0x5db6e__rip__type zeroinitializer
@G_0xab0fbc = global %G_0xab0fbc_type zeroinitializer
@G_0xab0fe0 = global %G_0xab0fe0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

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

declare %struct.Memory* @sub_41f950.crude_dragon_weakness(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4e2960.soft_cap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @connection_value(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_485460 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_485460, %struct.Memory** %MEMORY
  %loadMem_485461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i22 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i22
  %27 = load i64, i64* %PC.i21
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i21
  store i64 %26, i64* %RBP.i23, align 8
  store %struct.Memory* %loadMem_485461, %struct.Memory** %MEMORY
  %loadMem_485464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i59 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i59
  %36 = load i64, i64* %PC.i58
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i58
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i59, align 8
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
  store %struct.Memory* %loadMem_485464, %struct.Memory** %MEMORY
  %loadMem_48546b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i222
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i222
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_48546b, %struct.Memory** %MEMORY
  %loadMem_485475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i235
  %85 = sub i64 %84, 8
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i234
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i234
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_485475, %struct.Memory** %MEMORY
  %loadMem_485478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i371
  %101 = sub i64 %100, 12
  %102 = load i32, i32* %ESI.i
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i370
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i370
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_485478, %struct.Memory** %MEMORY
  %loadMem_48547b = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i406
  %117 = sub i64 %116, 16
  %118 = load i32, i32* %EDX.i
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC.i405
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC.i405
  %122 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %122
  store %struct.Memory* %loadMem_48547b, %struct.Memory** %MEMORY
  %loadMem_48547e = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %129, i64 0, i64 0
  %XMM0.i446 = bitcast %union.VectorReg* %130 to %union.vec128_t*
  %131 = load i64, i64* %RBP.i445
  %132 = sub i64 %131, 20
  %133 = bitcast %union.vec128_t* %XMM0.i446 to i8*
  %134 = load i64, i64* %PC.i444
  %135 = add i64 %134, 5
  store i64 %135, i64* %PC.i444
  %136 = bitcast i8* %133 to <2 x float>*
  %137 = load <2 x float>, <2 x float>* %136, align 1
  %138 = extractelement <2 x float> %137, i32 0
  %139 = inttoptr i64 %132 to float*
  store float %138, float* %139
  store %struct.Memory* %loadMem_48547e, %struct.Memory** %MEMORY
  %loadMem_485483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 5
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %PC.i465
  %147 = add i64 %146, 8
  store i64 %147, i64* %PC.i465
  %148 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %148, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_485483, %struct.Memory** %MEMORY
  %loadMem_48548b = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 17
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %R8.i621 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RBP.i620
  %159 = sub i64 %158, 8
  %160 = load i64, i64* %PC.i619
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC.i619
  %162 = inttoptr i64 %159 to i32*
  %163 = load i32, i32* %162
  %164 = sext i32 %163 to i64
  store i64 %164, i64* %R8.i621, align 8
  store %struct.Memory* %loadMem_48548b, %struct.Memory** %MEMORY
  %loadMem_48548f = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 17
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %R8.i618 = bitcast %union.anon* %170 to i64*
  %171 = load i64, i64* %R8.i618
  %172 = load i64, i64* %PC.i617
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC.i617
  %174 = sext i64 %171 to i128
  %175 = and i128 %174, -18446744073709551616
  %176 = zext i64 %171 to i128
  %177 = or i128 %175, %176
  %178 = mul i128 76, %177
  %179 = trunc i128 %178 to i64
  store i64 %179, i64* %R8.i618, align 8
  %180 = sext i64 %179 to i128
  %181 = icmp ne i128 %180, %178
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %182, i8* %183, align 1
  %184 = trunc i128 %178 to i32
  %185 = and i32 %184, 255
  %186 = call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %189, i8* %190, align 1
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %192, align 1
  %193 = lshr i64 %179, 63
  %194 = trunc i64 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %194, i8* %195, align 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %182, i8* %196, align 1
  store %struct.Memory* %loadMem_48548f, %struct.Memory** %MEMORY
  %loadMem_485493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 19
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %R9.i616 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %RAX.i615
  %207 = load i64, i64* %PC.i614
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC.i614
  store i64 %206, i64* %R9.i616, align 8
  store %struct.Memory* %loadMem_485493, %struct.Memory** %MEMORY
  %loadMem_485496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 17
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %R8.i612 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 19
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %R9.i613 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %R9.i613
  %219 = load i64, i64* %R8.i612
  %220 = load i64, i64* %PC.i611
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC.i611
  %222 = add i64 %219, %218
  store i64 %222, i64* %R9.i613, align 8
  %223 = icmp ult i64 %222, %218
  %224 = icmp ult i64 %222, %219
  %225 = or i1 %223, %224
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %226, i8* %227, align 1
  %228 = trunc i64 %222 to i32
  %229 = and i32 %228, 255
  %230 = call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %233, i8* %234, align 1
  %235 = xor i64 %219, %218
  %236 = xor i64 %235, %222
  %237 = lshr i64 %236, 4
  %238 = trunc i64 %237 to i8
  %239 = and i8 %238, 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %239, i8* %240, align 1
  %241 = icmp eq i64 %222, 0
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %242, i8* %243, align 1
  %244 = lshr i64 %222, 63
  %245 = trunc i64 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %245, i8* %246, align 1
  %247 = lshr i64 %218, 63
  %248 = lshr i64 %219, 63
  %249 = xor i64 %244, %247
  %250 = xor i64 %244, %248
  %251 = add i64 %249, %250
  %252 = icmp eq i64 %251, 2
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %253, i8* %254, align 1
  store %struct.Memory* %loadMem_485496, %struct.Memory** %MEMORY
  %loadMem_485499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 17
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %R8.i609 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 19
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %R9.i610 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %R9.i610
  %265 = add i64 %264, 4
  %266 = load i64, i64* %PC.i608
  %267 = add i64 %266, 4
  store i64 %267, i64* %PC.i608
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %R8.i609, align 8
  store %struct.Memory* %loadMem_485499, %struct.Memory** %MEMORY
  %loadMem_48549d = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 17
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %R8.i607 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %R8.i607
  %278 = load i64, i64* %PC.i606
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC.i606
  %280 = sext i64 %277 to i128
  %281 = and i128 %280, -18446744073709551616
  %282 = zext i64 %277 to i128
  %283 = or i128 %281, %282
  %284 = mul i128 104, %283
  %285 = trunc i128 %284 to i64
  store i64 %285, i64* %R8.i607, align 8
  %286 = sext i64 %285 to i128
  %287 = icmp ne i128 %286, %284
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %288, i8* %289, align 1
  %290 = trunc i128 %284 to i32
  %291 = and i32 %290, 255
  %292 = call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %295, i8* %296, align 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %297, align 1
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %298, align 1
  %299 = lshr i64 %285, 63
  %300 = trunc i64 %299 to i8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %300, i8* %301, align 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %288, i8* %302, align 1
  store %struct.Memory* %loadMem_48549d, %struct.Memory** %MEMORY
  %loadMem_4854a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RCX.i604 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 17
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %R8.i605 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RCX.i604
  %313 = load i64, i64* %R8.i605
  %314 = load i64, i64* %PC.i603
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC.i603
  %316 = add i64 %313, %312
  store i64 %316, i64* %RCX.i604, align 8
  %317 = icmp ult i64 %316, %312
  %318 = icmp ult i64 %316, %313
  %319 = or i1 %317, %318
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %320, i8* %321, align 1
  %322 = trunc i64 %316 to i32
  %323 = and i32 %322, 255
  %324 = call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %327, i8* %328, align 1
  %329 = xor i64 %313, %312
  %330 = xor i64 %329, %316
  %331 = lshr i64 %330, 4
  %332 = trunc i64 %331 to i8
  %333 = and i8 %332, 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %333, i8* %334, align 1
  %335 = icmp eq i64 %316, 0
  %336 = zext i1 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %336, i8* %337, align 1
  %338 = lshr i64 %316, 63
  %339 = trunc i64 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %339, i8* %340, align 1
  %341 = lshr i64 %312, 63
  %342 = lshr i64 %313, 63
  %343 = xor i64 %338, %341
  %344 = xor i64 %338, %342
  %345 = add i64 %343, %344
  %346 = icmp eq i64 %345, 2
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %347, i8* %348, align 1
  store %struct.Memory* %loadMem_4854a1, %struct.Memory** %MEMORY
  %loadMem_4854a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 5
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 15
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %357 to i64*
  %358 = load i64, i64* %RBP.i602
  %359 = sub i64 %358, 32
  %360 = load i64, i64* %RCX.i601
  %361 = load i64, i64* %PC.i600
  %362 = add i64 %361, 4
  store i64 %362, i64* %PC.i600
  %363 = inttoptr i64 %359 to i64*
  store i64 %360, i64* %363
  store %struct.Memory* %loadMem_4854a4, %struct.Memory** %MEMORY
  %loadMem_4854a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 5
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %PC.i598
  %371 = add i64 %370, 8
  store i64 %371, i64* %PC.i598
  %372 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*)
  store i64 %372, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_4854a8, %struct.Memory** %MEMORY
  %loadMem_4854b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 17
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %R8.i597 = bitcast %union.anon* %381 to i64*
  %382 = load i64, i64* %RBP.i596
  %383 = sub i64 %382, 12
  %384 = load i64, i64* %PC.i595
  %385 = add i64 %384, 4
  store i64 %385, i64* %PC.i595
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %R8.i597, align 8
  store %struct.Memory* %loadMem_4854b0, %struct.Memory** %MEMORY
  %loadMem_4854b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 17
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %R8.i594 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %R8.i594
  %396 = load i64, i64* %PC.i593
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC.i593
  %398 = sext i64 %395 to i128
  %399 = and i128 %398, -18446744073709551616
  %400 = zext i64 %395 to i128
  %401 = or i128 %399, %400
  %402 = mul i128 76, %401
  %403 = trunc i128 %402 to i64
  store i64 %403, i64* %R8.i594, align 8
  %404 = sext i64 %403 to i128
  %405 = icmp ne i128 %404, %402
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %406, i8* %407, align 1
  %408 = trunc i128 %402 to i32
  %409 = and i32 %408, 255
  %410 = call i32 @llvm.ctpop.i32(i32 %409)
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %413, i8* %414, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %415, align 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %416, align 1
  %417 = lshr i64 %403, 63
  %418 = trunc i64 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %418, i8* %419, align 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %406, i8* %420, align 1
  store %struct.Memory* %loadMem_4854b4, %struct.Memory** %MEMORY
  %loadMem_4854b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 19
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %R9.i592 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %RAX.i591
  %431 = load i64, i64* %PC.i590
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC.i590
  store i64 %430, i64* %R9.i592, align 8
  store %struct.Memory* %loadMem_4854b8, %struct.Memory** %MEMORY
  %loadMem_4854bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 17
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %R8.i588 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 19
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %R9.i589 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %R9.i589
  %443 = load i64, i64* %R8.i588
  %444 = load i64, i64* %PC.i587
  %445 = add i64 %444, 3
  store i64 %445, i64* %PC.i587
  %446 = add i64 %443, %442
  store i64 %446, i64* %R9.i589, align 8
  %447 = icmp ult i64 %446, %442
  %448 = icmp ult i64 %446, %443
  %449 = or i1 %447, %448
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %450, i8* %451, align 1
  %452 = trunc i64 %446 to i32
  %453 = and i32 %452, 255
  %454 = call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %457, i8* %458, align 1
  %459 = xor i64 %443, %442
  %460 = xor i64 %459, %446
  %461 = lshr i64 %460, 4
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %463, i8* %464, align 1
  %465 = icmp eq i64 %446, 0
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %466, i8* %467, align 1
  %468 = lshr i64 %446, 63
  %469 = trunc i64 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %469, i8* %470, align 1
  %471 = lshr i64 %442, 63
  %472 = lshr i64 %443, 63
  %473 = xor i64 %468, %471
  %474 = xor i64 %468, %472
  %475 = add i64 %473, %474
  %476 = icmp eq i64 %475, 2
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %477, i8* %478, align 1
  store %struct.Memory* %loadMem_4854bb, %struct.Memory** %MEMORY
  %loadMem_4854be = load %struct.Memory*, %struct.Memory** %MEMORY
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 33
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 17
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %R8.i586 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 19
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %R9.i = bitcast %union.anon* %487 to i64*
  %488 = load i64, i64* %R9.i
  %489 = add i64 %488, 4
  %490 = load i64, i64* %PC.i585
  %491 = add i64 %490, 4
  store i64 %491, i64* %PC.i585
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492
  %494 = sext i32 %493 to i64
  store i64 %494, i64* %R8.i586, align 8
  store %struct.Memory* %loadMem_4854be, %struct.Memory** %MEMORY
  %loadMem_4854c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 17
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %R8.i584 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %R8.i584
  %502 = load i64, i64* %PC.i583
  %503 = add i64 %502, 4
  store i64 %503, i64* %PC.i583
  %504 = sext i64 %501 to i128
  %505 = and i128 %504, -18446744073709551616
  %506 = zext i64 %501 to i128
  %507 = or i128 %505, %506
  %508 = mul i128 104, %507
  %509 = trunc i128 %508 to i64
  store i64 %509, i64* %R8.i584, align 8
  %510 = sext i64 %509 to i128
  %511 = icmp ne i128 %510, %508
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %512, i8* %513, align 1
  %514 = trunc i128 %508 to i32
  %515 = and i32 %514, 255
  %516 = call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %519, i8* %520, align 1
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %521, align 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %522, align 1
  %523 = lshr i64 %509, 63
  %524 = trunc i64 %523 to i8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %524, i8* %525, align 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %512, i8* %526, align 1
  store %struct.Memory* %loadMem_4854c2, %struct.Memory** %MEMORY
  %loadMem_4854c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 5
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 17
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %R8.i582 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RCX.i581
  %537 = load i64, i64* %R8.i582
  %538 = load i64, i64* %PC.i580
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC.i580
  %540 = add i64 %537, %536
  store i64 %540, i64* %RCX.i581, align 8
  %541 = icmp ult i64 %540, %536
  %542 = icmp ult i64 %540, %537
  %543 = or i1 %541, %542
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %544, i8* %545, align 1
  %546 = trunc i64 %540 to i32
  %547 = and i32 %546, 255
  %548 = call i32 @llvm.ctpop.i32(i32 %547)
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %551, i8* %552, align 1
  %553 = xor i64 %537, %536
  %554 = xor i64 %553, %540
  %555 = lshr i64 %554, 4
  %556 = trunc i64 %555 to i8
  %557 = and i8 %556, 1
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %557, i8* %558, align 1
  %559 = icmp eq i64 %540, 0
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %560, i8* %561, align 1
  %562 = lshr i64 %540, 63
  %563 = trunc i64 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %563, i8* %564, align 1
  %565 = lshr i64 %536, 63
  %566 = lshr i64 %537, 63
  %567 = xor i64 %562, %565
  %568 = xor i64 %562, %566
  %569 = add i64 %567, %568
  %570 = icmp eq i64 %569, 2
  %571 = zext i1 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %571, i8* %572, align 1
  store %struct.Memory* %loadMem_4854c6, %struct.Memory** %MEMORY
  %loadMem_4854c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %574 = getelementptr inbounds %struct.GPR, %struct.GPR* %573, i32 0, i32 33
  %575 = getelementptr inbounds %struct.Reg, %struct.Reg* %574, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %575 to i64*
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 5
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RBP.i579
  %583 = sub i64 %582, 40
  %584 = load i64, i64* %RCX.i578
  %585 = load i64, i64* %PC.i577
  %586 = add i64 %585, 4
  store i64 %586, i64* %PC.i577
  %587 = inttoptr i64 %583 to i64*
  store i64 %584, i64* %587
  store %struct.Memory* %loadMem_4854c9, %struct.Memory** %MEMORY
  %loadMem_4854cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 5
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RCX.i575 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RBP.i576
  %598 = sub i64 %597, 8
  %599 = load i64, i64* %PC.i574
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC.i574
  %601 = inttoptr i64 %598 to i32*
  %602 = load i32, i32* %601
  %603 = sext i32 %602 to i64
  store i64 %603, i64* %RCX.i575, align 8
  store %struct.Memory* %loadMem_4854cd, %struct.Memory** %MEMORY
  %loadMem_4854d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 5
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %RCX.i573
  %611 = load i64, i64* %PC.i572
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC.i572
  %613 = sext i64 %610 to i128
  %614 = and i128 %613, -18446744073709551616
  %615 = zext i64 %610 to i128
  %616 = or i128 %614, %615
  %617 = mul i128 76, %616
  %618 = trunc i128 %617 to i64
  store i64 %618, i64* %RCX.i573, align 8
  %619 = sext i64 %618 to i128
  %620 = icmp ne i128 %619, %617
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %621, i8* %622, align 1
  %623 = trunc i128 %617 to i32
  %624 = and i32 %623, 255
  %625 = call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %628, i8* %629, align 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %630, align 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %631, align 1
  %632 = lshr i64 %618, 63
  %633 = trunc i64 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %633, i8* %634, align 1
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %621, i8* %635, align 1
  store %struct.Memory* %loadMem_4854d1, %struct.Memory** %MEMORY
  %loadMem_4854d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 17
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %R8.i571 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %RAX.i570
  %646 = load i64, i64* %PC.i569
  %647 = add i64 %646, 3
  store i64 %647, i64* %PC.i569
  store i64 %645, i64* %R8.i571, align 8
  store %struct.Memory* %loadMem_4854d5, %struct.Memory** %MEMORY
  %loadMem_4854d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 5
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 17
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %R8.i568 = bitcast %union.anon* %656 to i64*
  %657 = load i64, i64* %R8.i568
  %658 = load i64, i64* %RCX.i567
  %659 = load i64, i64* %PC.i566
  %660 = add i64 %659, 3
  store i64 %660, i64* %PC.i566
  %661 = add i64 %658, %657
  store i64 %661, i64* %R8.i568, align 8
  %662 = icmp ult i64 %661, %657
  %663 = icmp ult i64 %661, %658
  %664 = or i1 %662, %663
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %665, i8* %666, align 1
  %667 = trunc i64 %661 to i32
  %668 = and i32 %667, 255
  %669 = call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %672, i8* %673, align 1
  %674 = xor i64 %658, %657
  %675 = xor i64 %674, %661
  %676 = lshr i64 %675, 4
  %677 = trunc i64 %676 to i8
  %678 = and i8 %677, 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %678, i8* %679, align 1
  %680 = icmp eq i64 %661, 0
  %681 = zext i1 %680 to i8
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %681, i8* %682, align 1
  %683 = lshr i64 %661, 63
  %684 = trunc i64 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %684, i8* %685, align 1
  %686 = lshr i64 %657, 63
  %687 = lshr i64 %658, 63
  %688 = xor i64 %683, %686
  %689 = xor i64 %683, %687
  %690 = add i64 %688, %689
  %691 = icmp eq i64 %690, 2
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %692, i8* %693, align 1
  store %struct.Memory* %loadMem_4854d8, %struct.Memory** %MEMORY
  %loadMem_4854db = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 17
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %R8.i = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %701 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %700, i64 0, i64 0
  %YMM0.i565 = bitcast %union.VectorReg* %701 to %"class.std::bitset"*
  %702 = bitcast %"class.std::bitset"* %YMM0.i565 to i8*
  %703 = load i64, i64* %R8.i
  %704 = add i64 %703, 16
  %705 = load i64, i64* %PC.i564
  %706 = add i64 %705, 6
  store i64 %706, i64* %PC.i564
  %707 = inttoptr i64 %704 to float*
  %708 = load float, float* %707
  %709 = bitcast i8* %702 to float*
  store float %708, float* %709, align 1
  %710 = getelementptr inbounds i8, i8* %702, i64 4
  %711 = bitcast i8* %710 to float*
  store float 0.000000e+00, float* %711, align 1
  %712 = getelementptr inbounds i8, i8* %702, i64 8
  %713 = bitcast i8* %712 to float*
  store float 0.000000e+00, float* %713, align 1
  %714 = getelementptr inbounds i8, i8* %702, i64 12
  %715 = bitcast i8* %714 to float*
  store float 0.000000e+00, float* %715, align 1
  store %struct.Memory* %loadMem_4854db, %struct.Memory** %MEMORY
  %loadMem_4854e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %722, i64 0, i64 0
  %XMM0.i563 = bitcast %union.VectorReg* %723 to %union.vec128_t*
  %724 = load i64, i64* %RBP.i562
  %725 = sub i64 %724, 44
  %726 = bitcast %union.vec128_t* %XMM0.i563 to i8*
  %727 = load i64, i64* %PC.i561
  %728 = add i64 %727, 5
  store i64 %728, i64* %PC.i561
  %729 = bitcast i8* %726 to <2 x float>*
  %730 = load <2 x float>, <2 x float>* %729, align 1
  %731 = extractelement <2 x float> %730, i32 0
  %732 = inttoptr i64 %725 to float*
  store float %731, float* %732
  store %struct.Memory* %loadMem_4854e1, %struct.Memory** %MEMORY
  %loadMem_4854e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 5
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i560
  %743 = sub i64 %742, 12
  %744 = load i64, i64* %PC.i558
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i558
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746
  %748 = sext i32 %747 to i64
  store i64 %748, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_4854e6, %struct.Memory** %MEMORY
  %loadMem_4854ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 5
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RCX.i557 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %RCX.i557
  %756 = load i64, i64* %PC.i556
  %757 = add i64 %756, 4
  store i64 %757, i64* %PC.i556
  %758 = sext i64 %755 to i128
  %759 = and i128 %758, -18446744073709551616
  %760 = zext i64 %755 to i128
  %761 = or i128 %759, %760
  %762 = mul i128 76, %761
  %763 = trunc i128 %762 to i64
  store i64 %763, i64* %RCX.i557, align 8
  %764 = sext i64 %763 to i128
  %765 = icmp ne i128 %764, %762
  %766 = zext i1 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %766, i8* %767, align 1
  %768 = trunc i128 %762 to i32
  %769 = and i32 %768, 255
  %770 = call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %773, i8* %774, align 1
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %775, align 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %776, align 1
  %777 = lshr i64 %763, 63
  %778 = trunc i64 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %778, i8* %779, align 1
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %766, i8* %780, align 1
  store %struct.Memory* %loadMem_4854ea, %struct.Memory** %MEMORY
  %loadMem_4854ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 5
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RCX.i555 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %RAX.i554
  %791 = load i64, i64* %RCX.i555
  %792 = load i64, i64* %PC.i553
  %793 = add i64 %792, 3
  store i64 %793, i64* %PC.i553
  %794 = add i64 %791, %790
  store i64 %794, i64* %RAX.i554, align 8
  %795 = icmp ult i64 %794, %790
  %796 = icmp ult i64 %794, %791
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %798, i8* %799, align 1
  %800 = trunc i64 %794 to i32
  %801 = and i32 %800, 255
  %802 = call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %805, i8* %806, align 1
  %807 = xor i64 %791, %790
  %808 = xor i64 %807, %794
  %809 = lshr i64 %808, 4
  %810 = trunc i64 %809 to i8
  %811 = and i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %811, i8* %812, align 1
  %813 = icmp eq i64 %794, 0
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %814, i8* %815, align 1
  %816 = lshr i64 %794, 63
  %817 = trunc i64 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %817, i8* %818, align 1
  %819 = lshr i64 %790, 63
  %820 = lshr i64 %791, 63
  %821 = xor i64 %816, %819
  %822 = xor i64 %816, %820
  %823 = add i64 %821, %822
  %824 = icmp eq i64 %823, 2
  %825 = zext i1 %824 to i8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %825, i8* %826, align 1
  store %struct.Memory* %loadMem_4854ee, %struct.Memory** %MEMORY
  %loadMem_4854f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 1
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %834 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %833, i64 0, i64 0
  %YMM0.i552 = bitcast %union.VectorReg* %834 to %"class.std::bitset"*
  %835 = bitcast %"class.std::bitset"* %YMM0.i552 to i8*
  %836 = load i64, i64* %RAX.i551
  %837 = add i64 %836, 16
  %838 = load i64, i64* %PC.i550
  %839 = add i64 %838, 5
  store i64 %839, i64* %PC.i550
  %840 = inttoptr i64 %837 to float*
  %841 = load float, float* %840
  %842 = bitcast i8* %835 to float*
  store float %841, float* %842, align 1
  %843 = getelementptr inbounds i8, i8* %835, i64 4
  %844 = bitcast i8* %843 to float*
  store float 0.000000e+00, float* %844, align 1
  %845 = getelementptr inbounds i8, i8* %835, i64 8
  %846 = bitcast i8* %845 to float*
  store float 0.000000e+00, float* %846, align 1
  %847 = getelementptr inbounds i8, i8* %835, i64 12
  %848 = bitcast i8* %847 to float*
  store float 0.000000e+00, float* %848, align 1
  store %struct.Memory* %loadMem_4854f1, %struct.Memory** %MEMORY
  %loadMem_4854f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 33
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 15
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %856 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %855, i64 0, i64 0
  %XMM0.i549 = bitcast %union.VectorReg* %856 to %union.vec128_t*
  %857 = load i64, i64* %RBP.i548
  %858 = sub i64 %857, 48
  %859 = bitcast %union.vec128_t* %XMM0.i549 to i8*
  %860 = load i64, i64* %PC.i547
  %861 = add i64 %860, 5
  store i64 %861, i64* %PC.i547
  %862 = bitcast i8* %859 to <2 x float>*
  %863 = load <2 x float>, <2 x float>* %862, align 1
  %864 = extractelement <2 x float> %863, i32 0
  %865 = inttoptr i64 %858 to float*
  store float %864, float* %865
  store %struct.Memory* %loadMem_4854f6, %struct.Memory** %MEMORY
  %loadMem_4854fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 33
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 1
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RAX.i545 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 15
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %874 to i64*
  %875 = load i64, i64* %RBP.i546
  %876 = sub i64 %875, 32
  %877 = load i64, i64* %PC.i544
  %878 = add i64 %877, 4
  store i64 %878, i64* %PC.i544
  %879 = inttoptr i64 %876 to i64*
  %880 = load i64, i64* %879
  store i64 %880, i64* %RAX.i545, align 8
  store %struct.Memory* %loadMem_4854fb, %struct.Memory** %MEMORY
  %loadMem_4854ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 1
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 7
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RAX.i542
  %891 = add i64 %890, 60
  %892 = load i64, i64* %PC.i541
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC.i541
  %894 = inttoptr i64 %891 to i32*
  %895 = load i32, i32* %894
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RDX.i543, align 8
  store %struct.Memory* %loadMem_4854ff, %struct.Memory** %MEMORY
  %loadMem_485502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 7
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %EDX.i539 = bitcast %union.anon* %902 to i32*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %905 to i64*
  %906 = load i64, i64* %RBP.i540
  %907 = sub i64 %906, 52
  %908 = load i32, i32* %EDX.i539
  %909 = zext i32 %908 to i64
  %910 = load i64, i64* %PC.i538
  %911 = add i64 %910, 3
  store i64 %911, i64* %PC.i538
  %912 = inttoptr i64 %907 to i32*
  store i32 %908, i32* %912
  store %struct.Memory* %loadMem_485502, %struct.Memory** %MEMORY
  %loadMem_485505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RAX.i536 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 15
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %RBP.i537
  %923 = sub i64 %922, 40
  %924 = load i64, i64* %PC.i535
  %925 = add i64 %924, 4
  store i64 %925, i64* %PC.i535
  %926 = inttoptr i64 %923 to i64*
  %927 = load i64, i64* %926
  store i64 %927, i64* %RAX.i536, align 8
  store %struct.Memory* %loadMem_485505, %struct.Memory** %MEMORY
  %loadMem_485509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 1
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RAX.i533 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 7
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RDX.i534 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %RAX.i533
  %938 = add i64 %937, 60
  %939 = load i64, i64* %PC.i532
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC.i532
  %941 = inttoptr i64 %938 to i32*
  %942 = load i32, i32* %941
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RDX.i534, align 8
  store %struct.Memory* %loadMem_485509, %struct.Memory** %MEMORY
  %loadMem_48550c = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 7
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %EDX.i530 = bitcast %union.anon* %949 to i32*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 15
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %RBP.i531
  %954 = sub i64 %953, 56
  %955 = load i32, i32* %EDX.i530
  %956 = zext i32 %955 to i64
  %957 = load i64, i64* %PC.i529
  %958 = add i64 %957, 3
  store i64 %958, i64* %PC.i529
  %959 = inttoptr i64 %954 to i32*
  store i32 %955, i32* %959
  store %struct.Memory* %loadMem_48550c, %struct.Memory** %MEMORY
  %loadMem_48550f = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i528
  %970 = sub i64 %969, 32
  %971 = load i64, i64* %PC.i526
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i526
  %973 = inttoptr i64 %970 to i64*
  %974 = load i64, i64* %973
  store i64 %974, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_48550f, %struct.Memory** %MEMORY
  %loadMem_485513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 1
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 11
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RDI.i525 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RAX.i524
  %985 = add i64 %984, 60
  %986 = load i64, i64* %PC.i523
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC.i523
  %988 = inttoptr i64 %985 to i32*
  %989 = load i32, i32* %988
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RDI.i525, align 8
  store %struct.Memory* %loadMem_485513, %struct.Memory** %MEMORY
  %loadMem_485516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 15
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %RBP.i522
  %1001 = sub i64 %1000, 32
  %1002 = load i64, i64* %PC.i520
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC.i520
  %1004 = inttoptr i64 %1001 to i64*
  %1005 = load i64, i64* %1004
  store i64 %1005, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_485516, %struct.Memory** %MEMORY
  %loadMem_48551a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 1
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RAX.i519 = bitcast %union.anon* %1011 to i64*
  %1012 = load i64, i64* %RAX.i519
  %1013 = load i64, i64* %PC.i518
  %1014 = add i64 %1013, 4
  store i64 %1014, i64* %PC.i518
  %1015 = add i64 76, %1012
  store i64 %1015, i64* %RAX.i519, align 8
  %1016 = icmp ult i64 %1015, %1012
  %1017 = icmp ult i64 %1015, 76
  %1018 = or i1 %1016, %1017
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1019, i8* %1020, align 1
  %1021 = trunc i64 %1015 to i32
  %1022 = and i32 %1021, 255
  %1023 = call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1026, i8* %1027, align 1
  %1028 = xor i64 76, %1012
  %1029 = xor i64 %1028, %1015
  %1030 = lshr i64 %1029, 4
  %1031 = trunc i64 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1032, i8* %1033, align 1
  %1034 = icmp eq i64 %1015, 0
  %1035 = zext i1 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i64 %1015, 63
  %1038 = trunc i64 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1038, i8* %1039, align 1
  %1040 = lshr i64 %1012, 63
  %1041 = xor i64 %1037, %1040
  %1042 = add i64 %1041, %1037
  %1043 = icmp eq i64 %1042, 2
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1044, i8* %1045, align 1
  store %struct.Memory* %loadMem_48551a, %struct.Memory** %MEMORY
  %loadMem_48551e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 5
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 15
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RBP.i517 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RBP.i517
  %1056 = sub i64 %1055, 32
  %1057 = load i64, i64* %PC.i515
  %1058 = add i64 %1057, 4
  store i64 %1058, i64* %PC.i515
  %1059 = inttoptr i64 %1056 to i64*
  %1060 = load i64, i64* %1059
  store i64 %1060, i64* %RCX.i516, align 8
  store %struct.Memory* %loadMem_48551e, %struct.Memory** %MEMORY
  %loadMem_485522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 5
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %1066 to i64*
  %1067 = load i64, i64* %RCX.i514
  %1068 = add i64 %1067, 84
  %1069 = load i64, i64* %PC.i513
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC.i513
  %1071 = inttoptr i64 %1068 to i32*
  %1072 = load i32, i32* %1071
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1073, align 1
  %1074 = and i32 %1072, 255
  %1075 = call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1078, i8* %1079, align 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1080, align 1
  %1081 = icmp eq i32 %1072, 0
  %1082 = zext i1 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1082, i8* %1083, align 1
  %1084 = lshr i32 %1072, 31
  %1085 = trunc i32 %1084 to i8
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1085, i8* %1086, align 1
  %1087 = lshr i32 %1072, 31
  %1088 = xor i32 %1084, %1087
  %1089 = add i32 %1088, %1087
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1091, i8* %1092, align 1
  store %struct.Memory* %loadMem_485522, %struct.Memory** %MEMORY
  %loadMem_485526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 21
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %1099 = bitcast %union.anon* %1098 to %struct.anon.2*
  %R10B.i512 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1099, i32 0, i32 0
  %1100 = load i64, i64* %PC.i511
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %PC.i511
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1103 = load i8, i8* %1102, align 1
  %1104 = icmp eq i8 %1103, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %R10B.i512, align 1
  store %struct.Memory* %loadMem_485526, %struct.Memory** %MEMORY
  %loadMem_48552a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 33
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 21
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %1112 = bitcast %union.anon* %1111 to %struct.anon.2*
  %R10B.i510 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1112, i32 0, i32 0
  %1113 = load i8, i8* %R10B.i510
  %1114 = zext i8 %1113 to i64
  %1115 = load i64, i64* %PC.i509
  %1116 = add i64 %1115, 4
  store i64 %1116, i64* %PC.i509
  %1117 = and i64 1, %1114
  %1118 = trunc i64 %1117 to i8
  store i8 %1118, i8* %R10B.i510, align 1
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1119, align 1
  %1120 = trunc i64 %1117 to i32
  %1121 = and i32 %1120, 255
  %1122 = call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1125, i8* %1126, align 1
  %1127 = icmp eq i8 %1118, 0
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1128, i8* %1129, align 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1130, align 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1131, align 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1132, align 1
  store %struct.Memory* %loadMem_48552a, %struct.Memory** %MEMORY
  %loadMem_48552e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 21
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %1139 = bitcast %union.anon* %1138 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1139, i32 0, i32 0
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 7
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RDX.i508 = bitcast %union.anon* %1142 to i64*
  %1143 = load i8, i8* %R10B.i
  %1144 = zext i8 %1143 to i64
  %1145 = load i64, i64* %PC.i507
  %1146 = add i64 %1145, 4
  store i64 %1146, i64* %PC.i507
  %1147 = and i64 %1144, 255
  store i64 %1147, i64* %RDX.i508, align 8
  store %struct.Memory* %loadMem_48552e, %struct.Memory** %MEMORY
  %loadMem_485532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 5
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 15
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %1156 to i64*
  %1157 = load i64, i64* %RBP.i506
  %1158 = sub i64 %1157, 32
  %1159 = load i64, i64* %PC.i504
  %1160 = add i64 %1159, 4
  store i64 %1160, i64* %PC.i504
  %1161 = inttoptr i64 %1158 to i64*
  %1162 = load i64, i64* %1161
  store i64 %1162, i64* %RCX.i505, align 8
  store %struct.Memory* %loadMem_485532, %struct.Memory** %MEMORY
  %loadMem_485536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 5
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1170 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1169, i64 0, i64 0
  %YMM0.i503 = bitcast %union.VectorReg* %1170 to %"class.std::bitset"*
  %1171 = bitcast %"class.std::bitset"* %YMM0.i503 to i8*
  %1172 = load i64, i64* %RCX.i502
  %1173 = add i64 %1172, 56
  %1174 = load i64, i64* %PC.i501
  %1175 = add i64 %1174, 5
  store i64 %1175, i64* %PC.i501
  %1176 = inttoptr i64 %1173 to float*
  %1177 = load float, float* %1176
  %1178 = bitcast i8* %1171 to float*
  store float %1177, float* %1178, align 1
  %1179 = getelementptr inbounds i8, i8* %1171, i64 4
  %1180 = bitcast i8* %1179 to float*
  store float 0.000000e+00, float* %1180, align 1
  %1181 = getelementptr inbounds i8, i8* %1171, i64 8
  %1182 = bitcast i8* %1181 to float*
  store float 0.000000e+00, float* %1182, align 1
  %1183 = getelementptr inbounds i8, i8* %1171, i64 12
  %1184 = bitcast i8* %1183 to float*
  store float 0.000000e+00, float* %1184, align 1
  store %struct.Memory* %loadMem_485536, %struct.Memory** %MEMORY
  %loadMem_48553b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i500
  %1195 = sub i64 %1194, 32
  %1196 = load i64, i64* %PC.i498
  %1197 = add i64 %1196, 4
  store i64 %1197, i64* %PC.i498
  %1198 = inttoptr i64 %1195 to i64*
  %1199 = load i64, i64* %1198
  store i64 %1199, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_48553b, %struct.Memory** %MEMORY
  %loadMem_48553f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 33
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 5
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1207 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1206, i64 0, i64 1
  %YMM1.i497 = bitcast %union.VectorReg* %1207 to %"class.std::bitset"*
  %1208 = bitcast %"class.std::bitset"* %YMM1.i497 to i8*
  %1209 = load i64, i64* %RCX.i496
  %1210 = add i64 %1209, 72
  %1211 = load i64, i64* %PC.i495
  %1212 = add i64 %1211, 5
  store i64 %1212, i64* %PC.i495
  %1213 = bitcast i8* %1208 to <2 x i32>*
  %1214 = load <2 x i32>, <2 x i32>* %1213, align 1
  %1215 = getelementptr inbounds i8, i8* %1208, i64 8
  %1216 = bitcast i8* %1215 to <2 x i32>*
  %1217 = load <2 x i32>, <2 x i32>* %1216, align 1
  %1218 = inttoptr i64 %1210 to i32*
  %1219 = load i32, i32* %1218
  %1220 = sitofp i32 %1219 to float
  %1221 = bitcast i8* %1208 to float*
  store float %1220, float* %1221, align 1
  %1222 = extractelement <2 x i32> %1214, i32 1
  %1223 = getelementptr inbounds i8, i8* %1208, i64 4
  %1224 = bitcast i8* %1223 to i32*
  store i32 %1222, i32* %1224, align 1
  %1225 = extractelement <2 x i32> %1217, i32 0
  %1226 = bitcast i8* %1215 to i32*
  store i32 %1225, i32* %1226, align 1
  %1227 = extractelement <2 x i32> %1217, i32 1
  %1228 = getelementptr inbounds i8, i8* %1208, i64 12
  %1229 = bitcast i8* %1228 to i32*
  store i32 %1227, i32* %1229, align 1
  store %struct.Memory* %loadMem_48553f, %struct.Memory** %MEMORY
  %loadMem_485544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 1
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 9
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RSI.i494 = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %RAX.i493
  %1240 = load i64, i64* %PC.i492
  %1241 = add i64 %1240, 3
  store i64 %1241, i64* %PC.i492
  store i64 %1239, i64* %RSI.i494, align 8
  store %struct.Memory* %loadMem_485544, %struct.Memory** %MEMORY
  %loadMem1_485547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %1244 to i64*
  %1245 = load i64, i64* %PC.i491
  %1246 = add i64 %1245, -416759
  %1247 = load i64, i64* %PC.i491
  %1248 = add i64 %1247, 5
  %1249 = load i64, i64* %PC.i491
  %1250 = add i64 %1249, 5
  store i64 %1250, i64* %PC.i491
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1252 = load i64, i64* %1251, align 8
  %1253 = add i64 %1252, -8
  %1254 = inttoptr i64 %1253 to i64*
  store i64 %1248, i64* %1254
  store i64 %1253, i64* %1251, align 8
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1246, i64* %1255, align 8
  store %struct.Memory* %loadMem1_485547, %struct.Memory** %MEMORY
  %loadMem2_485547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_485547 = load i64, i64* %3
  %call2_485547 = call %struct.Memory* @sub_41f950.crude_dragon_weakness(%struct.State* %0, i64 %loadPC_485547, %struct.Memory* %loadMem2_485547)
  store %struct.Memory* %call2_485547, %struct.Memory** %MEMORY
  %loadMem_48554c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 33
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %1258 to i64*
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1259, i64 0, i64 1
  %YMM1.i490 = bitcast %union.VectorReg* %1260 to %"class.std::bitset"*
  %1261 = bitcast %"class.std::bitset"* %YMM1.i490 to i8*
  %1262 = load i64, i64* %PC.i489
  %1263 = add i64 %1262, ptrtoint (%G_0x5d9f4__rip__type* @G_0x5d9f4__rip_ to i64)
  %1264 = load i64, i64* %PC.i489
  %1265 = add i64 %1264, 8
  store i64 %1265, i64* %PC.i489
  %1266 = inttoptr i64 %1263 to double*
  %1267 = load double, double* %1266
  %1268 = bitcast i8* %1261 to double*
  store double %1267, double* %1268, align 1
  %1269 = getelementptr inbounds i8, i8* %1261, i64 8
  %1270 = bitcast i8* %1269 to double*
  store double 0.000000e+00, double* %1270, align 1
  store %struct.Memory* %loadMem_48554c, %struct.Memory** %MEMORY
  %loadMem_485554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %1276 to i64*
  %1277 = load i64, i64* %PC.i487
  %1278 = add i64 %1277, 10
  store i64 %1278, i64* %PC.i487
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_485554, %struct.Memory** %MEMORY
  %loadMem_48555e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 33
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 15
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1285, i64 0, i64 0
  %XMM0.i486 = bitcast %union.VectorReg* %1286 to %union.vec128_t*
  %1287 = load i64, i64* %RBP.i485
  %1288 = sub i64 %1287, 60
  %1289 = bitcast %union.vec128_t* %XMM0.i486 to i8*
  %1290 = load i64, i64* %PC.i484
  %1291 = add i64 %1290, 5
  store i64 %1291, i64* %PC.i484
  %1292 = bitcast i8* %1289 to <2 x float>*
  %1293 = load <2 x float>, <2 x float>* %1292, align 1
  %1294 = extractelement <2 x float> %1293, i32 0
  %1295 = inttoptr i64 %1288 to float*
  store float %1294, float* %1295
  store %struct.Memory* %loadMem_48555e, %struct.Memory** %MEMORY
  %loadMem_485563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 5
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %1301 to i64*
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 15
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %1304 to i64*
  %1305 = load i64, i64* %RBP.i483
  %1306 = sub i64 %1305, 16
  %1307 = load i64, i64* %PC.i481
  %1308 = add i64 %1307, 4
  store i64 %1308, i64* %PC.i481
  %1309 = inttoptr i64 %1306 to i32*
  %1310 = load i32, i32* %1309
  %1311 = sext i32 %1310 to i64
  store i64 %1311, i64* %RCX.i482, align 8
  store %struct.Memory* %loadMem_485563, %struct.Memory** %MEMORY
  %loadMem_485567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 5
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RCX.i480
  %1319 = load i64, i64* %PC.i479
  %1320 = add i64 %1319, 7
  store i64 %1320, i64* %PC.i479
  %1321 = sext i64 %1318 to i128
  %1322 = and i128 %1321, -18446744073709551616
  %1323 = zext i64 %1318 to i128
  %1324 = or i128 %1322, %1323
  %1325 = mul i128 564, %1324
  %1326 = trunc i128 %1325 to i64
  store i64 %1326, i64* %RCX.i480, align 8
  %1327 = sext i64 %1326 to i128
  %1328 = icmp ne i128 %1327, %1325
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1329, i8* %1330, align 1
  %1331 = trunc i128 %1325 to i32
  %1332 = and i32 %1331, 255
  %1333 = call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1336, i8* %1337, align 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1338, align 1
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1339, align 1
  %1340 = lshr i64 %1326, 63
  %1341 = trunc i64 %1340 to i8
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1341, i8* %1342, align 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1329, i8* %1343, align 1
  store %struct.Memory* %loadMem_485567, %struct.Memory** %MEMORY
  %loadMem_48556e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 1
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 5
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %RAX.i477
  %1354 = load i64, i64* %RCX.i478
  %1355 = load i64, i64* %PC.i476
  %1356 = add i64 %1355, 3
  store i64 %1356, i64* %PC.i476
  %1357 = add i64 %1354, %1353
  store i64 %1357, i64* %RAX.i477, align 8
  %1358 = icmp ult i64 %1357, %1353
  %1359 = icmp ult i64 %1357, %1354
  %1360 = or i1 %1358, %1359
  %1361 = zext i1 %1360 to i8
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1361, i8* %1362, align 1
  %1363 = trunc i64 %1357 to i32
  %1364 = and i32 %1363, 255
  %1365 = call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1368, i8* %1369, align 1
  %1370 = xor i64 %1354, %1353
  %1371 = xor i64 %1370, %1357
  %1372 = lshr i64 %1371, 4
  %1373 = trunc i64 %1372 to i8
  %1374 = and i8 %1373, 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1374, i8* %1375, align 1
  %1376 = icmp eq i64 %1357, 0
  %1377 = zext i1 %1376 to i8
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1377, i8* %1378, align 1
  %1379 = lshr i64 %1357, 63
  %1380 = trunc i64 %1379 to i8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1380, i8* %1381, align 1
  %1382 = lshr i64 %1353, 63
  %1383 = lshr i64 %1354, 63
  %1384 = xor i64 %1379, %1382
  %1385 = xor i64 %1379, %1383
  %1386 = add i64 %1384, %1385
  %1387 = icmp eq i64 %1386, 2
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1388, i8* %1389, align 1
  store %struct.Memory* %loadMem_48556e, %struct.Memory** %MEMORY
  %loadMem_485571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1391 = getelementptr inbounds %struct.GPR, %struct.GPR* %1390, i32 0, i32 33
  %1392 = getelementptr inbounds %struct.Reg, %struct.Reg* %1391, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1392 to i64*
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1394 = getelementptr inbounds %struct.GPR, %struct.GPR* %1393, i32 0, i32 1
  %1395 = getelementptr inbounds %struct.Reg, %struct.Reg* %1394, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1395 to i64*
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1397 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1396, i64 0, i64 0
  %YMM0.i475 = bitcast %union.VectorReg* %1397 to %"class.std::bitset"*
  %1398 = bitcast %"class.std::bitset"* %YMM0.i475 to i8*
  %1399 = load i64, i64* %RAX.i474
  %1400 = add i64 %1399, 12
  %1401 = load i64, i64* %PC.i473
  %1402 = add i64 %1401, 5
  store i64 %1402, i64* %PC.i473
  %1403 = inttoptr i64 %1400 to float*
  %1404 = load float, float* %1403
  %1405 = bitcast i8* %1398 to float*
  store float %1404, float* %1405, align 1
  %1406 = getelementptr inbounds i8, i8* %1398, i64 4
  %1407 = bitcast i8* %1406 to float*
  store float 0.000000e+00, float* %1407, align 1
  %1408 = getelementptr inbounds i8, i8* %1398, i64 8
  %1409 = bitcast i8* %1408 to float*
  store float 0.000000e+00, float* %1409, align 1
  %1410 = getelementptr inbounds i8, i8* %1398, i64 12
  %1411 = bitcast i8* %1410 to float*
  store float 0.000000e+00, float* %1411, align 1
  store %struct.Memory* %loadMem_485571, %struct.Memory** %MEMORY
  %loadMem_485576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 15
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1419 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1418, i64 0, i64 0
  %XMM0.i472 = bitcast %union.VectorReg* %1419 to %union.vec128_t*
  %1420 = load i64, i64* %RBP.i471
  %1421 = sub i64 %1420, 76
  %1422 = bitcast %union.vec128_t* %XMM0.i472 to i8*
  %1423 = load i64, i64* %PC.i470
  %1424 = add i64 %1423, 5
  store i64 %1424, i64* %PC.i470
  %1425 = bitcast i8* %1422 to <2 x float>*
  %1426 = load <2 x float>, <2 x float>* %1425, align 1
  %1427 = extractelement <2 x float> %1426, i32 0
  %1428 = inttoptr i64 %1421 to float*
  store float %1427, float* %1428
  store %struct.Memory* %loadMem_485576, %struct.Memory** %MEMORY
  %loadMem_48557b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 15
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1436 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1435, i64 0, i64 0
  %YMM0.i469 = bitcast %union.VectorReg* %1436 to %"class.std::bitset"*
  %1437 = bitcast %"class.std::bitset"* %YMM0.i469 to i8*
  %1438 = load i64, i64* %RBP.i468
  %1439 = sub i64 %1438, 20
  %1440 = load i64, i64* %PC.i467
  %1441 = add i64 %1440, 5
  store i64 %1441, i64* %PC.i467
  %1442 = inttoptr i64 %1439 to float*
  %1443 = load float, float* %1442
  %1444 = fpext float %1443 to double
  %1445 = bitcast i8* %1437 to double*
  store double %1444, double* %1445, align 1
  store %struct.Memory* %loadMem_48557b, %struct.Memory** %MEMORY
  %loadMem_485580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1448 to i64*
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1450 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1449, i64 0, i64 0
  %XMM0.i462 = bitcast %union.VectorReg* %1450 to %union.vec128_t*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1451, i64 0, i64 1
  %XMM1.i463 = bitcast %union.VectorReg* %1452 to %union.vec128_t*
  %1453 = bitcast %union.vec128_t* %XMM0.i462 to i8*
  %1454 = bitcast %union.vec128_t* %XMM1.i463 to i8*
  %1455 = load i64, i64* %PC.i461
  %1456 = add i64 %1455, 4
  store i64 %1456, i64* %PC.i461
  %1457 = bitcast i8* %1453 to double*
  %1458 = load double, double* %1457, align 1
  %1459 = bitcast i8* %1454 to double*
  %1460 = load double, double* %1459, align 1
  %1461 = fcmp uno double %1458, %1460
  br i1 %1461, label %1462, label %1474

; <label>:1462:                                   ; preds = %entry
  %1463 = fadd double %1458, %1460
  %1464 = bitcast double %1463 to i64
  %1465 = and i64 %1464, 9221120237041090560
  %1466 = icmp eq i64 %1465, 9218868437227405312
  %1467 = and i64 %1464, 2251799813685247
  %1468 = icmp ne i64 %1467, 0
  %1469 = and i1 %1466, %1468
  br i1 %1469, label %1470, label %1480

; <label>:1470:                                   ; preds = %1462
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1472 = load i64, i64* %1471, align 8
  %1473 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1472, %struct.Memory* %loadMem_485580)
  br label %routine_ucomisd__xmm1___xmm0.exit464

; <label>:1474:                                   ; preds = %entry
  %1475 = fcmp ogt double %1458, %1460
  br i1 %1475, label %1480, label %1476

; <label>:1476:                                   ; preds = %1474
  %1477 = fcmp olt double %1458, %1460
  br i1 %1477, label %1480, label %1478

; <label>:1478:                                   ; preds = %1476
  %1479 = fcmp oeq double %1458, %1460
  br i1 %1479, label %1480, label %1487

; <label>:1480:                                   ; preds = %1478, %1476, %1474, %1462
  %1481 = phi i8 [ 0, %1474 ], [ 0, %1476 ], [ 1, %1478 ], [ 1, %1462 ]
  %1482 = phi i8 [ 0, %1474 ], [ 0, %1476 ], [ 0, %1478 ], [ 1, %1462 ]
  %1483 = phi i8 [ 0, %1474 ], [ 1, %1476 ], [ 0, %1478 ], [ 1, %1462 ]
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1481, i8* %1484, align 1
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1482, i8* %1485, align 1
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1483, i8* %1486, align 1
  br label %1487

; <label>:1487:                                   ; preds = %1480, %1478
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1488, align 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1489, align 1
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1490, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit464

routine_ucomisd__xmm1___xmm0.exit464:             ; preds = %1470, %1487
  %1491 = phi %struct.Memory* [ %1473, %1470 ], [ %loadMem_485580, %1487 ]
  store %struct.Memory* %1491, %struct.Memory** %MEMORY
  %loadMem_485584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1494 to i64*
  %1495 = load i64, i64* %PC.i460
  %1496 = add i64 %1495, 19
  %1497 = load i64, i64* %PC.i460
  %1498 = add i64 %1497, 6
  %1499 = load i64, i64* %PC.i460
  %1500 = add i64 %1499, 6
  store i64 %1500, i64* %PC.i460
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1502 = load i8, i8* %1501, align 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1504 = load i8, i8* %1503, align 1
  %1505 = or i8 %1504, %1502
  %1506 = icmp ne i8 %1505, 0
  %1507 = zext i1 %1506 to i8
  store i8 %1507, i8* %BRANCH_TAKEN, align 1
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1509 = select i1 %1506, i64 %1496, i64 %1498
  store i64 %1509, i64* %1508, align 8
  store %struct.Memory* %loadMem_485584, %struct.Memory** %MEMORY
  %loadBr_485584 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485584 = icmp eq i8 %loadBr_485584, 1
  br i1 %cmpBr_485584, label %block_.L_485597, label %block_48558a

block_48558a:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit464
  %loadMem_48558a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1514 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1513, i64 0, i64 0
  %YMM0.i459 = bitcast %union.VectorReg* %1514 to %"class.std::bitset"*
  %1515 = bitcast %"class.std::bitset"* %YMM0.i459 to i8*
  %1516 = load i64, i64* %PC.i458
  %1517 = add i64 %1516, ptrtoint (%G_0x5db6e__rip__type* @G_0x5db6e__rip_ to i64)
  %1518 = load i64, i64* %PC.i458
  %1519 = add i64 %1518, 8
  store i64 %1519, i64* %PC.i458
  %1520 = inttoptr i64 %1517 to float*
  %1521 = load float, float* %1520
  %1522 = bitcast i8* %1515 to float*
  store float %1521, float* %1522, align 1
  %1523 = getelementptr inbounds i8, i8* %1515, i64 4
  %1524 = bitcast i8* %1523 to float*
  store float 0.000000e+00, float* %1524, align 1
  %1525 = getelementptr inbounds i8, i8* %1515, i64 8
  %1526 = bitcast i8* %1525 to float*
  store float 0.000000e+00, float* %1526, align 1
  %1527 = getelementptr inbounds i8, i8* %1515, i64 12
  %1528 = bitcast i8* %1527 to float*
  store float 0.000000e+00, float* %1528, align 1
  store %struct.Memory* %loadMem_48558a, %struct.Memory** %MEMORY
  %loadMem_485592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 33
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1535, i64 0, i64 0
  %XMM0.i457 = bitcast %union.VectorReg* %1536 to %union.vec128_t*
  %1537 = load i64, i64* %RBP.i456
  %1538 = sub i64 %1537, 20
  %1539 = bitcast %union.vec128_t* %XMM0.i457 to i8*
  %1540 = load i64, i64* %PC.i455
  %1541 = add i64 %1540, 5
  store i64 %1541, i64* %PC.i455
  %1542 = bitcast i8* %1539 to <2 x float>*
  %1543 = load <2 x float>, <2 x float>* %1542, align 1
  %1544 = extractelement <2 x float> %1543, i32 0
  %1545 = inttoptr i64 %1538 to float*
  store float %1544, float* %1545
  store %struct.Memory* %loadMem_485592, %struct.Memory** %MEMORY
  br label %block_.L_485597

block_.L_485597:                                  ; preds = %block_48558a, %routine_ucomisd__xmm1___xmm0.exit464
  %loadMem_485597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %PC.i454
  %1550 = add i64 %1549, 8
  store i64 %1550, i64* %PC.i454
  %1551 = load i32, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*)
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1552, align 1
  %1553 = and i32 %1551, 255
  %1554 = call i32 @llvm.ctpop.i32(i32 %1553)
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1557, i8* %1558, align 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1559, align 1
  %1560 = icmp eq i32 %1551, 0
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1561, i8* %1562, align 1
  %1563 = lshr i32 %1551, 31
  %1564 = trunc i32 %1563 to i8
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1564, i8* %1565, align 1
  %1566 = lshr i32 %1551, 31
  %1567 = xor i32 %1563, %1566
  %1568 = add i32 %1567, %1566
  %1569 = icmp eq i32 %1568, 2
  %1570 = zext i1 %1569 to i8
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1570, i8* %1571, align 1
  store %struct.Memory* %loadMem_485597, %struct.Memory** %MEMORY
  %loadMem_48559f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1574 to i64*
  %1575 = load i64, i64* %PC.i453
  %1576 = add i64 %1575, 102
  %1577 = load i64, i64* %PC.i453
  %1578 = add i64 %1577, 6
  %1579 = load i64, i64* %PC.i453
  %1580 = add i64 %1579, 6
  store i64 %1580, i64* %PC.i453
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1582 = load i8, i8* %1581, align 1
  store i8 %1582, i8* %BRANCH_TAKEN, align 1
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1584 = icmp ne i8 %1582, 0
  %1585 = select i1 %1584, i64 %1576, i64 %1578
  store i64 %1585, i64* %1583, align 8
  store %struct.Memory* %loadMem_48559f, %struct.Memory** %MEMORY
  %loadBr_48559f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48559f = icmp eq i8 %loadBr_48559f, 1
  br i1 %cmpBr_48559f, label %block_.L_485605, label %block_4855a5

block_4855a5:                                     ; preds = %block_.L_485597
  %loadMem_4855a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1589, i64 0, i64 0
  %YMM0.i451 = bitcast %union.VectorReg* %1590 to %"class.std::bitset"*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1591, i64 0, i64 0
  %XMM0.i452 = bitcast %union.VectorReg* %1592 to %union.vec128_t*
  %1593 = bitcast %"class.std::bitset"* %YMM0.i451 to i8*
  %1594 = bitcast %"class.std::bitset"* %YMM0.i451 to i8*
  %1595 = bitcast %union.vec128_t* %XMM0.i452 to i8*
  %1596 = load i64, i64* %PC.i450
  %1597 = add i64 %1596, 3
  store i64 %1597, i64* %PC.i450
  %1598 = bitcast i8* %1594 to i64*
  %1599 = load i64, i64* %1598, align 1
  %1600 = getelementptr inbounds i8, i8* %1594, i64 8
  %1601 = bitcast i8* %1600 to i64*
  %1602 = load i64, i64* %1601, align 1
  %1603 = bitcast i8* %1595 to i64*
  %1604 = load i64, i64* %1603, align 1
  %1605 = getelementptr inbounds i8, i8* %1595, i64 8
  %1606 = bitcast i8* %1605 to i64*
  %1607 = load i64, i64* %1606, align 1
  %1608 = xor i64 %1604, %1599
  %1609 = xor i64 %1607, %1602
  %1610 = trunc i64 %1608 to i32
  %1611 = lshr i64 %1608, 32
  %1612 = trunc i64 %1611 to i32
  %1613 = bitcast i8* %1593 to i32*
  store i32 %1610, i32* %1613, align 1
  %1614 = getelementptr inbounds i8, i8* %1593, i64 4
  %1615 = bitcast i8* %1614 to i32*
  store i32 %1612, i32* %1615, align 1
  %1616 = trunc i64 %1609 to i32
  %1617 = getelementptr inbounds i8, i8* %1593, i64 8
  %1618 = bitcast i8* %1617 to i32*
  store i32 %1616, i32* %1618, align 1
  %1619 = lshr i64 %1609, 32
  %1620 = trunc i64 %1619 to i32
  %1621 = getelementptr inbounds i8, i8* %1593, i64 12
  %1622 = bitcast i8* %1621 to i32*
  store i32 %1620, i32* %1622, align 1
  store %struct.Memory* %loadMem_4855a5, %struct.Memory** %MEMORY
  %loadMem_4855a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 15
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1629, i64 0, i64 1
  %YMM1.i449 = bitcast %union.VectorReg* %1630 to %"class.std::bitset"*
  %1631 = bitcast %"class.std::bitset"* %YMM1.i449 to i8*
  %1632 = load i64, i64* %RBP.i448
  %1633 = sub i64 %1632, 76
  %1634 = load i64, i64* %PC.i447
  %1635 = add i64 %1634, 5
  store i64 %1635, i64* %PC.i447
  %1636 = inttoptr i64 %1633 to float*
  %1637 = load float, float* %1636
  %1638 = fpext float %1637 to double
  %1639 = bitcast i8* %1631 to double*
  store double %1638, double* %1639, align 1
  store %struct.Memory* %loadMem_4855a8, %struct.Memory** %MEMORY
  %loadMem_4855ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1644 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1643, i64 0, i64 0
  %XMM0.i441 = bitcast %union.VectorReg* %1644 to %union.vec128_t*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1646 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1645, i64 0, i64 1
  %XMM1.i442 = bitcast %union.VectorReg* %1646 to %union.vec128_t*
  %1647 = bitcast %union.vec128_t* %XMM0.i441 to i8*
  %1648 = bitcast %union.vec128_t* %XMM1.i442 to i8*
  %1649 = load i64, i64* %PC.i440
  %1650 = add i64 %1649, 4
  store i64 %1650, i64* %PC.i440
  %1651 = bitcast i8* %1647 to double*
  %1652 = load double, double* %1651, align 1
  %1653 = bitcast i8* %1648 to double*
  %1654 = load double, double* %1653, align 1
  %1655 = fcmp uno double %1652, %1654
  br i1 %1655, label %1656, label %1668

; <label>:1656:                                   ; preds = %block_4855a5
  %1657 = fadd double %1652, %1654
  %1658 = bitcast double %1657 to i64
  %1659 = and i64 %1658, 9221120237041090560
  %1660 = icmp eq i64 %1659, 9218868437227405312
  %1661 = and i64 %1658, 2251799813685247
  %1662 = icmp ne i64 %1661, 0
  %1663 = and i1 %1660, %1662
  br i1 %1663, label %1664, label %1674

; <label>:1664:                                   ; preds = %1656
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1666 = load i64, i64* %1665, align 8
  %1667 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1666, %struct.Memory* %loadMem_4855ad)
  br label %routine_ucomisd__xmm1___xmm0.exit443

; <label>:1668:                                   ; preds = %block_4855a5
  %1669 = fcmp ogt double %1652, %1654
  br i1 %1669, label %1674, label %1670

; <label>:1670:                                   ; preds = %1668
  %1671 = fcmp olt double %1652, %1654
  br i1 %1671, label %1674, label %1672

; <label>:1672:                                   ; preds = %1670
  %1673 = fcmp oeq double %1652, %1654
  br i1 %1673, label %1674, label %1681

; <label>:1674:                                   ; preds = %1672, %1670, %1668, %1656
  %1675 = phi i8 [ 0, %1668 ], [ 0, %1670 ], [ 1, %1672 ], [ 1, %1656 ]
  %1676 = phi i8 [ 0, %1668 ], [ 0, %1670 ], [ 0, %1672 ], [ 1, %1656 ]
  %1677 = phi i8 [ 0, %1668 ], [ 1, %1670 ], [ 0, %1672 ], [ 1, %1656 ]
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1675, i8* %1678, align 1
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1676, i8* %1679, align 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1677, i8* %1680, align 1
  br label %1681

; <label>:1681:                                   ; preds = %1674, %1672
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1682, align 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1683, align 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1684, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit443

routine_ucomisd__xmm1___xmm0.exit443:             ; preds = %1664, %1681
  %1685 = phi %struct.Memory* [ %1667, %1664 ], [ %loadMem_4855ad, %1681 ]
  store %struct.Memory* %1685, %struct.Memory** %MEMORY
  %loadMem_4855b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 33
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %PC.i439
  %1690 = add i64 %1689, 84
  %1691 = load i64, i64* %PC.i439
  %1692 = add i64 %1691, 6
  %1693 = load i64, i64* %PC.i439
  %1694 = add i64 %1693, 6
  store i64 %1694, i64* %PC.i439
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1696 = load i8, i8* %1695, align 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1698 = load i8, i8* %1697, align 1
  %1699 = or i8 %1698, %1696
  %1700 = icmp ne i8 %1699, 0
  %1701 = zext i1 %1700 to i8
  store i8 %1701, i8* %BRANCH_TAKEN, align 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1703 = select i1 %1700, i64 %1690, i64 %1692
  store i64 %1703, i64* %1702, align 8
  store %struct.Memory* %loadMem_4855b1, %struct.Memory** %MEMORY
  %loadBr_4855b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4855b1 = icmp eq i8 %loadBr_4855b1, 1
  br i1 %cmpBr_4855b1, label %block_.L_485605, label %block_4855b7

block_4855b7:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit443
  %loadMem_4855b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 15
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1709 to i64*
  %1710 = load i64, i64* %RBP.i438
  %1711 = sub i64 %1710, 52
  %1712 = load i64, i64* %PC.i437
  %1713 = add i64 %1712, 4
  store i64 %1713, i64* %PC.i437
  %1714 = inttoptr i64 %1711 to i32*
  %1715 = load i32, i32* %1714
  %1716 = sub i32 %1715, 1
  %1717 = icmp ult i32 %1715, 1
  %1718 = zext i1 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1718, i8* %1719, align 1
  %1720 = and i32 %1716, 255
  %1721 = call i32 @llvm.ctpop.i32(i32 %1720)
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  %1724 = xor i8 %1723, 1
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1724, i8* %1725, align 1
  %1726 = xor i32 %1715, 1
  %1727 = xor i32 %1726, %1716
  %1728 = lshr i32 %1727, 4
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1730, i8* %1731, align 1
  %1732 = icmp eq i32 %1716, 0
  %1733 = zext i1 %1732 to i8
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1733, i8* %1734, align 1
  %1735 = lshr i32 %1716, 31
  %1736 = trunc i32 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1736, i8* %1737, align 1
  %1738 = lshr i32 %1715, 31
  %1739 = xor i32 %1735, %1738
  %1740 = add i32 %1739, %1738
  %1741 = icmp eq i32 %1740, 2
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1742, i8* %1743, align 1
  store %struct.Memory* %loadMem_4855b7, %struct.Memory** %MEMORY
  %loadMem_4855bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %PC.i436
  %1748 = add i64 %1747, 26
  %1749 = load i64, i64* %PC.i436
  %1750 = add i64 %1749, 6
  %1751 = load i64, i64* %PC.i436
  %1752 = add i64 %1751, 6
  store i64 %1752, i64* %PC.i436
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1754 = load i8, i8* %1753, align 1
  store i8 %1754, i8* %BRANCH_TAKEN, align 1
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1756 = icmp ne i8 %1754, 0
  %1757 = select i1 %1756, i64 %1748, i64 %1750
  store i64 %1757, i64* %1755, align 8
  store %struct.Memory* %loadMem_4855bb, %struct.Memory** %MEMORY
  %loadBr_4855bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4855bb = icmp eq i8 %loadBr_4855bb, 1
  br i1 %cmpBr_4855bb, label %block_.L_4855d5, label %block_4855c1

block_4855c1:                                     ; preds = %block_4855b7
  %loadMem_4855c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 15
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %1763 to i64*
  %1764 = load i64, i64* %RBP.i435
  %1765 = sub i64 %1764, 52
  %1766 = load i64, i64* %PC.i434
  %1767 = add i64 %1766, 4
  store i64 %1767, i64* %PC.i434
  %1768 = inttoptr i64 %1765 to i32*
  %1769 = load i32, i32* %1768
  %1770 = sub i32 %1769, 8
  %1771 = icmp ult i32 %1769, 8
  %1772 = zext i1 %1771 to i8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1772, i8* %1773, align 1
  %1774 = and i32 %1770, 255
  %1775 = call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1778, i8* %1779, align 1
  %1780 = xor i32 %1769, 8
  %1781 = xor i32 %1780, %1770
  %1782 = lshr i32 %1781, 4
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1784, i8* %1785, align 1
  %1786 = icmp eq i32 %1770, 0
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1787, i8* %1788, align 1
  %1789 = lshr i32 %1770, 31
  %1790 = trunc i32 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1790, i8* %1791, align 1
  %1792 = lshr i32 %1769, 31
  %1793 = xor i32 %1789, %1792
  %1794 = add i32 %1793, %1792
  %1795 = icmp eq i32 %1794, 2
  %1796 = zext i1 %1795 to i8
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1796, i8* %1797, align 1
  store %struct.Memory* %loadMem_4855c1, %struct.Memory** %MEMORY
  %loadMem_4855c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1800 to i64*
  %1801 = load i64, i64* %PC.i433
  %1802 = add i64 %1801, 16
  %1803 = load i64, i64* %PC.i433
  %1804 = add i64 %1803, 6
  %1805 = load i64, i64* %PC.i433
  %1806 = add i64 %1805, 6
  store i64 %1806, i64* %PC.i433
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1808 = load i8, i8* %1807, align 1
  store i8 %1808, i8* %BRANCH_TAKEN, align 1
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1810 = icmp ne i8 %1808, 0
  %1811 = select i1 %1810, i64 %1802, i64 %1804
  store i64 %1811, i64* %1809, align 8
  store %struct.Memory* %loadMem_4855c5, %struct.Memory** %MEMORY
  %loadBr_4855c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4855c5 = icmp eq i8 %loadBr_4855c5, 1
  br i1 %cmpBr_4855c5, label %block_.L_4855d5, label %block_4855cb

block_4855cb:                                     ; preds = %block_4855c1
  %loadMem_4855cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 15
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RBP.i432
  %1819 = sub i64 %1818, 52
  %1820 = load i64, i64* %PC.i431
  %1821 = add i64 %1820, 4
  store i64 %1821, i64* %PC.i431
  %1822 = inttoptr i64 %1819 to i32*
  %1823 = load i32, i32* %1822
  %1824 = sub i32 %1823, 9
  %1825 = icmp ult i32 %1823, 9
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1826, i8* %1827, align 1
  %1828 = and i32 %1824, 255
  %1829 = call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1832, i8* %1833, align 1
  %1834 = xor i32 %1823, 9
  %1835 = xor i32 %1834, %1824
  %1836 = lshr i32 %1835, 4
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1838, i8* %1839, align 1
  %1840 = icmp eq i32 %1824, 0
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1841, i8* %1842, align 1
  %1843 = lshr i32 %1824, 31
  %1844 = trunc i32 %1843 to i8
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1844, i8* %1845, align 1
  %1846 = lshr i32 %1823, 31
  %1847 = xor i32 %1843, %1846
  %1848 = add i32 %1847, %1846
  %1849 = icmp eq i32 %1848, 2
  %1850 = zext i1 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1850, i8* %1851, align 1
  store %struct.Memory* %loadMem_4855cb, %struct.Memory** %MEMORY
  %loadMem_4855cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1854 to i64*
  %1855 = load i64, i64* %PC.i430
  %1856 = add i64 %1855, 49
  %1857 = load i64, i64* %PC.i430
  %1858 = add i64 %1857, 6
  %1859 = load i64, i64* %PC.i430
  %1860 = add i64 %1859, 6
  store i64 %1860, i64* %PC.i430
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1862 = load i8, i8* %1861, align 1
  %1863 = icmp eq i8 %1862, 0
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %BRANCH_TAKEN, align 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1866 = select i1 %1863, i64 %1856, i64 %1858
  store i64 %1866, i64* %1865, align 8
  store %struct.Memory* %loadMem_4855cf, %struct.Memory** %MEMORY
  %loadBr_4855cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4855cf = icmp eq i8 %loadBr_4855cf, 1
  br i1 %cmpBr_4855cf, label %block_.L_485600, label %block_.L_4855d5

block_.L_4855d5:                                  ; preds = %block_4855cb, %block_4855c1, %block_4855b7
  %loadMem_4855d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 15
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RBP.i429
  %1874 = sub i64 %1873, 56
  %1875 = load i64, i64* %PC.i428
  %1876 = add i64 %1875, 4
  store i64 %1876, i64* %PC.i428
  %1877 = inttoptr i64 %1874 to i32*
  %1878 = load i32, i32* %1877
  %1879 = sub i32 %1878, 1
  %1880 = icmp ult i32 %1878, 1
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1881, i8* %1882, align 1
  %1883 = and i32 %1879, 255
  %1884 = call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1887, i8* %1888, align 1
  %1889 = xor i32 %1878, 1
  %1890 = xor i32 %1889, %1879
  %1891 = lshr i32 %1890, 4
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1893, i8* %1894, align 1
  %1895 = icmp eq i32 %1879, 0
  %1896 = zext i1 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1896, i8* %1897, align 1
  %1898 = lshr i32 %1879, 31
  %1899 = trunc i32 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i32 %1878, 31
  %1902 = xor i32 %1898, %1901
  %1903 = add i32 %1902, %1901
  %1904 = icmp eq i32 %1903, 2
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1905, i8* %1906, align 1
  store %struct.Memory* %loadMem_4855d5, %struct.Memory** %MEMORY
  %loadMem_4855d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1909 to i64*
  %1910 = load i64, i64* %PC.i427
  %1911 = add i64 %1910, 26
  %1912 = load i64, i64* %PC.i427
  %1913 = add i64 %1912, 6
  %1914 = load i64, i64* %PC.i427
  %1915 = add i64 %1914, 6
  store i64 %1915, i64* %PC.i427
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1917 = load i8, i8* %1916, align 1
  store i8 %1917, i8* %BRANCH_TAKEN, align 1
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1919 = icmp ne i8 %1917, 0
  %1920 = select i1 %1919, i64 %1911, i64 %1913
  store i64 %1920, i64* %1918, align 8
  store %struct.Memory* %loadMem_4855d9, %struct.Memory** %MEMORY
  %loadBr_4855d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4855d9 = icmp eq i8 %loadBr_4855d9, 1
  br i1 %cmpBr_4855d9, label %block_.L_4855f3, label %block_4855df

block_4855df:                                     ; preds = %block_.L_4855d5
  %loadMem_4855df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i426
  %1928 = sub i64 %1927, 56
  %1929 = load i64, i64* %PC.i425
  %1930 = add i64 %1929, 4
  store i64 %1930, i64* %PC.i425
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = sub i32 %1932, 8
  %1934 = icmp ult i32 %1932, 8
  %1935 = zext i1 %1934 to i8
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1935, i8* %1936, align 1
  %1937 = and i32 %1933, 255
  %1938 = call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1941, i8* %1942, align 1
  %1943 = xor i32 %1932, 8
  %1944 = xor i32 %1943, %1933
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1947, i8* %1948, align 1
  %1949 = icmp eq i32 %1933, 0
  %1950 = zext i1 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1933, 31
  %1953 = trunc i32 %1952 to i8
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1953, i8* %1954, align 1
  %1955 = lshr i32 %1932, 31
  %1956 = xor i32 %1952, %1955
  %1957 = add i32 %1956, %1955
  %1958 = icmp eq i32 %1957, 2
  %1959 = zext i1 %1958 to i8
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1959, i8* %1960, align 1
  store %struct.Memory* %loadMem_4855df, %struct.Memory** %MEMORY
  %loadMem_4855e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %PC.i424
  %1965 = add i64 %1964, 16
  %1966 = load i64, i64* %PC.i424
  %1967 = add i64 %1966, 6
  %1968 = load i64, i64* %PC.i424
  %1969 = add i64 %1968, 6
  store i64 %1969, i64* %PC.i424
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1971 = load i8, i8* %1970, align 1
  store i8 %1971, i8* %BRANCH_TAKEN, align 1
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1973 = icmp ne i8 %1971, 0
  %1974 = select i1 %1973, i64 %1965, i64 %1967
  store i64 %1974, i64* %1972, align 8
  store %struct.Memory* %loadMem_4855e3, %struct.Memory** %MEMORY
  %loadBr_4855e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4855e3 = icmp eq i8 %loadBr_4855e3, 1
  br i1 %cmpBr_4855e3, label %block_.L_4855f3, label %block_4855e9

block_4855e9:                                     ; preds = %block_4855df
  %loadMem_4855e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 15
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %1980 to i64*
  %1981 = load i64, i64* %RBP.i423
  %1982 = sub i64 %1981, 56
  %1983 = load i64, i64* %PC.i422
  %1984 = add i64 %1983, 4
  store i64 %1984, i64* %PC.i422
  %1985 = inttoptr i64 %1982 to i32*
  %1986 = load i32, i32* %1985
  %1987 = sub i32 %1986, 9
  %1988 = icmp ult i32 %1986, 9
  %1989 = zext i1 %1988 to i8
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1989, i8* %1990, align 1
  %1991 = and i32 %1987, 255
  %1992 = call i32 @llvm.ctpop.i32(i32 %1991)
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1995, i8* %1996, align 1
  %1997 = xor i32 %1986, 9
  %1998 = xor i32 %1997, %1987
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2001, i8* %2002, align 1
  %2003 = icmp eq i32 %1987, 0
  %2004 = zext i1 %2003 to i8
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2004, i8* %2005, align 1
  %2006 = lshr i32 %1987, 31
  %2007 = trunc i32 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2007, i8* %2008, align 1
  %2009 = lshr i32 %1986, 31
  %2010 = xor i32 %2006, %2009
  %2011 = add i32 %2010, %2009
  %2012 = icmp eq i32 %2011, 2
  %2013 = zext i1 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2013, i8* %2014, align 1
  store %struct.Memory* %loadMem_4855e9, %struct.Memory** %MEMORY
  %loadMem_4855ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %2017 to i64*
  %2018 = load i64, i64* %PC.i421
  %2019 = add i64 %2018, 19
  %2020 = load i64, i64* %PC.i421
  %2021 = add i64 %2020, 6
  %2022 = load i64, i64* %PC.i421
  %2023 = add i64 %2022, 6
  store i64 %2023, i64* %PC.i421
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2025 = load i8, i8* %2024, align 1
  %2026 = icmp eq i8 %2025, 0
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %BRANCH_TAKEN, align 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2029 = select i1 %2026, i64 %2019, i64 %2021
  store i64 %2029, i64* %2028, align 8
  store %struct.Memory* %loadMem_4855ed, %struct.Memory** %MEMORY
  %loadBr_4855ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4855ed = icmp eq i8 %loadBr_4855ed, 1
  br i1 %cmpBr_4855ed, label %block_.L_485600, label %block_.L_4855f3

block_.L_4855f3:                                  ; preds = %block_4855e9, %block_4855df, %block_.L_4855d5
  %loadMem_4855f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2033, i64 0, i64 0
  %YMM0.i419 = bitcast %union.VectorReg* %2034 to %"class.std::bitset"*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2035, i64 0, i64 0
  %XMM0.i420 = bitcast %union.VectorReg* %2036 to %union.vec128_t*
  %2037 = bitcast %"class.std::bitset"* %YMM0.i419 to i8*
  %2038 = bitcast %"class.std::bitset"* %YMM0.i419 to i8*
  %2039 = bitcast %union.vec128_t* %XMM0.i420 to i8*
  %2040 = load i64, i64* %PC.i418
  %2041 = add i64 %2040, 3
  store i64 %2041, i64* %PC.i418
  %2042 = bitcast i8* %2038 to i64*
  %2043 = load i64, i64* %2042, align 1
  %2044 = getelementptr inbounds i8, i8* %2038, i64 8
  %2045 = bitcast i8* %2044 to i64*
  %2046 = load i64, i64* %2045, align 1
  %2047 = bitcast i8* %2039 to i64*
  %2048 = load i64, i64* %2047, align 1
  %2049 = getelementptr inbounds i8, i8* %2039, i64 8
  %2050 = bitcast i8* %2049 to i64*
  %2051 = load i64, i64* %2050, align 1
  %2052 = xor i64 %2048, %2043
  %2053 = xor i64 %2051, %2046
  %2054 = trunc i64 %2052 to i32
  %2055 = lshr i64 %2052, 32
  %2056 = trunc i64 %2055 to i32
  %2057 = bitcast i8* %2037 to i32*
  store i32 %2054, i32* %2057, align 1
  %2058 = getelementptr inbounds i8, i8* %2037, i64 4
  %2059 = bitcast i8* %2058 to i32*
  store i32 %2056, i32* %2059, align 1
  %2060 = trunc i64 %2053 to i32
  %2061 = getelementptr inbounds i8, i8* %2037, i64 8
  %2062 = bitcast i8* %2061 to i32*
  store i32 %2060, i32* %2062, align 1
  %2063 = lshr i64 %2053, 32
  %2064 = trunc i64 %2063 to i32
  %2065 = getelementptr inbounds i8, i8* %2037, i64 12
  %2066 = bitcast i8* %2065 to i32*
  store i32 %2064, i32* %2066, align 1
  store %struct.Memory* %loadMem_4855f3, %struct.Memory** %MEMORY
  %loadMem_4855f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 33
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 15
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %2072 to i64*
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2074 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2073, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %2074 to %union.vec128_t*
  %2075 = load i64, i64* %RBP.i416
  %2076 = sub i64 %2075, 4
  %2077 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %2078 = load i64, i64* %PC.i415
  %2079 = add i64 %2078, 5
  store i64 %2079, i64* %PC.i415
  %2080 = bitcast i8* %2077 to <2 x float>*
  %2081 = load <2 x float>, <2 x float>* %2080, align 1
  %2082 = extractelement <2 x float> %2081, i32 0
  %2083 = inttoptr i64 %2076 to float*
  store float %2082, float* %2083
  store %struct.Memory* %loadMem_4855f6, %struct.Memory** %MEMORY
  %loadMem_4855fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %2086 to i64*
  %2087 = load i64, i64* %PC.i414
  %2088 = add i64 %2087, 739
  %2089 = load i64, i64* %PC.i414
  %2090 = add i64 %2089, 5
  store i64 %2090, i64* %PC.i414
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2088, i64* %2091, align 8
  store %struct.Memory* %loadMem_4855fb, %struct.Memory** %MEMORY
  br label %block_.L_4858de

block_.L_485600:                                  ; preds = %block_4855e9, %block_4855cb
  %loadMem_485600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2094 to i64*
  %2095 = load i64, i64* %PC.i413
  %2096 = add i64 %2095, 5
  %2097 = load i64, i64* %PC.i413
  %2098 = add i64 %2097, 5
  store i64 %2098, i64* %PC.i413
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2096, i64* %2099, align 8
  store %struct.Memory* %loadMem_485600, %struct.Memory** %MEMORY
  br label %block_.L_485605

block_.L_485605:                                  ; preds = %block_.L_485600, %routine_ucomisd__xmm1___xmm0.exit443, %block_.L_485597
  %loadMem_485605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2103, i64 0, i64 0
  %YMM0.i411 = bitcast %union.VectorReg* %2104 to %"class.std::bitset"*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2105, i64 0, i64 0
  %XMM0.i412 = bitcast %union.VectorReg* %2106 to %union.vec128_t*
  %2107 = bitcast %"class.std::bitset"* %YMM0.i411 to i8*
  %2108 = bitcast %"class.std::bitset"* %YMM0.i411 to i8*
  %2109 = bitcast %union.vec128_t* %XMM0.i412 to i8*
  %2110 = load i64, i64* %PC.i410
  %2111 = add i64 %2110, 3
  store i64 %2111, i64* %PC.i410
  %2112 = bitcast i8* %2108 to i64*
  %2113 = load i64, i64* %2112, align 1
  %2114 = getelementptr inbounds i8, i8* %2108, i64 8
  %2115 = bitcast i8* %2114 to i64*
  %2116 = load i64, i64* %2115, align 1
  %2117 = bitcast i8* %2109 to i64*
  %2118 = load i64, i64* %2117, align 1
  %2119 = getelementptr inbounds i8, i8* %2109, i64 8
  %2120 = bitcast i8* %2119 to i64*
  %2121 = load i64, i64* %2120, align 1
  %2122 = xor i64 %2118, %2113
  %2123 = xor i64 %2121, %2116
  %2124 = trunc i64 %2122 to i32
  %2125 = lshr i64 %2122, 32
  %2126 = trunc i64 %2125 to i32
  %2127 = bitcast i8* %2107 to i32*
  store i32 %2124, i32* %2127, align 1
  %2128 = getelementptr inbounds i8, i8* %2107, i64 4
  %2129 = bitcast i8* %2128 to i32*
  store i32 %2126, i32* %2129, align 1
  %2130 = trunc i64 %2123 to i32
  %2131 = getelementptr inbounds i8, i8* %2107, i64 8
  %2132 = bitcast i8* %2131 to i32*
  store i32 %2130, i32* %2132, align 1
  %2133 = lshr i64 %2123, 32
  %2134 = trunc i64 %2133 to i32
  %2135 = getelementptr inbounds i8, i8* %2107, i64 12
  %2136 = bitcast i8* %2135 to i32*
  store i32 %2134, i32* %2136, align 1
  store %struct.Memory* %loadMem_485605, %struct.Memory** %MEMORY
  %loadMem_485608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2141 = getelementptr inbounds %struct.GPR, %struct.GPR* %2140, i32 0, i32 15
  %2142 = getelementptr inbounds %struct.Reg, %struct.Reg* %2141, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %2142 to i64*
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2143, i64 0, i64 1
  %YMM1.i409 = bitcast %union.VectorReg* %2144 to %"class.std::bitset"*
  %2145 = bitcast %"class.std::bitset"* %YMM1.i409 to i8*
  %2146 = load i64, i64* %RBP.i408
  %2147 = sub i64 %2146, 60
  %2148 = load i64, i64* %PC.i407
  %2149 = add i64 %2148, 5
  store i64 %2149, i64* %PC.i407
  %2150 = inttoptr i64 %2147 to float*
  %2151 = load float, float* %2150
  %2152 = fpext float %2151 to double
  %2153 = bitcast i8* %2145 to double*
  store double %2152, double* %2153, align 1
  store %struct.Memory* %loadMem_485608, %struct.Memory** %MEMORY
  %loadMem_48560d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2158 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2157, i64 0, i64 0
  %XMM0.i402 = bitcast %union.VectorReg* %2158 to %union.vec128_t*
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2160 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2159, i64 0, i64 1
  %XMM1.i403 = bitcast %union.VectorReg* %2160 to %union.vec128_t*
  %2161 = bitcast %union.vec128_t* %XMM1.i403 to i8*
  %2162 = bitcast %union.vec128_t* %XMM0.i402 to i8*
  %2163 = load i64, i64* %PC.i401
  %2164 = add i64 %2163, 4
  store i64 %2164, i64* %PC.i401
  %2165 = bitcast i8* %2161 to double*
  %2166 = load double, double* %2165, align 1
  %2167 = bitcast i8* %2162 to double*
  %2168 = load double, double* %2167, align 1
  %2169 = fcmp uno double %2166, %2168
  br i1 %2169, label %2170, label %2182

; <label>:2170:                                   ; preds = %block_.L_485605
  %2171 = fadd double %2166, %2168
  %2172 = bitcast double %2171 to i64
  %2173 = and i64 %2172, 9221120237041090560
  %2174 = icmp eq i64 %2173, 9218868437227405312
  %2175 = and i64 %2172, 2251799813685247
  %2176 = icmp ne i64 %2175, 0
  %2177 = and i1 %2174, %2176
  br i1 %2177, label %2178, label %2188

; <label>:2178:                                   ; preds = %2170
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2180 = load i64, i64* %2179, align 8
  %2181 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2180, %struct.Memory* %loadMem_48560d)
  br label %routine_ucomisd__xmm0___xmm1.exit404

; <label>:2182:                                   ; preds = %block_.L_485605
  %2183 = fcmp ogt double %2166, %2168
  br i1 %2183, label %2188, label %2184

; <label>:2184:                                   ; preds = %2182
  %2185 = fcmp olt double %2166, %2168
  br i1 %2185, label %2188, label %2186

; <label>:2186:                                   ; preds = %2184
  %2187 = fcmp oeq double %2166, %2168
  br i1 %2187, label %2188, label %2195

; <label>:2188:                                   ; preds = %2186, %2184, %2182, %2170
  %2189 = phi i8 [ 0, %2182 ], [ 0, %2184 ], [ 1, %2186 ], [ 1, %2170 ]
  %2190 = phi i8 [ 0, %2182 ], [ 0, %2184 ], [ 0, %2186 ], [ 1, %2170 ]
  %2191 = phi i8 [ 0, %2182 ], [ 1, %2184 ], [ 0, %2186 ], [ 1, %2170 ]
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2189, i8* %2192, align 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2190, i8* %2193, align 1
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2191, i8* %2194, align 1
  br label %2195

; <label>:2195:                                   ; preds = %2188, %2186
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2196, align 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2197, align 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2198, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit404

routine_ucomisd__xmm0___xmm1.exit404:             ; preds = %2178, %2195
  %2199 = phi %struct.Memory* [ %2181, %2178 ], [ %loadMem_48560d, %2195 ]
  store %struct.Memory* %2199, %struct.Memory** %MEMORY
  %loadMem_485611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 33
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %PC.i400
  %2204 = add i64 %2203, 17
  %2205 = load i64, i64* %PC.i400
  %2206 = add i64 %2205, 6
  %2207 = load i64, i64* %PC.i400
  %2208 = add i64 %2207, 6
  store i64 %2208, i64* %PC.i400
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2210 = load i8, i8* %2209, align 1
  %2211 = icmp eq i8 %2210, 0
  %2212 = zext i1 %2211 to i8
  store i8 %2212, i8* %BRANCH_TAKEN, align 1
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2214 = select i1 %2211, i64 %2204, i64 %2206
  store i64 %2214, i64* %2213, align 8
  store %struct.Memory* %loadMem_485611, %struct.Memory** %MEMORY
  %loadBr_485611 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485611 = icmp eq i8 %loadBr_485611, 1
  br i1 %cmpBr_485611, label %block_.L_485622, label %block_485617

block_485617:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit404
  %loadMem_485617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %PC.i399
  %2219 = add i64 %2218, 11
  %2220 = load i64, i64* %PC.i399
  %2221 = add i64 %2220, 6
  %2222 = load i64, i64* %PC.i399
  %2223 = add i64 %2222, 6
  store i64 %2223, i64* %PC.i399
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2225 = load i8, i8* %2224, align 1
  store i8 %2225, i8* %BRANCH_TAKEN, align 1
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2227 = icmp ne i8 %2225, 0
  %2228 = select i1 %2227, i64 %2219, i64 %2221
  store i64 %2228, i64* %2226, align 8
  store %struct.Memory* %loadMem_485617, %struct.Memory** %MEMORY
  %loadBr_485617 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485617 = icmp eq i8 %loadBr_485617, 1
  br i1 %cmpBr_485617, label %block_.L_485622, label %block_48561d

block_48561d:                                     ; preds = %block_485617
  %loadMem_48561d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 33
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2231 to i64*
  %2232 = load i64, i64* %PC.i398
  %2233 = add i64 %2232, 36
  %2234 = load i64, i64* %PC.i398
  %2235 = add i64 %2234, 5
  store i64 %2235, i64* %PC.i398
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2233, i64* %2236, align 8
  store %struct.Memory* %loadMem_48561d, %struct.Memory** %MEMORY
  br label %block_.L_485641

block_.L_485622:                                  ; preds = %block_485617, %routine_ucomisd__xmm0___xmm1.exit404
  %loadMem_485622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 33
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 1
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %2242 to i64*
  %2243 = load i64, i64* %PC.i396
  %2244 = add i64 %2243, 10
  store i64 %2244, i64* %PC.i396
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_485622, %struct.Memory** %MEMORY
  %loadMem_48562c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2246 = getelementptr inbounds %struct.GPR, %struct.GPR* %2245, i32 0, i32 33
  %2247 = getelementptr inbounds %struct.Reg, %struct.Reg* %2246, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %2247 to i64*
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 5
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 15
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %2253 to i64*
  %2254 = load i64, i64* %RBP.i395
  %2255 = sub i64 %2254, 8
  %2256 = load i64, i64* %PC.i393
  %2257 = add i64 %2256, 4
  store i64 %2257, i64* %PC.i393
  %2258 = inttoptr i64 %2255 to i32*
  %2259 = load i32, i32* %2258
  %2260 = sext i32 %2259 to i64
  store i64 %2260, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_48562c, %struct.Memory** %MEMORY
  %loadMem_485630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 33
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 5
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %2266 to i64*
  %2267 = load i64, i64* %RCX.i392
  %2268 = load i64, i64* %PC.i391
  %2269 = add i64 %2268, 4
  store i64 %2269, i64* %PC.i391
  %2270 = sext i64 %2267 to i128
  %2271 = and i128 %2270, -18446744073709551616
  %2272 = zext i64 %2267 to i128
  %2273 = or i128 %2271, %2272
  %2274 = mul i128 76, %2273
  %2275 = trunc i128 %2274 to i64
  store i64 %2275, i64* %RCX.i392, align 8
  %2276 = sext i64 %2275 to i128
  %2277 = icmp ne i128 %2276, %2274
  %2278 = zext i1 %2277 to i8
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2278, i8* %2279, align 1
  %2280 = trunc i128 %2274 to i32
  %2281 = and i32 %2280, 255
  %2282 = call i32 @llvm.ctpop.i32(i32 %2281)
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  %2285 = xor i8 %2284, 1
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2285, i8* %2286, align 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2287, align 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2288, align 1
  %2289 = lshr i64 %2275, 63
  %2290 = trunc i64 %2289 to i8
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2290, i8* %2291, align 1
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2278, i8* %2292, align 1
  store %struct.Memory* %loadMem_485630, %struct.Memory** %MEMORY
  %loadMem_485634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2295 to i64*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 1
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %2298 to i64*
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 5
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %2301 to i64*
  %2302 = load i64, i64* %RAX.i389
  %2303 = load i64, i64* %RCX.i390
  %2304 = load i64, i64* %PC.i388
  %2305 = add i64 %2304, 3
  store i64 %2305, i64* %PC.i388
  %2306 = add i64 %2303, %2302
  store i64 %2306, i64* %RAX.i389, align 8
  %2307 = icmp ult i64 %2306, %2302
  %2308 = icmp ult i64 %2306, %2303
  %2309 = or i1 %2307, %2308
  %2310 = zext i1 %2309 to i8
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2310, i8* %2311, align 1
  %2312 = trunc i64 %2306 to i32
  %2313 = and i32 %2312, 255
  %2314 = call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2317, i8* %2318, align 1
  %2319 = xor i64 %2303, %2302
  %2320 = xor i64 %2319, %2306
  %2321 = lshr i64 %2320, 4
  %2322 = trunc i64 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2323, i8* %2324, align 1
  %2325 = icmp eq i64 %2306, 0
  %2326 = zext i1 %2325 to i8
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2326, i8* %2327, align 1
  %2328 = lshr i64 %2306, 63
  %2329 = trunc i64 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2329, i8* %2330, align 1
  %2331 = lshr i64 %2302, 63
  %2332 = lshr i64 %2303, 63
  %2333 = xor i64 %2328, %2331
  %2334 = xor i64 %2328, %2332
  %2335 = add i64 %2333, %2334
  %2336 = icmp eq i64 %2335, 2
  %2337 = zext i1 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2337, i8* %2338, align 1
  store %struct.Memory* %loadMem_485634, %struct.Memory** %MEMORY
  %loadMem_485637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 33
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 1
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %RAX.i387
  %2346 = add i64 %2345, 64
  %2347 = load i64, i64* %PC.i386
  %2348 = add i64 %2347, 4
  store i64 %2348, i64* %PC.i386
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2351, align 1
  %2352 = and i32 %2350, 255
  %2353 = call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2356, i8* %2357, align 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2358, align 1
  %2359 = icmp eq i32 %2350, 0
  %2360 = zext i1 %2359 to i8
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2360, i8* %2361, align 1
  %2362 = lshr i32 %2350, 31
  %2363 = trunc i32 %2362 to i8
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2363, i8* %2364, align 1
  %2365 = lshr i32 %2350, 31
  %2366 = xor i32 %2362, %2365
  %2367 = add i32 %2366, %2365
  %2368 = icmp eq i32 %2367, 2
  %2369 = zext i1 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2369, i8* %2370, align 1
  store %struct.Memory* %loadMem_485637, %struct.Memory** %MEMORY
  %loadMem_48563b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %PC.i385
  %2375 = add i64 %2374, 19
  %2376 = load i64, i64* %PC.i385
  %2377 = add i64 %2376, 6
  %2378 = load i64, i64* %PC.i385
  %2379 = add i64 %2378, 6
  store i64 %2379, i64* %PC.i385
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2381 = load i8, i8* %2380, align 1
  %2382 = icmp eq i8 %2381, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %BRANCH_TAKEN, align 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2385 = select i1 %2382, i64 %2375, i64 %2377
  store i64 %2385, i64* %2384, align 8
  store %struct.Memory* %loadMem_48563b, %struct.Memory** %MEMORY
  %loadBr_48563b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48563b = icmp eq i8 %loadBr_48563b, 1
  br i1 %cmpBr_48563b, label %block_.L_48564e, label %block_.L_485641

block_.L_485641:                                  ; preds = %block_.L_485622, %block_48561d
  %loadMem_485641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 33
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2389, i64 0, i64 0
  %YMM0.i383 = bitcast %union.VectorReg* %2390 to %"class.std::bitset"*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2392 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2391, i64 0, i64 0
  %XMM0.i384 = bitcast %union.VectorReg* %2392 to %union.vec128_t*
  %2393 = bitcast %"class.std::bitset"* %YMM0.i383 to i8*
  %2394 = bitcast %"class.std::bitset"* %YMM0.i383 to i8*
  %2395 = bitcast %union.vec128_t* %XMM0.i384 to i8*
  %2396 = load i64, i64* %PC.i382
  %2397 = add i64 %2396, 3
  store i64 %2397, i64* %PC.i382
  %2398 = bitcast i8* %2394 to i64*
  %2399 = load i64, i64* %2398, align 1
  %2400 = getelementptr inbounds i8, i8* %2394, i64 8
  %2401 = bitcast i8* %2400 to i64*
  %2402 = load i64, i64* %2401, align 1
  %2403 = bitcast i8* %2395 to i64*
  %2404 = load i64, i64* %2403, align 1
  %2405 = getelementptr inbounds i8, i8* %2395, i64 8
  %2406 = bitcast i8* %2405 to i64*
  %2407 = load i64, i64* %2406, align 1
  %2408 = xor i64 %2404, %2399
  %2409 = xor i64 %2407, %2402
  %2410 = trunc i64 %2408 to i32
  %2411 = lshr i64 %2408, 32
  %2412 = trunc i64 %2411 to i32
  %2413 = bitcast i8* %2393 to i32*
  store i32 %2410, i32* %2413, align 1
  %2414 = getelementptr inbounds i8, i8* %2393, i64 4
  %2415 = bitcast i8* %2414 to i32*
  store i32 %2412, i32* %2415, align 1
  %2416 = trunc i64 %2409 to i32
  %2417 = getelementptr inbounds i8, i8* %2393, i64 8
  %2418 = bitcast i8* %2417 to i32*
  store i32 %2416, i32* %2418, align 1
  %2419 = lshr i64 %2409, 32
  %2420 = trunc i64 %2419 to i32
  %2421 = getelementptr inbounds i8, i8* %2393, i64 12
  %2422 = bitcast i8* %2421 to i32*
  store i32 %2420, i32* %2422, align 1
  store %struct.Memory* %loadMem_485641, %struct.Memory** %MEMORY
  %loadMem_485644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 33
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 15
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %2428 to i64*
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2429, i64 0, i64 0
  %XMM0.i381 = bitcast %union.VectorReg* %2430 to %union.vec128_t*
  %2431 = load i64, i64* %RBP.i380
  %2432 = sub i64 %2431, 4
  %2433 = bitcast %union.vec128_t* %XMM0.i381 to i8*
  %2434 = load i64, i64* %PC.i379
  %2435 = add i64 %2434, 5
  store i64 %2435, i64* %PC.i379
  %2436 = bitcast i8* %2433 to <2 x float>*
  %2437 = load <2 x float>, <2 x float>* %2436, align 1
  %2438 = extractelement <2 x float> %2437, i32 0
  %2439 = inttoptr i64 %2432 to float*
  store float %2438, float* %2439
  store %struct.Memory* %loadMem_485644, %struct.Memory** %MEMORY
  %loadMem_485649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2442 to i64*
  %2443 = load i64, i64* %PC.i378
  %2444 = add i64 %2443, 661
  %2445 = load i64, i64* %PC.i378
  %2446 = add i64 %2445, 5
  store i64 %2446, i64* %PC.i378
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2444, i64* %2447, align 8
  store %struct.Memory* %loadMem_485649, %struct.Memory** %MEMORY
  br label %block_.L_4858de

block_.L_48564e:                                  ; preds = %block_.L_485622
  %loadMem_48564e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2451, i64 0, i64 0
  %YMM0.i376 = bitcast %union.VectorReg* %2452 to %"class.std::bitset"*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2453, i64 0, i64 0
  %XMM0.i377 = bitcast %union.VectorReg* %2454 to %union.vec128_t*
  %2455 = bitcast %"class.std::bitset"* %YMM0.i376 to i8*
  %2456 = bitcast %"class.std::bitset"* %YMM0.i376 to i8*
  %2457 = bitcast %union.vec128_t* %XMM0.i377 to i8*
  %2458 = load i64, i64* %PC.i375
  %2459 = add i64 %2458, 3
  store i64 %2459, i64* %PC.i375
  %2460 = bitcast i8* %2456 to i64*
  %2461 = load i64, i64* %2460, align 1
  %2462 = getelementptr inbounds i8, i8* %2456, i64 8
  %2463 = bitcast i8* %2462 to i64*
  %2464 = load i64, i64* %2463, align 1
  %2465 = bitcast i8* %2457 to i64*
  %2466 = load i64, i64* %2465, align 1
  %2467 = getelementptr inbounds i8, i8* %2457, i64 8
  %2468 = bitcast i8* %2467 to i64*
  %2469 = load i64, i64* %2468, align 1
  %2470 = xor i64 %2466, %2461
  %2471 = xor i64 %2469, %2464
  %2472 = trunc i64 %2470 to i32
  %2473 = lshr i64 %2470, 32
  %2474 = trunc i64 %2473 to i32
  %2475 = bitcast i8* %2455 to i32*
  store i32 %2472, i32* %2475, align 1
  %2476 = getelementptr inbounds i8, i8* %2455, i64 4
  %2477 = bitcast i8* %2476 to i32*
  store i32 %2474, i32* %2477, align 1
  %2478 = trunc i64 %2471 to i32
  %2479 = getelementptr inbounds i8, i8* %2455, i64 8
  %2480 = bitcast i8* %2479 to i32*
  store i32 %2478, i32* %2480, align 1
  %2481 = lshr i64 %2471, 32
  %2482 = trunc i64 %2481 to i32
  %2483 = getelementptr inbounds i8, i8* %2455, i64 12
  %2484 = bitcast i8* %2483 to i32*
  store i32 %2482, i32* %2484, align 1
  store %struct.Memory* %loadMem_48564e, %struct.Memory** %MEMORY
  %loadMem_485651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2491, i64 0, i64 1
  %YMM1.i374 = bitcast %union.VectorReg* %2492 to %"class.std::bitset"*
  %2493 = bitcast %"class.std::bitset"* %YMM1.i374 to i8*
  %2494 = load i64, i64* %RBP.i373
  %2495 = sub i64 %2494, 76
  %2496 = load i64, i64* %PC.i372
  %2497 = add i64 %2496, 5
  store i64 %2497, i64* %PC.i372
  %2498 = inttoptr i64 %2495 to float*
  %2499 = load float, float* %2498
  %2500 = fpext float %2499 to double
  %2501 = bitcast i8* %2493 to double*
  store double %2500, double* %2501, align 1
  store %struct.Memory* %loadMem_485651, %struct.Memory** %MEMORY
  %loadMem_485656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 33
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2505, i64 0, i64 0
  %XMM0.i367 = bitcast %union.VectorReg* %2506 to %union.vec128_t*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2507, i64 0, i64 1
  %XMM1.i368 = bitcast %union.VectorReg* %2508 to %union.vec128_t*
  %2509 = bitcast %union.vec128_t* %XMM0.i367 to i8*
  %2510 = bitcast %union.vec128_t* %XMM1.i368 to i8*
  %2511 = load i64, i64* %PC.i366
  %2512 = add i64 %2511, 4
  store i64 %2512, i64* %PC.i366
  %2513 = bitcast i8* %2509 to double*
  %2514 = load double, double* %2513, align 1
  %2515 = bitcast i8* %2510 to double*
  %2516 = load double, double* %2515, align 1
  %2517 = fcmp uno double %2514, %2516
  br i1 %2517, label %2518, label %2530

; <label>:2518:                                   ; preds = %block_.L_48564e
  %2519 = fadd double %2514, %2516
  %2520 = bitcast double %2519 to i64
  %2521 = and i64 %2520, 9221120237041090560
  %2522 = icmp eq i64 %2521, 9218868437227405312
  %2523 = and i64 %2520, 2251799813685247
  %2524 = icmp ne i64 %2523, 0
  %2525 = and i1 %2522, %2524
  br i1 %2525, label %2526, label %2536

; <label>:2526:                                   ; preds = %2518
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2528 = load i64, i64* %2527, align 8
  %2529 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2528, %struct.Memory* %loadMem_485656)
  br label %routine_ucomisd__xmm1___xmm0.exit369

; <label>:2530:                                   ; preds = %block_.L_48564e
  %2531 = fcmp ogt double %2514, %2516
  br i1 %2531, label %2536, label %2532

; <label>:2532:                                   ; preds = %2530
  %2533 = fcmp olt double %2514, %2516
  br i1 %2533, label %2536, label %2534

; <label>:2534:                                   ; preds = %2532
  %2535 = fcmp oeq double %2514, %2516
  br i1 %2535, label %2536, label %2543

; <label>:2536:                                   ; preds = %2534, %2532, %2530, %2518
  %2537 = phi i8 [ 0, %2530 ], [ 0, %2532 ], [ 1, %2534 ], [ 1, %2518 ]
  %2538 = phi i8 [ 0, %2530 ], [ 0, %2532 ], [ 0, %2534 ], [ 1, %2518 ]
  %2539 = phi i8 [ 0, %2530 ], [ 1, %2532 ], [ 0, %2534 ], [ 1, %2518 ]
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2537, i8* %2540, align 1
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2538, i8* %2541, align 1
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2539, i8* %2542, align 1
  br label %2543

; <label>:2543:                                   ; preds = %2536, %2534
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2544, align 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2545, align 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2546, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit369

routine_ucomisd__xmm1___xmm0.exit369:             ; preds = %2526, %2543
  %2547 = phi %struct.Memory* [ %2529, %2526 ], [ %loadMem_485656, %2543 ]
  store %struct.Memory* %2547, %struct.Memory** %MEMORY
  %loadMem_48565a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2550 to i64*
  %2551 = load i64, i64* %PC.i365
  %2552 = add i64 %2551, 14
  %2553 = load i64, i64* %PC.i365
  %2554 = add i64 %2553, 6
  %2555 = load i64, i64* %PC.i365
  %2556 = add i64 %2555, 6
  store i64 %2556, i64* %PC.i365
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2558 = load i8, i8* %2557, align 1
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2560 = load i8, i8* %2559, align 1
  %2561 = or i8 %2560, %2558
  %2562 = icmp ne i8 %2561, 0
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %BRANCH_TAKEN, align 1
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2565 = select i1 %2562, i64 %2552, i64 %2554
  store i64 %2565, i64* %2564, align 8
  store %struct.Memory* %loadMem_48565a, %struct.Memory** %MEMORY
  %loadBr_48565a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48565a = icmp eq i8 %loadBr_48565a, 1
  br i1 %cmpBr_48565a, label %block_.L_485668, label %block_485660

block_485660:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit369
  %loadMem_485660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 33
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2569, i64 0, i64 0
  %YMM0.i363 = bitcast %union.VectorReg* %2570 to %"class.std::bitset"*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2571, i64 0, i64 0
  %XMM0.i364 = bitcast %union.VectorReg* %2572 to %union.vec128_t*
  %2573 = bitcast %"class.std::bitset"* %YMM0.i363 to i8*
  %2574 = bitcast %"class.std::bitset"* %YMM0.i363 to i8*
  %2575 = bitcast %union.vec128_t* %XMM0.i364 to i8*
  %2576 = load i64, i64* %PC.i362
  %2577 = add i64 %2576, 3
  store i64 %2577, i64* %PC.i362
  %2578 = bitcast i8* %2574 to i64*
  %2579 = load i64, i64* %2578, align 1
  %2580 = getelementptr inbounds i8, i8* %2574, i64 8
  %2581 = bitcast i8* %2580 to i64*
  %2582 = load i64, i64* %2581, align 1
  %2583 = bitcast i8* %2575 to i64*
  %2584 = load i64, i64* %2583, align 1
  %2585 = getelementptr inbounds i8, i8* %2575, i64 8
  %2586 = bitcast i8* %2585 to i64*
  %2587 = load i64, i64* %2586, align 1
  %2588 = xor i64 %2584, %2579
  %2589 = xor i64 %2587, %2582
  %2590 = trunc i64 %2588 to i32
  %2591 = lshr i64 %2588, 32
  %2592 = trunc i64 %2591 to i32
  %2593 = bitcast i8* %2573 to i32*
  store i32 %2590, i32* %2593, align 1
  %2594 = getelementptr inbounds i8, i8* %2573, i64 4
  %2595 = bitcast i8* %2594 to i32*
  store i32 %2592, i32* %2595, align 1
  %2596 = trunc i64 %2589 to i32
  %2597 = getelementptr inbounds i8, i8* %2573, i64 8
  %2598 = bitcast i8* %2597 to i32*
  store i32 %2596, i32* %2598, align 1
  %2599 = lshr i64 %2589, 32
  %2600 = trunc i64 %2599 to i32
  %2601 = getelementptr inbounds i8, i8* %2573, i64 12
  %2602 = bitcast i8* %2601 to i32*
  store i32 %2600, i32* %2602, align 1
  store %struct.Memory* %loadMem_485660, %struct.Memory** %MEMORY
  %loadMem_485663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 33
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 15
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2609, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %2610 to %union.vec128_t*
  %2611 = load i64, i64* %RBP.i360
  %2612 = sub i64 %2611, 76
  %2613 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %2614 = load i64, i64* %PC.i359
  %2615 = add i64 %2614, 5
  store i64 %2615, i64* %PC.i359
  %2616 = bitcast i8* %2613 to <2 x float>*
  %2617 = load <2 x float>, <2 x float>* %2616, align 1
  %2618 = extractelement <2 x float> %2617, i32 0
  %2619 = inttoptr i64 %2612 to float*
  store float %2618, float* %2619
  store %struct.Memory* %loadMem_485663, %struct.Memory** %MEMORY
  br label %block_.L_485668

block_.L_485668:                                  ; preds = %block_485660, %routine_ucomisd__xmm1___xmm0.exit369
  %loadMem_485668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 33
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 7
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RDX.i357 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 15
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %RBP.i358
  %2630 = sub i64 %2629, 72
  %2631 = load i64, i64* %PC.i356
  %2632 = add i64 %2631, 4
  store i64 %2632, i64* %PC.i356
  store i64 %2630, i64* %RDX.i357, align 8
  store %struct.Memory* %loadMem_485668, %struct.Memory** %MEMORY
  %loadMem_48566c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 1
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RAX.i354 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i355
  %2643 = sub i64 %2642, 32
  %2644 = load i64, i64* %PC.i353
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i353
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RAX.i354, align 8
  store %struct.Memory* %loadMem_48566c, %struct.Memory** %MEMORY
  %loadMem_485670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 1
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %RAX.i352
  %2655 = load i64, i64* %PC.i351
  %2656 = add i64 %2655, 4
  store i64 %2656, i64* %PC.i351
  %2657 = add i64 76, %2654
  store i64 %2657, i64* %RAX.i352, align 8
  %2658 = icmp ult i64 %2657, %2654
  %2659 = icmp ult i64 %2657, 76
  %2660 = or i1 %2658, %2659
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2661, i8* %2662, align 1
  %2663 = trunc i64 %2657 to i32
  %2664 = and i32 %2663, 255
  %2665 = call i32 @llvm.ctpop.i32(i32 %2664)
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = xor i8 %2667, 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2668, i8* %2669, align 1
  %2670 = xor i64 76, %2654
  %2671 = xor i64 %2670, %2657
  %2672 = lshr i64 %2671, 4
  %2673 = trunc i64 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2674, i8* %2675, align 1
  %2676 = icmp eq i64 %2657, 0
  %2677 = zext i1 %2676 to i8
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2677, i8* %2678, align 1
  %2679 = lshr i64 %2657, 63
  %2680 = trunc i64 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2680, i8* %2681, align 1
  %2682 = lshr i64 %2654, 63
  %2683 = xor i64 %2679, %2682
  %2684 = add i64 %2683, %2679
  %2685 = icmp eq i64 %2684, 2
  %2686 = zext i1 %2685 to i8
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2686, i8* %2687, align 1
  store %struct.Memory* %loadMem_485670, %struct.Memory** %MEMORY
  %loadMem_485674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 5
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2695 = getelementptr inbounds %struct.GPR, %struct.GPR* %2694, i32 0, i32 15
  %2696 = getelementptr inbounds %struct.Reg, %struct.Reg* %2695, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %2696 to i64*
  %2697 = load i64, i64* %RBP.i350
  %2698 = sub i64 %2697, 40
  %2699 = load i64, i64* %PC.i348
  %2700 = add i64 %2699, 4
  store i64 %2700, i64* %PC.i348
  %2701 = inttoptr i64 %2698 to i64*
  %2702 = load i64, i64* %2701
  store i64 %2702, i64* %RCX.i349, align 8
  store %struct.Memory* %loadMem_485674, %struct.Memory** %MEMORY
  %loadMem_485678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 5
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RCX.i347
  %2710 = load i64, i64* %PC.i346
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC.i346
  %2712 = add i64 76, %2709
  store i64 %2712, i64* %RCX.i347, align 8
  %2713 = icmp ult i64 %2712, %2709
  %2714 = icmp ult i64 %2712, 76
  %2715 = or i1 %2713, %2714
  %2716 = zext i1 %2715 to i8
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2716, i8* %2717, align 1
  %2718 = trunc i64 %2712 to i32
  %2719 = and i32 %2718, 255
  %2720 = call i32 @llvm.ctpop.i32(i32 %2719)
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = xor i8 %2722, 1
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2723, i8* %2724, align 1
  %2725 = xor i64 76, %2709
  %2726 = xor i64 %2725, %2712
  %2727 = lshr i64 %2726, 4
  %2728 = trunc i64 %2727 to i8
  %2729 = and i8 %2728, 1
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2729, i8* %2730, align 1
  %2731 = icmp eq i64 %2712, 0
  %2732 = zext i1 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2732, i8* %2733, align 1
  %2734 = lshr i64 %2712, 63
  %2735 = trunc i64 %2734 to i8
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2735, i8* %2736, align 1
  %2737 = lshr i64 %2709, 63
  %2738 = xor i64 %2734, %2737
  %2739 = add i64 %2738, %2734
  %2740 = icmp eq i64 %2739, 2
  %2741 = zext i1 %2740 to i8
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2741, i8* %2742, align 1
  store %struct.Memory* %loadMem_485678, %struct.Memory** %MEMORY
  %loadMem_48567c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 33
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 1
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 11
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RDI.i345 = bitcast %union.anon* %2751 to i64*
  %2752 = load i64, i64* %RAX.i344
  %2753 = load i64, i64* %PC.i343
  %2754 = add i64 %2753, 3
  store i64 %2754, i64* %PC.i343
  store i64 %2752, i64* %RDI.i345, align 8
  store %struct.Memory* %loadMem_48567c, %struct.Memory** %MEMORY
  %loadMem_48567f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 5
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 9
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RSI.i342 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RCX.i341
  %2765 = load i64, i64* %PC.i340
  %2766 = add i64 %2765, 3
  store i64 %2766, i64* %PC.i340
  store i64 %2764, i64* %RSI.i342, align 8
  store %struct.Memory* %loadMem_48567f, %struct.Memory** %MEMORY
  %loadMem1_485682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %PC.i339
  %2771 = add i64 %2770, -297586
  %2772 = load i64, i64* %PC.i339
  %2773 = add i64 %2772, 5
  %2774 = load i64, i64* %PC.i339
  %2775 = add i64 %2774, 5
  store i64 %2775, i64* %PC.i339
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2777 = load i64, i64* %2776, align 8
  %2778 = add i64 %2777, -8
  %2779 = inttoptr i64 %2778 to i64*
  store i64 %2773, i64* %2779
  store i64 %2778, i64* %2776, align 8
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2771, i64* %2780, align 8
  store %struct.Memory* %loadMem1_485682, %struct.Memory** %MEMORY
  %loadMem2_485682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_485682 = load i64, i64* %3
  %call2_485682 = call %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* %0, i64 %loadPC_485682, %struct.Memory* %loadMem2_485682)
  store %struct.Memory* %call2_485682, %struct.Memory** %MEMORY
  %loadMem_485687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 17
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %2787 = bitcast %union.anon* %2786 to %struct.anon.2*
  %R8B.i338 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2787, i32 0, i32 0
  %2788 = load i64, i64* %PC.i337
  %2789 = add i64 %2788, 3
  store i64 %2789, i64* %PC.i337
  store i8 1, i8* %R8B.i338, align 1
  store %struct.Memory* %loadMem_485687, %struct.Memory** %MEMORY
  %loadMem_48568a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 33
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 11
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RDI.i335 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 15
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2798 to i64*
  %2799 = load i64, i64* %RBP.i336
  %2800 = sub i64 %2799, 56
  %2801 = load i64, i64* %PC.i334
  %2802 = add i64 %2801, 3
  store i64 %2802, i64* %PC.i334
  %2803 = inttoptr i64 %2800 to i32*
  %2804 = load i32, i32* %2803
  %2805 = zext i32 %2804 to i64
  store i64 %2805, i64* %RDI.i335, align 8
  store %struct.Memory* %loadMem_48568a, %struct.Memory** %MEMORY
  %loadMem_48568d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 1
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %2811 to i64*
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 15
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2814 to i64*
  %2815 = load i64, i64* %RBP.i333
  %2816 = sub i64 %2815, 32
  %2817 = load i64, i64* %PC.i331
  %2818 = add i64 %2817, 4
  store i64 %2818, i64* %PC.i331
  %2819 = inttoptr i64 %2816 to i64*
  %2820 = load i64, i64* %2819
  store i64 %2820, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_48568d, %struct.Memory** %MEMORY
  %loadMem_485691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 1
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RAX.i330
  %2828 = add i64 %2827, 84
  %2829 = load i64, i64* %PC.i329
  %2830 = add i64 %2829, 4
  store i64 %2830, i64* %PC.i329
  %2831 = inttoptr i64 %2828 to i32*
  %2832 = load i32, i32* %2831
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2833, align 1
  %2834 = and i32 %2832, 255
  %2835 = call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2838, i8* %2839, align 1
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2840, align 1
  %2841 = icmp eq i32 %2832, 0
  %2842 = zext i1 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2842, i8* %2843, align 1
  %2844 = lshr i32 %2832, 31
  %2845 = trunc i32 %2844 to i8
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2845, i8* %2846, align 1
  %2847 = lshr i32 %2832, 31
  %2848 = xor i32 %2844, %2847
  %2849 = add i32 %2848, %2847
  %2850 = icmp eq i32 %2849, 2
  %2851 = zext i1 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2851, i8* %2852, align 1
  store %struct.Memory* %loadMem_485691, %struct.Memory** %MEMORY
  %loadMem_485695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 11
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %EDI.i327 = bitcast %union.anon* %2858 to i32*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 15
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %RBP.i328
  %2863 = sub i64 %2862, 96
  %2864 = load i32, i32* %EDI.i327
  %2865 = zext i32 %2864 to i64
  %2866 = load i64, i64* %PC.i326
  %2867 = add i64 %2866, 3
  store i64 %2867, i64* %PC.i326
  %2868 = inttoptr i64 %2863 to i32*
  store i32 %2864, i32* %2868
  store %struct.Memory* %loadMem_485695, %struct.Memory** %MEMORY
  %loadMem_485698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 33
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2873 = getelementptr inbounds %struct.GPR, %struct.GPR* %2872, i32 0, i32 17
  %2874 = getelementptr inbounds %struct.Reg, %struct.Reg* %2873, i32 0, i32 0
  %2875 = bitcast %union.anon* %2874 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2875, i32 0, i32 0
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 15
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %RBP.i325
  %2880 = sub i64 %2879, 97
  %2881 = load i8, i8* %R8B.i
  %2882 = zext i8 %2881 to i64
  %2883 = load i64, i64* %PC.i324
  %2884 = add i64 %2883, 4
  store i64 %2884, i64* %PC.i324
  %2885 = inttoptr i64 %2880 to i8*
  store i8 %2881, i8* %2885
  store %struct.Memory* %loadMem_485698, %struct.Memory** %MEMORY
  %loadMem_48569c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2888 to i64*
  %2889 = load i64, i64* %PC.i323
  %2890 = add i64 %2889, 20
  %2891 = load i64, i64* %PC.i323
  %2892 = add i64 %2891, 6
  %2893 = load i64, i64* %PC.i323
  %2894 = add i64 %2893, 6
  store i64 %2894, i64* %PC.i323
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2896 = load i8, i8* %2895, align 1
  %2897 = icmp eq i8 %2896, 0
  %2898 = zext i1 %2897 to i8
  store i8 %2898, i8* %BRANCH_TAKEN, align 1
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2900 = select i1 %2897, i64 %2890, i64 %2892
  store i64 %2900, i64* %2899, align 8
  store %struct.Memory* %loadMem_48569c, %struct.Memory** %MEMORY
  %loadBr_48569c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48569c = icmp eq i8 %loadBr_48569c, 1
  br i1 %cmpBr_48569c, label %block_.L_4856b0, label %block_4856a2

block_4856a2:                                     ; preds = %block_.L_485668
  %loadMem_4856a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 1
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 15
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RBP.i322
  %2911 = sub i64 %2910, 40
  %2912 = load i64, i64* %PC.i320
  %2913 = add i64 %2912, 4
  store i64 %2913, i64* %PC.i320
  %2914 = inttoptr i64 %2911 to i64*
  %2915 = load i64, i64* %2914
  store i64 %2915, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_4856a2, %struct.Memory** %MEMORY
  %loadMem_4856a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 1
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %RAX.i319
  %2923 = add i64 %2922, 84
  %2924 = load i64, i64* %PC.i318
  %2925 = add i64 %2924, 4
  store i64 %2925, i64* %PC.i318
  %2926 = inttoptr i64 %2923 to i32*
  %2927 = load i32, i32* %2926
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2928, align 1
  %2929 = and i32 %2927, 255
  %2930 = call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2933, i8* %2934, align 1
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2935, align 1
  %2936 = icmp eq i32 %2927, 0
  %2937 = zext i1 %2936 to i8
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2937, i8* %2938, align 1
  %2939 = lshr i32 %2927, 31
  %2940 = trunc i32 %2939 to i8
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2940, i8* %2941, align 1
  %2942 = lshr i32 %2927, 31
  %2943 = xor i32 %2939, %2942
  %2944 = add i32 %2943, %2942
  %2945 = icmp eq i32 %2944, 2
  %2946 = zext i1 %2945 to i8
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2946, i8* %2947, align 1
  store %struct.Memory* %loadMem_4856a6, %struct.Memory** %MEMORY
  %loadMem_4856aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 5
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %2954 = bitcast %union.anon* %2953 to %struct.anon.2*
  %CL.i317 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2954, i32 0, i32 0
  %2955 = load i64, i64* %PC.i316
  %2956 = add i64 %2955, 3
  store i64 %2956, i64* %PC.i316
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2958 = load i8, i8* %2957, align 1
  %2959 = icmp eq i8 %2958, 0
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %CL.i317, align 1
  store %struct.Memory* %loadMem_4856aa, %struct.Memory** %MEMORY
  %loadMem_4856ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 33
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 5
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %2967 = bitcast %union.anon* %2966 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2967, i32 0, i32 0
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 15
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %2970 to i64*
  %2971 = load i64, i64* %RBP.i315
  %2972 = sub i64 %2971, 97
  %2973 = load i8, i8* %CL.i
  %2974 = zext i8 %2973 to i64
  %2975 = load i64, i64* %PC.i314
  %2976 = add i64 %2975, 3
  store i64 %2976, i64* %PC.i314
  %2977 = inttoptr i64 %2972 to i8*
  store i8 %2973, i8* %2977
  store %struct.Memory* %loadMem_4856ad, %struct.Memory** %MEMORY
  br label %block_.L_4856b0

block_.L_4856b0:                                  ; preds = %block_4856a2, %block_.L_485668
  %loadMem_4856b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 33
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 1
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %2984 = bitcast %union.anon* %2983 to %struct.anon.2*
  %AL.i312 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2984, i32 0, i32 0
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 15
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %2987 to i64*
  %2988 = load i64, i64* %RBP.i313
  %2989 = sub i64 %2988, 97
  %2990 = load i64, i64* %PC.i311
  %2991 = add i64 %2990, 3
  store i64 %2991, i64* %PC.i311
  %2992 = inttoptr i64 %2989 to i8*
  %2993 = load i8, i8* %2992
  store i8 %2993, i8* %AL.i312, align 1
  store %struct.Memory* %loadMem_4856b0, %struct.Memory** %MEMORY
  %loadMem_4856b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 33
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 9
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RSI.i309 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 15
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %3002 to i64*
  %3003 = load i64, i64* %RBP.i310
  %3004 = sub i64 %3003, 72
  %3005 = load i64, i64* %PC.i308
  %3006 = add i64 %3005, 4
  store i64 %3006, i64* %PC.i308
  store i64 %3004, i64* %RSI.i309, align 8
  store %struct.Memory* %loadMem_4856b3, %struct.Memory** %MEMORY
  %loadMem_4856b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 1
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %3013 = bitcast %union.anon* %3012 to %struct.anon.2*
  %AL.i307 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3013, i32 0, i32 0
  %3014 = load i8, i8* %AL.i307
  %3015 = zext i8 %3014 to i64
  %3016 = load i64, i64* %PC.i306
  %3017 = add i64 %3016, 2
  store i64 %3017, i64* %PC.i306
  %3018 = and i64 1, %3015
  %3019 = trunc i64 %3018 to i8
  store i8 %3019, i8* %AL.i307, align 1
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3020, align 1
  %3021 = trunc i64 %3018 to i32
  %3022 = and i32 %3021, 255
  %3023 = call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3026, i8* %3027, align 1
  %3028 = icmp eq i8 %3019, 0
  %3029 = zext i1 %3028 to i8
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3029, i8* %3030, align 1
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3031, align 1
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3032, align 1
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3033, align 1
  store %struct.Memory* %loadMem_4856b7, %struct.Memory** %MEMORY
  %loadMem_4856b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 1
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %3040 = bitcast %union.anon* %3039 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3040, i32 0, i32 0
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 7
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3043 to i64*
  %3044 = load i8, i8* %AL.i
  %3045 = zext i8 %3044 to i64
  %3046 = load i64, i64* %PC.i305
  %3047 = add i64 %3046, 3
  store i64 %3047, i64* %PC.i305
  %3048 = and i64 %3045, 255
  store i64 %3048, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4856b9, %struct.Memory** %MEMORY
  %loadMem_4856bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 5
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %3054 to i64*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 15
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %3057 to i64*
  %3058 = load i64, i64* %RBP.i304
  %3059 = sub i64 %3058, 32
  %3060 = load i64, i64* %PC.i302
  %3061 = add i64 %3060, 4
  store i64 %3061, i64* %PC.i302
  %3062 = inttoptr i64 %3059 to i64*
  %3063 = load i64, i64* %3062
  store i64 %3063, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_4856bc, %struct.Memory** %MEMORY
  %loadMem_4856c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 5
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3071 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3070, i64 0, i64 0
  %YMM0.i301 = bitcast %union.VectorReg* %3071 to %"class.std::bitset"*
  %3072 = bitcast %"class.std::bitset"* %YMM0.i301 to i8*
  %3073 = load i64, i64* %RCX.i300
  %3074 = add i64 %3073, 56
  %3075 = load i64, i64* %PC.i299
  %3076 = add i64 %3075, 5
  store i64 %3076, i64* %PC.i299
  %3077 = inttoptr i64 %3074 to float*
  %3078 = load float, float* %3077
  %3079 = bitcast i8* %3072 to float*
  store float %3078, float* %3079, align 1
  %3080 = getelementptr inbounds i8, i8* %3072, i64 4
  %3081 = bitcast i8* %3080 to float*
  store float 0.000000e+00, float* %3081, align 1
  %3082 = getelementptr inbounds i8, i8* %3072, i64 8
  %3083 = bitcast i8* %3082 to float*
  store float 0.000000e+00, float* %3083, align 1
  %3084 = getelementptr inbounds i8, i8* %3072, i64 12
  %3085 = bitcast i8* %3084 to float*
  store float 0.000000e+00, float* %3085, align 1
  store %struct.Memory* %loadMem_4856c0, %struct.Memory** %MEMORY
  %loadMem_4856c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 33
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 5
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %3091 to i64*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 15
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %3094 to i64*
  %3095 = load i64, i64* %RBP.i298
  %3096 = sub i64 %3095, 40
  %3097 = load i64, i64* %PC.i296
  %3098 = add i64 %3097, 4
  store i64 %3098, i64* %PC.i296
  %3099 = inttoptr i64 %3096 to i64*
  %3100 = load i64, i64* %3099
  store i64 %3100, i64* %RCX.i297, align 8
  store %struct.Memory* %loadMem_4856c5, %struct.Memory** %MEMORY
  %loadMem_4856c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 5
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %3106 to i64*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3107, i64 0, i64 0
  %YMM0.i295 = bitcast %union.VectorReg* %3108 to %"class.std::bitset"*
  %3109 = bitcast %"class.std::bitset"* %YMM0.i295 to i8*
  %3110 = bitcast %"class.std::bitset"* %YMM0.i295 to i8*
  %3111 = load i64, i64* %RCX.i294
  %3112 = add i64 %3111, 56
  %3113 = load i64, i64* %PC.i293
  %3114 = add i64 %3113, 5
  store i64 %3114, i64* %PC.i293
  %3115 = bitcast i8* %3110 to <2 x float>*
  %3116 = load <2 x float>, <2 x float>* %3115, align 1
  %3117 = getelementptr inbounds i8, i8* %3110, i64 8
  %3118 = bitcast i8* %3117 to <2 x i32>*
  %3119 = load <2 x i32>, <2 x i32>* %3118, align 1
  %3120 = inttoptr i64 %3112 to float*
  %3121 = load float, float* %3120
  %3122 = extractelement <2 x float> %3116, i32 0
  %3123 = fadd float %3122, %3121
  %3124 = bitcast i8* %3109 to float*
  store float %3123, float* %3124, align 1
  %3125 = bitcast <2 x float> %3116 to <2 x i32>
  %3126 = extractelement <2 x i32> %3125, i32 1
  %3127 = getelementptr inbounds i8, i8* %3109, i64 4
  %3128 = bitcast i8* %3127 to i32*
  store i32 %3126, i32* %3128, align 1
  %3129 = extractelement <2 x i32> %3119, i32 0
  %3130 = getelementptr inbounds i8, i8* %3109, i64 8
  %3131 = bitcast i8* %3130 to i32*
  store i32 %3129, i32* %3131, align 1
  %3132 = extractelement <2 x i32> %3119, i32 1
  %3133 = getelementptr inbounds i8, i8* %3109, i64 12
  %3134 = bitcast i8* %3133 to i32*
  store i32 %3132, i32* %3134, align 1
  store %struct.Memory* %loadMem_4856c9, %struct.Memory** %MEMORY
  %loadMem_4856ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 15
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3142 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3141, i64 0, i64 0
  %YMM0.i292 = bitcast %union.VectorReg* %3142 to %"class.std::bitset"*
  %3143 = bitcast %"class.std::bitset"* %YMM0.i292 to i8*
  %3144 = bitcast %"class.std::bitset"* %YMM0.i292 to i8*
  %3145 = load i64, i64* %RBP.i291
  %3146 = sub i64 %3145, 76
  %3147 = load i64, i64* %PC.i290
  %3148 = add i64 %3147, 5
  store i64 %3148, i64* %PC.i290
  %3149 = bitcast i8* %3144 to <2 x float>*
  %3150 = load <2 x float>, <2 x float>* %3149, align 1
  %3151 = getelementptr inbounds i8, i8* %3144, i64 8
  %3152 = bitcast i8* %3151 to <2 x i32>*
  %3153 = load <2 x i32>, <2 x i32>* %3152, align 1
  %3154 = inttoptr i64 %3146 to float*
  %3155 = load float, float* %3154
  %3156 = extractelement <2 x float> %3150, i32 0
  %3157 = fadd float %3156, %3155
  %3158 = bitcast i8* %3143 to float*
  store float %3157, float* %3158, align 1
  %3159 = bitcast <2 x float> %3150 to <2 x i32>
  %3160 = extractelement <2 x i32> %3159, i32 1
  %3161 = getelementptr inbounds i8, i8* %3143, i64 4
  %3162 = bitcast i8* %3161 to i32*
  store i32 %3160, i32* %3162, align 1
  %3163 = extractelement <2 x i32> %3153, i32 0
  %3164 = getelementptr inbounds i8, i8* %3143, i64 8
  %3165 = bitcast i8* %3164 to i32*
  store i32 %3163, i32* %3165, align 1
  %3166 = extractelement <2 x i32> %3153, i32 1
  %3167 = getelementptr inbounds i8, i8* %3143, i64 12
  %3168 = bitcast i8* %3167 to i32*
  store i32 %3166, i32* %3168, align 1
  store %struct.Memory* %loadMem_4856ce, %struct.Memory** %MEMORY
  %loadMem_4856d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 33
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 5
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %3174 to i64*
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 15
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %3177 to i64*
  %3178 = load i64, i64* %RBP.i289
  %3179 = sub i64 %3178, 32
  %3180 = load i64, i64* %PC.i287
  %3181 = add i64 %3180, 4
  store i64 %3181, i64* %PC.i287
  %3182 = inttoptr i64 %3179 to i64*
  %3183 = load i64, i64* %3182
  store i64 %3183, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_4856d3, %struct.Memory** %MEMORY
  %loadMem_4856d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 33
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3186 to i64*
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 5
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3191 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3190, i64 0, i64 1
  %YMM1.i286 = bitcast %union.VectorReg* %3191 to %"class.std::bitset"*
  %3192 = bitcast %"class.std::bitset"* %YMM1.i286 to i8*
  %3193 = load i64, i64* %RCX.i285
  %3194 = add i64 %3193, 72
  %3195 = load i64, i64* %PC.i284
  %3196 = add i64 %3195, 5
  store i64 %3196, i64* %PC.i284
  %3197 = bitcast i8* %3192 to <2 x i32>*
  %3198 = load <2 x i32>, <2 x i32>* %3197, align 1
  %3199 = getelementptr inbounds i8, i8* %3192, i64 8
  %3200 = bitcast i8* %3199 to <2 x i32>*
  %3201 = load <2 x i32>, <2 x i32>* %3200, align 1
  %3202 = inttoptr i64 %3194 to i32*
  %3203 = load i32, i32* %3202
  %3204 = sitofp i32 %3203 to float
  %3205 = bitcast i8* %3192 to float*
  store float %3204, float* %3205, align 1
  %3206 = extractelement <2 x i32> %3198, i32 1
  %3207 = getelementptr inbounds i8, i8* %3192, i64 4
  %3208 = bitcast i8* %3207 to i32*
  store i32 %3206, i32* %3208, align 1
  %3209 = extractelement <2 x i32> %3201, i32 0
  %3210 = bitcast i8* %3199 to i32*
  store i32 %3209, i32* %3210, align 1
  %3211 = extractelement <2 x i32> %3201, i32 1
  %3212 = getelementptr inbounds i8, i8* %3192, i64 12
  %3213 = bitcast i8* %3212 to i32*
  store i32 %3211, i32* %3213, align 1
  store %struct.Memory* %loadMem_4856d7, %struct.Memory** %MEMORY
  %loadMem_4856dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 33
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3216 to i64*
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 11
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3219 to i64*
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 15
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %3222 to i64*
  %3223 = load i64, i64* %RBP.i283
  %3224 = sub i64 %3223, 96
  %3225 = load i64, i64* %PC.i282
  %3226 = add i64 %3225, 3
  store i64 %3226, i64* %PC.i282
  %3227 = inttoptr i64 %3224 to i32*
  %3228 = load i32, i32* %3227
  %3229 = zext i32 %3228 to i64
  store i64 %3229, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4856dc, %struct.Memory** %MEMORY
  %loadMem1_4856df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 33
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3232 to i64*
  %3233 = load i64, i64* %PC.i281
  %3234 = add i64 %3233, -417167
  %3235 = load i64, i64* %PC.i281
  %3236 = add i64 %3235, 5
  %3237 = load i64, i64* %PC.i281
  %3238 = add i64 %3237, 5
  store i64 %3238, i64* %PC.i281
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3240 = load i64, i64* %3239, align 8
  %3241 = add i64 %3240, -8
  %3242 = inttoptr i64 %3241 to i64*
  store i64 %3236, i64* %3242
  store i64 %3241, i64* %3239, align 8
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3234, i64* %3243, align 8
  store %struct.Memory* %loadMem1_4856df, %struct.Memory** %MEMORY
  %loadMem2_4856df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4856df = load i64, i64* %3
  %call2_4856df = call %struct.Memory* @sub_41f950.crude_dragon_weakness(%struct.State* %0, i64 %loadPC_4856df, %struct.Memory* %loadMem2_4856df)
  store %struct.Memory* %call2_4856df, %struct.Memory** %MEMORY
  %loadMem_4856e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3246 to i64*
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 5
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %3249 to i64*
  %3250 = load i64, i64* %PC.i279
  %3251 = add i64 %3250, 10
  store i64 %3251, i64* %PC.i279
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_4856e4, %struct.Memory** %MEMORY
  %loadMem_4856ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 15
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %3257 to i64*
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3258, i64 0, i64 0
  %XMM0.i278 = bitcast %union.VectorReg* %3259 to %union.vec128_t*
  %3260 = load i64, i64* %RBP.i277
  %3261 = sub i64 %3260, 64
  %3262 = bitcast %union.vec128_t* %XMM0.i278 to i8*
  %3263 = load i64, i64* %PC.i276
  %3264 = add i64 %3263, 5
  store i64 %3264, i64* %PC.i276
  %3265 = bitcast i8* %3262 to <2 x float>*
  %3266 = load <2 x float>, <2 x float>* %3265, align 1
  %3267 = extractelement <2 x float> %3266, i32 0
  %3268 = inttoptr i64 %3261 to float*
  store float %3267, float* %3268
  store %struct.Memory* %loadMem_4856ee, %struct.Memory** %MEMORY
  %loadMem_4856f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 33
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3271 to i64*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 9
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %RSI.i274 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 15
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3277 to i64*
  %3278 = load i64, i64* %RBP.i275
  %3279 = sub i64 %3278, 8
  %3280 = load i64, i64* %PC.i273
  %3281 = add i64 %3280, 4
  store i64 %3281, i64* %PC.i273
  %3282 = inttoptr i64 %3279 to i32*
  %3283 = load i32, i32* %3282
  %3284 = sext i32 %3283 to i64
  store i64 %3284, i64* %RSI.i274, align 8
  store %struct.Memory* %loadMem_4856f3, %struct.Memory** %MEMORY
  %loadMem_4856f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 9
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RSI.i272 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %RSI.i272
  %3292 = load i64, i64* %PC.i271
  %3293 = add i64 %3292, 4
  store i64 %3293, i64* %PC.i271
  %3294 = sext i64 %3291 to i128
  %3295 = and i128 %3294, -18446744073709551616
  %3296 = zext i64 %3291 to i128
  %3297 = or i128 %3295, %3296
  %3298 = mul i128 76, %3297
  %3299 = trunc i128 %3298 to i64
  store i64 %3299, i64* %RSI.i272, align 8
  %3300 = sext i64 %3299 to i128
  %3301 = icmp ne i128 %3300, %3298
  %3302 = zext i1 %3301 to i8
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3302, i8* %3303, align 1
  %3304 = trunc i128 %3298 to i32
  %3305 = and i32 %3304, 255
  %3306 = call i32 @llvm.ctpop.i32(i32 %3305)
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3309, i8* %3310, align 1
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3311, align 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3312, align 1
  %3313 = lshr i64 %3299, 63
  %3314 = trunc i64 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3314, i8* %3315, align 1
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3302, i8* %3316, align 1
  store %struct.Memory* %loadMem_4856f7, %struct.Memory** %MEMORY
  %loadMem_4856fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 5
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 9
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3325 to i64*
  %3326 = load i64, i64* %RCX.i270
  %3327 = load i64, i64* %RSI.i
  %3328 = load i64, i64* %PC.i269
  %3329 = add i64 %3328, 3
  store i64 %3329, i64* %PC.i269
  %3330 = add i64 %3327, %3326
  store i64 %3330, i64* %RCX.i270, align 8
  %3331 = icmp ult i64 %3330, %3326
  %3332 = icmp ult i64 %3330, %3327
  %3333 = or i1 %3331, %3332
  %3334 = zext i1 %3333 to i8
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3334, i8* %3335, align 1
  %3336 = trunc i64 %3330 to i32
  %3337 = and i32 %3336, 255
  %3338 = call i32 @llvm.ctpop.i32(i32 %3337)
  %3339 = trunc i32 %3338 to i8
  %3340 = and i8 %3339, 1
  %3341 = xor i8 %3340, 1
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3341, i8* %3342, align 1
  %3343 = xor i64 %3327, %3326
  %3344 = xor i64 %3343, %3330
  %3345 = lshr i64 %3344, 4
  %3346 = trunc i64 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3347, i8* %3348, align 1
  %3349 = icmp eq i64 %3330, 0
  %3350 = zext i1 %3349 to i8
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3350, i8* %3351, align 1
  %3352 = lshr i64 %3330, 63
  %3353 = trunc i64 %3352 to i8
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3353, i8* %3354, align 1
  %3355 = lshr i64 %3326, 63
  %3356 = lshr i64 %3327, 63
  %3357 = xor i64 %3352, %3355
  %3358 = xor i64 %3352, %3356
  %3359 = add i64 %3357, %3358
  %3360 = icmp eq i64 %3359, 2
  %3361 = zext i1 %3360 to i8
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3361, i8* %3362, align 1
  store %struct.Memory* %loadMem_4856fb, %struct.Memory** %MEMORY
  %loadMem_4856fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 5
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3368 to i64*
  %3369 = load i64, i64* %RCX.i
  %3370 = add i64 %3369, 64
  %3371 = load i64, i64* %PC.i268
  %3372 = add i64 %3371, 4
  store i64 %3372, i64* %PC.i268
  %3373 = inttoptr i64 %3370 to i32*
  %3374 = load i32, i32* %3373
  %3375 = sub i32 %3374, 2
  %3376 = icmp ult i32 %3374, 2
  %3377 = zext i1 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3377, i8* %3378, align 1
  %3379 = and i32 %3375, 255
  %3380 = call i32 @llvm.ctpop.i32(i32 %3379)
  %3381 = trunc i32 %3380 to i8
  %3382 = and i8 %3381, 1
  %3383 = xor i8 %3382, 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3383, i8* %3384, align 1
  %3385 = xor i32 %3374, 2
  %3386 = xor i32 %3385, %3375
  %3387 = lshr i32 %3386, 4
  %3388 = trunc i32 %3387 to i8
  %3389 = and i8 %3388, 1
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3389, i8* %3390, align 1
  %3391 = icmp eq i32 %3375, 0
  %3392 = zext i1 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3392, i8* %3393, align 1
  %3394 = lshr i32 %3375, 31
  %3395 = trunc i32 %3394 to i8
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3395, i8* %3396, align 1
  %3397 = lshr i32 %3374, 31
  %3398 = xor i32 %3394, %3397
  %3399 = add i32 %3398, %3397
  %3400 = icmp eq i32 %3399, 2
  %3401 = zext i1 %3400 to i8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3401, i8* %3402, align 1
  store %struct.Memory* %loadMem_4856fe, %struct.Memory** %MEMORY
  %loadMem_485702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 33
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %PC.i267
  %3407 = add i64 %3406, 176
  %3408 = load i64, i64* %PC.i267
  %3409 = add i64 %3408, 6
  %3410 = load i64, i64* %PC.i267
  %3411 = add i64 %3410, 6
  store i64 %3411, i64* %PC.i267
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3413 = load i8, i8* %3412, align 1
  %3414 = icmp eq i8 %3413, 0
  %3415 = zext i1 %3414 to i8
  store i8 %3415, i8* %BRANCH_TAKEN, align 1
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3417 = select i1 %3414, i64 %3407, i64 %3409
  store i64 %3417, i64* %3416, align 8
  store %struct.Memory* %loadMem_485702, %struct.Memory** %MEMORY
  %loadBr_485702 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485702 = icmp eq i8 %loadBr_485702, 1
  br i1 %cmpBr_485702, label %block_.L_4857b2, label %block_485708

block_485708:                                     ; preds = %block_.L_4856b0
  %loadMem_485708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3422 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3421, i64 0, i64 0
  %YMM0.i265 = bitcast %union.VectorReg* %3422 to %"class.std::bitset"*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3423, i64 0, i64 0
  %XMM0.i266 = bitcast %union.VectorReg* %3424 to %union.vec128_t*
  %3425 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %3426 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %3427 = bitcast %union.vec128_t* %XMM0.i266 to i8*
  %3428 = load i64, i64* %PC.i264
  %3429 = add i64 %3428, 3
  store i64 %3429, i64* %PC.i264
  %3430 = bitcast i8* %3426 to i64*
  %3431 = load i64, i64* %3430, align 1
  %3432 = getelementptr inbounds i8, i8* %3426, i64 8
  %3433 = bitcast i8* %3432 to i64*
  %3434 = load i64, i64* %3433, align 1
  %3435 = bitcast i8* %3427 to i64*
  %3436 = load i64, i64* %3435, align 1
  %3437 = getelementptr inbounds i8, i8* %3427, i64 8
  %3438 = bitcast i8* %3437 to i64*
  %3439 = load i64, i64* %3438, align 1
  %3440 = xor i64 %3436, %3431
  %3441 = xor i64 %3439, %3434
  %3442 = trunc i64 %3440 to i32
  %3443 = lshr i64 %3440, 32
  %3444 = trunc i64 %3443 to i32
  %3445 = bitcast i8* %3425 to i32*
  store i32 %3442, i32* %3445, align 1
  %3446 = getelementptr inbounds i8, i8* %3425, i64 4
  %3447 = bitcast i8* %3446 to i32*
  store i32 %3444, i32* %3447, align 1
  %3448 = trunc i64 %3441 to i32
  %3449 = getelementptr inbounds i8, i8* %3425, i64 8
  %3450 = bitcast i8* %3449 to i32*
  store i32 %3448, i32* %3450, align 1
  %3451 = lshr i64 %3441, 32
  %3452 = trunc i64 %3451 to i32
  %3453 = getelementptr inbounds i8, i8* %3425, i64 12
  %3454 = bitcast i8* %3453 to i32*
  store i32 %3452, i32* %3454, align 1
  store %struct.Memory* %loadMem_485708, %struct.Memory** %MEMORY
  %loadMem_48570b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3456 = getelementptr inbounds %struct.GPR, %struct.GPR* %3455, i32 0, i32 33
  %3457 = getelementptr inbounds %struct.Reg, %struct.Reg* %3456, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3457 to i64*
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3458, i64 0, i64 1
  %YMM1.i263 = bitcast %union.VectorReg* %3459 to %"class.std::bitset"*
  %3460 = bitcast %"class.std::bitset"* %YMM1.i263 to i8*
  %3461 = load i64, i64* %PC.i262
  %3462 = add i64 %3461, ptrtoint (%G_0x5d995__rip__type* @G_0x5d995__rip_ to i64)
  %3463 = load i64, i64* %PC.i262
  %3464 = add i64 %3463, 8
  store i64 %3464, i64* %PC.i262
  %3465 = inttoptr i64 %3462 to double*
  %3466 = load double, double* %3465
  %3467 = bitcast i8* %3460 to double*
  store double %3466, double* %3467, align 1
  %3468 = getelementptr inbounds i8, i8* %3460, i64 8
  %3469 = bitcast i8* %3468 to double*
  store double 0.000000e+00, double* %3469, align 1
  store %struct.Memory* %loadMem_48570b, %struct.Memory** %MEMORY
  %loadMem_485713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3473, i64 0, i64 2
  %YMM2.i261 = bitcast %union.VectorReg* %3474 to %"class.std::bitset"*
  %3475 = bitcast %"class.std::bitset"* %YMM2.i261 to i8*
  %3476 = load i64, i64* %PC.i260
  %3477 = add i64 %3476, ptrtoint (%G_0x5d87d__rip__type* @G_0x5d87d__rip_ to i64)
  %3478 = load i64, i64* %PC.i260
  %3479 = add i64 %3478, 8
  store i64 %3479, i64* %PC.i260
  %3480 = inttoptr i64 %3477 to double*
  %3481 = load double, double* %3480
  %3482 = bitcast i8* %3475 to double*
  store double %3481, double* %3482, align 1
  %3483 = getelementptr inbounds i8, i8* %3475, i64 8
  %3484 = bitcast i8* %3483 to double*
  store double 0.000000e+00, double* %3484, align 1
  store %struct.Memory* %loadMem_485713, %struct.Memory** %MEMORY
  %loadMem_48571b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 15
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3491, i64 0, i64 3
  %YMM3.i259 = bitcast %union.VectorReg* %3492 to %"class.std::bitset"*
  %3493 = bitcast %"class.std::bitset"* %YMM3.i259 to i8*
  %3494 = load i64, i64* %RBP.i258
  %3495 = sub i64 %3494, 64
  %3496 = load i64, i64* %PC.i257
  %3497 = add i64 %3496, 5
  store i64 %3497, i64* %PC.i257
  %3498 = inttoptr i64 %3495 to float*
  %3499 = load float, float* %3498
  %3500 = fpext float %3499 to double
  %3501 = bitcast i8* %3493 to double*
  store double %3500, double* %3501, align 1
  store %struct.Memory* %loadMem_48571b, %struct.Memory** %MEMORY
  %loadMem_485720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 33
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3506 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3505, i64 0, i64 2
  %YMM2.i255 = bitcast %union.VectorReg* %3506 to %"class.std::bitset"*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3507, i64 0, i64 3
  %XMM3.i256 = bitcast %union.VectorReg* %3508 to %union.vec128_t*
  %3509 = bitcast %"class.std::bitset"* %YMM2.i255 to i8*
  %3510 = bitcast %"class.std::bitset"* %YMM2.i255 to i8*
  %3511 = bitcast %union.vec128_t* %XMM3.i256 to i8*
  %3512 = load i64, i64* %PC.i254
  %3513 = add i64 %3512, 4
  store i64 %3513, i64* %PC.i254
  %3514 = bitcast i8* %3510 to double*
  %3515 = load double, double* %3514, align 1
  %3516 = getelementptr inbounds i8, i8* %3510, i64 8
  %3517 = bitcast i8* %3516 to i64*
  %3518 = load i64, i64* %3517, align 1
  %3519 = bitcast i8* %3511 to double*
  %3520 = load double, double* %3519, align 1
  %3521 = fmul double %3515, %3520
  %3522 = bitcast i8* %3509 to double*
  store double %3521, double* %3522, align 1
  %3523 = getelementptr inbounds i8, i8* %3509, i64 8
  %3524 = bitcast i8* %3523 to i64*
  store i64 %3518, i64* %3524, align 1
  store %struct.Memory* %loadMem_485720, %struct.Memory** %MEMORY
  %loadMem_485724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 33
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3527 to i64*
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3528, i64 0, i64 1
  %YMM1.i252 = bitcast %union.VectorReg* %3529 to %"class.std::bitset"*
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3530, i64 0, i64 2
  %XMM2.i253 = bitcast %union.VectorReg* %3531 to %union.vec128_t*
  %3532 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %3533 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %3534 = bitcast %union.vec128_t* %XMM2.i253 to i8*
  %3535 = load i64, i64* %PC.i251
  %3536 = add i64 %3535, 4
  store i64 %3536, i64* %PC.i251
  %3537 = bitcast i8* %3533 to double*
  %3538 = load double, double* %3537, align 1
  %3539 = getelementptr inbounds i8, i8* %3533, i64 8
  %3540 = bitcast i8* %3539 to i64*
  %3541 = load i64, i64* %3540, align 1
  %3542 = bitcast i8* %3534 to double*
  %3543 = load double, double* %3542, align 1
  %3544 = fsub double %3538, %3543
  %3545 = bitcast i8* %3532 to double*
  store double %3544, double* %3545, align 1
  %3546 = getelementptr inbounds i8, i8* %3532, i64 8
  %3547 = bitcast i8* %3546 to i64*
  store i64 %3541, i64* %3547, align 1
  store %struct.Memory* %loadMem_485724, %struct.Memory** %MEMORY
  %loadMem_485728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 15
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3554, i64 0, i64 2
  %YMM2.i250 = bitcast %union.VectorReg* %3555 to %"class.std::bitset"*
  %3556 = bitcast %"class.std::bitset"* %YMM2.i250 to i8*
  %3557 = load i64, i64* %RBP.i249
  %3558 = sub i64 %3557, 44
  %3559 = load i64, i64* %PC.i248
  %3560 = add i64 %3559, 5
  store i64 %3560, i64* %PC.i248
  %3561 = inttoptr i64 %3558 to float*
  %3562 = load float, float* %3561
  %3563 = fpext float %3562 to double
  %3564 = bitcast i8* %3556 to double*
  store double %3563, double* %3564, align 1
  store %struct.Memory* %loadMem_485728, %struct.Memory** %MEMORY
  %loadMem_48572d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3568, i64 0, i64 1
  %YMM1.i246 = bitcast %union.VectorReg* %3569 to %"class.std::bitset"*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3570, i64 0, i64 2
  %XMM2.i247 = bitcast %union.VectorReg* %3571 to %union.vec128_t*
  %3572 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %3573 = bitcast %"class.std::bitset"* %YMM1.i246 to i8*
  %3574 = bitcast %union.vec128_t* %XMM2.i247 to i8*
  %3575 = load i64, i64* %PC.i245
  %3576 = add i64 %3575, 4
  store i64 %3576, i64* %PC.i245
  %3577 = bitcast i8* %3573 to double*
  %3578 = load double, double* %3577, align 1
  %3579 = getelementptr inbounds i8, i8* %3573, i64 8
  %3580 = bitcast i8* %3579 to i64*
  %3581 = load i64, i64* %3580, align 1
  %3582 = bitcast i8* %3574 to double*
  %3583 = load double, double* %3582, align 1
  %3584 = fmul double %3578, %3583
  %3585 = bitcast i8* %3572 to double*
  store double %3584, double* %3585, align 1
  %3586 = getelementptr inbounds i8, i8* %3572, i64 8
  %3587 = bitcast i8* %3586 to i64*
  store i64 %3581, i64* %3587, align 1
  store %struct.Memory* %loadMem_48572d, %struct.Memory** %MEMORY
  %loadMem_485731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3589 = getelementptr inbounds %struct.GPR, %struct.GPR* %3588, i32 0, i32 33
  %3590 = getelementptr inbounds %struct.Reg, %struct.Reg* %3589, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3590 to i64*
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3591, i64 0, i64 1
  %YMM1.i243 = bitcast %union.VectorReg* %3592 to %"class.std::bitset"*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3593, i64 0, i64 1
  %XMM1.i244 = bitcast %union.VectorReg* %3594 to %union.vec128_t*
  %3595 = bitcast %"class.std::bitset"* %YMM1.i243 to i8*
  %3596 = bitcast %union.vec128_t* %XMM1.i244 to i8*
  %3597 = load i64, i64* %PC.i242
  %3598 = add i64 %3597, 4
  store i64 %3598, i64* %PC.i242
  %3599 = bitcast i8* %3595 to <2 x i32>*
  %3600 = load <2 x i32>, <2 x i32>* %3599, align 1
  %3601 = getelementptr inbounds i8, i8* %3595, i64 8
  %3602 = bitcast i8* %3601 to <2 x i32>*
  %3603 = load <2 x i32>, <2 x i32>* %3602, align 1
  %3604 = bitcast i8* %3596 to double*
  %3605 = load double, double* %3604, align 1
  %3606 = fptrunc double %3605 to float
  %3607 = bitcast i8* %3595 to float*
  store float %3606, float* %3607, align 1
  %3608 = extractelement <2 x i32> %3600, i32 1
  %3609 = getelementptr inbounds i8, i8* %3595, i64 4
  %3610 = bitcast i8* %3609 to i32*
  store i32 %3608, i32* %3610, align 1
  %3611 = extractelement <2 x i32> %3603, i32 0
  %3612 = bitcast i8* %3601 to i32*
  store i32 %3611, i32* %3612, align 1
  %3613 = extractelement <2 x i32> %3603, i32 1
  %3614 = getelementptr inbounds i8, i8* %3595, i64 12
  %3615 = bitcast i8* %3614 to i32*
  store i32 %3613, i32* %3615, align 1
  store %struct.Memory* %loadMem_485731, %struct.Memory** %MEMORY
  %loadMem_485735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 33
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3618 to i64*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 15
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3623 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3622, i64 0, i64 1
  %XMM1.i241 = bitcast %union.VectorReg* %3623 to %union.vec128_t*
  %3624 = load i64, i64* %RBP.i240
  %3625 = sub i64 %3624, 84
  %3626 = bitcast %union.vec128_t* %XMM1.i241 to i8*
  %3627 = load i64, i64* %PC.i239
  %3628 = add i64 %3627, 5
  store i64 %3628, i64* %PC.i239
  %3629 = bitcast i8* %3626 to <2 x float>*
  %3630 = load <2 x float>, <2 x float>* %3629, align 1
  %3631 = extractelement <2 x float> %3630, i32 0
  %3632 = inttoptr i64 %3625 to float*
  store float %3631, float* %3632
  store %struct.Memory* %loadMem_485735, %struct.Memory** %MEMORY
  %loadMem_48573a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3634 = getelementptr inbounds %struct.GPR, %struct.GPR* %3633, i32 0, i32 33
  %3635 = getelementptr inbounds %struct.Reg, %struct.Reg* %3634, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3635 to i64*
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 15
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3640 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3639, i64 0, i64 1
  %YMM1.i238 = bitcast %union.VectorReg* %3640 to %"class.std::bitset"*
  %3641 = bitcast %"class.std::bitset"* %YMM1.i238 to i8*
  %3642 = load i64, i64* %RBP.i237
  %3643 = sub i64 %3642, 20
  %3644 = load i64, i64* %PC.i236
  %3645 = add i64 %3644, 5
  store i64 %3645, i64* %PC.i236
  %3646 = inttoptr i64 %3643 to float*
  %3647 = load float, float* %3646
  %3648 = fpext float %3647 to double
  %3649 = bitcast i8* %3641 to double*
  store double %3648, double* %3649, align 1
  store %struct.Memory* %loadMem_48573a, %struct.Memory** %MEMORY
  %loadMem_48573f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3653, i64 0, i64 0
  %XMM0.i231 = bitcast %union.VectorReg* %3654 to %union.vec128_t*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3656 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3655, i64 0, i64 1
  %XMM1.i232 = bitcast %union.VectorReg* %3656 to %union.vec128_t*
  %3657 = bitcast %union.vec128_t* %XMM1.i232 to i8*
  %3658 = bitcast %union.vec128_t* %XMM0.i231 to i8*
  %3659 = load i64, i64* %PC.i230
  %3660 = add i64 %3659, 4
  store i64 %3660, i64* %PC.i230
  %3661 = bitcast i8* %3657 to double*
  %3662 = load double, double* %3661, align 1
  %3663 = bitcast i8* %3658 to double*
  %3664 = load double, double* %3663, align 1
  %3665 = fcmp uno double %3662, %3664
  br i1 %3665, label %3666, label %3678

; <label>:3666:                                   ; preds = %block_485708
  %3667 = fadd double %3662, %3664
  %3668 = bitcast double %3667 to i64
  %3669 = and i64 %3668, 9221120237041090560
  %3670 = icmp eq i64 %3669, 9218868437227405312
  %3671 = and i64 %3668, 2251799813685247
  %3672 = icmp ne i64 %3671, 0
  %3673 = and i1 %3670, %3672
  br i1 %3673, label %3674, label %3684

; <label>:3674:                                   ; preds = %3666
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3676 = load i64, i64* %3675, align 8
  %3677 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3676, %struct.Memory* %loadMem_48573f)
  br label %routine_ucomisd__xmm0___xmm1.exit233

; <label>:3678:                                   ; preds = %block_485708
  %3679 = fcmp ogt double %3662, %3664
  br i1 %3679, label %3684, label %3680

; <label>:3680:                                   ; preds = %3678
  %3681 = fcmp olt double %3662, %3664
  br i1 %3681, label %3684, label %3682

; <label>:3682:                                   ; preds = %3680
  %3683 = fcmp oeq double %3662, %3664
  br i1 %3683, label %3684, label %3691

; <label>:3684:                                   ; preds = %3682, %3680, %3678, %3666
  %3685 = phi i8 [ 0, %3678 ], [ 0, %3680 ], [ 1, %3682 ], [ 1, %3666 ]
  %3686 = phi i8 [ 0, %3678 ], [ 0, %3680 ], [ 0, %3682 ], [ 1, %3666 ]
  %3687 = phi i8 [ 0, %3678 ], [ 1, %3680 ], [ 0, %3682 ], [ 1, %3666 ]
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3685, i8* %3688, align 1
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3686, i8* %3689, align 1
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3687, i8* %3690, align 1
  br label %3691

; <label>:3691:                                   ; preds = %3684, %3682
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3692, align 1
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3693, align 1
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3694, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit233

routine_ucomisd__xmm0___xmm1.exit233:             ; preds = %3674, %3691
  %3695 = phi %struct.Memory* [ %3677, %3674 ], [ %loadMem_48573f, %3691 ]
  store %struct.Memory* %3695, %struct.Memory** %MEMORY
  %loadMem_485743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 33
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3698 to i64*
  %3699 = load i64, i64* %PC.i229
  %3700 = add i64 %3699, 71
  %3701 = load i64, i64* %PC.i229
  %3702 = add i64 %3701, 6
  %3703 = load i64, i64* %PC.i229
  %3704 = add i64 %3703, 6
  store i64 %3704, i64* %PC.i229
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3706 = load i8, i8* %3705, align 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3708 = load i8, i8* %3707, align 1
  %3709 = or i8 %3708, %3706
  %3710 = icmp ne i8 %3709, 0
  %3711 = zext i1 %3710 to i8
  store i8 %3711, i8* %BRANCH_TAKEN, align 1
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3713 = select i1 %3710, i64 %3700, i64 %3702
  store i64 %3713, i64* %3712, align 8
  store %struct.Memory* %loadMem_485743, %struct.Memory** %MEMORY
  %loadBr_485743 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485743 = icmp eq i8 %loadBr_485743, 1
  br i1 %cmpBr_485743, label %block_.L_48578a, label %block_485749

block_485749:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit233
  %loadMem_485749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 33
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3716 to i64*
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3717, i64 0, i64 0
  %YMM0.i227 = bitcast %union.VectorReg* %3718 to %"class.std::bitset"*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3720 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3719, i64 0, i64 0
  %XMM0.i228 = bitcast %union.VectorReg* %3720 to %union.vec128_t*
  %3721 = bitcast %"class.std::bitset"* %YMM0.i227 to i8*
  %3722 = bitcast %"class.std::bitset"* %YMM0.i227 to i8*
  %3723 = bitcast %union.vec128_t* %XMM0.i228 to i8*
  %3724 = load i64, i64* %PC.i226
  %3725 = add i64 %3724, 3
  store i64 %3725, i64* %PC.i226
  %3726 = bitcast i8* %3722 to i64*
  %3727 = load i64, i64* %3726, align 1
  %3728 = getelementptr inbounds i8, i8* %3722, i64 8
  %3729 = bitcast i8* %3728 to i64*
  %3730 = load i64, i64* %3729, align 1
  %3731 = bitcast i8* %3723 to i64*
  %3732 = load i64, i64* %3731, align 1
  %3733 = getelementptr inbounds i8, i8* %3723, i64 8
  %3734 = bitcast i8* %3733 to i64*
  %3735 = load i64, i64* %3734, align 1
  %3736 = xor i64 %3732, %3727
  %3737 = xor i64 %3735, %3730
  %3738 = trunc i64 %3736 to i32
  %3739 = lshr i64 %3736, 32
  %3740 = trunc i64 %3739 to i32
  %3741 = bitcast i8* %3721 to i32*
  store i32 %3738, i32* %3741, align 1
  %3742 = getelementptr inbounds i8, i8* %3721, i64 4
  %3743 = bitcast i8* %3742 to i32*
  store i32 %3740, i32* %3743, align 1
  %3744 = trunc i64 %3737 to i32
  %3745 = getelementptr inbounds i8, i8* %3721, i64 8
  %3746 = bitcast i8* %3745 to i32*
  store i32 %3744, i32* %3746, align 1
  %3747 = lshr i64 %3737, 32
  %3748 = trunc i64 %3747 to i32
  %3749 = getelementptr inbounds i8, i8* %3721, i64 12
  %3750 = bitcast i8* %3749 to i32*
  store i32 %3748, i32* %3750, align 1
  store %struct.Memory* %loadMem_485749, %struct.Memory** %MEMORY
  %loadMem_48574c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 33
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3753 to i64*
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3755 = getelementptr inbounds %struct.GPR, %struct.GPR* %3754, i32 0, i32 15
  %3756 = getelementptr inbounds %struct.Reg, %struct.Reg* %3755, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3756 to i64*
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3758 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3757, i64 0, i64 1
  %YMM1.i225 = bitcast %union.VectorReg* %3758 to %"class.std::bitset"*
  %3759 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %3760 = load i64, i64* %RBP.i224
  %3761 = sub i64 %3760, 84
  %3762 = load i64, i64* %PC.i223
  %3763 = add i64 %3762, 5
  store i64 %3763, i64* %PC.i223
  %3764 = inttoptr i64 %3761 to float*
  %3765 = load float, float* %3764
  %3766 = fpext float %3765 to double
  %3767 = bitcast i8* %3759 to double*
  store double %3766, double* %3767, align 1
  store %struct.Memory* %loadMem_48574c, %struct.Memory** %MEMORY
  %loadMem_485751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3772 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3771, i64 0, i64 0
  %XMM0.i220 = bitcast %union.VectorReg* %3772 to %union.vec128_t*
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3774 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3773, i64 0, i64 1
  %XMM1.i221 = bitcast %union.VectorReg* %3774 to %union.vec128_t*
  %3775 = bitcast %union.vec128_t* %XMM1.i221 to i8*
  %3776 = bitcast %union.vec128_t* %XMM0.i220 to i8*
  %3777 = load i64, i64* %PC.i219
  %3778 = add i64 %3777, 4
  store i64 %3778, i64* %PC.i219
  %3779 = bitcast i8* %3775 to double*
  %3780 = load double, double* %3779, align 1
  %3781 = bitcast i8* %3776 to double*
  %3782 = load double, double* %3781, align 1
  %3783 = fcmp uno double %3780, %3782
  br i1 %3783, label %3784, label %3796

; <label>:3784:                                   ; preds = %block_485749
  %3785 = fadd double %3780, %3782
  %3786 = bitcast double %3785 to i64
  %3787 = and i64 %3786, 9221120237041090560
  %3788 = icmp eq i64 %3787, 9218868437227405312
  %3789 = and i64 %3786, 2251799813685247
  %3790 = icmp ne i64 %3789, 0
  %3791 = and i1 %3788, %3790
  br i1 %3791, label %3792, label %3802

; <label>:3792:                                   ; preds = %3784
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3794 = load i64, i64* %3793, align 8
  %3795 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3794, %struct.Memory* %loadMem_485751)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3796:                                   ; preds = %block_485749
  %3797 = fcmp ogt double %3780, %3782
  br i1 %3797, label %3802, label %3798

; <label>:3798:                                   ; preds = %3796
  %3799 = fcmp olt double %3780, %3782
  br i1 %3799, label %3802, label %3800

; <label>:3800:                                   ; preds = %3798
  %3801 = fcmp oeq double %3780, %3782
  br i1 %3801, label %3802, label %3809

; <label>:3802:                                   ; preds = %3800, %3798, %3796, %3784
  %3803 = phi i8 [ 0, %3796 ], [ 0, %3798 ], [ 1, %3800 ], [ 1, %3784 ]
  %3804 = phi i8 [ 0, %3796 ], [ 0, %3798 ], [ 0, %3800 ], [ 1, %3784 ]
  %3805 = phi i8 [ 0, %3796 ], [ 1, %3798 ], [ 0, %3800 ], [ 1, %3784 ]
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3803, i8* %3806, align 1
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3804, i8* %3807, align 1
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3805, i8* %3808, align 1
  br label %3809

; <label>:3809:                                   ; preds = %3802, %3800
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3810, align 1
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3811, align 1
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3812, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3792, %3809
  %3813 = phi %struct.Memory* [ %3795, %3792 ], [ %loadMem_485751, %3809 ]
  store %struct.Memory* %3813, %struct.Memory** %MEMORY
  %loadMem_485755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3816 to i64*
  %3817 = load i64, i64* %PC.i218
  %3818 = add i64 %3817, 53
  %3819 = load i64, i64* %PC.i218
  %3820 = add i64 %3819, 6
  %3821 = load i64, i64* %PC.i218
  %3822 = add i64 %3821, 6
  store i64 %3822, i64* %PC.i218
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3824 = load i8, i8* %3823, align 1
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3826 = load i8, i8* %3825, align 1
  %3827 = or i8 %3826, %3824
  %3828 = icmp ne i8 %3827, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %BRANCH_TAKEN, align 1
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3831 = select i1 %3828, i64 %3818, i64 %3820
  store i64 %3831, i64* %3830, align 8
  store %struct.Memory* %loadMem_485755, %struct.Memory** %MEMORY
  %loadBr_485755 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485755 = icmp eq i8 %loadBr_485755, 1
  br i1 %cmpBr_485755, label %block_.L_48578a, label %block_48575b

block_48575b:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_48575b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3835, i64 0, i64 0
  %YMM0.i217 = bitcast %union.VectorReg* %3836 to %"class.std::bitset"*
  %3837 = bitcast %"class.std::bitset"* %YMM0.i217 to i8*
  %3838 = load i64, i64* %PC.i216
  %3839 = add i64 %3838, ptrtoint (%G_0x5d7fd__rip__type* @G_0x5d7fd__rip_ to i64)
  %3840 = load i64, i64* %PC.i216
  %3841 = add i64 %3840, 8
  store i64 %3841, i64* %PC.i216
  %3842 = inttoptr i64 %3839 to double*
  %3843 = load double, double* %3842
  %3844 = bitcast i8* %3837 to double*
  store double %3843, double* %3844, align 1
  %3845 = getelementptr inbounds i8, i8* %3837, i64 8
  %3846 = bitcast i8* %3845 to double*
  store double 0.000000e+00, double* %3846, align 1
  store %struct.Memory* %loadMem_48575b, %struct.Memory** %MEMORY
  %loadMem_485763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3850, i64 0, i64 1
  %YMM1.i215 = bitcast %union.VectorReg* %3851 to %"class.std::bitset"*
  %3852 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %3853 = load i64, i64* %PC.i214
  %3854 = add i64 %3853, ptrtoint (%G_0x5d925__rip__type* @G_0x5d925__rip_ to i64)
  %3855 = load i64, i64* %PC.i214
  %3856 = add i64 %3855, 8
  store i64 %3856, i64* %PC.i214
  %3857 = inttoptr i64 %3854 to double*
  %3858 = load double, double* %3857
  %3859 = bitcast i8* %3852 to double*
  store double %3858, double* %3859, align 1
  %3860 = getelementptr inbounds i8, i8* %3852, i64 8
  %3861 = bitcast i8* %3860 to double*
  store double 0.000000e+00, double* %3861, align 1
  store %struct.Memory* %loadMem_485763, %struct.Memory** %MEMORY
  %loadMem_48576b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 33
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 15
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3867 to i64*
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3868, i64 0, i64 2
  %YMM2.i213 = bitcast %union.VectorReg* %3869 to %"class.std::bitset"*
  %3870 = bitcast %"class.std::bitset"* %YMM2.i213 to i8*
  %3871 = load i64, i64* %RBP.i212
  %3872 = sub i64 %3871, 20
  %3873 = load i64, i64* %PC.i211
  %3874 = add i64 %3873, 5
  store i64 %3874, i64* %PC.i211
  %3875 = inttoptr i64 %3872 to float*
  %3876 = load float, float* %3875
  %3877 = fpext float %3876 to double
  %3878 = bitcast i8* %3870 to double*
  store double %3877, double* %3878, align 1
  store %struct.Memory* %loadMem_48576b, %struct.Memory** %MEMORY
  %loadMem_485770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3883 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3882, i64 0, i64 1
  %YMM1.i209 = bitcast %union.VectorReg* %3883 to %"class.std::bitset"*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3884, i64 0, i64 2
  %XMM2.i210 = bitcast %union.VectorReg* %3885 to %union.vec128_t*
  %3886 = bitcast %"class.std::bitset"* %YMM1.i209 to i8*
  %3887 = bitcast %"class.std::bitset"* %YMM1.i209 to i8*
  %3888 = bitcast %union.vec128_t* %XMM2.i210 to i8*
  %3889 = load i64, i64* %PC.i208
  %3890 = add i64 %3889, 4
  store i64 %3890, i64* %PC.i208
  %3891 = bitcast i8* %3887 to double*
  %3892 = load double, double* %3891, align 1
  %3893 = getelementptr inbounds i8, i8* %3887, i64 8
  %3894 = bitcast i8* %3893 to i64*
  %3895 = load i64, i64* %3894, align 1
  %3896 = bitcast i8* %3888 to double*
  %3897 = load double, double* %3896, align 1
  %3898 = fmul double %3892, %3897
  %3899 = bitcast i8* %3886 to double*
  store double %3898, double* %3899, align 1
  %3900 = getelementptr inbounds i8, i8* %3886, i64 8
  %3901 = bitcast i8* %3900 to i64*
  store i64 %3895, i64* %3901, align 1
  store %struct.Memory* %loadMem_485770, %struct.Memory** %MEMORY
  %loadMem_485774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3906 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3905, i64 0, i64 0
  %YMM0.i206 = bitcast %union.VectorReg* %3906 to %"class.std::bitset"*
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3908 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3907, i64 0, i64 1
  %XMM1.i207 = bitcast %union.VectorReg* %3908 to %union.vec128_t*
  %3909 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %3910 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %3911 = bitcast %union.vec128_t* %XMM1.i207 to i8*
  %3912 = load i64, i64* %PC.i205
  %3913 = add i64 %3912, 4
  store i64 %3913, i64* %PC.i205
  %3914 = bitcast i8* %3910 to double*
  %3915 = load double, double* %3914, align 1
  %3916 = getelementptr inbounds i8, i8* %3910, i64 8
  %3917 = bitcast i8* %3916 to i64*
  %3918 = load i64, i64* %3917, align 1
  %3919 = bitcast i8* %3911 to double*
  %3920 = load double, double* %3919, align 1
  %3921 = fadd double %3915, %3920
  %3922 = bitcast i8* %3909 to double*
  store double %3921, double* %3922, align 1
  %3923 = getelementptr inbounds i8, i8* %3909, i64 8
  %3924 = bitcast i8* %3923 to i64*
  store i64 %3918, i64* %3924, align 1
  store %struct.Memory* %loadMem_485774, %struct.Memory** %MEMORY
  %loadMem_485778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 33
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3927 to i64*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 15
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3931, i64 0, i64 1
  %YMM1.i204 = bitcast %union.VectorReg* %3932 to %"class.std::bitset"*
  %3933 = bitcast %"class.std::bitset"* %YMM1.i204 to i8*
  %3934 = load i64, i64* %RBP.i203
  %3935 = sub i64 %3934, 84
  %3936 = load i64, i64* %PC.i202
  %3937 = add i64 %3936, 5
  store i64 %3937, i64* %PC.i202
  %3938 = inttoptr i64 %3935 to float*
  %3939 = load float, float* %3938
  %3940 = fpext float %3939 to double
  %3941 = bitcast i8* %3933 to double*
  store double %3940, double* %3941, align 1
  store %struct.Memory* %loadMem_485778, %struct.Memory** %MEMORY
  %loadMem_48577d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3946 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3945, i64 0, i64 1
  %YMM1.i200 = bitcast %union.VectorReg* %3946 to %"class.std::bitset"*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3947, i64 0, i64 0
  %XMM0.i201 = bitcast %union.VectorReg* %3948 to %union.vec128_t*
  %3949 = bitcast %"class.std::bitset"* %YMM1.i200 to i8*
  %3950 = bitcast %"class.std::bitset"* %YMM1.i200 to i8*
  %3951 = bitcast %union.vec128_t* %XMM0.i201 to i8*
  %3952 = load i64, i64* %PC.i199
  %3953 = add i64 %3952, 4
  store i64 %3953, i64* %PC.i199
  %3954 = bitcast i8* %3950 to double*
  %3955 = load double, double* %3954, align 1
  %3956 = getelementptr inbounds i8, i8* %3950, i64 8
  %3957 = bitcast i8* %3956 to i64*
  %3958 = load i64, i64* %3957, align 1
  %3959 = bitcast i8* %3951 to double*
  %3960 = load double, double* %3959, align 1
  %3961 = fmul double %3955, %3960
  %3962 = bitcast i8* %3949 to double*
  store double %3961, double* %3962, align 1
  %3963 = getelementptr inbounds i8, i8* %3949, i64 8
  %3964 = bitcast i8* %3963 to i64*
  store i64 %3958, i64* %3964, align 1
  store %struct.Memory* %loadMem_48577d, %struct.Memory** %MEMORY
  %loadMem_485781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3969 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3968, i64 0, i64 0
  %YMM0.i197 = bitcast %union.VectorReg* %3969 to %"class.std::bitset"*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3971 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3970, i64 0, i64 1
  %XMM1.i198 = bitcast %union.VectorReg* %3971 to %union.vec128_t*
  %3972 = bitcast %"class.std::bitset"* %YMM0.i197 to i8*
  %3973 = bitcast %union.vec128_t* %XMM1.i198 to i8*
  %3974 = load i64, i64* %PC.i196
  %3975 = add i64 %3974, 4
  store i64 %3975, i64* %PC.i196
  %3976 = bitcast i8* %3972 to <2 x i32>*
  %3977 = load <2 x i32>, <2 x i32>* %3976, align 1
  %3978 = getelementptr inbounds i8, i8* %3972, i64 8
  %3979 = bitcast i8* %3978 to <2 x i32>*
  %3980 = load <2 x i32>, <2 x i32>* %3979, align 1
  %3981 = bitcast i8* %3973 to double*
  %3982 = load double, double* %3981, align 1
  %3983 = fptrunc double %3982 to float
  %3984 = bitcast i8* %3972 to float*
  store float %3983, float* %3984, align 1
  %3985 = extractelement <2 x i32> %3977, i32 1
  %3986 = getelementptr inbounds i8, i8* %3972, i64 4
  %3987 = bitcast i8* %3986 to i32*
  store i32 %3985, i32* %3987, align 1
  %3988 = extractelement <2 x i32> %3980, i32 0
  %3989 = bitcast i8* %3978 to i32*
  store i32 %3988, i32* %3989, align 1
  %3990 = extractelement <2 x i32> %3980, i32 1
  %3991 = getelementptr inbounds i8, i8* %3972, i64 12
  %3992 = bitcast i8* %3991 to i32*
  store i32 %3990, i32* %3992, align 1
  store %struct.Memory* %loadMem_485781, %struct.Memory** %MEMORY
  %loadMem_485785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 33
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 15
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3999, i64 0, i64 0
  %XMM0.i195 = bitcast %union.VectorReg* %4000 to %union.vec128_t*
  %4001 = load i64, i64* %RBP.i194
  %4002 = sub i64 %4001, 84
  %4003 = bitcast %union.vec128_t* %XMM0.i195 to i8*
  %4004 = load i64, i64* %PC.i193
  %4005 = add i64 %4004, 5
  store i64 %4005, i64* %PC.i193
  %4006 = bitcast i8* %4003 to <2 x float>*
  %4007 = load <2 x float>, <2 x float>* %4006, align 1
  %4008 = extractelement <2 x float> %4007, i32 0
  %4009 = inttoptr i64 %4002 to float*
  store float %4008, float* %4009
  store %struct.Memory* %loadMem_485785, %struct.Memory** %MEMORY
  br label %block_.L_48578a

block_.L_48578a:                                  ; preds = %block_48575b, %routine_ucomisd__xmm0___xmm1.exit, %routine_ucomisd__xmm0___xmm1.exit233
  %loadMem_48578a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4013, i64 0, i64 0
  %YMM0.i192 = bitcast %union.VectorReg* %4014 to %"class.std::bitset"*
  %4015 = bitcast %"class.std::bitset"* %YMM0.i192 to i8*
  %4016 = load i64, i64* %PC.i191
  %4017 = add i64 %4016, ptrtoint (%G_0x5d8ae__rip__type* @G_0x5d8ae__rip_ to i64)
  %4018 = load i64, i64* %PC.i191
  %4019 = add i64 %4018, 8
  store i64 %4019, i64* %PC.i191
  %4020 = inttoptr i64 %4017 to double*
  %4021 = load double, double* %4020
  %4022 = bitcast i8* %4015 to double*
  store double %4021, double* %4022, align 1
  %4023 = getelementptr inbounds i8, i8* %4015, i64 8
  %4024 = bitcast i8* %4023 to double*
  store double 0.000000e+00, double* %4024, align 1
  store %struct.Memory* %loadMem_48578a, %struct.Memory** %MEMORY
  %loadMem_485792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4026 = getelementptr inbounds %struct.GPR, %struct.GPR* %4025, i32 0, i32 33
  %4027 = getelementptr inbounds %struct.Reg, %struct.Reg* %4026, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %4027 to i64*
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 15
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4032 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4031, i64 0, i64 1
  %YMM1.i190 = bitcast %union.VectorReg* %4032 to %"class.std::bitset"*
  %4033 = bitcast %"class.std::bitset"* %YMM1.i190 to i8*
  %4034 = load i64, i64* %RBP.i189
  %4035 = sub i64 %4034, 44
  %4036 = load i64, i64* %PC.i188
  %4037 = add i64 %4036, 5
  store i64 %4037, i64* %PC.i188
  %4038 = inttoptr i64 %4035 to float*
  %4039 = load float, float* %4038
  %4040 = fpext float %4039 to double
  %4041 = bitcast i8* %4033 to double*
  store double %4040, double* %4041, align 1
  store %struct.Memory* %loadMem_485792, %struct.Memory** %MEMORY
  %loadMem_485797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4045, i64 0, i64 0
  %YMM0.i186 = bitcast %union.VectorReg* %4046 to %"class.std::bitset"*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4047, i64 0, i64 1
  %XMM1.i187 = bitcast %union.VectorReg* %4048 to %union.vec128_t*
  %4049 = bitcast %"class.std::bitset"* %YMM0.i186 to i8*
  %4050 = bitcast %"class.std::bitset"* %YMM0.i186 to i8*
  %4051 = bitcast %union.vec128_t* %XMM1.i187 to i8*
  %4052 = load i64, i64* %PC.i185
  %4053 = add i64 %4052, 4
  store i64 %4053, i64* %PC.i185
  %4054 = bitcast i8* %4050 to double*
  %4055 = load double, double* %4054, align 1
  %4056 = getelementptr inbounds i8, i8* %4050, i64 8
  %4057 = bitcast i8* %4056 to i64*
  %4058 = load i64, i64* %4057, align 1
  %4059 = bitcast i8* %4051 to double*
  %4060 = load double, double* %4059, align 1
  %4061 = fmul double %4055, %4060
  %4062 = bitcast i8* %4049 to double*
  store double %4061, double* %4062, align 1
  %4063 = getelementptr inbounds i8, i8* %4049, i64 8
  %4064 = bitcast i8* %4063 to i64*
  store i64 %4058, i64* %4064, align 1
  store %struct.Memory* %loadMem_485797, %struct.Memory** %MEMORY
  %loadMem_48579b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 33
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %4067 to i64*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 15
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4072 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4071, i64 0, i64 1
  %YMM1.i184 = bitcast %union.VectorReg* %4072 to %"class.std::bitset"*
  %4073 = bitcast %"class.std::bitset"* %YMM1.i184 to i8*
  %4074 = load i64, i64* %RBP.i183
  %4075 = sub i64 %4074, 84
  %4076 = load i64, i64* %PC.i182
  %4077 = add i64 %4076, 5
  store i64 %4077, i64* %PC.i182
  %4078 = inttoptr i64 %4075 to float*
  %4079 = load float, float* %4078
  %4080 = fpext float %4079 to double
  %4081 = bitcast i8* %4073 to double*
  store double %4080, double* %4081, align 1
  store %struct.Memory* %loadMem_48579b, %struct.Memory** %MEMORY
  %loadMem_4857a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 33
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4084 to i64*
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4085, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %4086 to %"class.std::bitset"*
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4088 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4087, i64 0, i64 1
  %XMM1.i181 = bitcast %union.VectorReg* %4088 to %union.vec128_t*
  %4089 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %4090 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %4091 = bitcast %union.vec128_t* %XMM1.i181 to i8*
  %4092 = load i64, i64* %PC.i179
  %4093 = add i64 %4092, 4
  store i64 %4093, i64* %PC.i179
  %4094 = bitcast i8* %4090 to double*
  %4095 = load double, double* %4094, align 1
  %4096 = getelementptr inbounds i8, i8* %4090, i64 8
  %4097 = bitcast i8* %4096 to i64*
  %4098 = load i64, i64* %4097, align 1
  %4099 = bitcast i8* %4091 to double*
  %4100 = load double, double* %4099, align 1
  %4101 = fadd double %4095, %4100
  %4102 = bitcast i8* %4089 to double*
  store double %4101, double* %4102, align 1
  %4103 = getelementptr inbounds i8, i8* %4089, i64 8
  %4104 = bitcast i8* %4103 to i64*
  store i64 %4098, i64* %4104, align 1
  store %struct.Memory* %loadMem_4857a0, %struct.Memory** %MEMORY
  %loadMem_4857a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 33
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4108, i64 0, i64 0
  %YMM0.i177 = bitcast %union.VectorReg* %4109 to %"class.std::bitset"*
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4110, i64 0, i64 0
  %XMM0.i178 = bitcast %union.VectorReg* %4111 to %union.vec128_t*
  %4112 = bitcast %"class.std::bitset"* %YMM0.i177 to i8*
  %4113 = bitcast %union.vec128_t* %XMM0.i178 to i8*
  %4114 = load i64, i64* %PC.i176
  %4115 = add i64 %4114, 4
  store i64 %4115, i64* %PC.i176
  %4116 = bitcast i8* %4112 to <2 x i32>*
  %4117 = load <2 x i32>, <2 x i32>* %4116, align 1
  %4118 = getelementptr inbounds i8, i8* %4112, i64 8
  %4119 = bitcast i8* %4118 to <2 x i32>*
  %4120 = load <2 x i32>, <2 x i32>* %4119, align 1
  %4121 = bitcast i8* %4113 to double*
  %4122 = load double, double* %4121, align 1
  %4123 = fptrunc double %4122 to float
  %4124 = bitcast i8* %4112 to float*
  store float %4123, float* %4124, align 1
  %4125 = extractelement <2 x i32> %4117, i32 1
  %4126 = getelementptr inbounds i8, i8* %4112, i64 4
  %4127 = bitcast i8* %4126 to i32*
  store i32 %4125, i32* %4127, align 1
  %4128 = extractelement <2 x i32> %4120, i32 0
  %4129 = bitcast i8* %4118 to i32*
  store i32 %4128, i32* %4129, align 1
  %4130 = extractelement <2 x i32> %4120, i32 1
  %4131 = getelementptr inbounds i8, i8* %4112, i64 12
  %4132 = bitcast i8* %4131 to i32*
  store i32 %4130, i32* %4132, align 1
  store %struct.Memory* %loadMem_4857a4, %struct.Memory** %MEMORY
  %loadMem_4857a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 15
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4140 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4139, i64 0, i64 0
  %XMM0.i175 = bitcast %union.VectorReg* %4140 to %union.vec128_t*
  %4141 = load i64, i64* %RBP.i174
  %4142 = sub i64 %4141, 80
  %4143 = bitcast %union.vec128_t* %XMM0.i175 to i8*
  %4144 = load i64, i64* %PC.i173
  %4145 = add i64 %4144, 5
  store i64 %4145, i64* %PC.i173
  %4146 = bitcast i8* %4143 to <2 x float>*
  %4147 = load <2 x float>, <2 x float>* %4146, align 1
  %4148 = extractelement <2 x float> %4147, i32 0
  %4149 = inttoptr i64 %4142 to float*
  store float %4148, float* %4149
  store %struct.Memory* %loadMem_4857a8, %struct.Memory** %MEMORY
  %loadMem_4857ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 33
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %PC.i172
  %4154 = add i64 %4153, 269
  %4155 = load i64, i64* %PC.i172
  %4156 = add i64 %4155, 5
  store i64 %4156, i64* %PC.i172
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4154, i64* %4157, align 8
  store %struct.Memory* %loadMem_4857ad, %struct.Memory** %MEMORY
  br label %block_.L_4858ba

block_.L_4857b2:                                  ; preds = %block_.L_4856b0
  %loadMem_4857b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4161, i64 0, i64 1
  %YMM1.i171 = bitcast %union.VectorReg* %4162 to %"class.std::bitset"*
  %4163 = bitcast %"class.std::bitset"* %YMM1.i171 to i8*
  %4164 = load i64, i64* %PC.i170
  %4165 = add i64 %4164, ptrtoint (%G_0x5d95e__rip__type* @G_0x5d95e__rip_ to i64)
  %4166 = load i64, i64* %PC.i170
  %4167 = add i64 %4166, 8
  store i64 %4167, i64* %PC.i170
  %4168 = inttoptr i64 %4165 to float*
  %4169 = load float, float* %4168
  %4170 = bitcast i8* %4163 to float*
  store float %4169, float* %4170, align 1
  %4171 = getelementptr inbounds i8, i8* %4163, i64 4
  %4172 = bitcast i8* %4171 to float*
  store float 0.000000e+00, float* %4172, align 1
  %4173 = getelementptr inbounds i8, i8* %4163, i64 8
  %4174 = bitcast i8* %4173 to float*
  store float 0.000000e+00, float* %4174, align 1
  %4175 = getelementptr inbounds i8, i8* %4163, i64 12
  %4176 = bitcast i8* %4175 to float*
  store float 0.000000e+00, float* %4176, align 1
  store %struct.Memory* %loadMem_4857b2, %struct.Memory** %MEMORY
  %loadMem_4857ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4178 = getelementptr inbounds %struct.GPR, %struct.GPR* %4177, i32 0, i32 33
  %4179 = getelementptr inbounds %struct.Reg, %struct.Reg* %4178, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4179 to i64*
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4181 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4180, i64 0, i64 0
  %YMM0.i169 = bitcast %union.VectorReg* %4181 to %"class.std::bitset"*
  %4182 = bitcast %"class.std::bitset"* %YMM0.i169 to i8*
  %4183 = load i64, i64* %PC.i168
  %4184 = add i64 %4183, ptrtoint (%G_0x5d87e__rip__type* @G_0x5d87e__rip_ to i64)
  %4185 = load i64, i64* %PC.i168
  %4186 = add i64 %4185, 8
  store i64 %4186, i64* %PC.i168
  %4187 = inttoptr i64 %4184 to double*
  %4188 = load double, double* %4187
  %4189 = bitcast i8* %4182 to double*
  store double %4188, double* %4189, align 1
  %4190 = getelementptr inbounds i8, i8* %4182, i64 8
  %4191 = bitcast i8* %4190 to double*
  store double 0.000000e+00, double* %4191, align 1
  store %struct.Memory* %loadMem_4857ba, %struct.Memory** %MEMORY
  %loadMem_4857c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 33
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4194 to i64*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 15
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %4197 to i64*
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4198, i64 0, i64 2
  %YMM2.i167 = bitcast %union.VectorReg* %4199 to %"class.std::bitset"*
  %4200 = bitcast %"class.std::bitset"* %YMM2.i167 to i8*
  %4201 = load i64, i64* %RBP.i166
  %4202 = sub i64 %4201, 60
  %4203 = load i64, i64* %PC.i165
  %4204 = add i64 %4203, 5
  store i64 %4204, i64* %PC.i165
  %4205 = inttoptr i64 %4202 to float*
  %4206 = load float, float* %4205
  %4207 = fpext float %4206 to double
  %4208 = bitcast i8* %4200 to double*
  store double %4207, double* %4208, align 1
  store %struct.Memory* %loadMem_4857c2, %struct.Memory** %MEMORY
  %loadMem_4857c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 33
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4213 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4212, i64 0, i64 0
  %YMM0.i163 = bitcast %union.VectorReg* %4213 to %"class.std::bitset"*
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4214, i64 0, i64 2
  %XMM2.i164 = bitcast %union.VectorReg* %4215 to %union.vec128_t*
  %4216 = bitcast %"class.std::bitset"* %YMM0.i163 to i8*
  %4217 = bitcast %"class.std::bitset"* %YMM0.i163 to i8*
  %4218 = bitcast %union.vec128_t* %XMM2.i164 to i8*
  %4219 = load i64, i64* %PC.i162
  %4220 = add i64 %4219, 4
  store i64 %4220, i64* %PC.i162
  %4221 = bitcast i8* %4217 to double*
  %4222 = load double, double* %4221, align 1
  %4223 = getelementptr inbounds i8, i8* %4217, i64 8
  %4224 = bitcast i8* %4223 to i64*
  %4225 = load i64, i64* %4224, align 1
  %4226 = bitcast i8* %4218 to double*
  %4227 = load double, double* %4226, align 1
  %4228 = fmul double %4222, %4227
  %4229 = bitcast i8* %4216 to double*
  store double %4228, double* %4229, align 1
  %4230 = getelementptr inbounds i8, i8* %4216, i64 8
  %4231 = bitcast i8* %4230 to i64*
  store i64 %4225, i64* %4231, align 1
  store %struct.Memory* %loadMem_4857c7, %struct.Memory** %MEMORY
  %loadMem_4857cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 33
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4234 to i64*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 15
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4238, i64 0, i64 2
  %YMM2.i161 = bitcast %union.VectorReg* %4239 to %"class.std::bitset"*
  %4240 = bitcast %"class.std::bitset"* %YMM2.i161 to i8*
  %4241 = load i64, i64* %RBP.i160
  %4242 = sub i64 %4241, 44
  %4243 = load i64, i64* %PC.i159
  %4244 = add i64 %4243, 5
  store i64 %4244, i64* %PC.i159
  %4245 = inttoptr i64 %4242 to float*
  %4246 = load float, float* %4245
  %4247 = bitcast i8* %4240 to float*
  store float %4246, float* %4247, align 1
  %4248 = getelementptr inbounds i8, i8* %4240, i64 4
  %4249 = bitcast i8* %4248 to float*
  store float 0.000000e+00, float* %4249, align 1
  %4250 = getelementptr inbounds i8, i8* %4240, i64 8
  %4251 = bitcast i8* %4250 to float*
  store float 0.000000e+00, float* %4251, align 1
  %4252 = getelementptr inbounds i8, i8* %4240, i64 12
  %4253 = bitcast i8* %4252 to float*
  store float 0.000000e+00, float* %4253, align 1
  store %struct.Memory* %loadMem_4857cb, %struct.Memory** %MEMORY
  %loadMem_4857d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 15
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %4259 to i64*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4260, i64 0, i64 0
  %XMM0.i158 = bitcast %union.VectorReg* %4261 to %union.vec128_t*
  %4262 = load i64, i64* %RBP.i157
  %4263 = sub i64 %4262, 112
  %4264 = bitcast %union.vec128_t* %XMM0.i158 to i8*
  %4265 = load i64, i64* %PC.i156
  %4266 = add i64 %4265, 5
  store i64 %4266, i64* %PC.i156
  %4267 = bitcast i8* %4264 to double*
  %4268 = load double, double* %4267, align 1
  %4269 = inttoptr i64 %4263 to double*
  store double %4268, double* %4269
  store %struct.Memory* %loadMem_4857d0, %struct.Memory** %MEMORY
  %loadMem_4857d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4273, i64 0, i64 0
  %YMM0.i154 = bitcast %union.VectorReg* %4274 to %"class.std::bitset"*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4276 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4275, i64 0, i64 2
  %XMM2.i155 = bitcast %union.VectorReg* %4276 to %union.vec128_t*
  %4277 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %4278 = bitcast %union.vec128_t* %XMM2.i155 to i8*
  %4279 = load i64, i64* %PC.i153
  %4280 = add i64 %4279, 3
  store i64 %4280, i64* %PC.i153
  %4281 = bitcast i8* %4278 to <2 x i32>*
  %4282 = load <2 x i32>, <2 x i32>* %4281, align 1
  %4283 = getelementptr inbounds i8, i8* %4278, i64 8
  %4284 = bitcast i8* %4283 to <2 x i32>*
  %4285 = load <2 x i32>, <2 x i32>* %4284, align 1
  %4286 = extractelement <2 x i32> %4282, i32 0
  %4287 = bitcast i8* %4277 to i32*
  store i32 %4286, i32* %4287, align 1
  %4288 = extractelement <2 x i32> %4282, i32 1
  %4289 = getelementptr inbounds i8, i8* %4277, i64 4
  %4290 = bitcast i8* %4289 to i32*
  store i32 %4288, i32* %4290, align 1
  %4291 = extractelement <2 x i32> %4285, i32 0
  %4292 = getelementptr inbounds i8, i8* %4277, i64 8
  %4293 = bitcast i8* %4292 to i32*
  store i32 %4291, i32* %4293, align 1
  %4294 = extractelement <2 x i32> %4285, i32 1
  %4295 = getelementptr inbounds i8, i8* %4277, i64 12
  %4296 = bitcast i8* %4295 to i32*
  store i32 %4294, i32* %4296, align 1
  store %struct.Memory* %loadMem_4857d5, %struct.Memory** %MEMORY
  %loadMem1_4857d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 33
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4299 to i64*
  %4300 = load i64, i64* %PC.i152
  %4301 = add i64 %4300, 381320
  %4302 = load i64, i64* %PC.i152
  %4303 = add i64 %4302, 5
  %4304 = load i64, i64* %PC.i152
  %4305 = add i64 %4304, 5
  store i64 %4305, i64* %PC.i152
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4307 = load i64, i64* %4306, align 8
  %4308 = add i64 %4307, -8
  %4309 = inttoptr i64 %4308 to i64*
  store i64 %4303, i64* %4309
  store i64 %4308, i64* %4306, align 8
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4301, i64* %4310, align 8
  store %struct.Memory* %loadMem1_4857d8, %struct.Memory** %MEMORY
  %loadMem2_4857d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4857d8 = load i64, i64* %3
  %call2_4857d8 = call %struct.Memory* @sub_4e2960.soft_cap(%struct.State* %0, i64 %loadPC_4857d8, %struct.Memory* %loadMem2_4857d8)
  store %struct.Memory* %call2_4857d8, %struct.Memory** %MEMORY
  %loadMem_4857dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4314, i64 0, i64 1
  %YMM1.i151 = bitcast %union.VectorReg* %4315 to %"class.std::bitset"*
  %4316 = bitcast %"class.std::bitset"* %YMM1.i151 to i8*
  %4317 = load i64, i64* %PC.i150
  %4318 = add i64 %4317, ptrtoint (%G_0x5d933__rip__type* @G_0x5d933__rip_ to i64)
  %4319 = load i64, i64* %PC.i150
  %4320 = add i64 %4319, 8
  store i64 %4320, i64* %PC.i150
  %4321 = inttoptr i64 %4318 to float*
  %4322 = load float, float* %4321
  %4323 = bitcast i8* %4316 to float*
  store float %4322, float* %4323, align 1
  %4324 = getelementptr inbounds i8, i8* %4316, i64 4
  %4325 = bitcast i8* %4324 to float*
  store float 0.000000e+00, float* %4325, align 1
  %4326 = getelementptr inbounds i8, i8* %4316, i64 8
  %4327 = bitcast i8* %4326 to float*
  store float 0.000000e+00, float* %4327, align 1
  %4328 = getelementptr inbounds i8, i8* %4316, i64 12
  %4329 = bitcast i8* %4328 to float*
  store float 0.000000e+00, float* %4329, align 1
  store %struct.Memory* %loadMem_4857dd, %struct.Memory** %MEMORY
  %loadMem_4857e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4333, i64 0, i64 2
  %YMM2.i149 = bitcast %union.VectorReg* %4334 to %"class.std::bitset"*
  %4335 = bitcast %"class.std::bitset"* %YMM2.i149 to i8*
  %4336 = load i64, i64* %PC.i148
  %4337 = add i64 %4336, ptrtoint (%G_0x5d853__rip__type* @G_0x5d853__rip_ to i64)
  %4338 = load i64, i64* %PC.i148
  %4339 = add i64 %4338, 8
  store i64 %4339, i64* %PC.i148
  %4340 = inttoptr i64 %4337 to double*
  %4341 = load double, double* %4340
  %4342 = bitcast i8* %4335 to double*
  store double %4341, double* %4342, align 1
  %4343 = getelementptr inbounds i8, i8* %4335, i64 8
  %4344 = bitcast i8* %4343 to double*
  store double 0.000000e+00, double* %4344, align 1
  store %struct.Memory* %loadMem_4857e5, %struct.Memory** %MEMORY
  %loadMem_4857ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 33
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %4347 to i64*
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4348, i64 0, i64 0
  %YMM0.i146 = bitcast %union.VectorReg* %4349 to %"class.std::bitset"*
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4351 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4350, i64 0, i64 0
  %XMM0.i147 = bitcast %union.VectorReg* %4351 to %union.vec128_t*
  %4352 = bitcast %"class.std::bitset"* %YMM0.i146 to i8*
  %4353 = bitcast %union.vec128_t* %XMM0.i147 to i8*
  %4354 = load i64, i64* %PC.i145
  %4355 = add i64 %4354, 4
  store i64 %4355, i64* %PC.i145
  %4356 = bitcast i8* %4353 to <2 x float>*
  %4357 = load <2 x float>, <2 x float>* %4356, align 1
  %4358 = extractelement <2 x float> %4357, i32 0
  %4359 = fpext float %4358 to double
  %4360 = bitcast i8* %4352 to double*
  store double %4359, double* %4360, align 1
  store %struct.Memory* %loadMem_4857ed, %struct.Memory** %MEMORY
  %loadMem_4857f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 33
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 15
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %4366 to i64*
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4368 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4367, i64 0, i64 3
  %YMM3.i144 = bitcast %union.VectorReg* %4368 to %"class.std::bitset"*
  %4369 = bitcast %"class.std::bitset"* %YMM3.i144 to i8*
  %4370 = load i64, i64* %RBP.i143
  %4371 = sub i64 %4370, 112
  %4372 = load i64, i64* %PC.i142
  %4373 = add i64 %4372, 5
  store i64 %4373, i64* %PC.i142
  %4374 = inttoptr i64 %4371 to double*
  %4375 = load double, double* %4374
  %4376 = bitcast i8* %4369 to double*
  store double %4375, double* %4376, align 1
  %4377 = getelementptr inbounds i8, i8* %4369, i64 8
  %4378 = bitcast i8* %4377 to double*
  store double 0.000000e+00, double* %4378, align 1
  store %struct.Memory* %loadMem_4857f1, %struct.Memory** %MEMORY
  %loadMem_4857f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 33
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4381 to i64*
  %4382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4383 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4382, i64 0, i64 3
  %YMM3.i140 = bitcast %union.VectorReg* %4383 to %"class.std::bitset"*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4385 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4384, i64 0, i64 0
  %XMM0.i141 = bitcast %union.VectorReg* %4385 to %union.vec128_t*
  %4386 = bitcast %"class.std::bitset"* %YMM3.i140 to i8*
  %4387 = bitcast %"class.std::bitset"* %YMM3.i140 to i8*
  %4388 = bitcast %union.vec128_t* %XMM0.i141 to i8*
  %4389 = load i64, i64* %PC.i139
  %4390 = add i64 %4389, 4
  store i64 %4390, i64* %PC.i139
  %4391 = bitcast i8* %4387 to double*
  %4392 = load double, double* %4391, align 1
  %4393 = getelementptr inbounds i8, i8* %4387, i64 8
  %4394 = bitcast i8* %4393 to i64*
  %4395 = load i64, i64* %4394, align 1
  %4396 = bitcast i8* %4388 to double*
  %4397 = load double, double* %4396, align 1
  %4398 = fmul double %4392, %4397
  %4399 = bitcast i8* %4386 to double*
  store double %4398, double* %4399, align 1
  %4400 = getelementptr inbounds i8, i8* %4386, i64 8
  %4401 = bitcast i8* %4400 to i64*
  store i64 %4395, i64* %4401, align 1
  store %struct.Memory* %loadMem_4857f6, %struct.Memory** %MEMORY
  %loadMem_4857fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 33
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4404 to i64*
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4405, i64 0, i64 0
  %YMM0.i137 = bitcast %union.VectorReg* %4406 to %"class.std::bitset"*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4407, i64 0, i64 3
  %XMM3.i138 = bitcast %union.VectorReg* %4408 to %union.vec128_t*
  %4409 = bitcast %"class.std::bitset"* %YMM0.i137 to i8*
  %4410 = bitcast %union.vec128_t* %XMM3.i138 to i8*
  %4411 = load i64, i64* %PC.i136
  %4412 = add i64 %4411, 4
  store i64 %4412, i64* %PC.i136
  %4413 = bitcast i8* %4409 to <2 x i32>*
  %4414 = load <2 x i32>, <2 x i32>* %4413, align 1
  %4415 = getelementptr inbounds i8, i8* %4409, i64 8
  %4416 = bitcast i8* %4415 to <2 x i32>*
  %4417 = load <2 x i32>, <2 x i32>* %4416, align 1
  %4418 = bitcast i8* %4410 to double*
  %4419 = load double, double* %4418, align 1
  %4420 = fptrunc double %4419 to float
  %4421 = bitcast i8* %4409 to float*
  store float %4420, float* %4421, align 1
  %4422 = extractelement <2 x i32> %4414, i32 1
  %4423 = getelementptr inbounds i8, i8* %4409, i64 4
  %4424 = bitcast i8* %4423 to i32*
  store i32 %4422, i32* %4424, align 1
  %4425 = extractelement <2 x i32> %4417, i32 0
  %4426 = bitcast i8* %4415 to i32*
  store i32 %4425, i32* %4426, align 1
  %4427 = extractelement <2 x i32> %4417, i32 1
  %4428 = getelementptr inbounds i8, i8* %4409, i64 12
  %4429 = bitcast i8* %4428 to i32*
  store i32 %4427, i32* %4429, align 1
  store %struct.Memory* %loadMem_4857fa, %struct.Memory** %MEMORY
  %loadMem_4857fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 33
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4432 to i64*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 15
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4436, i64 0, i64 0
  %XMM0.i135 = bitcast %union.VectorReg* %4437 to %union.vec128_t*
  %4438 = load i64, i64* %RBP.i134
  %4439 = sub i64 %4438, 88
  %4440 = bitcast %union.vec128_t* %XMM0.i135 to i8*
  %4441 = load i64, i64* %PC.i133
  %4442 = add i64 %4441, 5
  store i64 %4442, i64* %PC.i133
  %4443 = bitcast i8* %4440 to <2 x float>*
  %4444 = load <2 x float>, <2 x float>* %4443, align 1
  %4445 = extractelement <2 x float> %4444, i32 0
  %4446 = inttoptr i64 %4439 to float*
  store float %4445, float* %4446
  store %struct.Memory* %loadMem_4857fe, %struct.Memory** %MEMORY
  %loadMem_485803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 33
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 15
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4453, i64 0, i64 0
  %YMM0.i132 = bitcast %union.VectorReg* %4454 to %"class.std::bitset"*
  %4455 = bitcast %"class.std::bitset"* %YMM0.i132 to i8*
  %4456 = load i64, i64* %RBP.i131
  %4457 = sub i64 %4456, 64
  %4458 = load i64, i64* %PC.i130
  %4459 = add i64 %4458, 5
  store i64 %4459, i64* %PC.i130
  %4460 = inttoptr i64 %4457 to float*
  %4461 = load float, float* %4460
  %4462 = fpext float %4461 to double
  %4463 = bitcast i8* %4455 to double*
  store double %4462, double* %4463, align 1
  store %struct.Memory* %loadMem_485803, %struct.Memory** %MEMORY
  %loadMem_485808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4468 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4467, i64 0, i64 2
  %YMM2.i128 = bitcast %union.VectorReg* %4468 to %"class.std::bitset"*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4469, i64 0, i64 0
  %XMM0.i129 = bitcast %union.VectorReg* %4470 to %union.vec128_t*
  %4471 = bitcast %"class.std::bitset"* %YMM2.i128 to i8*
  %4472 = bitcast %"class.std::bitset"* %YMM2.i128 to i8*
  %4473 = bitcast %union.vec128_t* %XMM0.i129 to i8*
  %4474 = load i64, i64* %PC.i127
  %4475 = add i64 %4474, 4
  store i64 %4475, i64* %PC.i127
  %4476 = bitcast i8* %4472 to double*
  %4477 = load double, double* %4476, align 1
  %4478 = getelementptr inbounds i8, i8* %4472, i64 8
  %4479 = bitcast i8* %4478 to i64*
  %4480 = load i64, i64* %4479, align 1
  %4481 = bitcast i8* %4473 to double*
  %4482 = load double, double* %4481, align 1
  %4483 = fmul double %4477, %4482
  %4484 = bitcast i8* %4471 to double*
  store double %4483, double* %4484, align 1
  %4485 = getelementptr inbounds i8, i8* %4471, i64 8
  %4486 = bitcast i8* %4485 to i64*
  store i64 %4480, i64* %4486, align 1
  store %struct.Memory* %loadMem_485808, %struct.Memory** %MEMORY
  %loadMem_48580c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 15
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4493, i64 0, i64 0
  %YMM0.i126 = bitcast %union.VectorReg* %4494 to %"class.std::bitset"*
  %4495 = bitcast %"class.std::bitset"* %YMM0.i126 to i8*
  %4496 = load i64, i64* %RBP.i125
  %4497 = sub i64 %4496, 44
  %4498 = load i64, i64* %PC.i124
  %4499 = add i64 %4498, 5
  store i64 %4499, i64* %PC.i124
  %4500 = inttoptr i64 %4497 to float*
  %4501 = load float, float* %4500
  %4502 = bitcast i8* %4495 to float*
  store float %4501, float* %4502, align 1
  %4503 = getelementptr inbounds i8, i8* %4495, i64 4
  %4504 = bitcast i8* %4503 to float*
  store float 0.000000e+00, float* %4504, align 1
  %4505 = getelementptr inbounds i8, i8* %4495, i64 8
  %4506 = bitcast i8* %4505 to float*
  store float 0.000000e+00, float* %4506, align 1
  %4507 = getelementptr inbounds i8, i8* %4495, i64 12
  %4508 = bitcast i8* %4507 to float*
  store float 0.000000e+00, float* %4508, align 1
  store %struct.Memory* %loadMem_48580c, %struct.Memory** %MEMORY
  %loadMem_485811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 15
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %4514 to i64*
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4516 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4515, i64 0, i64 0
  %YMM0.i123 = bitcast %union.VectorReg* %4516 to %"class.std::bitset"*
  %4517 = bitcast %"class.std::bitset"* %YMM0.i123 to i8*
  %4518 = bitcast %"class.std::bitset"* %YMM0.i123 to i8*
  %4519 = load i64, i64* %RBP.i122
  %4520 = sub i64 %4519, 48
  %4521 = load i64, i64* %PC.i121
  %4522 = add i64 %4521, 5
  store i64 %4522, i64* %PC.i121
  %4523 = bitcast i8* %4518 to <2 x float>*
  %4524 = load <2 x float>, <2 x float>* %4523, align 1
  %4525 = getelementptr inbounds i8, i8* %4518, i64 8
  %4526 = bitcast i8* %4525 to <2 x i32>*
  %4527 = load <2 x i32>, <2 x i32>* %4526, align 1
  %4528 = inttoptr i64 %4520 to float*
  %4529 = load float, float* %4528
  %4530 = extractelement <2 x float> %4524, i32 0
  %4531 = fadd float %4530, %4529
  %4532 = bitcast i8* %4517 to float*
  store float %4531, float* %4532, align 1
  %4533 = bitcast <2 x float> %4524 to <2 x i32>
  %4534 = extractelement <2 x i32> %4533, i32 1
  %4535 = getelementptr inbounds i8, i8* %4517, i64 4
  %4536 = bitcast i8* %4535 to i32*
  store i32 %4534, i32* %4536, align 1
  %4537 = extractelement <2 x i32> %4527, i32 0
  %4538 = getelementptr inbounds i8, i8* %4517, i64 8
  %4539 = bitcast i8* %4538 to i32*
  store i32 %4537, i32* %4539, align 1
  %4540 = extractelement <2 x i32> %4527, i32 1
  %4541 = getelementptr inbounds i8, i8* %4517, i64 12
  %4542 = bitcast i8* %4541 to i32*
  store i32 %4540, i32* %4542, align 1
  store %struct.Memory* %loadMem_485811, %struct.Memory** %MEMORY
  %loadMem_485816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 33
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 15
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4548 to i64*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4549, i64 0, i64 2
  %XMM2.i120 = bitcast %union.VectorReg* %4550 to %union.vec128_t*
  %4551 = load i64, i64* %RBP.i119
  %4552 = sub i64 %4551, 120
  %4553 = bitcast %union.vec128_t* %XMM2.i120 to i8*
  %4554 = load i64, i64* %PC.i118
  %4555 = add i64 %4554, 5
  store i64 %4555, i64* %PC.i118
  %4556 = bitcast i8* %4553 to double*
  %4557 = load double, double* %4556, align 1
  %4558 = inttoptr i64 %4552 to double*
  store double %4557, double* %4558
  store %struct.Memory* %loadMem_485816, %struct.Memory** %MEMORY
  %loadMem1_48581b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 33
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4561 to i64*
  %4562 = load i64, i64* %PC.i117
  %4563 = add i64 %4562, 381253
  %4564 = load i64, i64* %PC.i117
  %4565 = add i64 %4564, 5
  %4566 = load i64, i64* %PC.i117
  %4567 = add i64 %4566, 5
  store i64 %4567, i64* %PC.i117
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4569 = load i64, i64* %4568, align 8
  %4570 = add i64 %4569, -8
  %4571 = inttoptr i64 %4570 to i64*
  store i64 %4565, i64* %4571
  store i64 %4570, i64* %4568, align 8
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4563, i64* %4572, align 8
  store %struct.Memory* %loadMem1_48581b, %struct.Memory** %MEMORY
  %loadMem2_48581b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48581b = load i64, i64* %3
  %call2_48581b = call %struct.Memory* @sub_4e2960.soft_cap(%struct.State* %0, i64 %loadPC_48581b, %struct.Memory* %loadMem2_48581b)
  store %struct.Memory* %call2_48581b, %struct.Memory** %MEMORY
  %loadMem_485820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 33
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4575 to i64*
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4577 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4576, i64 0, i64 1
  %YMM1.i115 = bitcast %union.VectorReg* %4577 to %"class.std::bitset"*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4578, i64 0, i64 1
  %XMM1.i116 = bitcast %union.VectorReg* %4579 to %union.vec128_t*
  %4580 = bitcast %"class.std::bitset"* %YMM1.i115 to i8*
  %4581 = bitcast %"class.std::bitset"* %YMM1.i115 to i8*
  %4582 = bitcast %union.vec128_t* %XMM1.i116 to i8*
  %4583 = load i64, i64* %PC.i114
  %4584 = add i64 %4583, 3
  store i64 %4584, i64* %PC.i114
  %4585 = bitcast i8* %4581 to i64*
  %4586 = load i64, i64* %4585, align 1
  %4587 = getelementptr inbounds i8, i8* %4581, i64 8
  %4588 = bitcast i8* %4587 to i64*
  %4589 = load i64, i64* %4588, align 1
  %4590 = bitcast i8* %4582 to i64*
  %4591 = load i64, i64* %4590, align 1
  %4592 = getelementptr inbounds i8, i8* %4582, i64 8
  %4593 = bitcast i8* %4592 to i64*
  %4594 = load i64, i64* %4593, align 1
  %4595 = xor i64 %4591, %4586
  %4596 = xor i64 %4594, %4589
  %4597 = trunc i64 %4595 to i32
  %4598 = lshr i64 %4595, 32
  %4599 = trunc i64 %4598 to i32
  %4600 = bitcast i8* %4580 to i32*
  store i32 %4597, i32* %4600, align 1
  %4601 = getelementptr inbounds i8, i8* %4580, i64 4
  %4602 = bitcast i8* %4601 to i32*
  store i32 %4599, i32* %4602, align 1
  %4603 = trunc i64 %4596 to i32
  %4604 = getelementptr inbounds i8, i8* %4580, i64 8
  %4605 = bitcast i8* %4604 to i32*
  store i32 %4603, i32* %4605, align 1
  %4606 = lshr i64 %4596, 32
  %4607 = trunc i64 %4606 to i32
  %4608 = getelementptr inbounds i8, i8* %4580, i64 12
  %4609 = bitcast i8* %4608 to i32*
  store i32 %4607, i32* %4609, align 1
  store %struct.Memory* %loadMem_485820, %struct.Memory** %MEMORY
  %loadMem_485823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 33
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4612 to i64*
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4613, i64 0, i64 2
  %YMM2.i113 = bitcast %union.VectorReg* %4614 to %"class.std::bitset"*
  %4615 = bitcast %"class.std::bitset"* %YMM2.i113 to i8*
  %4616 = load i64, i64* %PC.i112
  %4617 = add i64 %4616, ptrtoint (%G_0x5d8b5__rip__type* @G_0x5d8b5__rip_ to i64)
  %4618 = load i64, i64* %PC.i112
  %4619 = add i64 %4618, 8
  store i64 %4619, i64* %PC.i112
  %4620 = inttoptr i64 %4617 to double*
  %4621 = load double, double* %4620
  %4622 = bitcast i8* %4615 to double*
  store double %4621, double* %4622, align 1
  %4623 = getelementptr inbounds i8, i8* %4615, i64 8
  %4624 = bitcast i8* %4623 to double*
  store double 0.000000e+00, double* %4624, align 1
  store %struct.Memory* %loadMem_485823, %struct.Memory** %MEMORY
  %loadMem_48582b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 33
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4629 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4628, i64 0, i64 0
  %YMM0.i110 = bitcast %union.VectorReg* %4629 to %"class.std::bitset"*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4631 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4630, i64 0, i64 0
  %XMM0.i111 = bitcast %union.VectorReg* %4631 to %union.vec128_t*
  %4632 = bitcast %"class.std::bitset"* %YMM0.i110 to i8*
  %4633 = bitcast %union.vec128_t* %XMM0.i111 to i8*
  %4634 = load i64, i64* %PC.i109
  %4635 = add i64 %4634, 4
  store i64 %4635, i64* %PC.i109
  %4636 = bitcast i8* %4633 to <2 x float>*
  %4637 = load <2 x float>, <2 x float>* %4636, align 1
  %4638 = extractelement <2 x float> %4637, i32 0
  %4639 = fpext float %4638 to double
  %4640 = bitcast i8* %4632 to double*
  store double %4639, double* %4640, align 1
  store %struct.Memory* %loadMem_48582b, %struct.Memory** %MEMORY
  %loadMem_48582f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 15
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4647, i64 0, i64 3
  %YMM3.i108 = bitcast %union.VectorReg* %4648 to %"class.std::bitset"*
  %4649 = bitcast %"class.std::bitset"* %YMM3.i108 to i8*
  %4650 = load i64, i64* %RBP.i107
  %4651 = sub i64 %4650, 120
  %4652 = load i64, i64* %PC.i106
  %4653 = add i64 %4652, 5
  store i64 %4653, i64* %PC.i106
  %4654 = inttoptr i64 %4651 to double*
  %4655 = load double, double* %4654
  %4656 = bitcast i8* %4649 to double*
  store double %4655, double* %4656, align 1
  %4657 = getelementptr inbounds i8, i8* %4649, i64 8
  %4658 = bitcast i8* %4657 to double*
  store double 0.000000e+00, double* %4658, align 1
  store %struct.Memory* %loadMem_48582f, %struct.Memory** %MEMORY
  %loadMem_485834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 33
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4663 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4662, i64 0, i64 3
  %YMM3.i104 = bitcast %union.VectorReg* %4663 to %"class.std::bitset"*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4665 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4664, i64 0, i64 0
  %XMM0.i105 = bitcast %union.VectorReg* %4665 to %union.vec128_t*
  %4666 = bitcast %"class.std::bitset"* %YMM3.i104 to i8*
  %4667 = bitcast %"class.std::bitset"* %YMM3.i104 to i8*
  %4668 = bitcast %union.vec128_t* %XMM0.i105 to i8*
  %4669 = load i64, i64* %PC.i103
  %4670 = add i64 %4669, 4
  store i64 %4670, i64* %PC.i103
  %4671 = bitcast i8* %4667 to double*
  %4672 = load double, double* %4671, align 1
  %4673 = getelementptr inbounds i8, i8* %4667, i64 8
  %4674 = bitcast i8* %4673 to i64*
  %4675 = load i64, i64* %4674, align 1
  %4676 = bitcast i8* %4668 to double*
  %4677 = load double, double* %4676, align 1
  %4678 = fmul double %4672, %4677
  %4679 = bitcast i8* %4666 to double*
  store double %4678, double* %4679, align 1
  %4680 = getelementptr inbounds i8, i8* %4666, i64 8
  %4681 = bitcast i8* %4680 to i64*
  store i64 %4675, i64* %4681, align 1
  store %struct.Memory* %loadMem_485834, %struct.Memory** %MEMORY
  %loadMem_485838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4683 = getelementptr inbounds %struct.GPR, %struct.GPR* %4682, i32 0, i32 33
  %4684 = getelementptr inbounds %struct.Reg, %struct.Reg* %4683, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4684 to i64*
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4686 = getelementptr inbounds %struct.GPR, %struct.GPR* %4685, i32 0, i32 15
  %4687 = getelementptr inbounds %struct.Reg, %struct.Reg* %4686, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %4687 to i64*
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4688, i64 0, i64 0
  %YMM0.i102 = bitcast %union.VectorReg* %4689 to %"class.std::bitset"*
  %4690 = bitcast %"class.std::bitset"* %YMM0.i102 to i8*
  %4691 = load i64, i64* %RBP.i101
  %4692 = sub i64 %4691, 44
  %4693 = load i64, i64* %PC.i100
  %4694 = add i64 %4693, 5
  store i64 %4694, i64* %PC.i100
  %4695 = inttoptr i64 %4692 to float*
  %4696 = load float, float* %4695
  %4697 = fpext float %4696 to double
  %4698 = bitcast i8* %4690 to double*
  store double %4697, double* %4698, align 1
  store %struct.Memory* %loadMem_485838, %struct.Memory** %MEMORY
  %loadMem_48583d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 33
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4702, i64 0, i64 3
  %YMM3.i98 = bitcast %union.VectorReg* %4703 to %"class.std::bitset"*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4705 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4704, i64 0, i64 0
  %XMM0.i99 = bitcast %union.VectorReg* %4705 to %union.vec128_t*
  %4706 = bitcast %"class.std::bitset"* %YMM3.i98 to i8*
  %4707 = bitcast %"class.std::bitset"* %YMM3.i98 to i8*
  %4708 = bitcast %union.vec128_t* %XMM0.i99 to i8*
  %4709 = load i64, i64* %PC.i97
  %4710 = add i64 %4709, 4
  store i64 %4710, i64* %PC.i97
  %4711 = bitcast i8* %4707 to double*
  %4712 = load double, double* %4711, align 1
  %4713 = getelementptr inbounds i8, i8* %4707, i64 8
  %4714 = bitcast i8* %4713 to i64*
  %4715 = load i64, i64* %4714, align 1
  %4716 = bitcast i8* %4708 to double*
  %4717 = load double, double* %4716, align 1
  %4718 = fmul double %4712, %4717
  %4719 = bitcast i8* %4706 to double*
  store double %4718, double* %4719, align 1
  %4720 = getelementptr inbounds i8, i8* %4706, i64 8
  %4721 = bitcast i8* %4720 to i64*
  store i64 %4715, i64* %4721, align 1
  store %struct.Memory* %loadMem_48583d, %struct.Memory** %MEMORY
  %loadMem_485841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 15
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4728, i64 0, i64 0
  %YMM0.i96 = bitcast %union.VectorReg* %4729 to %"class.std::bitset"*
  %4730 = bitcast %"class.std::bitset"* %YMM0.i96 to i8*
  %4731 = load i64, i64* %RBP.i95
  %4732 = sub i64 %4731, 44
  %4733 = load i64, i64* %PC.i94
  %4734 = add i64 %4733, 5
  store i64 %4734, i64* %PC.i94
  %4735 = inttoptr i64 %4732 to float*
  %4736 = load float, float* %4735
  %4737 = bitcast i8* %4730 to float*
  store float %4736, float* %4737, align 1
  %4738 = getelementptr inbounds i8, i8* %4730, i64 4
  %4739 = bitcast i8* %4738 to float*
  store float 0.000000e+00, float* %4739, align 1
  %4740 = getelementptr inbounds i8, i8* %4730, i64 8
  %4741 = bitcast i8* %4740 to float*
  store float 0.000000e+00, float* %4741, align 1
  %4742 = getelementptr inbounds i8, i8* %4730, i64 12
  %4743 = bitcast i8* %4742 to float*
  store float 0.000000e+00, float* %4743, align 1
  store %struct.Memory* %loadMem_485841, %struct.Memory** %MEMORY
  %loadMem_485846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4745 = getelementptr inbounds %struct.GPR, %struct.GPR* %4744, i32 0, i32 33
  %4746 = getelementptr inbounds %struct.Reg, %struct.Reg* %4745, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4746 to i64*
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4748 = getelementptr inbounds %struct.GPR, %struct.GPR* %4747, i32 0, i32 15
  %4749 = getelementptr inbounds %struct.Reg, %struct.Reg* %4748, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4749 to i64*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4751 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4750, i64 0, i64 0
  %YMM0.i93 = bitcast %union.VectorReg* %4751 to %"class.std::bitset"*
  %4752 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %4753 = bitcast %"class.std::bitset"* %YMM0.i93 to i8*
  %4754 = load i64, i64* %RBP.i92
  %4755 = sub i64 %4754, 48
  %4756 = load i64, i64* %PC.i91
  %4757 = add i64 %4756, 5
  store i64 %4757, i64* %PC.i91
  %4758 = bitcast i8* %4753 to <2 x float>*
  %4759 = load <2 x float>, <2 x float>* %4758, align 1
  %4760 = getelementptr inbounds i8, i8* %4753, i64 8
  %4761 = bitcast i8* %4760 to <2 x i32>*
  %4762 = load <2 x i32>, <2 x i32>* %4761, align 1
  %4763 = inttoptr i64 %4755 to float*
  %4764 = load float, float* %4763
  %4765 = extractelement <2 x float> %4759, i32 0
  %4766 = fadd float %4765, %4764
  %4767 = bitcast i8* %4752 to float*
  store float %4766, float* %4767, align 1
  %4768 = bitcast <2 x float> %4759 to <2 x i32>
  %4769 = extractelement <2 x i32> %4768, i32 1
  %4770 = getelementptr inbounds i8, i8* %4752, i64 4
  %4771 = bitcast i8* %4770 to i32*
  store i32 %4769, i32* %4771, align 1
  %4772 = extractelement <2 x i32> %4762, i32 0
  %4773 = getelementptr inbounds i8, i8* %4752, i64 8
  %4774 = bitcast i8* %4773 to i32*
  store i32 %4772, i32* %4774, align 1
  %4775 = extractelement <2 x i32> %4762, i32 1
  %4776 = getelementptr inbounds i8, i8* %4752, i64 12
  %4777 = bitcast i8* %4776 to i32*
  store i32 %4775, i32* %4777, align 1
  store %struct.Memory* %loadMem_485846, %struct.Memory** %MEMORY
  %loadMem_48584b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 33
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4780 to i64*
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4782 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4781, i64 0, i64 0
  %YMM0.i89 = bitcast %union.VectorReg* %4782 to %"class.std::bitset"*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4784 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4783, i64 0, i64 0
  %XMM0.i90 = bitcast %union.VectorReg* %4784 to %union.vec128_t*
  %4785 = bitcast %"class.std::bitset"* %YMM0.i89 to i8*
  %4786 = bitcast %union.vec128_t* %XMM0.i90 to i8*
  %4787 = load i64, i64* %PC.i88
  %4788 = add i64 %4787, 4
  store i64 %4788, i64* %PC.i88
  %4789 = bitcast i8* %4786 to <2 x float>*
  %4790 = load <2 x float>, <2 x float>* %4789, align 1
  %4791 = extractelement <2 x float> %4790, i32 0
  %4792 = fpext float %4791 to double
  %4793 = bitcast i8* %4785 to double*
  store double %4792, double* %4793, align 1
  store %struct.Memory* %loadMem_48584b, %struct.Memory** %MEMORY
  %loadMem_48584f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4795 = getelementptr inbounds %struct.GPR, %struct.GPR* %4794, i32 0, i32 33
  %4796 = getelementptr inbounds %struct.Reg, %struct.Reg* %4795, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4796 to i64*
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4797, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %4798 to %"class.std::bitset"*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4800 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4799, i64 0, i64 0
  %XMM0.i87 = bitcast %union.VectorReg* %4800 to %union.vec128_t*
  %4801 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4802 = bitcast %"class.std::bitset"* %YMM3.i to i8*
  %4803 = bitcast %union.vec128_t* %XMM0.i87 to i8*
  %4804 = load i64, i64* %PC.i86
  %4805 = add i64 %4804, 4
  store i64 %4805, i64* %PC.i86
  %4806 = bitcast i8* %4802 to double*
  %4807 = load double, double* %4806, align 1
  %4808 = getelementptr inbounds i8, i8* %4802, i64 8
  %4809 = bitcast i8* %4808 to i64*
  %4810 = load i64, i64* %4809, align 1
  %4811 = bitcast i8* %4803 to double*
  %4812 = load double, double* %4811, align 1
  %4813 = fdiv double %4807, %4812
  %4814 = bitcast i8* %4801 to double*
  store double %4813, double* %4814, align 1
  %4815 = getelementptr inbounds i8, i8* %4801, i64 8
  %4816 = bitcast i8* %4815 to i64*
  store i64 %4810, i64* %4816, align 1
  store %struct.Memory* %loadMem_48584f, %struct.Memory** %MEMORY
  %loadMem_485853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 33
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4819 to i64*
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4821 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4820, i64 0, i64 0
  %YMM0.i85 = bitcast %union.VectorReg* %4821 to %"class.std::bitset"*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4823 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4822, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %4823 to %union.vec128_t*
  %4824 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %4825 = bitcast %union.vec128_t* %XMM3.i to i8*
  %4826 = load i64, i64* %PC.i84
  %4827 = add i64 %4826, 4
  store i64 %4827, i64* %PC.i84
  %4828 = bitcast i8* %4824 to <2 x i32>*
  %4829 = load <2 x i32>, <2 x i32>* %4828, align 1
  %4830 = getelementptr inbounds i8, i8* %4824, i64 8
  %4831 = bitcast i8* %4830 to <2 x i32>*
  %4832 = load <2 x i32>, <2 x i32>* %4831, align 1
  %4833 = bitcast i8* %4825 to double*
  %4834 = load double, double* %4833, align 1
  %4835 = fptrunc double %4834 to float
  %4836 = bitcast i8* %4824 to float*
  store float %4835, float* %4836, align 1
  %4837 = extractelement <2 x i32> %4829, i32 1
  %4838 = getelementptr inbounds i8, i8* %4824, i64 4
  %4839 = bitcast i8* %4838 to i32*
  store i32 %4837, i32* %4839, align 1
  %4840 = extractelement <2 x i32> %4832, i32 0
  %4841 = bitcast i8* %4830 to i32*
  store i32 %4840, i32* %4841, align 1
  %4842 = extractelement <2 x i32> %4832, i32 1
  %4843 = getelementptr inbounds i8, i8* %4824, i64 12
  %4844 = bitcast i8* %4843 to i32*
  store i32 %4842, i32* %4844, align 1
  store %struct.Memory* %loadMem_485853, %struct.Memory** %MEMORY
  %loadMem_485857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 15
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4851, i64 0, i64 0
  %XMM0.i83 = bitcast %union.VectorReg* %4852 to %union.vec128_t*
  %4853 = load i64, i64* %RBP.i82
  %4854 = sub i64 %4853, 92
  %4855 = bitcast %union.vec128_t* %XMM0.i83 to i8*
  %4856 = load i64, i64* %PC.i81
  %4857 = add i64 %4856, 5
  store i64 %4857, i64* %PC.i81
  %4858 = bitcast i8* %4855 to <2 x float>*
  %4859 = load <2 x float>, <2 x float>* %4858, align 1
  %4860 = extractelement <2 x float> %4859, i32 0
  %4861 = inttoptr i64 %4854 to float*
  store float %4860, float* %4861
  store %struct.Memory* %loadMem_485857, %struct.Memory** %MEMORY
  %loadMem_48585c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4863 = getelementptr inbounds %struct.GPR, %struct.GPR* %4862, i32 0, i32 33
  %4864 = getelementptr inbounds %struct.Reg, %struct.Reg* %4863, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4864 to i64*
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 15
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4869 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4868, i64 0, i64 0
  %YMM0.i80 = bitcast %union.VectorReg* %4869 to %"class.std::bitset"*
  %4870 = bitcast %"class.std::bitset"* %YMM0.i80 to i8*
  %4871 = load i64, i64* %RBP.i79
  %4872 = sub i64 %4871, 88
  %4873 = load i64, i64* %PC.i78
  %4874 = add i64 %4873, 5
  store i64 %4874, i64* %PC.i78
  %4875 = inttoptr i64 %4872 to float*
  %4876 = load float, float* %4875
  %4877 = bitcast i8* %4870 to float*
  store float %4876, float* %4877, align 1
  %4878 = getelementptr inbounds i8, i8* %4870, i64 4
  %4879 = bitcast i8* %4878 to float*
  store float 0.000000e+00, float* %4879, align 1
  %4880 = getelementptr inbounds i8, i8* %4870, i64 8
  %4881 = bitcast i8* %4880 to float*
  store float 0.000000e+00, float* %4881, align 1
  %4882 = getelementptr inbounds i8, i8* %4870, i64 12
  %4883 = bitcast i8* %4882 to float*
  store float 0.000000e+00, float* %4883, align 1
  store %struct.Memory* %loadMem_48585c, %struct.Memory** %MEMORY
  %loadMem_485861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 15
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4890, i64 0, i64 0
  %YMM0.i77 = bitcast %union.VectorReg* %4891 to %"class.std::bitset"*
  %4892 = bitcast %"class.std::bitset"* %YMM0.i77 to i8*
  %4893 = bitcast %"class.std::bitset"* %YMM0.i77 to i8*
  %4894 = load i64, i64* %RBP.i76
  %4895 = sub i64 %4894, 92
  %4896 = load i64, i64* %PC.i75
  %4897 = add i64 %4896, 5
  store i64 %4897, i64* %PC.i75
  %4898 = bitcast i8* %4893 to <2 x float>*
  %4899 = load <2 x float>, <2 x float>* %4898, align 1
  %4900 = getelementptr inbounds i8, i8* %4893, i64 8
  %4901 = bitcast i8* %4900 to <2 x i32>*
  %4902 = load <2 x i32>, <2 x i32>* %4901, align 1
  %4903 = inttoptr i64 %4895 to float*
  %4904 = load float, float* %4903
  %4905 = extractelement <2 x float> %4899, i32 0
  %4906 = fsub float %4905, %4904
  %4907 = bitcast i8* %4892 to float*
  store float %4906, float* %4907, align 1
  %4908 = bitcast <2 x float> %4899 to <2 x i32>
  %4909 = extractelement <2 x i32> %4908, i32 1
  %4910 = getelementptr inbounds i8, i8* %4892, i64 4
  %4911 = bitcast i8* %4910 to i32*
  store i32 %4909, i32* %4911, align 1
  %4912 = extractelement <2 x i32> %4902, i32 0
  %4913 = getelementptr inbounds i8, i8* %4892, i64 8
  %4914 = bitcast i8* %4913 to i32*
  store i32 %4912, i32* %4914, align 1
  %4915 = extractelement <2 x i32> %4902, i32 1
  %4916 = getelementptr inbounds i8, i8* %4892, i64 12
  %4917 = bitcast i8* %4916 to i32*
  store i32 %4915, i32* %4917, align 1
  store %struct.Memory* %loadMem_485861, %struct.Memory** %MEMORY
  %loadMem_485866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 33
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4920 to i64*
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4922 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4921, i64 0, i64 0
  %YMM0.i73 = bitcast %union.VectorReg* %4922 to %"class.std::bitset"*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4924 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4923, i64 0, i64 0
  %XMM0.i74 = bitcast %union.VectorReg* %4924 to %union.vec128_t*
  %4925 = bitcast %"class.std::bitset"* %YMM0.i73 to i8*
  %4926 = bitcast %union.vec128_t* %XMM0.i74 to i8*
  %4927 = load i64, i64* %PC.i72
  %4928 = add i64 %4927, 4
  store i64 %4928, i64* %PC.i72
  %4929 = bitcast i8* %4926 to <2 x float>*
  %4930 = load <2 x float>, <2 x float>* %4929, align 1
  %4931 = extractelement <2 x float> %4930, i32 0
  %4932 = fpext float %4931 to double
  %4933 = bitcast i8* %4925 to double*
  store double %4932, double* %4933, align 1
  store %struct.Memory* %loadMem_485866, %struct.Memory** %MEMORY
  %loadMem_48586a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 33
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4937, i64 0, i64 2
  %YMM2.i70 = bitcast %union.VectorReg* %4938 to %"class.std::bitset"*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4940 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4939, i64 0, i64 0
  %XMM0.i71 = bitcast %union.VectorReg* %4940 to %union.vec128_t*
  %4941 = bitcast %"class.std::bitset"* %YMM2.i70 to i8*
  %4942 = bitcast %"class.std::bitset"* %YMM2.i70 to i8*
  %4943 = bitcast %union.vec128_t* %XMM0.i71 to i8*
  %4944 = load i64, i64* %PC.i69
  %4945 = add i64 %4944, 4
  store i64 %4945, i64* %PC.i69
  %4946 = bitcast i8* %4942 to double*
  %4947 = load double, double* %4946, align 1
  %4948 = getelementptr inbounds i8, i8* %4942, i64 8
  %4949 = bitcast i8* %4948 to i64*
  %4950 = load i64, i64* %4949, align 1
  %4951 = bitcast i8* %4943 to double*
  %4952 = load double, double* %4951, align 1
  %4953 = fmul double %4947, %4952
  %4954 = bitcast i8* %4941 to double*
  store double %4953, double* %4954, align 1
  %4955 = getelementptr inbounds i8, i8* %4941, i64 8
  %4956 = bitcast i8* %4955 to i64*
  store i64 %4950, i64* %4956, align 1
  store %struct.Memory* %loadMem_48586a, %struct.Memory** %MEMORY
  %loadMem_48586e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4961 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4960, i64 0, i64 0
  %YMM0.i67 = bitcast %union.VectorReg* %4961 to %"class.std::bitset"*
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4963 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4962, i64 0, i64 2
  %XMM2.i68 = bitcast %union.VectorReg* %4963 to %union.vec128_t*
  %4964 = bitcast %"class.std::bitset"* %YMM0.i67 to i8*
  %4965 = bitcast %union.vec128_t* %XMM2.i68 to i8*
  %4966 = load i64, i64* %PC.i66
  %4967 = add i64 %4966, 4
  store i64 %4967, i64* %PC.i66
  %4968 = bitcast i8* %4964 to <2 x i32>*
  %4969 = load <2 x i32>, <2 x i32>* %4968, align 1
  %4970 = getelementptr inbounds i8, i8* %4964, i64 8
  %4971 = bitcast i8* %4970 to <2 x i32>*
  %4972 = load <2 x i32>, <2 x i32>* %4971, align 1
  %4973 = bitcast i8* %4965 to double*
  %4974 = load double, double* %4973, align 1
  %4975 = fptrunc double %4974 to float
  %4976 = bitcast i8* %4964 to float*
  store float %4975, float* %4976, align 1
  %4977 = extractelement <2 x i32> %4969, i32 1
  %4978 = getelementptr inbounds i8, i8* %4964, i64 4
  %4979 = bitcast i8* %4978 to i32*
  store i32 %4977, i32* %4979, align 1
  %4980 = extractelement <2 x i32> %4972, i32 0
  %4981 = bitcast i8* %4970 to i32*
  store i32 %4980, i32* %4981, align 1
  %4982 = extractelement <2 x i32> %4972, i32 1
  %4983 = getelementptr inbounds i8, i8* %4964, i64 12
  %4984 = bitcast i8* %4983 to i32*
  store i32 %4982, i32* %4984, align 1
  store %struct.Memory* %loadMem_48586e, %struct.Memory** %MEMORY
  %loadMem_485872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 33
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4987 to i64*
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 15
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4992 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4991, i64 0, i64 0
  %XMM0.i65 = bitcast %union.VectorReg* %4992 to %union.vec128_t*
  %4993 = load i64, i64* %RBP.i64
  %4994 = sub i64 %4993, 80
  %4995 = bitcast %union.vec128_t* %XMM0.i65 to i8*
  %4996 = load i64, i64* %PC.i63
  %4997 = add i64 %4996, 5
  store i64 %4997, i64* %PC.i63
  %4998 = bitcast i8* %4995 to <2 x float>*
  %4999 = load <2 x float>, <2 x float>* %4998, align 1
  %5000 = extractelement <2 x float> %4999, i32 0
  %5001 = inttoptr i64 %4994 to float*
  store float %5000, float* %5001
  store %struct.Memory* %loadMem_485872, %struct.Memory** %MEMORY
  %loadMem_485877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 33
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5004 to i64*
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 15
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5009 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5008, i64 0, i64 0
  %YMM0.i62 = bitcast %union.VectorReg* %5009 to %"class.std::bitset"*
  %5010 = bitcast %"class.std::bitset"* %YMM0.i62 to i8*
  %5011 = load i64, i64* %RBP.i61
  %5012 = sub i64 %5011, 20
  %5013 = load i64, i64* %PC.i60
  %5014 = add i64 %5013, 5
  store i64 %5014, i64* %PC.i60
  %5015 = inttoptr i64 %5012 to float*
  %5016 = load float, float* %5015
  %5017 = fpext float %5016 to double
  %5018 = bitcast i8* %5010 to double*
  store double %5017, double* %5018, align 1
  store %struct.Memory* %loadMem_485877, %struct.Memory** %MEMORY
  %loadMem_48587c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5020 = getelementptr inbounds %struct.GPR, %struct.GPR* %5019, i32 0, i32 33
  %5021 = getelementptr inbounds %struct.Reg, %struct.Reg* %5020, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5021 to i64*
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5022, i64 0, i64 0
  %XMM0.i55 = bitcast %union.VectorReg* %5023 to %union.vec128_t*
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5024, i64 0, i64 1
  %XMM1.i56 = bitcast %union.VectorReg* %5025 to %union.vec128_t*
  %5026 = bitcast %union.vec128_t* %XMM0.i55 to i8*
  %5027 = bitcast %union.vec128_t* %XMM1.i56 to i8*
  %5028 = load i64, i64* %PC.i54
  %5029 = add i64 %5028, 4
  store i64 %5029, i64* %PC.i54
  %5030 = bitcast i8* %5026 to double*
  %5031 = load double, double* %5030, align 1
  %5032 = bitcast i8* %5027 to double*
  %5033 = load double, double* %5032, align 1
  %5034 = fcmp uno double %5031, %5033
  br i1 %5034, label %5035, label %5047

; <label>:5035:                                   ; preds = %block_.L_4857b2
  %5036 = fadd double %5031, %5033
  %5037 = bitcast double %5036 to i64
  %5038 = and i64 %5037, 9221120237041090560
  %5039 = icmp eq i64 %5038, 9218868437227405312
  %5040 = and i64 %5037, 2251799813685247
  %5041 = icmp ne i64 %5040, 0
  %5042 = and i1 %5039, %5041
  br i1 %5042, label %5043, label %5053

; <label>:5043:                                   ; preds = %5035
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5045 = load i64, i64* %5044, align 8
  %5046 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5045, %struct.Memory* %loadMem_48587c)
  br label %routine_ucomisd__xmm1___xmm0.exit57

; <label>:5047:                                   ; preds = %block_.L_4857b2
  %5048 = fcmp ogt double %5031, %5033
  br i1 %5048, label %5053, label %5049

; <label>:5049:                                   ; preds = %5047
  %5050 = fcmp olt double %5031, %5033
  br i1 %5050, label %5053, label %5051

; <label>:5051:                                   ; preds = %5049
  %5052 = fcmp oeq double %5031, %5033
  br i1 %5052, label %5053, label %5060

; <label>:5053:                                   ; preds = %5051, %5049, %5047, %5035
  %5054 = phi i8 [ 0, %5047 ], [ 0, %5049 ], [ 1, %5051 ], [ 1, %5035 ]
  %5055 = phi i8 [ 0, %5047 ], [ 0, %5049 ], [ 0, %5051 ], [ 1, %5035 ]
  %5056 = phi i8 [ 0, %5047 ], [ 1, %5049 ], [ 0, %5051 ], [ 1, %5035 ]
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5054, i8* %5057, align 1
  %5058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5055, i8* %5058, align 1
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5056, i8* %5059, align 1
  br label %5060

; <label>:5060:                                   ; preds = %5053, %5051
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5061, align 1
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5062, align 1
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5063, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit57

routine_ucomisd__xmm1___xmm0.exit57:              ; preds = %5043, %5060
  %5064 = phi %struct.Memory* [ %5046, %5043 ], [ %loadMem_48587c, %5060 ]
  store %struct.Memory* %5064, %struct.Memory** %MEMORY
  %loadMem_485880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 33
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %PC.i53
  %5069 = add i64 %5068, 53
  %5070 = load i64, i64* %PC.i53
  %5071 = add i64 %5070, 6
  %5072 = load i64, i64* %PC.i53
  %5073 = add i64 %5072, 6
  store i64 %5073, i64* %PC.i53
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5075 = load i8, i8* %5074, align 1
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5077 = load i8, i8* %5076, align 1
  %5078 = or i8 %5077, %5075
  %5079 = icmp ne i8 %5078, 0
  %5080 = zext i1 %5079 to i8
  store i8 %5080, i8* %BRANCH_TAKEN, align 1
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5082 = select i1 %5079, i64 %5069, i64 %5071
  store i64 %5082, i64* %5081, align 8
  store %struct.Memory* %loadMem_485880, %struct.Memory** %MEMORY
  %loadBr_485880 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_485880 = icmp eq i8 %loadBr_485880, 1
  br i1 %cmpBr_485880, label %block_.L_4858b5, label %block_485886

block_485886:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit57
  %loadMem_485886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5084 = getelementptr inbounds %struct.GPR, %struct.GPR* %5083, i32 0, i32 33
  %5085 = getelementptr inbounds %struct.Reg, %struct.Reg* %5084, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5085 to i64*
  %5086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5086, i64 0, i64 0
  %YMM0.i52 = bitcast %union.VectorReg* %5087 to %"class.std::bitset"*
  %5088 = bitcast %"class.std::bitset"* %YMM0.i52 to i8*
  %5089 = load i64, i64* %PC.i51
  %5090 = add i64 %5089, ptrtoint (%G_0x5d6d2__rip__type* @G_0x5d6d2__rip_ to i64)
  %5091 = load i64, i64* %PC.i51
  %5092 = add i64 %5091, 8
  store i64 %5092, i64* %PC.i51
  %5093 = inttoptr i64 %5090 to double*
  %5094 = load double, double* %5093
  %5095 = bitcast i8* %5088 to double*
  store double %5094, double* %5095, align 1
  %5096 = getelementptr inbounds i8, i8* %5088, i64 8
  %5097 = bitcast i8* %5096 to double*
  store double 0.000000e+00, double* %5097, align 1
  store %struct.Memory* %loadMem_485886, %struct.Memory** %MEMORY
  %loadMem_48588e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 33
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5100 to i64*
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5101, i64 0, i64 1
  %YMM1.i50 = bitcast %union.VectorReg* %5102 to %"class.std::bitset"*
  %5103 = bitcast %"class.std::bitset"* %YMM1.i50 to i8*
  %5104 = load i64, i64* %PC.i49
  %5105 = add i64 %5104, ptrtoint (%G_0x5d79a__rip__type* @G_0x5d79a__rip_ to i64)
  %5106 = load i64, i64* %PC.i49
  %5107 = add i64 %5106, 8
  store i64 %5107, i64* %PC.i49
  %5108 = inttoptr i64 %5105 to double*
  %5109 = load double, double* %5108
  %5110 = bitcast i8* %5103 to double*
  store double %5109, double* %5110, align 1
  %5111 = getelementptr inbounds i8, i8* %5103, i64 8
  %5112 = bitcast i8* %5111 to double*
  store double 0.000000e+00, double* %5112, align 1
  store %struct.Memory* %loadMem_48588e, %struct.Memory** %MEMORY
  %loadMem_485896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 33
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 15
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5118 to i64*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5119, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %5120 to %"class.std::bitset"*
  %5121 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %5122 = load i64, i64* %RBP.i48
  %5123 = sub i64 %5122, 20
  %5124 = load i64, i64* %PC.i47
  %5125 = add i64 %5124, 5
  store i64 %5125, i64* %PC.i47
  %5126 = inttoptr i64 %5123 to float*
  %5127 = load float, float* %5126
  %5128 = fpext float %5127 to double
  %5129 = bitcast i8* %5121 to double*
  store double %5128, double* %5129, align 1
  store %struct.Memory* %loadMem_485896, %struct.Memory** %MEMORY
  %loadMem_48589b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 33
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %5132 to i64*
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5134 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5133, i64 0, i64 1
  %YMM1.i46 = bitcast %union.VectorReg* %5134 to %"class.std::bitset"*
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5135, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %5136 to %union.vec128_t*
  %5137 = bitcast %"class.std::bitset"* %YMM1.i46 to i8*
  %5138 = bitcast %"class.std::bitset"* %YMM1.i46 to i8*
  %5139 = bitcast %union.vec128_t* %XMM2.i to i8*
  %5140 = load i64, i64* %PC.i45
  %5141 = add i64 %5140, 4
  store i64 %5141, i64* %PC.i45
  %5142 = bitcast i8* %5138 to double*
  %5143 = load double, double* %5142, align 1
  %5144 = getelementptr inbounds i8, i8* %5138, i64 8
  %5145 = bitcast i8* %5144 to i64*
  %5146 = load i64, i64* %5145, align 1
  %5147 = bitcast i8* %5139 to double*
  %5148 = load double, double* %5147, align 1
  %5149 = fmul double %5143, %5148
  %5150 = bitcast i8* %5137 to double*
  store double %5149, double* %5150, align 1
  %5151 = getelementptr inbounds i8, i8* %5137, i64 8
  %5152 = bitcast i8* %5151 to i64*
  store i64 %5146, i64* %5152, align 1
  store %struct.Memory* %loadMem_48589b, %struct.Memory** %MEMORY
  %loadMem_48589f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 33
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5156, i64 0, i64 0
  %YMM0.i43 = bitcast %union.VectorReg* %5157 to %"class.std::bitset"*
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5158, i64 0, i64 1
  %XMM1.i44 = bitcast %union.VectorReg* %5159 to %union.vec128_t*
  %5160 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %5161 = bitcast %"class.std::bitset"* %YMM0.i43 to i8*
  %5162 = bitcast %union.vec128_t* %XMM1.i44 to i8*
  %5163 = load i64, i64* %PC.i42
  %5164 = add i64 %5163, 4
  store i64 %5164, i64* %PC.i42
  %5165 = bitcast i8* %5161 to double*
  %5166 = load double, double* %5165, align 1
  %5167 = getelementptr inbounds i8, i8* %5161, i64 8
  %5168 = bitcast i8* %5167 to i64*
  %5169 = load i64, i64* %5168, align 1
  %5170 = bitcast i8* %5162 to double*
  %5171 = load double, double* %5170, align 1
  %5172 = fadd double %5166, %5171
  %5173 = bitcast i8* %5160 to double*
  store double %5172, double* %5173, align 1
  %5174 = getelementptr inbounds i8, i8* %5160, i64 8
  %5175 = bitcast i8* %5174 to i64*
  store i64 %5169, i64* %5175, align 1
  store %struct.Memory* %loadMem_48589f, %struct.Memory** %MEMORY
  %loadMem_4858a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 33
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5178 to i64*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 15
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %5181 to i64*
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5183 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5182, i64 0, i64 1
  %YMM1.i41 = bitcast %union.VectorReg* %5183 to %"class.std::bitset"*
  %5184 = bitcast %"class.std::bitset"* %YMM1.i41 to i8*
  %5185 = load i64, i64* %RBP.i40
  %5186 = sub i64 %5185, 80
  %5187 = load i64, i64* %PC.i39
  %5188 = add i64 %5187, 5
  store i64 %5188, i64* %PC.i39
  %5189 = inttoptr i64 %5186 to float*
  %5190 = load float, float* %5189
  %5191 = fpext float %5190 to double
  %5192 = bitcast i8* %5184 to double*
  store double %5191, double* %5192, align 1
  store %struct.Memory* %loadMem_4858a3, %struct.Memory** %MEMORY
  %loadMem_4858a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5196, i64 0, i64 1
  %YMM1.i37 = bitcast %union.VectorReg* %5197 to %"class.std::bitset"*
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5198, i64 0, i64 0
  %XMM0.i38 = bitcast %union.VectorReg* %5199 to %union.vec128_t*
  %5200 = bitcast %"class.std::bitset"* %YMM1.i37 to i8*
  %5201 = bitcast %"class.std::bitset"* %YMM1.i37 to i8*
  %5202 = bitcast %union.vec128_t* %XMM0.i38 to i8*
  %5203 = load i64, i64* %PC.i36
  %5204 = add i64 %5203, 4
  store i64 %5204, i64* %PC.i36
  %5205 = bitcast i8* %5201 to double*
  %5206 = load double, double* %5205, align 1
  %5207 = getelementptr inbounds i8, i8* %5201, i64 8
  %5208 = bitcast i8* %5207 to i64*
  %5209 = load i64, i64* %5208, align 1
  %5210 = bitcast i8* %5202 to double*
  %5211 = load double, double* %5210, align 1
  %5212 = fmul double %5206, %5211
  %5213 = bitcast i8* %5200 to double*
  store double %5212, double* %5213, align 1
  %5214 = getelementptr inbounds i8, i8* %5200, i64 8
  %5215 = bitcast i8* %5214 to i64*
  store i64 %5209, i64* %5215, align 1
  store %struct.Memory* %loadMem_4858a8, %struct.Memory** %MEMORY
  %loadMem_4858ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 33
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5218 to i64*
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5219, i64 0, i64 0
  %YMM0.i34 = bitcast %union.VectorReg* %5220 to %"class.std::bitset"*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5221, i64 0, i64 1
  %XMM1.i35 = bitcast %union.VectorReg* %5222 to %union.vec128_t*
  %5223 = bitcast %"class.std::bitset"* %YMM0.i34 to i8*
  %5224 = bitcast %union.vec128_t* %XMM1.i35 to i8*
  %5225 = load i64, i64* %PC.i33
  %5226 = add i64 %5225, 4
  store i64 %5226, i64* %PC.i33
  %5227 = bitcast i8* %5223 to <2 x i32>*
  %5228 = load <2 x i32>, <2 x i32>* %5227, align 1
  %5229 = getelementptr inbounds i8, i8* %5223, i64 8
  %5230 = bitcast i8* %5229 to <2 x i32>*
  %5231 = load <2 x i32>, <2 x i32>* %5230, align 1
  %5232 = bitcast i8* %5224 to double*
  %5233 = load double, double* %5232, align 1
  %5234 = fptrunc double %5233 to float
  %5235 = bitcast i8* %5223 to float*
  store float %5234, float* %5235, align 1
  %5236 = extractelement <2 x i32> %5228, i32 1
  %5237 = getelementptr inbounds i8, i8* %5223, i64 4
  %5238 = bitcast i8* %5237 to i32*
  store i32 %5236, i32* %5238, align 1
  %5239 = extractelement <2 x i32> %5231, i32 0
  %5240 = bitcast i8* %5229 to i32*
  store i32 %5239, i32* %5240, align 1
  %5241 = extractelement <2 x i32> %5231, i32 1
  %5242 = getelementptr inbounds i8, i8* %5223, i64 12
  %5243 = bitcast i8* %5242 to i32*
  store i32 %5241, i32* %5243, align 1
  store %struct.Memory* %loadMem_4858ac, %struct.Memory** %MEMORY
  %loadMem_4858b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 33
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5246 to i64*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 15
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5250, i64 0, i64 0
  %XMM0.i32 = bitcast %union.VectorReg* %5251 to %union.vec128_t*
  %5252 = load i64, i64* %RBP.i31
  %5253 = sub i64 %5252, 80
  %5254 = bitcast %union.vec128_t* %XMM0.i32 to i8*
  %5255 = load i64, i64* %PC.i30
  %5256 = add i64 %5255, 5
  store i64 %5256, i64* %PC.i30
  %5257 = bitcast i8* %5254 to <2 x float>*
  %5258 = load <2 x float>, <2 x float>* %5257, align 1
  %5259 = extractelement <2 x float> %5258, i32 0
  %5260 = inttoptr i64 %5253 to float*
  store float %5259, float* %5260
  store %struct.Memory* %loadMem_4858b0, %struct.Memory** %MEMORY
  br label %block_.L_4858b5

block_.L_4858b5:                                  ; preds = %block_485886, %routine_ucomisd__xmm1___xmm0.exit57
  %loadMem_4858b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 33
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5263 to i64*
  %5264 = load i64, i64* %PC.i29
  %5265 = add i64 %5264, 5
  %5266 = load i64, i64* %PC.i29
  %5267 = add i64 %5266, 5
  store i64 %5267, i64* %PC.i29
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5265, i64* %5268, align 8
  store %struct.Memory* %loadMem_4858b5, %struct.Memory** %MEMORY
  br label %block_.L_4858ba

block_.L_4858ba:                                  ; preds = %block_.L_4858b5, %block_.L_48578a
  %loadMem_4858ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 33
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5272, i64 0, i64 0
  %YMM0.i27 = bitcast %union.VectorReg* %5273 to %"class.std::bitset"*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5274, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %5275 to %union.vec128_t*
  %5276 = bitcast %"class.std::bitset"* %YMM0.i27 to i8*
  %5277 = bitcast %"class.std::bitset"* %YMM0.i27 to i8*
  %5278 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %5279 = load i64, i64* %PC.i26
  %5280 = add i64 %5279, 3
  store i64 %5280, i64* %PC.i26
  %5281 = bitcast i8* %5277 to i64*
  %5282 = load i64, i64* %5281, align 1
  %5283 = getelementptr inbounds i8, i8* %5277, i64 8
  %5284 = bitcast i8* %5283 to i64*
  %5285 = load i64, i64* %5284, align 1
  %5286 = bitcast i8* %5278 to i64*
  %5287 = load i64, i64* %5286, align 1
  %5288 = getelementptr inbounds i8, i8* %5278, i64 8
  %5289 = bitcast i8* %5288 to i64*
  %5290 = load i64, i64* %5289, align 1
  %5291 = xor i64 %5287, %5282
  %5292 = xor i64 %5290, %5285
  %5293 = trunc i64 %5291 to i32
  %5294 = lshr i64 %5291, 32
  %5295 = trunc i64 %5294 to i32
  %5296 = bitcast i8* %5276 to i32*
  store i32 %5293, i32* %5296, align 1
  %5297 = getelementptr inbounds i8, i8* %5276, i64 4
  %5298 = bitcast i8* %5297 to i32*
  store i32 %5295, i32* %5298, align 1
  %5299 = trunc i64 %5292 to i32
  %5300 = getelementptr inbounds i8, i8* %5276, i64 8
  %5301 = bitcast i8* %5300 to i32*
  store i32 %5299, i32* %5301, align 1
  %5302 = lshr i64 %5292, 32
  %5303 = trunc i64 %5302 to i32
  %5304 = getelementptr inbounds i8, i8* %5276, i64 12
  %5305 = bitcast i8* %5304 to i32*
  store i32 %5303, i32* %5305, align 1
  store %struct.Memory* %loadMem_4858ba, %struct.Memory** %MEMORY
  %loadMem_4858bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 33
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 15
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %5311 to i64*
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5312, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5313 to %"class.std::bitset"*
  %5314 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5315 = load i64, i64* %RBP.i25
  %5316 = sub i64 %5315, 80
  %5317 = load i64, i64* %PC.i24
  %5318 = add i64 %5317, 5
  store i64 %5318, i64* %PC.i24
  %5319 = inttoptr i64 %5316 to float*
  %5320 = load float, float* %5319
  %5321 = fpext float %5320 to double
  %5322 = bitcast i8* %5314 to double*
  store double %5321, double* %5322, align 1
  store %struct.Memory* %loadMem_4858bd, %struct.Memory** %MEMORY
  %loadMem_4858c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5324 = getelementptr inbounds %struct.GPR, %struct.GPR* %5323, i32 0, i32 33
  %5325 = getelementptr inbounds %struct.Reg, %struct.Reg* %5324, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5325 to i64*
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5326, i64 0, i64 0
  %XMM0.i20 = bitcast %union.VectorReg* %5327 to %union.vec128_t*
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5329 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5328, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5329 to %union.vec128_t*
  %5330 = bitcast %union.vec128_t* %XMM0.i20 to i8*
  %5331 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5332 = load i64, i64* %PC.i19
  %5333 = add i64 %5332, 4
  store i64 %5333, i64* %PC.i19
  %5334 = bitcast i8* %5330 to double*
  %5335 = load double, double* %5334, align 1
  %5336 = bitcast i8* %5331 to double*
  %5337 = load double, double* %5336, align 1
  %5338 = fcmp uno double %5335, %5337
  br i1 %5338, label %5339, label %5351

; <label>:5339:                                   ; preds = %block_.L_4858ba
  %5340 = fadd double %5335, %5337
  %5341 = bitcast double %5340 to i64
  %5342 = and i64 %5341, 9221120237041090560
  %5343 = icmp eq i64 %5342, 9218868437227405312
  %5344 = and i64 %5341, 2251799813685247
  %5345 = icmp ne i64 %5344, 0
  %5346 = and i1 %5343, %5345
  br i1 %5346, label %5347, label %5357

; <label>:5347:                                   ; preds = %5339
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5349 = load i64, i64* %5348, align 8
  %5350 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5349, %struct.Memory* %loadMem_4858c2)
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:5351:                                   ; preds = %block_.L_4858ba
  %5352 = fcmp ogt double %5335, %5337
  br i1 %5352, label %5357, label %5353

; <label>:5353:                                   ; preds = %5351
  %5354 = fcmp olt double %5335, %5337
  br i1 %5354, label %5357, label %5355

; <label>:5355:                                   ; preds = %5353
  %5356 = fcmp oeq double %5335, %5337
  br i1 %5356, label %5357, label %5364

; <label>:5357:                                   ; preds = %5355, %5353, %5351, %5339
  %5358 = phi i8 [ 0, %5351 ], [ 0, %5353 ], [ 1, %5355 ], [ 1, %5339 ]
  %5359 = phi i8 [ 0, %5351 ], [ 0, %5353 ], [ 0, %5355 ], [ 1, %5339 ]
  %5360 = phi i8 [ 0, %5351 ], [ 1, %5353 ], [ 0, %5355 ], [ 1, %5339 ]
  %5361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5358, i8* %5361, align 1
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5359, i8* %5362, align 1
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5360, i8* %5363, align 1
  br label %5364

; <label>:5364:                                   ; preds = %5357, %5355
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5365, align 1
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5366, align 1
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5367, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %5347, %5364
  %5368 = phi %struct.Memory* [ %5350, %5347 ], [ %loadMem_4858c2, %5364 ]
  store %struct.Memory* %5368, %struct.Memory** %MEMORY
  %loadMem_4858c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5371 to i64*
  %5372 = load i64, i64* %PC.i18
  %5373 = add i64 %5372, 14
  %5374 = load i64, i64* %PC.i18
  %5375 = add i64 %5374, 6
  %5376 = load i64, i64* %PC.i18
  %5377 = add i64 %5376, 6
  store i64 %5377, i64* %PC.i18
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5379 = load i8, i8* %5378, align 1
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5381 = load i8, i8* %5380, align 1
  %5382 = or i8 %5381, %5379
  %5383 = icmp ne i8 %5382, 0
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %BRANCH_TAKEN, align 1
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5386 = select i1 %5383, i64 %5373, i64 %5375
  store i64 %5386, i64* %5385, align 8
  store %struct.Memory* %loadMem_4858c6, %struct.Memory** %MEMORY
  %loadBr_4858c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4858c6 = icmp eq i8 %loadBr_4858c6, 1
  br i1 %cmpBr_4858c6, label %block_.L_4858d4, label %block_4858cc

block_4858cc:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4858cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 33
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %5389 to i64*
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5391 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5390, i64 0, i64 0
  %YMM0.i16 = bitcast %union.VectorReg* %5391 to %"class.std::bitset"*
  %5392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5392, i64 0, i64 0
  %XMM0.i17 = bitcast %union.VectorReg* %5393 to %union.vec128_t*
  %5394 = bitcast %"class.std::bitset"* %YMM0.i16 to i8*
  %5395 = bitcast %"class.std::bitset"* %YMM0.i16 to i8*
  %5396 = bitcast %union.vec128_t* %XMM0.i17 to i8*
  %5397 = load i64, i64* %PC.i15
  %5398 = add i64 %5397, 3
  store i64 %5398, i64* %PC.i15
  %5399 = bitcast i8* %5395 to i64*
  %5400 = load i64, i64* %5399, align 1
  %5401 = getelementptr inbounds i8, i8* %5395, i64 8
  %5402 = bitcast i8* %5401 to i64*
  %5403 = load i64, i64* %5402, align 1
  %5404 = bitcast i8* %5396 to i64*
  %5405 = load i64, i64* %5404, align 1
  %5406 = getelementptr inbounds i8, i8* %5396, i64 8
  %5407 = bitcast i8* %5406 to i64*
  %5408 = load i64, i64* %5407, align 1
  %5409 = xor i64 %5405, %5400
  %5410 = xor i64 %5408, %5403
  %5411 = trunc i64 %5409 to i32
  %5412 = lshr i64 %5409, 32
  %5413 = trunc i64 %5412 to i32
  %5414 = bitcast i8* %5394 to i32*
  store i32 %5411, i32* %5414, align 1
  %5415 = getelementptr inbounds i8, i8* %5394, i64 4
  %5416 = bitcast i8* %5415 to i32*
  store i32 %5413, i32* %5416, align 1
  %5417 = trunc i64 %5410 to i32
  %5418 = getelementptr inbounds i8, i8* %5394, i64 8
  %5419 = bitcast i8* %5418 to i32*
  store i32 %5417, i32* %5419, align 1
  %5420 = lshr i64 %5410, 32
  %5421 = trunc i64 %5420 to i32
  %5422 = getelementptr inbounds i8, i8* %5394, i64 12
  %5423 = bitcast i8* %5422 to i32*
  store i32 %5421, i32* %5423, align 1
  store %struct.Memory* %loadMem_4858cc, %struct.Memory** %MEMORY
  %loadMem_4858cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 33
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 15
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %5429 to i64*
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5431 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5430, i64 0, i64 0
  %XMM0.i14 = bitcast %union.VectorReg* %5431 to %union.vec128_t*
  %5432 = load i64, i64* %RBP.i13
  %5433 = sub i64 %5432, 80
  %5434 = bitcast %union.vec128_t* %XMM0.i14 to i8*
  %5435 = load i64, i64* %PC.i12
  %5436 = add i64 %5435, 5
  store i64 %5436, i64* %PC.i12
  %5437 = bitcast i8* %5434 to <2 x float>*
  %5438 = load <2 x float>, <2 x float>* %5437, align 1
  %5439 = extractelement <2 x float> %5438, i32 0
  %5440 = inttoptr i64 %5433 to float*
  store float %5439, float* %5440
  store %struct.Memory* %loadMem_4858cf, %struct.Memory** %MEMORY
  br label %block_.L_4858d4

block_.L_4858d4:                                  ; preds = %block_4858cc, %routine_ucomisd__xmm1___xmm0.exit
  %loadMem_4858d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 33
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5443 to i64*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 15
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %5446 to i64*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5448 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5447, i64 0, i64 0
  %YMM0.i11 = bitcast %union.VectorReg* %5448 to %"class.std::bitset"*
  %5449 = bitcast %"class.std::bitset"* %YMM0.i11 to i8*
  %5450 = load i64, i64* %RBP.i10
  %5451 = sub i64 %5450, 80
  %5452 = load i64, i64* %PC.i9
  %5453 = add i64 %5452, 5
  store i64 %5453, i64* %PC.i9
  %5454 = inttoptr i64 %5451 to float*
  %5455 = load float, float* %5454
  %5456 = bitcast i8* %5449 to float*
  store float %5455, float* %5456, align 1
  %5457 = getelementptr inbounds i8, i8* %5449, i64 4
  %5458 = bitcast i8* %5457 to float*
  store float 0.000000e+00, float* %5458, align 1
  %5459 = getelementptr inbounds i8, i8* %5449, i64 8
  %5460 = bitcast i8* %5459 to float*
  store float 0.000000e+00, float* %5460, align 1
  %5461 = getelementptr inbounds i8, i8* %5449, i64 12
  %5462 = bitcast i8* %5461 to float*
  store float 0.000000e+00, float* %5462, align 1
  store %struct.Memory* %loadMem_4858d4, %struct.Memory** %MEMORY
  %loadMem_4858d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 33
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 15
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5468 to i64*
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5469, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5470 to %union.vec128_t*
  %5471 = load i64, i64* %RBP.i8
  %5472 = sub i64 %5471, 4
  %5473 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5474 = load i64, i64* %PC.i7
  %5475 = add i64 %5474, 5
  store i64 %5475, i64* %PC.i7
  %5476 = bitcast i8* %5473 to <2 x float>*
  %5477 = load <2 x float>, <2 x float>* %5476, align 1
  %5478 = extractelement <2 x float> %5477, i32 0
  %5479 = inttoptr i64 %5472 to float*
  store float %5478, float* %5479
  store %struct.Memory* %loadMem_4858d9, %struct.Memory** %MEMORY
  br label %block_.L_4858de

block_.L_4858de:                                  ; preds = %block_.L_4858d4, %block_.L_485641, %block_.L_4855f3
  %loadMem_4858de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5481 = getelementptr inbounds %struct.GPR, %struct.GPR* %5480, i32 0, i32 33
  %5482 = getelementptr inbounds %struct.Reg, %struct.Reg* %5481, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5482 to i64*
  %5483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5484 = getelementptr inbounds %struct.GPR, %struct.GPR* %5483, i32 0, i32 15
  %5485 = getelementptr inbounds %struct.Reg, %struct.Reg* %5484, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5485 to i64*
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5486, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5487 to %"class.std::bitset"*
  %5488 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5489 = load i64, i64* %RBP.i6
  %5490 = sub i64 %5489, 4
  %5491 = load i64, i64* %PC.i5
  %5492 = add i64 %5491, 5
  store i64 %5492, i64* %PC.i5
  %5493 = inttoptr i64 %5490 to float*
  %5494 = load float, float* %5493
  %5495 = bitcast i8* %5488 to float*
  store float %5494, float* %5495, align 1
  %5496 = getelementptr inbounds i8, i8* %5488, i64 4
  %5497 = bitcast i8* %5496 to float*
  store float 0.000000e+00, float* %5497, align 1
  %5498 = getelementptr inbounds i8, i8* %5488, i64 8
  %5499 = bitcast i8* %5498 to float*
  store float 0.000000e+00, float* %5499, align 1
  %5500 = getelementptr inbounds i8, i8* %5488, i64 12
  %5501 = bitcast i8* %5500 to float*
  store float 0.000000e+00, float* %5501, align 1
  store %struct.Memory* %loadMem_4858de, %struct.Memory** %MEMORY
  %loadMem_4858e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 33
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5504 to i64*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 13
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5507 to i64*
  %5508 = load i64, i64* %RSP.i
  %5509 = load i64, i64* %PC.i4
  %5510 = add i64 %5509, 7
  store i64 %5510, i64* %PC.i4
  %5511 = add i64 128, %5508
  store i64 %5511, i64* %RSP.i, align 8
  %5512 = icmp ult i64 %5511, %5508
  %5513 = icmp ult i64 %5511, 128
  %5514 = or i1 %5512, %5513
  %5515 = zext i1 %5514 to i8
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5515, i8* %5516, align 1
  %5517 = trunc i64 %5511 to i32
  %5518 = and i32 %5517, 255
  %5519 = call i32 @llvm.ctpop.i32(i32 %5518)
  %5520 = trunc i32 %5519 to i8
  %5521 = and i8 %5520, 1
  %5522 = xor i8 %5521, 1
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5522, i8* %5523, align 1
  %5524 = xor i64 128, %5508
  %5525 = xor i64 %5524, %5511
  %5526 = lshr i64 %5525, 4
  %5527 = trunc i64 %5526 to i8
  %5528 = and i8 %5527, 1
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5528, i8* %5529, align 1
  %5530 = icmp eq i64 %5511, 0
  %5531 = zext i1 %5530 to i8
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5531, i8* %5532, align 1
  %5533 = lshr i64 %5511, 63
  %5534 = trunc i64 %5533 to i8
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5534, i8* %5535, align 1
  %5536 = lshr i64 %5508, 63
  %5537 = xor i64 %5533, %5536
  %5538 = add i64 %5537, %5533
  %5539 = icmp eq i64 %5538, 2
  %5540 = zext i1 %5539 to i8
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5540, i8* %5541, align 1
  store %struct.Memory* %loadMem_4858e3, %struct.Memory** %MEMORY
  %loadMem_4858ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 33
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 15
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5547 to i64*
  %5548 = load i64, i64* %PC.i2
  %5549 = add i64 %5548, 1
  store i64 %5549, i64* %PC.i2
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5551 = load i64, i64* %5550, align 8
  %5552 = add i64 %5551, 8
  %5553 = inttoptr i64 %5551 to i64*
  %5554 = load i64, i64* %5553
  store i64 %5554, i64* %RBP.i3, align 8
  store i64 %5552, i64* %5550, align 8
  store %struct.Memory* %loadMem_4858ea, %struct.Memory** %MEMORY
  %loadMem_4858eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5556 = getelementptr inbounds %struct.GPR, %struct.GPR* %5555, i32 0, i32 33
  %5557 = getelementptr inbounds %struct.Reg, %struct.Reg* %5556, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5557 to i64*
  %5558 = load i64, i64* %PC.i1
  %5559 = add i64 %5558, 1
  store i64 %5559, i64* %PC.i1
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5562 = load i64, i64* %5561, align 8
  %5563 = inttoptr i64 %5562 to i64*
  %5564 = load i64, i64* %5563
  store i64 %5564, i64* %5560, align 8
  %5565 = add i64 %5562, 8
  store i64 %5565, i64* %5561, align 8
  store %struct.Memory* %loadMem_4858eb, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4858eb
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 20
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 76, %15
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

define %struct.Memory* @routine_movq__rax___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R9, align 8
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

define %struct.Memory* @routine_movslq_0x4__r9____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 4
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

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_addq__rcx___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R8, align 8
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

define %struct.Memory* @routine_movss_0x10__r8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movss_0x10__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
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

define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_setne__r10b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %R10B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___r10b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R10B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %R10B, align 1
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

define %struct.Memory* @routine_movzbl__r10b___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R10B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_movsd_0x5d9f4__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d9f4__rip__type* @G_0x5d9f4__rip_ to i64)
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

define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 60
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 564, %15
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

define %struct.Memory* @routine_movss_0xc__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 76
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_jbe_.L_485597(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x5db6e__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5db6e__rip__type* @G_0x5db6e__rip_ to i64)
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

define %struct.Memory* @routine_cmpl__0x0__0xab0fbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0fbc_type* @G_0xab0fbc to i32*)
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

define %struct.Memory* @routine_je_.L_485605(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x4c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_jbe_.L_485605(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
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

define %struct.Memory* @routine_je_.L_4855d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
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

define %struct.Memory* @routine_cmpl__0x9__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 9
  %16 = icmp ult i32 %14, 9
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
  %25 = xor i32 %14, 9
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

define %struct.Memory* @routine_jne_.L_485600(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4855f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x9__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 9
  %16 = icmp ult i32 %14, 9
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
  %25 = xor i32 %14, 9
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

define %struct.Memory* @routine_jmpq_.L_4858de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_485605(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_jne_.L_485622(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_485622(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_485641(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
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

define %struct.Memory* @routine_jne_.L_48564e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jbe_.L_485668(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 76, %9
  store i64 %12, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.add_eyevalues(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1___r8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  store i8 1, i8* %R8B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x54__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edi__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r8b__MINUS0x61__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 97
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4856b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_setne__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x61__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 97
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x61__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 97
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %AL, align 1
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

define %struct.Memory* @routine_movzbl__al___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0x38__rcx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 56
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
  %25 = fadd float %24, %23
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

define %struct.Memory* @routine_addss_MINUS0x4c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
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
  %25 = fadd float %24, %23
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0xb4bd20___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 76, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_cmpl__0x2__0x40__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
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

define %struct.Memory* @routine_jne_.L_4857b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x5d995__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d995__rip__type* @G_0x5d995__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x5d87d__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d87d__rip__type* @G_0x5d87d__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x40__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x2c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 84
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_jbe_.L_48578a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x54__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
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

define %struct.Memory* @routine_movsd_0x5d7fd__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d7fd__rip__type* @G_0x5d7fd__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x5d925__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d925__rip__type* @G_0x5d925__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 84
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

define %struct.Memory* @routine_movsd_0x5d8ae__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d8ae__rip__type* @G_0x5d8ae__rip_ to i64)
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

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
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

define %struct.Memory* @routine_jmpq_.L_4858ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0x5d95e__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d95e__rip__type* @G_0x5d95e__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x5d87e__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d87e__rip__type* @G_0x5d87e__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x3c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
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

define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_movss_MINUS0x2c__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_callq_.soft_cap(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0x5d933__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d933__rip__type* @G_0x5d933__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x5d853__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d853__rip__type* @G_0x5d853__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_mulsd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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

define %struct.Memory* @routine_cvtsd2ss__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addss_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 120
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

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x5d8b5__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d8b5__rip__type* @G_0x5d8b5__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x2c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 92
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

define %struct.Memory* @routine_movss_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
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

define %struct.Memory* @routine_subss_MINUS0x5c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 92
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
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_jbe_.L_4858b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x5d6d2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d6d2__rip__type* @G_0x5d6d2__rip_ to i64)
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

define %struct.Memory* @routine_movsd_0x5d79a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x5d79a__rip__type* @G_0x5d79a__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x50__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_jbe_.L_4858d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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
