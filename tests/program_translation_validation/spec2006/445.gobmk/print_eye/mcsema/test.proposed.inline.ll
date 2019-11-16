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
%G_0xa9305__rip__type = type <{ [8 x i8] }>
%G_0xa9451__rip__type = type <{ [8 x i8] }>
%G__0x57b826_type = type <{ [8 x i8] }>
%G__0x57d997_type = type <{ [8 x i8] }>
%G__0x57d9c6_type = type <{ [8 x i8] }>
%G__0x57d9d0_type = type <{ [8 x i8] }>
%G__0x57d9da_type = type <{ [8 x i8] }>
%G__0x57da01_type = type <{ [8 x i8] }>
%G__0x57da0a_type = type <{ [8 x i8] }>
%G__0x57da13_type = type <{ [8 x i8] }>
%G__0x57da1c_type = type <{ [8 x i8] }>
%G__0x57da42_type = type <{ [8 x i8] }>
%G__0x57da46_type = type <{ [8 x i8] }>
%G__0x57da4a_type = type <{ [8 x i8] }>
%G__0x57da4e_type = type <{ [8 x i8] }>
%G__0x57da52_type = type <{ [8 x i8] }>
%G__0x57da56_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x58898d_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xa9305__rip_ = global %G_0xa9305__rip__type zeroinitializer
@G_0xa9451__rip_ = global %G_0xa9451__rip__type zeroinitializer
@G__0x57b826 = global %G__0x57b826_type zeroinitializer
@G__0x57d997 = global %G__0x57d997_type zeroinitializer
@G__0x57d9c6 = global %G__0x57d9c6_type zeroinitializer
@G__0x57d9d0 = global %G__0x57d9d0_type zeroinitializer
@G__0x57d9da = global %G__0x57d9da_type zeroinitializer
@G__0x57da01 = global %G__0x57da01_type zeroinitializer
@G__0x57da0a = global %G__0x57da0a_type zeroinitializer
@G__0x57da13 = global %G__0x57da13_type zeroinitializer
@G__0x57da1c = global %G__0x57da1c_type zeroinitializer
@G__0x57da42 = global %G__0x57da42_type zeroinitializer
@G__0x57da46 = global %G__0x57da46_type zeroinitializer
@G__0x57da4a = global %G__0x57da4a_type zeroinitializer
@G__0x57da4e = global %G__0x57da4e_type zeroinitializer
@G__0x57da52 = global %G__0x57da52_type zeroinitializer
@G__0x57da56 = global %G__0x57da56_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x58898d = global %G__0x58898d_type zeroinitializer

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

declare %struct.Memory* @sub_43b030.is_halfeye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @print_eye(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_439a40 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_439a40, %struct.Memory** %MEMORY
  %loadMem_439a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i398 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i398
  %27 = load i64, i64* %PC.i397
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i397
  store i64 %26, i64* %RBP.i399, align 8
  store %struct.Memory* %loadMem_439a41, %struct.Memory** %MEMORY
  %loadMem_439a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i560 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i560
  %36 = load i64, i64* %PC.i559
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i559
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i560, align 8
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
  store %struct.Memory* %loadMem_439a44, %struct.Memory** %MEMORY
  %loadMem_439a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i775
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i775
  store i64 ptrtoint (%G__0x57d997_type* @G__0x57d997 to i64), i64* %RAX.i776, align 8
  store %struct.Memory* %loadMem_439a4b, %struct.Memory** %MEMORY
  %loadMem_439a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDI.i773 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i774
  %85 = sub i64 %84, 8
  %86 = load i64, i64* %RDI.i773
  %87 = load i64, i64* %PC.i772
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i772
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_439a55, %struct.Memory** %MEMORY
  %loadMem_439a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 9
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RSI.i770 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 15
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %98 to i64*
  %99 = load i64, i64* %RBP.i771
  %100 = sub i64 %99, 16
  %101 = load i64, i64* %RSI.i770
  %102 = load i64, i64* %PC.i769
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC.i769
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104
  store %struct.Memory* %loadMem_439a59, %struct.Memory** %MEMORY
  %loadMem_439a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 33
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %107 to i64*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %EDX.i767 = bitcast %union.anon* %110 to i32*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i768 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i768
  %115 = sub i64 %114, 20
  %116 = load i32, i32* %EDX.i767
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC.i766
  %119 = add i64 %118, 3
  store i64 %119, i64* %PC.i766
  %120 = inttoptr i64 %115 to i32*
  store i32 %116, i32* %120
  store %struct.Memory* %loadMem_439a5d, %struct.Memory** %MEMORY
  %loadMem_439a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RSI.i764 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i765
  %131 = sub i64 %130, 8
  %132 = load i64, i64* %PC.i763
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i763
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %RSI.i764, align 8
  store %struct.Memory* %loadMem_439a60, %struct.Memory** %MEMORY
  %loadMem_439a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RDI.i761 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 15
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %RBP.i762
  %146 = sub i64 %145, 20
  %147 = load i64, i64* %PC.i760
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i760
  %149 = inttoptr i64 %146 to i32*
  %150 = load i32, i32* %149
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %RDI.i761, align 8
  store %struct.Memory* %loadMem_439a64, %struct.Memory** %MEMORY
  %loadMem_439a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 11
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RDI.i759 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RDI.i759
  %159 = load i64, i64* %PC.i758
  %160 = add i64 %159, 4
  store i64 %160, i64* %PC.i758
  %161 = sext i64 %158 to i128
  %162 = and i128 %161, -18446744073709551616
  %163 = zext i64 %158 to i128
  %164 = or i128 %162, %163
  %165 = mul i128 36, %164
  %166 = trunc i128 %165 to i64
  store i64 %166, i64* %RDI.i759, align 8
  %167 = sext i64 %166 to i128
  %168 = icmp ne i128 %167, %165
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %169, i8* %170, align 1
  %171 = trunc i128 %165 to i32
  %172 = and i32 %171, 255
  %173 = call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %176, i8* %177, align 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %178, align 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %179, align 1
  %180 = lshr i64 %166, 63
  %181 = trunc i64 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %181, i8* %182, align 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %169, i8* %183, align 1
  store %struct.Memory* %loadMem_439a68, %struct.Memory** %MEMORY
  %loadMem_439a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 9
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RSI.i756 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RDI.i757 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RSI.i756
  %194 = load i64, i64* %RDI.i757
  %195 = load i64, i64* %PC.i755
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC.i755
  %197 = add i64 %194, %193
  store i64 %197, i64* %RSI.i756, align 8
  %198 = icmp ult i64 %197, %193
  %199 = icmp ult i64 %197, %194
  %200 = or i1 %198, %199
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %201, i8* %202, align 1
  %203 = trunc i64 %197 to i32
  %204 = and i32 %203, 255
  %205 = call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %208, i8* %209, align 1
  %210 = xor i64 %194, %193
  %211 = xor i64 %210, %197
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %214, i8* %215, align 1
  %216 = icmp eq i64 %197, 0
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %217, i8* %218, align 1
  %219 = lshr i64 %197, 63
  %220 = trunc i64 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %220, i8* %221, align 1
  %222 = lshr i64 %193, 63
  %223 = lshr i64 %194, 63
  %224 = xor i64 %219, %222
  %225 = xor i64 %219, %223
  %226 = add i64 %224, %225
  %227 = icmp eq i64 %226, 2
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %228, i8* %229, align 1
  store %struct.Memory* %loadMem_439a6c, %struct.Memory** %MEMORY
  %loadMem_439a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 33
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RDX.i753 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 9
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RSI.i754 = bitcast %union.anon* %238 to i64*
  %239 = load i64, i64* %RSI.i754
  %240 = add i64 %239, 12
  %241 = load i64, i64* %PC.i752
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC.i752
  %243 = inttoptr i64 %240 to i32*
  %244 = load i32, i32* %243
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RDX.i753, align 8
  store %struct.Memory* %loadMem_439a6f, %struct.Memory** %MEMORY
  %loadMem_439a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %EDX.i750 = bitcast %union.anon* %251 to i32*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 15
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %254 to i64*
  %255 = load i64, i64* %RBP.i751
  %256 = sub i64 %255, 48
  %257 = load i32, i32* %EDX.i750
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %PC.i749
  %260 = add i64 %259, 3
  store i64 %260, i64* %PC.i749
  %261 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %261
  store %struct.Memory* %loadMem_439a72, %struct.Memory** %MEMORY
  %loadMem_439a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 9
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RSI.i747 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RBP.i748 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RBP.i748
  %272 = sub i64 %271, 20
  %273 = load i64, i64* %PC.i746
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC.i746
  %275 = inttoptr i64 %272 to i32*
  %276 = load i32, i32* %275
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RSI.i747, align 8
  store %struct.Memory* %loadMem_439a75, %struct.Memory** %MEMORY
  %loadMem_439a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 11
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RDI.i744 = bitcast %union.anon* %283 to i64*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 15
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %286 to i64*
  %287 = load i64, i64* %RBP.i745
  %288 = sub i64 %287, 8
  %289 = load i64, i64* %PC.i743
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC.i743
  %291 = inttoptr i64 %288 to i64*
  %292 = load i64, i64* %291
  store i64 %292, i64* %RDI.i744, align 8
  store %struct.Memory* %loadMem_439a78, %struct.Memory** %MEMORY
  %loadMem_439a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %RCX.i741 = bitcast %union.anon* %298 to i64*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 15
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %RBP.i742
  %303 = sub i64 %302, 20
  %304 = load i64, i64* %PC.i740
  %305 = add i64 %304, 4
  store i64 %305, i64* %PC.i740
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306
  %308 = sext i32 %307 to i64
  store i64 %308, i64* %RCX.i741, align 8
  store %struct.Memory* %loadMem_439a7c, %struct.Memory** %MEMORY
  %loadMem_439a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RCX.i739 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %RCX.i739
  %316 = load i64, i64* %PC.i738
  %317 = add i64 %316, 4
  store i64 %317, i64* %PC.i738
  %318 = sext i64 %315 to i128
  %319 = and i128 %318, -18446744073709551616
  %320 = zext i64 %315 to i128
  %321 = or i128 %319, %320
  %322 = mul i128 36, %321
  %323 = trunc i128 %322 to i64
  store i64 %323, i64* %RCX.i739, align 8
  %324 = sext i64 %323 to i128
  %325 = icmp ne i128 %324, %322
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %326, i8* %327, align 1
  %328 = trunc i128 %322 to i32
  %329 = and i32 %328, 255
  %330 = call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %333, i8* %334, align 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %335, align 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %336, align 1
  %337 = lshr i64 %323, 63
  %338 = trunc i64 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %338, i8* %339, align 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %326, i8* %340, align 1
  store %struct.Memory* %loadMem_439a80, %struct.Memory** %MEMORY
  %loadMem_439a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 5
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 11
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RDI.i737 = bitcast %union.anon* %349 to i64*
  %350 = load i64, i64* %RDI.i737
  %351 = load i64, i64* %RCX.i736
  %352 = load i64, i64* %PC.i735
  %353 = add i64 %352, 3
  store i64 %353, i64* %PC.i735
  %354 = add i64 %351, %350
  store i64 %354, i64* %RDI.i737, align 8
  %355 = icmp ult i64 %354, %350
  %356 = icmp ult i64 %354, %351
  %357 = or i1 %355, %356
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %358, i8* %359, align 1
  %360 = trunc i64 %354 to i32
  %361 = and i32 %360, 255
  %362 = call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %365, i8* %366, align 1
  %367 = xor i64 %351, %350
  %368 = xor i64 %367, %354
  %369 = lshr i64 %368, 4
  %370 = trunc i64 %369 to i8
  %371 = and i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %371, i8* %372, align 1
  %373 = icmp eq i64 %354, 0
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %374, i8* %375, align 1
  %376 = lshr i64 %354, 63
  %377 = trunc i64 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %377, i8* %378, align 1
  %379 = lshr i64 %350, 63
  %380 = lshr i64 %351, 63
  %381 = xor i64 %376, %379
  %382 = xor i64 %376, %380
  %383 = add i64 %381, %382
  %384 = icmp eq i64 %383, 2
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %385, i8* %386, align 1
  store %struct.Memory* %loadMem_439a84, %struct.Memory** %MEMORY
  %loadMem_439a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 33
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %389 to i64*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 7
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RDX.i733 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 11
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RDI.i734 = bitcast %union.anon* %395 to i64*
  %396 = load i64, i64* %RDI.i734
  %397 = load i64, i64* %PC.i732
  %398 = add i64 %397, 2
  store i64 %398, i64* %PC.i732
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RDX.i733, align 8
  store %struct.Memory* %loadMem_439a87, %struct.Memory** %MEMORY
  %loadMem_439a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RCX.i730 = bitcast %union.anon* %407 to i64*
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 15
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %RBP.i731 = bitcast %union.anon* %410 to i64*
  %411 = load i64, i64* %RBP.i731
  %412 = sub i64 %411, 8
  %413 = load i64, i64* %PC.i729
  %414 = add i64 %413, 4
  store i64 %414, i64* %PC.i729
  %415 = inttoptr i64 %412 to i64*
  %416 = load i64, i64* %415
  store i64 %416, i64* %RCX.i730, align 8
  store %struct.Memory* %loadMem_439a89, %struct.Memory** %MEMORY
  %loadMem_439a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 11
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %RDI.i727 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RBP.i728
  %427 = sub i64 %426, 20
  %428 = load i64, i64* %PC.i726
  %429 = add i64 %428, 4
  store i64 %429, i64* %PC.i726
  %430 = inttoptr i64 %427 to i32*
  %431 = load i32, i32* %430
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %RDI.i727, align 8
  store %struct.Memory* %loadMem_439a8d, %struct.Memory** %MEMORY
  %loadMem_439a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %434 = getelementptr inbounds %struct.GPR, %struct.GPR* %433, i32 0, i32 33
  %435 = getelementptr inbounds %struct.Reg, %struct.Reg* %434, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %435 to i64*
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 11
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %RDI.i725 = bitcast %union.anon* %438 to i64*
  %439 = load i64, i64* %RDI.i725
  %440 = load i64, i64* %PC.i724
  %441 = add i64 %440, 4
  store i64 %441, i64* %PC.i724
  %442 = sext i64 %439 to i128
  %443 = and i128 %442, -18446744073709551616
  %444 = zext i64 %439 to i128
  %445 = or i128 %443, %444
  %446 = mul i128 36, %445
  %447 = trunc i128 %446 to i64
  store i64 %447, i64* %RDI.i725, align 8
  %448 = sext i64 %447 to i128
  %449 = icmp ne i128 %448, %446
  %450 = zext i1 %449 to i8
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %450, i8* %451, align 1
  %452 = trunc i128 %446 to i32
  %453 = and i32 %452, 255
  %454 = call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %457, i8* %458, align 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %459, align 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %460, align 1
  %461 = lshr i64 %447, 63
  %462 = trunc i64 %461 to i8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %462, i8* %463, align 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %450, i8* %464, align 1
  store %struct.Memory* %loadMem_439a91, %struct.Memory** %MEMORY
  %loadMem_439a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 5
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RCX.i722 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 11
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RDI.i723 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RCX.i722
  %475 = load i64, i64* %RDI.i723
  %476 = load i64, i64* %PC.i721
  %477 = add i64 %476, 3
  store i64 %477, i64* %PC.i721
  %478 = add i64 %475, %474
  store i64 %478, i64* %RCX.i722, align 8
  %479 = icmp ult i64 %478, %474
  %480 = icmp ult i64 %478, %475
  %481 = or i1 %479, %480
  %482 = zext i1 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %482, i8* %483, align 1
  %484 = trunc i64 %478 to i32
  %485 = and i32 %484, 255
  %486 = call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %489, i8* %490, align 1
  %491 = xor i64 %475, %474
  %492 = xor i64 %491, %478
  %493 = lshr i64 %492, 4
  %494 = trunc i64 %493 to i8
  %495 = and i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %495, i8* %496, align 1
  %497 = icmp eq i64 %478, 0
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %498, i8* %499, align 1
  %500 = lshr i64 %478, 63
  %501 = trunc i64 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %501, i8* %502, align 1
  %503 = lshr i64 %474, 63
  %504 = lshr i64 %475, 63
  %505 = xor i64 %500, %503
  %506 = xor i64 %500, %504
  %507 = add i64 %505, %506
  %508 = icmp eq i64 %507, 2
  %509 = zext i1 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %509, i8* %510, align 1
  store %struct.Memory* %loadMem_439a95, %struct.Memory** %MEMORY
  %loadMem_439a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 5
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RCX.i720 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %RCX.i720
  %518 = add i64 %517, 4
  %519 = load i64, i64* %PC.i719
  %520 = add i64 %519, 3
  store i64 %520, i64* %PC.i719
  %521 = inttoptr i64 %518 to i32*
  %522 = load i32, i32* %521
  %523 = zext i32 %522 to i64
  store i64 %523, i64* %RCX.i720, align 8
  store %struct.Memory* %loadMem_439a98, %struct.Memory** %MEMORY
  %loadMem_439a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 11
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RDI.i717 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i718 = bitcast %union.anon* %532 to i64*
  %533 = load i64, i64* %RBP.i718
  %534 = sub i64 %533, 8
  %535 = load i64, i64* %PC.i716
  %536 = add i64 %535, 4
  store i64 %536, i64* %PC.i716
  %537 = inttoptr i64 %534 to i64*
  %538 = load i64, i64* %537
  store i64 %538, i64* %RDI.i717, align 8
  store %struct.Memory* %loadMem_439a9b, %struct.Memory** %MEMORY
  %loadMem_439a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 33
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %541 to i64*
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %543 = getelementptr inbounds %struct.GPR, %struct.GPR* %542, i32 0, i32 15
  %544 = getelementptr inbounds %struct.Reg, %struct.Reg* %543, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %544 to i64*
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 17
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %R8.i715 = bitcast %union.anon* %547 to i64*
  %548 = load i64, i64* %RBP.i714
  %549 = sub i64 %548, 20
  %550 = load i64, i64* %PC.i713
  %551 = add i64 %550, 4
  store i64 %551, i64* %PC.i713
  %552 = inttoptr i64 %549 to i32*
  %553 = load i32, i32* %552
  %554 = sext i32 %553 to i64
  store i64 %554, i64* %R8.i715, align 8
  store %struct.Memory* %loadMem_439a9f, %struct.Memory** %MEMORY
  %loadMem_439aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 17
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %R8.i712 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %R8.i712
  %562 = load i64, i64* %PC.i711
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC.i711
  %564 = sext i64 %561 to i128
  %565 = and i128 %564, -18446744073709551616
  %566 = zext i64 %561 to i128
  %567 = or i128 %565, %566
  %568 = mul i128 36, %567
  %569 = trunc i128 %568 to i64
  store i64 %569, i64* %R8.i712, align 8
  %570 = sext i64 %569 to i128
  %571 = icmp ne i128 %570, %568
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %572, i8* %573, align 1
  %574 = trunc i128 %568 to i32
  %575 = and i32 %574, 255
  %576 = call i32 @llvm.ctpop.i32(i32 %575)
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %579, i8* %580, align 1
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %581, align 1
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %582, align 1
  %583 = lshr i64 %569, 63
  %584 = trunc i64 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %584, i8* %585, align 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %572, i8* %586, align 1
  store %struct.Memory* %loadMem_439aa3, %struct.Memory** %MEMORY
  %loadMem_439aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 11
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RDI.i710 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 17
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %R8.i = bitcast %union.anon* %595 to i64*
  %596 = load i64, i64* %RDI.i710
  %597 = load i64, i64* %R8.i
  %598 = load i64, i64* %PC.i709
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC.i709
  %600 = add i64 %597, %596
  store i64 %600, i64* %RDI.i710, align 8
  %601 = icmp ult i64 %600, %596
  %602 = icmp ult i64 %600, %597
  %603 = or i1 %601, %602
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %604, i8* %605, align 1
  %606 = trunc i64 %600 to i32
  %607 = and i32 %606, 255
  %608 = call i32 @llvm.ctpop.i32(i32 %607)
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %611, i8* %612, align 1
  %613 = xor i64 %597, %596
  %614 = xor i64 %613, %600
  %615 = lshr i64 %614, 4
  %616 = trunc i64 %615 to i8
  %617 = and i8 %616, 1
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %617, i8* %618, align 1
  %619 = icmp eq i64 %600, 0
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %620, i8* %621, align 1
  %622 = lshr i64 %600, 63
  %623 = trunc i64 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %623, i8* %624, align 1
  %625 = lshr i64 %596, 63
  %626 = lshr i64 %597, 63
  %627 = xor i64 %622, %625
  %628 = xor i64 %622, %626
  %629 = add i64 %627, %628
  %630 = icmp eq i64 %629, 2
  %631 = zext i1 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %631, i8* %632, align 1
  store %struct.Memory* %loadMem_439aa7, %struct.Memory** %MEMORY
  %loadMem_439aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 17
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %638 to i32*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 11
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RDI.i708 = bitcast %union.anon* %641 to i64*
  %642 = bitcast i32* %R8D.i to i64*
  %643 = load i64, i64* %RDI.i708
  %644 = add i64 %643, 8
  %645 = load i64, i64* %PC.i707
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC.i707
  %647 = inttoptr i64 %644 to i32*
  %648 = load i32, i32* %647
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %642, align 8
  store %struct.Memory* %loadMem_439aaa, %struct.Memory** %MEMORY
  %loadMem_439aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 33
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 11
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RDI.i706 = bitcast %union.anon* %658 to i64*
  %659 = load i64, i64* %RAX.i705
  %660 = load i64, i64* %PC.i704
  %661 = add i64 %660, 3
  store i64 %661, i64* %PC.i704
  store i64 %659, i64* %RDI.i706, align 8
  store %struct.Memory* %loadMem_439aae, %struct.Memory** %MEMORY
  %loadMem_439ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %668 = bitcast %union.anon* %667 to %struct.anon.2*
  %AL.i703 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %668, i32 0, i32 0
  %669 = load i64, i64* %PC.i702
  %670 = add i64 %669, 2
  store i64 %670, i64* %PC.i702
  store i8 0, i8* %AL.i703, align 1
  store %struct.Memory* %loadMem_439ab1, %struct.Memory** %MEMORY
  %loadMem1_439ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %PC.i701
  %675 = add i64 %674, 99069
  %676 = load i64, i64* %PC.i701
  %677 = add i64 %676, 5
  %678 = load i64, i64* %PC.i701
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC.i701
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %677, i64* %683
  store i64 %682, i64* %680, align 8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %675, i64* %684, align 8
  store %struct.Memory* %loadMem1_439ab3, %struct.Memory** %MEMORY
  %loadMem2_439ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ab3 = load i64, i64* %3
  %call2_439ab3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439ab3, %struct.Memory* %loadMem2_439ab3)
  store %struct.Memory* %call2_439ab3, %struct.Memory** %MEMORY
  %loadMem_439ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 15
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %RBP.i700
  %692 = sub i64 %691, 24
  %693 = load i64, i64* %PC.i699
  %694 = add i64 %693, 7
  store i64 %694, i64* %PC.i699
  %695 = inttoptr i64 %692 to i32*
  store i32 0, i32* %695
  store %struct.Memory* %loadMem_439ab8, %struct.Memory** %MEMORY
  %loadMem_439abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 33
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 1
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %EAX.i697 = bitcast %union.anon* %701 to i32*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 15
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %RBP.i698
  %706 = sub i64 %705, 60
  %707 = load i32, i32* %EAX.i697
  %708 = zext i32 %707 to i64
  %709 = load i64, i64* %PC.i696
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC.i696
  %711 = inttoptr i64 %706 to i32*
  store i32 %707, i32* %711
  store %struct.Memory* %loadMem_439abf, %struct.Memory** %MEMORY
  br label %block_.L_439ac2

block_.L_439ac2:                                  ; preds = %block_.L_439dbc, %entry
  %loadMem_439ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 1
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RAX.i694 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %RBP.i695
  %722 = sub i64 %721, 24
  %723 = load i64, i64* %PC.i693
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC.i693
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RAX.i694, align 8
  store %struct.Memory* %loadMem_439ac2, %struct.Memory** %MEMORY
  %loadMem_439ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 1
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %EAX.i692 = bitcast %union.anon* %733 to i32*
  %734 = load i32, i32* %EAX.i692
  %735 = zext i32 %734 to i64
  %736 = load i64, i64* %PC.i691
  %737 = add i64 %736, 7
  store i64 %737, i64* %PC.i691
  %738 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %739 = sub i32 %734, %738
  %740 = icmp ult i32 %734, %738
  %741 = zext i1 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %741, i8* %742, align 1
  %743 = and i32 %739, 255
  %744 = call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %747, i8* %748, align 1
  %749 = xor i32 %738, %734
  %750 = xor i32 %749, %739
  %751 = lshr i32 %750, 4
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %753, i8* %754, align 1
  %755 = icmp eq i32 %739, 0
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %756, i8* %757, align 1
  %758 = lshr i32 %739, 31
  %759 = trunc i32 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %759, i8* %760, align 1
  %761 = lshr i32 %734, 31
  %762 = lshr i32 %738, 31
  %763 = xor i32 %762, %761
  %764 = xor i32 %758, %761
  %765 = add i32 %764, %763
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %767, i8* %768, align 1
  store %struct.Memory* %loadMem_439ac5, %struct.Memory** %MEMORY
  %loadMem_439acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %771 to i64*
  %772 = load i64, i64* %PC.i690
  %773 = add i64 %772, 766
  %774 = load i64, i64* %PC.i690
  %775 = add i64 %774, 6
  %776 = load i64, i64* %PC.i690
  %777 = add i64 %776, 6
  store i64 %777, i64* %PC.i690
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %779 = load i8, i8* %778, align 1
  %780 = icmp ne i8 %779, 0
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %782 = load i8, i8* %781, align 1
  %783 = icmp ne i8 %782, 0
  %784 = xor i1 %780, %783
  %785 = xor i1 %784, true
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %BRANCH_TAKEN, align 1
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %788 = select i1 %784, i64 %775, i64 %773
  store i64 %788, i64* %787, align 8
  store %struct.Memory* %loadMem_439acc, %struct.Memory** %MEMORY
  %loadBr_439acc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439acc = icmp eq i8 %loadBr_439acc, 1
  br i1 %cmpBr_439acc, label %block_.L_439dca, label %block_439ad2

block_439ad2:                                     ; preds = %block_.L_439ac2
  %loadMem_439ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 33
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %791 to i64*
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 15
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RBP.i689 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %RBP.i689
  %796 = sub i64 %795, 28
  %797 = load i64, i64* %PC.i688
  %798 = add i64 %797, 7
  store i64 %798, i64* %PC.i688
  %799 = inttoptr i64 %796 to i32*
  store i32 0, i32* %799
  store %struct.Memory* %loadMem_439ad2, %struct.Memory** %MEMORY
  br label %block_.L_439ad9

block_.L_439ad9:                                  ; preds = %block_.L_439da9, %block_439ad2
  %loadMem_439ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 1
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 15
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %RBP.i687
  %810 = sub i64 %809, 28
  %811 = load i64, i64* %PC.i685
  %812 = add i64 %811, 3
  store i64 %812, i64* %PC.i685
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_439ad9, %struct.Memory** %MEMORY
  %loadMem_439adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i683 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 1
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %EAX.i684 = bitcast %union.anon* %821 to i32*
  %822 = load i32, i32* %EAX.i684
  %823 = zext i32 %822 to i64
  %824 = load i64, i64* %PC.i683
  %825 = add i64 %824, 7
  store i64 %825, i64* %PC.i683
  %826 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %827 = sub i32 %822, %826
  %828 = icmp ult i32 %822, %826
  %829 = zext i1 %828 to i8
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %829, i8* %830, align 1
  %831 = and i32 %827, 255
  %832 = call i32 @llvm.ctpop.i32(i32 %831)
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %835, i8* %836, align 1
  %837 = xor i32 %826, %822
  %838 = xor i32 %837, %827
  %839 = lshr i32 %838, 4
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %841, i8* %842, align 1
  %843 = icmp eq i32 %827, 0
  %844 = zext i1 %843 to i8
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %844, i8* %845, align 1
  %846 = lshr i32 %827, 31
  %847 = trunc i32 %846 to i8
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %847, i8* %848, align 1
  %849 = lshr i32 %822, 31
  %850 = lshr i32 %826, 31
  %851 = xor i32 %850, %849
  %852 = xor i32 %846, %849
  %853 = add i32 %852, %851
  %854 = icmp eq i32 %853, 2
  %855 = zext i1 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %855, i8* %856, align 1
  store %struct.Memory* %loadMem_439adc, %struct.Memory** %MEMORY
  %loadMem_439ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %PC.i682
  %861 = add i64 %860, 724
  %862 = load i64, i64* %PC.i682
  %863 = add i64 %862, 6
  %864 = load i64, i64* %PC.i682
  %865 = add i64 %864, 6
  store i64 %865, i64* %PC.i682
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %867 = load i8, i8* %866, align 1
  %868 = icmp ne i8 %867, 0
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %870 = load i8, i8* %869, align 1
  %871 = icmp ne i8 %870, 0
  %872 = xor i1 %868, %871
  %873 = xor i1 %872, true
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %BRANCH_TAKEN, align 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %876 = select i1 %872, i64 %863, i64 %861
  store i64 %876, i64* %875, align 8
  store %struct.Memory* %loadMem_439ae3, %struct.Memory** %MEMORY
  %loadBr_439ae3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ae3 = icmp eq i8 %loadBr_439ae3, 1
  br i1 %cmpBr_439ae3, label %block_.L_439db7, label %block_439ae9

block_439ae9:                                     ; preds = %block_.L_439ad9
  %loadMem_439ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 33
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 1
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %882 to i64*
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 15
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %885 to i64*
  %886 = load i64, i64* %RBP.i681
  %887 = sub i64 %886, 24
  %888 = load i64, i64* %PC.i679
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i679
  %890 = inttoptr i64 %887 to i32*
  %891 = load i32, i32* %890
  %892 = sext i32 %891 to i64
  %893 = mul i64 %892, 20
  %894 = trunc i64 %893 to i32
  %895 = and i64 %893, 4294967295
  store i64 %895, i64* %RAX.i680, align 8
  %896 = shl i64 %893, 32
  %897 = ashr exact i64 %896, 32
  %898 = icmp ne i64 %897, %893
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %899, i8* %900, align 1
  %901 = and i32 %894, 255
  %902 = call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %905, i8* %906, align 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %907, align 1
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %908, align 1
  %909 = lshr i32 %894, 31
  %910 = trunc i32 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %910, i8* %911, align 1
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %899, i8* %912, align 1
  store %struct.Memory* %loadMem_439ae9, %struct.Memory** %MEMORY
  %loadMem_439aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 33
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 1
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RAX.i678
  %920 = load i64, i64* %PC.i677
  %921 = add i64 %920, 3
  store i64 %921, i64* %PC.i677
  %922 = trunc i64 %919 to i32
  %923 = add i32 21, %922
  %924 = zext i32 %923 to i64
  store i64 %924, i64* %RAX.i678, align 8
  %925 = icmp ult i32 %923, %922
  %926 = icmp ult i32 %923, 21
  %927 = or i1 %925, %926
  %928 = zext i1 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %928, i8* %929, align 1
  %930 = and i32 %923, 255
  %931 = call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %934, i8* %935, align 1
  %936 = xor i64 21, %919
  %937 = trunc i64 %936 to i32
  %938 = xor i32 %937, %923
  %939 = lshr i32 %938, 4
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %941, i8* %942, align 1
  %943 = icmp eq i32 %923, 0
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %944, i8* %945, align 1
  %946 = lshr i32 %923, 31
  %947 = trunc i32 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %947, i8* %948, align 1
  %949 = lshr i32 %922, 31
  %950 = xor i32 %946, %949
  %951 = add i32 %950, %946
  %952 = icmp eq i32 %951, 2
  %953 = zext i1 %952 to i8
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %953, i8* %954, align 1
  store %struct.Memory* %loadMem_439aed, %struct.Memory** %MEMORY
  %loadMem_439af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 15
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RAX.i675
  %965 = load i64, i64* %RBP.i676
  %966 = sub i64 %965, 28
  %967 = load i64, i64* %PC.i674
  %968 = add i64 %967, 3
  store i64 %968, i64* %PC.i674
  %969 = trunc i64 %964 to i32
  %970 = inttoptr i64 %966 to i32*
  %971 = load i32, i32* %970
  %972 = add i32 %971, %969
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RAX.i675, align 8
  %974 = icmp ult i32 %972, %969
  %975 = icmp ult i32 %972, %971
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %977, i8* %978, align 1
  %979 = and i32 %972, 255
  %980 = call i32 @llvm.ctpop.i32(i32 %979)
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %983, i8* %984, align 1
  %985 = xor i32 %971, %969
  %986 = xor i32 %985, %972
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %989, i8* %990, align 1
  %991 = icmp eq i32 %972, 0
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %992, i8* %993, align 1
  %994 = lshr i32 %972, 31
  %995 = trunc i32 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %995, i8* %996, align 1
  %997 = lshr i32 %969, 31
  %998 = lshr i32 %971, 31
  %999 = xor i32 %994, %997
  %1000 = xor i32 %994, %998
  %1001 = add i32 %999, %1000
  %1002 = icmp eq i32 %1001, 2
  %1003 = zext i1 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1003, i8* %1004, align 1
  store %struct.Memory* %loadMem_439af0, %struct.Memory** %MEMORY
  %loadMem_439af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %EAX.i672 = bitcast %union.anon* %1010 to i32*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 15
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %RBP.i673
  %1015 = sub i64 %1014, 52
  %1016 = load i32, i32* %EAX.i672
  %1017 = zext i32 %1016 to i64
  %1018 = load i64, i64* %PC.i671
  %1019 = add i64 %1018, 3
  store i64 %1019, i64* %PC.i671
  %1020 = inttoptr i64 %1015 to i32*
  store i32 %1016, i32* %1020
  store %struct.Memory* %loadMem_439af3, %struct.Memory** %MEMORY
  %loadMem_439af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 5
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RCX.i669 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 15
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %RBP.i670
  %1031 = sub i64 %1030, 8
  %1032 = load i64, i64* %PC.i668
  %1033 = add i64 %1032, 4
  store i64 %1033, i64* %PC.i668
  %1034 = inttoptr i64 %1031 to i64*
  %1035 = load i64, i64* %1034
  store i64 %1035, i64* %RCX.i669, align 8
  store %struct.Memory* %loadMem_439af6, %struct.Memory** %MEMORY
  %loadMem_439afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 7
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RDX.i666 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 15
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %1044 to i64*
  %1045 = load i64, i64* %RBP.i667
  %1046 = sub i64 %1045, 52
  %1047 = load i64, i64* %PC.i665
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %PC.i665
  %1049 = inttoptr i64 %1046 to i32*
  %1050 = load i32, i32* %1049
  %1051 = sext i32 %1050 to i64
  store i64 %1051, i64* %RDX.i666, align 8
  store %struct.Memory* %loadMem_439afa, %struct.Memory** %MEMORY
  %loadMem_439afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 33
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1054 to i64*
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1056 = getelementptr inbounds %struct.GPR, %struct.GPR* %1055, i32 0, i32 7
  %1057 = getelementptr inbounds %struct.Reg, %struct.Reg* %1056, i32 0, i32 0
  %RDX.i664 = bitcast %union.anon* %1057 to i64*
  %1058 = load i64, i64* %RDX.i664
  %1059 = load i64, i64* %PC.i663
  %1060 = add i64 %1059, 4
  store i64 %1060, i64* %PC.i663
  %1061 = sext i64 %1058 to i128
  %1062 = and i128 %1061, -18446744073709551616
  %1063 = zext i64 %1058 to i128
  %1064 = or i128 %1062, %1063
  %1065 = mul i128 36, %1064
  %1066 = trunc i128 %1065 to i64
  store i64 %1066, i64* %RDX.i664, align 8
  %1067 = sext i64 %1066 to i128
  %1068 = icmp ne i128 %1067, %1065
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1069, i8* %1070, align 1
  %1071 = trunc i128 %1065 to i32
  %1072 = and i32 %1071, 255
  %1073 = call i32 @llvm.ctpop.i32(i32 %1072)
  %1074 = trunc i32 %1073 to i8
  %1075 = and i8 %1074, 1
  %1076 = xor i8 %1075, 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1076, i8* %1077, align 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1078, align 1
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1079, align 1
  %1080 = lshr i64 %1066, 63
  %1081 = trunc i64 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1081, i8* %1082, align 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1069, i8* %1083, align 1
  store %struct.Memory* %loadMem_439afe, %struct.Memory** %MEMORY
  %loadMem_439b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 5
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 7
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RDX.i662 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RCX.i661
  %1094 = load i64, i64* %RDX.i662
  %1095 = load i64, i64* %PC.i660
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %PC.i660
  %1097 = add i64 %1094, %1093
  store i64 %1097, i64* %RCX.i661, align 8
  %1098 = icmp ult i64 %1097, %1093
  %1099 = icmp ult i64 %1097, %1094
  %1100 = or i1 %1098, %1099
  %1101 = zext i1 %1100 to i8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1101, i8* %1102, align 1
  %1103 = trunc i64 %1097 to i32
  %1104 = and i32 %1103, 255
  %1105 = call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1108, i8* %1109, align 1
  %1110 = xor i64 %1094, %1093
  %1111 = xor i64 %1110, %1097
  %1112 = lshr i64 %1111, 4
  %1113 = trunc i64 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1114, i8* %1115, align 1
  %1116 = icmp eq i64 %1097, 0
  %1117 = zext i1 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1117, i8* %1118, align 1
  %1119 = lshr i64 %1097, 63
  %1120 = trunc i64 %1119 to i8
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1120, i8* %1121, align 1
  %1122 = lshr i64 %1093, 63
  %1123 = lshr i64 %1094, 63
  %1124 = xor i64 %1119, %1122
  %1125 = xor i64 %1119, %1123
  %1126 = add i64 %1124, %1125
  %1127 = icmp eq i64 %1126, 2
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1128, i8* %1129, align 1
  store %struct.Memory* %loadMem_439b02, %struct.Memory** %MEMORY
  %loadMem_439b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 1
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 5
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %RCX.i659
  %1140 = add i64 %1139, 12
  %1141 = load i64, i64* %PC.i657
  %1142 = add i64 %1141, 3
  store i64 %1142, i64* %PC.i657
  %1143 = inttoptr i64 %1140 to i32*
  %1144 = load i32, i32* %1143
  %1145 = zext i32 %1144 to i64
  store i64 %1145, i64* %RAX.i658, align 8
  store %struct.Memory* %loadMem_439b05, %struct.Memory** %MEMORY
  %loadMem_439b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 33
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 1
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %EAX.i655 = bitcast %union.anon* %1151 to i32*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 15
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %1154 to i64*
  %1155 = load i32, i32* %EAX.i655
  %1156 = zext i32 %1155 to i64
  %1157 = load i64, i64* %RBP.i656
  %1158 = sub i64 %1157, 20
  %1159 = load i64, i64* %PC.i654
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC.i654
  %1161 = inttoptr i64 %1158 to i32*
  %1162 = load i32, i32* %1161
  %1163 = sub i32 %1155, %1162
  %1164 = icmp ult i32 %1155, %1162
  %1165 = zext i1 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1165, i8* %1166, align 1
  %1167 = and i32 %1163, 255
  %1168 = call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1171, i8* %1172, align 1
  %1173 = xor i32 %1162, %1155
  %1174 = xor i32 %1173, %1163
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1177, i8* %1178, align 1
  %1179 = icmp eq i32 %1163, 0
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1180, i8* %1181, align 1
  %1182 = lshr i32 %1163, 31
  %1183 = trunc i32 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1183, i8* %1184, align 1
  %1185 = lshr i32 %1155, 31
  %1186 = lshr i32 %1162, 31
  %1187 = xor i32 %1186, %1185
  %1188 = xor i32 %1182, %1185
  %1189 = add i32 %1188, %1187
  %1190 = icmp eq i32 %1189, 2
  %1191 = zext i1 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1191, i8* %1192, align 1
  store %struct.Memory* %loadMem_439b08, %struct.Memory** %MEMORY
  %loadMem_439b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %PC.i653
  %1197 = add i64 %1196, 11
  %1198 = load i64, i64* %PC.i653
  %1199 = add i64 %1198, 6
  %1200 = load i64, i64* %PC.i653
  %1201 = add i64 %1200, 6
  store i64 %1201, i64* %PC.i653
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1203 = load i8, i8* %1202, align 1
  store i8 %1203, i8* %BRANCH_TAKEN, align 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1205 = icmp ne i8 %1203, 0
  %1206 = select i1 %1205, i64 %1197, i64 %1199
  store i64 %1206, i64* %1204, align 8
  store %struct.Memory* %loadMem_439b0b, %struct.Memory** %MEMORY
  %loadBr_439b0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b0b = icmp eq i8 %loadBr_439b0b, 1
  br i1 %cmpBr_439b0b, label %block_.L_439b16, label %block_439b11

block_439b11:                                     ; preds = %block_439ae9
  %loadMem_439b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 33
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %PC.i652
  %1211 = add i64 %1210, 664
  %1212 = load i64, i64* %PC.i652
  %1213 = add i64 %1212, 5
  store i64 %1213, i64* %PC.i652
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1211, i64* %1214, align 8
  store %struct.Memory* %loadMem_439b11, %struct.Memory** %MEMORY
  br label %block_.L_439da9

block_.L_439b16:                                  ; preds = %block_439ae9
  %loadMem_439b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1216 = getelementptr inbounds %struct.GPR, %struct.GPR* %1215, i32 0, i32 33
  %1217 = getelementptr inbounds %struct.Reg, %struct.Reg* %1216, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1217 to i64*
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 1
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 15
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %1223 to i64*
  %1224 = load i64, i64* %RBP.i651
  %1225 = sub i64 %1224, 8
  %1226 = load i64, i64* %PC.i649
  %1227 = add i64 %1226, 4
  store i64 %1227, i64* %PC.i649
  %1228 = inttoptr i64 %1225 to i64*
  %1229 = load i64, i64* %1228
  store i64 %1229, i64* %RAX.i650, align 8
  store %struct.Memory* %loadMem_439b16, %struct.Memory** %MEMORY
  %loadMem_439b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 5
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 15
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %RBP.i648
  %1240 = sub i64 %1239, 52
  %1241 = load i64, i64* %PC.i646
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %PC.i646
  %1243 = inttoptr i64 %1240 to i32*
  %1244 = load i32, i32* %1243
  %1245 = sext i32 %1244 to i64
  store i64 %1245, i64* %RCX.i647, align 8
  store %struct.Memory* %loadMem_439b1a, %struct.Memory** %MEMORY
  %loadMem_439b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 5
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RCX.i645
  %1253 = load i64, i64* %PC.i644
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %PC.i644
  %1255 = sext i64 %1252 to i128
  %1256 = and i128 %1255, -18446744073709551616
  %1257 = zext i64 %1252 to i128
  %1258 = or i128 %1256, %1257
  %1259 = mul i128 36, %1258
  %1260 = trunc i128 %1259 to i64
  store i64 %1260, i64* %RCX.i645, align 8
  %1261 = sext i64 %1260 to i128
  %1262 = icmp ne i128 %1261, %1259
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1263, i8* %1264, align 1
  %1265 = trunc i128 %1259 to i32
  %1266 = and i32 %1265, 255
  %1267 = call i32 @llvm.ctpop.i32(i32 %1266)
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1270, i8* %1271, align 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1272, align 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1273, align 1
  %1274 = lshr i64 %1260, 63
  %1275 = trunc i64 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1275, i8* %1276, align 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1263, i8* %1277, align 1
  store %struct.Memory* %loadMem_439b1e, %struct.Memory** %MEMORY
  %loadMem_439b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 33
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1280 to i64*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 1
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %1283 to i64*
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1285 = getelementptr inbounds %struct.GPR, %struct.GPR* %1284, i32 0, i32 5
  %1286 = getelementptr inbounds %struct.Reg, %struct.Reg* %1285, i32 0, i32 0
  %RCX.i643 = bitcast %union.anon* %1286 to i64*
  %1287 = load i64, i64* %RAX.i642
  %1288 = load i64, i64* %RCX.i643
  %1289 = load i64, i64* %PC.i641
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC.i641
  %1291 = add i64 %1288, %1287
  store i64 %1291, i64* %RAX.i642, align 8
  %1292 = icmp ult i64 %1291, %1287
  %1293 = icmp ult i64 %1291, %1288
  %1294 = or i1 %1292, %1293
  %1295 = zext i1 %1294 to i8
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1295, i8* %1296, align 1
  %1297 = trunc i64 %1291 to i32
  %1298 = and i32 %1297, 255
  %1299 = call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1302, i8* %1303, align 1
  %1304 = xor i64 %1288, %1287
  %1305 = xor i64 %1304, %1291
  %1306 = lshr i64 %1305, 4
  %1307 = trunc i64 %1306 to i8
  %1308 = and i8 %1307, 1
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1308, i8* %1309, align 1
  %1310 = icmp eq i64 %1291, 0
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1311, i8* %1312, align 1
  %1313 = lshr i64 %1291, 63
  %1314 = trunc i64 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1314, i8* %1315, align 1
  %1316 = lshr i64 %1287, 63
  %1317 = lshr i64 %1288, 63
  %1318 = xor i64 %1313, %1316
  %1319 = xor i64 %1313, %1317
  %1320 = add i64 %1318, %1319
  %1321 = icmp eq i64 %1320, 2
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1322, i8* %1323, align 1
  store %struct.Memory* %loadMem_439b22, %struct.Memory** %MEMORY
  %loadMem_439b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 7
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RAX.i639
  %1334 = add i64 %1333, 28
  %1335 = load i64, i64* %PC.i638
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i638
  %1337 = inttoptr i64 %1334 to i8*
  %1338 = load i8, i8* %1337
  %1339 = sext i8 %1338 to i64
  %1340 = and i64 %1339, 4294967295
  store i64 %1340, i64* %RDX.i640, align 8
  store %struct.Memory* %loadMem_439b25, %struct.Memory** %MEMORY
  %loadMem_439b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 7
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %EDX.i637 = bitcast %union.anon* %1346 to i32*
  %1347 = load i32, i32* %EDX.i637
  %1348 = zext i32 %1347 to i64
  %1349 = load i64, i64* %PC.i636
  %1350 = add i64 %1349, 3
  store i64 %1350, i64* %PC.i636
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1351, align 1
  %1352 = and i32 %1347, 255
  %1353 = call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1356, i8* %1357, align 1
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1358, align 1
  %1359 = icmp eq i32 %1347, 0
  %1360 = zext i1 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1360, i8* %1361, align 1
  %1362 = lshr i32 %1347, 31
  %1363 = trunc i32 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1363, i8* %1364, align 1
  %1365 = lshr i32 %1347, 31
  %1366 = xor i32 %1362, %1365
  %1367 = add i32 %1366, %1365
  %1368 = icmp eq i32 %1367, 2
  %1369 = zext i1 %1368 to i8
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1369, i8* %1370, align 1
  store %struct.Memory* %loadMem_439b29, %struct.Memory** %MEMORY
  %loadMem_439b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %PC.i635
  %1375 = add i64 %1374, 76
  %1376 = load i64, i64* %PC.i635
  %1377 = add i64 %1376, 6
  %1378 = load i64, i64* %PC.i635
  %1379 = add i64 %1378, 6
  store i64 %1379, i64* %PC.i635
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1381 = load i8, i8* %1380, align 1
  store i8 %1381, i8* %BRANCH_TAKEN, align 1
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1383 = icmp ne i8 %1381, 0
  %1384 = select i1 %1383, i64 %1375, i64 %1377
  store i64 %1384, i64* %1382, align 8
  store %struct.Memory* %loadMem_439b2c, %struct.Memory** %MEMORY
  %loadBr_439b2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b2c = icmp eq i8 %loadBr_439b2c, 1
  br i1 %cmpBr_439b2c, label %block_.L_439b78, label %block_439b32

block_439b32:                                     ; preds = %block_.L_439b16
  %loadMem_439b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 33
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 1
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 15
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %1393 to i64*
  %1394 = load i64, i64* %RBP.i634
  %1395 = sub i64 %1394, 52
  %1396 = load i64, i64* %PC.i632
  %1397 = add i64 %1396, 4
  store i64 %1397, i64* %PC.i632
  %1398 = inttoptr i64 %1395 to i32*
  %1399 = load i32, i32* %1398
  %1400 = sext i32 %1399 to i64
  store i64 %1400, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_439b32, %struct.Memory** %MEMORY
  %loadMem_439b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 1
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %1406 to i64*
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 5
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %1409 to i64*
  %1410 = load i64, i64* %RAX.i630
  %1411 = add i64 %1410, 12099168
  %1412 = load i64, i64* %PC.i629
  %1413 = add i64 %1412, 8
  store i64 %1413, i64* %PC.i629
  %1414 = inttoptr i64 %1411 to i8*
  %1415 = load i8, i8* %1414
  %1416 = zext i8 %1415 to i64
  store i64 %1416, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_439b36, %struct.Memory** %MEMORY
  %loadMem_439b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 33
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 5
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %ECX.i628 = bitcast %union.anon* %1422 to i32*
  %1423 = load i32, i32* %ECX.i628
  %1424 = zext i32 %1423 to i64
  %1425 = load i64, i64* %PC.i627
  %1426 = add i64 %1425, 3
  store i64 %1426, i64* %PC.i627
  %1427 = sub i32 %1423, 1
  %1428 = icmp ult i32 %1423, 1
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1429, i8* %1430, align 1
  %1431 = and i32 %1427, 255
  %1432 = call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1435, i8* %1436, align 1
  %1437 = xor i64 1, %1424
  %1438 = trunc i64 %1437 to i32
  %1439 = xor i32 %1438, %1427
  %1440 = lshr i32 %1439, 4
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1442, i8* %1443, align 1
  %1444 = icmp eq i32 %1427, 0
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1445, i8* %1446, align 1
  %1447 = lshr i32 %1427, 31
  %1448 = trunc i32 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1448, i8* %1449, align 1
  %1450 = lshr i32 %1423, 31
  %1451 = xor i32 %1447, %1450
  %1452 = add i32 %1451, %1450
  %1453 = icmp eq i32 %1452, 2
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1454, i8* %1455, align 1
  store %struct.Memory* %loadMem_439b3e, %struct.Memory** %MEMORY
  %loadMem_439b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 33
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %PC.i626
  %1460 = add i64 %1459, 27
  %1461 = load i64, i64* %PC.i626
  %1462 = add i64 %1461, 6
  %1463 = load i64, i64* %PC.i626
  %1464 = add i64 %1463, 6
  store i64 %1464, i64* %PC.i626
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1466 = load i8, i8* %1465, align 1
  store i8 %1466, i8* %BRANCH_TAKEN, align 1
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1468 = icmp ne i8 %1466, 0
  %1469 = select i1 %1468, i64 %1460, i64 %1462
  store i64 %1469, i64* %1467, align 8
  store %struct.Memory* %loadMem_439b41, %struct.Memory** %MEMORY
  %loadBr_439b41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b41 = icmp eq i8 %loadBr_439b41, 1
  br i1 %cmpBr_439b41, label %block_.L_439b5c, label %block_439b47

block_439b47:                                     ; preds = %block_439b32
  %loadMem_439b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 1
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 15
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %1478 to i64*
  %1479 = load i64, i64* %RBP.i625
  %1480 = sub i64 %1479, 52
  %1481 = load i64, i64* %PC.i623
  %1482 = add i64 %1481, 4
  store i64 %1482, i64* %PC.i623
  %1483 = inttoptr i64 %1480 to i32*
  %1484 = load i32, i32* %1483
  %1485 = sext i32 %1484 to i64
  store i64 %1485, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_439b47, %struct.Memory** %MEMORY
  %loadMem_439b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 1
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RAX.i621 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 5
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %RCX.i622 = bitcast %union.anon* %1494 to i64*
  %1495 = load i64, i64* %RAX.i621
  %1496 = add i64 %1495, 12099168
  %1497 = load i64, i64* %PC.i620
  %1498 = add i64 %1497, 8
  store i64 %1498, i64* %PC.i620
  %1499 = inttoptr i64 %1496 to i8*
  %1500 = load i8, i8* %1499
  %1501 = zext i8 %1500 to i64
  store i64 %1501, i64* %RCX.i622, align 8
  store %struct.Memory* %loadMem_439b4b, %struct.Memory** %MEMORY
  %loadMem_439b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 33
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1504 to i64*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 5
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %ECX.i619 = bitcast %union.anon* %1507 to i32*
  %1508 = load i32, i32* %ECX.i619
  %1509 = zext i32 %1508 to i64
  %1510 = load i64, i64* %PC.i618
  %1511 = add i64 %1510, 3
  store i64 %1511, i64* %PC.i618
  %1512 = sub i32 %1508, 2
  %1513 = icmp ult i32 %1508, 2
  %1514 = zext i1 %1513 to i8
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1514, i8* %1515, align 1
  %1516 = and i32 %1512, 255
  %1517 = call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1520, i8* %1521, align 1
  %1522 = xor i64 2, %1509
  %1523 = trunc i64 %1522 to i32
  %1524 = xor i32 %1523, %1512
  %1525 = lshr i32 %1524, 4
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1527, i8* %1528, align 1
  %1529 = icmp eq i32 %1512, 0
  %1530 = zext i1 %1529 to i8
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1530, i8* %1531, align 1
  %1532 = lshr i32 %1512, 31
  %1533 = trunc i32 %1532 to i8
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1533, i8* %1534, align 1
  %1535 = lshr i32 %1508, 31
  %1536 = xor i32 %1532, %1535
  %1537 = add i32 %1536, %1535
  %1538 = icmp eq i32 %1537, 2
  %1539 = zext i1 %1538 to i8
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1539, i8* %1540, align 1
  store %struct.Memory* %loadMem_439b53, %struct.Memory** %MEMORY
  %loadMem_439b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1543 to i64*
  %1544 = load i64, i64* %PC.i617
  %1545 = add i64 %1544, 34
  %1546 = load i64, i64* %PC.i617
  %1547 = add i64 %1546, 6
  %1548 = load i64, i64* %PC.i617
  %1549 = add i64 %1548, 6
  store i64 %1549, i64* %PC.i617
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1551 = load i8, i8* %1550, align 1
  %1552 = icmp eq i8 %1551, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %BRANCH_TAKEN, align 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1555 = select i1 %1552, i64 %1545, i64 %1547
  store i64 %1555, i64* %1554, align 8
  store %struct.Memory* %loadMem_439b56, %struct.Memory** %MEMORY
  %loadBr_439b56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b56 = icmp eq i8 %loadBr_439b56, 1
  br i1 %cmpBr_439b56, label %block_.L_439b78, label %block_.L_439b5c

block_.L_439b5c:                                  ; preds = %block_439b47, %block_439b32
  %loadMem_439b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 11
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RDI.i616 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %PC.i615
  %1563 = add i64 %1562, 10
  store i64 %1563, i64* %PC.i615
  store i64 ptrtoint (%G__0x57d9c6_type* @G__0x57d9c6 to i64), i64* %RDI.i616, align 8
  store %struct.Memory* %loadMem_439b5c, %struct.Memory** %MEMORY
  %loadMem_439b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 9
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RSI.i613 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RBP.i614
  %1574 = sub i64 %1573, 52
  %1575 = load i64, i64* %PC.i612
  %1576 = add i64 %1575, 3
  store i64 %1576, i64* %PC.i612
  %1577 = inttoptr i64 %1574 to i32*
  %1578 = load i32, i32* %1577
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RSI.i613, align 8
  store %struct.Memory* %loadMem_439b66, %struct.Memory** %MEMORY
  %loadMem_439b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 1
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %1586 = bitcast %union.anon* %1585 to %struct.anon.2*
  %AL.i611 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1586, i32 0, i32 0
  %1587 = load i64, i64* %PC.i610
  %1588 = add i64 %1587, 2
  store i64 %1588, i64* %PC.i610
  store i8 0, i8* %AL.i611, align 1
  store %struct.Memory* %loadMem_439b69, %struct.Memory** %MEMORY
  %loadMem1_439b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 33
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %1591 to i64*
  %1592 = load i64, i64* %PC.i609
  %1593 = add i64 %1592, 98885
  %1594 = load i64, i64* %PC.i609
  %1595 = add i64 %1594, 5
  %1596 = load i64, i64* %PC.i609
  %1597 = add i64 %1596, 5
  store i64 %1597, i64* %PC.i609
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1599 = load i64, i64* %1598, align 8
  %1600 = add i64 %1599, -8
  %1601 = inttoptr i64 %1600 to i64*
  store i64 %1595, i64* %1601
  store i64 %1600, i64* %1598, align 8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1593, i64* %1602, align 8
  store %struct.Memory* %loadMem1_439b6b, %struct.Memory** %MEMORY
  %loadMem2_439b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439b6b = load i64, i64* %3
  %call2_439b6b = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439b6b, %struct.Memory* %loadMem2_439b6b)
  store %struct.Memory* %call2_439b6b, %struct.Memory** %MEMORY
  %loadMem_439b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 33
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 1
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %EAX.i607 = bitcast %union.anon* %1608 to i32*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 15
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %RBP.i608
  %1613 = sub i64 %1612, 64
  %1614 = load i32, i32* %EAX.i607
  %1615 = zext i32 %1614 to i64
  %1616 = load i64, i64* %PC.i606
  %1617 = add i64 %1616, 3
  store i64 %1617, i64* %PC.i606
  %1618 = inttoptr i64 %1613 to i32*
  store i32 %1614, i32* %1618
  store %struct.Memory* %loadMem_439b70, %struct.Memory** %MEMORY
  %loadMem_439b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 33
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1621 to i64*
  %1622 = load i64, i64* %PC.i605
  %1623 = add i64 %1622, 561
  %1624 = load i64, i64* %PC.i605
  %1625 = add i64 %1624, 5
  store i64 %1625, i64* %PC.i605
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1623, i64* %1626, align 8
  store %struct.Memory* %loadMem_439b73, %struct.Memory** %MEMORY
  br label %block_.L_439da4

block_.L_439b78:                                  ; preds = %block_439b47, %block_.L_439b16
  %loadMem_439b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 11
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RDI.i603 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 15
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RBP.i604
  %1637 = sub i64 %1636, 16
  %1638 = load i64, i64* %PC.i602
  %1639 = add i64 %1638, 4
  store i64 %1639, i64* %PC.i602
  %1640 = inttoptr i64 %1637 to i64*
  %1641 = load i64, i64* %1640
  store i64 %1641, i64* %RDI.i603, align 8
  store %struct.Memory* %loadMem_439b78, %struct.Memory** %MEMORY
  %loadMem_439b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 9
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RSI.i600 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 15
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %RBP.i601
  %1652 = sub i64 %1651, 52
  %1653 = load i64, i64* %PC.i599
  %1654 = add i64 %1653, 3
  store i64 %1654, i64* %PC.i599
  %1655 = inttoptr i64 %1652 to i32*
  %1656 = load i32, i32* %1655
  %1657 = zext i32 %1656 to i64
  store i64 %1657, i64* %RSI.i600, align 8
  store %struct.Memory* %loadMem_439b7c, %struct.Memory** %MEMORY
  %loadMem1_439b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 33
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %PC.i598
  %1662 = add i64 %1661, 5297
  %1663 = load i64, i64* %PC.i598
  %1664 = add i64 %1663, 5
  %1665 = load i64, i64* %PC.i598
  %1666 = add i64 %1665, 5
  store i64 %1666, i64* %PC.i598
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1668 = load i64, i64* %1667, align 8
  %1669 = add i64 %1668, -8
  %1670 = inttoptr i64 %1669 to i64*
  store i64 %1664, i64* %1670
  store i64 %1669, i64* %1667, align 8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1662, i64* %1671, align 8
  store %struct.Memory* %loadMem1_439b7f, %struct.Memory** %MEMORY
  %loadMem2_439b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439b7f = load i64, i64* %3
  %call2_439b7f = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64 %loadPC_439b7f, %struct.Memory* %loadMem2_439b7f)
  store %struct.Memory* %call2_439b7f, %struct.Memory** %MEMORY
  %loadMem_439b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 33
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %1674 to i64*
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 1
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %EAX.i597 = bitcast %union.anon* %1677 to i32*
  %1678 = load i32, i32* %EAX.i597
  %1679 = zext i32 %1678 to i64
  %1680 = load i64, i64* %PC.i596
  %1681 = add i64 %1680, 3
  store i64 %1681, i64* %PC.i596
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1682, align 1
  %1683 = and i32 %1678, 255
  %1684 = call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1687, i8* %1688, align 1
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1689, align 1
  %1690 = icmp eq i32 %1678, 0
  %1691 = zext i1 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i32 %1678, 31
  %1694 = trunc i32 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1694, i8* %1695, align 1
  %1696 = lshr i32 %1678, 31
  %1697 = xor i32 %1693, %1696
  %1698 = add i32 %1697, %1696
  %1699 = icmp eq i32 %1698, 2
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1700, i8* %1701, align 1
  store %struct.Memory* %loadMem_439b84, %struct.Memory** %MEMORY
  %loadMem_439b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %PC.i595
  %1706 = add i64 %1705, 166
  %1707 = load i64, i64* %PC.i595
  %1708 = add i64 %1707, 6
  %1709 = load i64, i64* %PC.i595
  %1710 = add i64 %1709, 6
  store i64 %1710, i64* %PC.i595
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1712 = load i8, i8* %1711, align 1
  store i8 %1712, i8* %BRANCH_TAKEN, align 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1714 = icmp ne i8 %1712, 0
  %1715 = select i1 %1714, i64 %1706, i64 %1708
  store i64 %1715, i64* %1713, align 8
  store %struct.Memory* %loadMem_439b87, %struct.Memory** %MEMORY
  %loadBr_439b87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b87 = icmp eq i8 %loadBr_439b87, 1
  br i1 %cmpBr_439b87, label %block_.L_439c2d, label %block_439b8d

block_439b8d:                                     ; preds = %block_.L_439b78
  %loadMem_439b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 33
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 1
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 15
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %RBP.i594
  %1726 = sub i64 %1725, 52
  %1727 = load i64, i64* %PC.i592
  %1728 = add i64 %1727, 4
  store i64 %1728, i64* %PC.i592
  %1729 = inttoptr i64 %1726 to i32*
  %1730 = load i32, i32* %1729
  %1731 = sext i32 %1730 to i64
  store i64 %1731, i64* %RAX.i593, align 8
  store %struct.Memory* %loadMem_439b8d, %struct.Memory** %MEMORY
  %loadMem_439b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 1
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 5
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RAX.i590
  %1742 = add i64 %1741, 12099168
  %1743 = load i64, i64* %PC.i589
  %1744 = add i64 %1743, 8
  store i64 %1744, i64* %PC.i589
  %1745 = inttoptr i64 %1742 to i8*
  %1746 = load i8, i8* %1745
  %1747 = zext i8 %1746 to i64
  store i64 %1747, i64* %RCX.i591, align 8
  store %struct.Memory* %loadMem_439b91, %struct.Memory** %MEMORY
  %loadMem_439b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 33
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 5
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %ECX.i588 = bitcast %union.anon* %1753 to i32*
  %1754 = load i32, i32* %ECX.i588
  %1755 = zext i32 %1754 to i64
  %1756 = load i64, i64* %PC.i587
  %1757 = add i64 %1756, 3
  store i64 %1757, i64* %PC.i587
  %1758 = sub i32 %1754, 1
  %1759 = icmp ult i32 %1754, 1
  %1760 = zext i1 %1759 to i8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1760, i8* %1761, align 1
  %1762 = and i32 %1758, 255
  %1763 = call i32 @llvm.ctpop.i32(i32 %1762)
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  %1766 = xor i8 %1765, 1
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1766, i8* %1767, align 1
  %1768 = xor i64 1, %1755
  %1769 = trunc i64 %1768 to i32
  %1770 = xor i32 %1769, %1758
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1773, i8* %1774, align 1
  %1775 = icmp eq i32 %1758, 0
  %1776 = zext i1 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1776, i8* %1777, align 1
  %1778 = lshr i32 %1758, 31
  %1779 = trunc i32 %1778 to i8
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1779, i8* %1780, align 1
  %1781 = lshr i32 %1754, 31
  %1782 = xor i32 %1778, %1781
  %1783 = add i32 %1782, %1781
  %1784 = icmp eq i32 %1783, 2
  %1785 = zext i1 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1785, i8* %1786, align 1
  store %struct.Memory* %loadMem_439b99, %struct.Memory** %MEMORY
  %loadMem_439b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %PC.i586
  %1791 = add i64 %1790, 27
  %1792 = load i64, i64* %PC.i586
  %1793 = add i64 %1792, 6
  %1794 = load i64, i64* %PC.i586
  %1795 = add i64 %1794, 6
  store i64 %1795, i64* %PC.i586
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1797 = load i8, i8* %1796, align 1
  store i8 %1797, i8* %BRANCH_TAKEN, align 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1799 = icmp ne i8 %1797, 0
  %1800 = select i1 %1799, i64 %1791, i64 %1793
  store i64 %1800, i64* %1798, align 8
  store %struct.Memory* %loadMem_439b9c, %struct.Memory** %MEMORY
  %loadBr_439b9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439b9c = icmp eq i8 %loadBr_439b9c, 1
  br i1 %cmpBr_439b9c, label %block_.L_439bb7, label %block_439ba2

block_439ba2:                                     ; preds = %block_439b8d
  %loadMem_439ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 33
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 1
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 15
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %1809 to i64*
  %1810 = load i64, i64* %RBP.i585
  %1811 = sub i64 %1810, 52
  %1812 = load i64, i64* %PC.i583
  %1813 = add i64 %1812, 4
  store i64 %1813, i64* %PC.i583
  %1814 = inttoptr i64 %1811 to i32*
  %1815 = load i32, i32* %1814
  %1816 = sext i32 %1815 to i64
  store i64 %1816, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_439ba2, %struct.Memory** %MEMORY
  %loadMem_439ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 1
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 5
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RCX.i582 = bitcast %union.anon* %1825 to i64*
  %1826 = load i64, i64* %RAX.i581
  %1827 = add i64 %1826, 12099168
  %1828 = load i64, i64* %PC.i580
  %1829 = add i64 %1828, 8
  store i64 %1829, i64* %PC.i580
  %1830 = inttoptr i64 %1827 to i8*
  %1831 = load i8, i8* %1830
  %1832 = zext i8 %1831 to i64
  store i64 %1832, i64* %RCX.i582, align 8
  store %struct.Memory* %loadMem_439ba6, %struct.Memory** %MEMORY
  %loadMem_439bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1835 to i64*
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 5
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %ECX.i579 = bitcast %union.anon* %1838 to i32*
  %1839 = load i32, i32* %ECX.i579
  %1840 = zext i32 %1839 to i64
  %1841 = load i64, i64* %PC.i578
  %1842 = add i64 %1841, 3
  store i64 %1842, i64* %PC.i578
  %1843 = sub i32 %1839, 2
  %1844 = icmp ult i32 %1839, 2
  %1845 = zext i1 %1844 to i8
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1845, i8* %1846, align 1
  %1847 = and i32 %1843, 255
  %1848 = call i32 @llvm.ctpop.i32(i32 %1847)
  %1849 = trunc i32 %1848 to i8
  %1850 = and i8 %1849, 1
  %1851 = xor i8 %1850, 1
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1851, i8* %1852, align 1
  %1853 = xor i64 2, %1840
  %1854 = trunc i64 %1853 to i32
  %1855 = xor i32 %1854, %1843
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1858, i8* %1859, align 1
  %1860 = icmp eq i32 %1843, 0
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1861, i8* %1862, align 1
  %1863 = lshr i32 %1843, 31
  %1864 = trunc i32 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1864, i8* %1865, align 1
  %1866 = lshr i32 %1839, 31
  %1867 = xor i32 %1863, %1866
  %1868 = add i32 %1867, %1866
  %1869 = icmp eq i32 %1868, 2
  %1870 = zext i1 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1870, i8* %1871, align 1
  store %struct.Memory* %loadMem_439bae, %struct.Memory** %MEMORY
  %loadMem_439bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %PC.i577
  %1876 = add i64 %1875, 124
  %1877 = load i64, i64* %PC.i577
  %1878 = add i64 %1877, 6
  %1879 = load i64, i64* %PC.i577
  %1880 = add i64 %1879, 6
  store i64 %1880, i64* %PC.i577
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1882 = load i8, i8* %1881, align 1
  %1883 = icmp eq i8 %1882, 0
  %1884 = zext i1 %1883 to i8
  store i8 %1884, i8* %BRANCH_TAKEN, align 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1886 = select i1 %1883, i64 %1876, i64 %1878
  store i64 %1886, i64* %1885, align 8
  store %struct.Memory* %loadMem_439bb1, %struct.Memory** %MEMORY
  %loadBr_439bb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439bb1 = icmp eq i8 %loadBr_439bb1, 1
  br i1 %cmpBr_439bb1, label %block_.L_439c2d, label %block_.L_439bb7

block_.L_439bb7:                                  ; preds = %block_439ba2, %block_439b8d
  %loadMem_439bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 33
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1890, i64 0, i64 0
  %YMM0.i576 = bitcast %union.VectorReg* %1891 to %"class.std::bitset"*
  %1892 = bitcast %"class.std::bitset"* %YMM0.i576 to i8*
  %1893 = load i64, i64* %PC.i575
  %1894 = add i64 %1893, ptrtoint (%G_0xa9451__rip__type* @G_0xa9451__rip_ to i64)
  %1895 = load i64, i64* %PC.i575
  %1896 = add i64 %1895, 8
  store i64 %1896, i64* %PC.i575
  %1897 = inttoptr i64 %1894 to double*
  %1898 = load double, double* %1897
  %1899 = bitcast i8* %1892 to double*
  store double %1898, double* %1899, align 1
  %1900 = getelementptr inbounds i8, i8* %1892, i64 8
  %1901 = bitcast i8* %1900 to double*
  store double 0.000000e+00, double* %1901, align 1
  store %struct.Memory* %loadMem_439bb7, %struct.Memory** %MEMORY
  %loadMem_439bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1904 to i64*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 1
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 15
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %RBP.i574
  %1912 = sub i64 %1911, 16
  %1913 = load i64, i64* %PC.i572
  %1914 = add i64 %1913, 4
  store i64 %1914, i64* %PC.i572
  %1915 = inttoptr i64 %1912 to i64*
  %1916 = load i64, i64* %1915
  store i64 %1916, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_439bbf, %struct.Memory** %MEMORY
  %loadMem_439bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 5
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RBP.i571
  %1927 = sub i64 %1926, 52
  %1928 = load i64, i64* %PC.i569
  %1929 = add i64 %1928, 4
  store i64 %1929, i64* %PC.i569
  %1930 = inttoptr i64 %1927 to i32*
  %1931 = load i32, i32* %1930
  %1932 = sext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_439bc3, %struct.Memory** %MEMORY
  %loadMem_439bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 5
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %1938 to i64*
  %1939 = load i64, i64* %RCX.i568
  %1940 = load i64, i64* %PC.i567
  %1941 = add i64 %1940, 4
  store i64 %1941, i64* %PC.i567
  %1942 = sext i64 %1939 to i128
  %1943 = and i128 %1942, -18446744073709551616
  %1944 = zext i64 %1939 to i128
  %1945 = or i128 %1943, %1944
  %1946 = mul i128 48, %1945
  %1947 = trunc i128 %1946 to i64
  store i64 %1947, i64* %RCX.i568, align 8
  %1948 = sext i64 %1947 to i128
  %1949 = icmp ne i128 %1948, %1946
  %1950 = zext i1 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1950, i8* %1951, align 1
  %1952 = trunc i128 %1946 to i32
  %1953 = and i32 %1952, 255
  %1954 = call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = xor i8 %1956, 1
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1957, i8* %1958, align 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1959, align 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1960, align 1
  %1961 = lshr i64 %1947, 63
  %1962 = trunc i64 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1962, i8* %1963, align 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1950, i8* %1964, align 1
  store %struct.Memory* %loadMem_439bc7, %struct.Memory** %MEMORY
  %loadMem_439bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 33
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1967 to i64*
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 1
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 5
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %1973 to i64*
  %1974 = load i64, i64* %RAX.i565
  %1975 = load i64, i64* %RCX.i566
  %1976 = load i64, i64* %PC.i564
  %1977 = add i64 %1976, 3
  store i64 %1977, i64* %PC.i564
  %1978 = add i64 %1975, %1974
  store i64 %1978, i64* %RAX.i565, align 8
  %1979 = icmp ult i64 %1978, %1974
  %1980 = icmp ult i64 %1978, %1975
  %1981 = or i1 %1979, %1980
  %1982 = zext i1 %1981 to i8
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1982, i8* %1983, align 1
  %1984 = trunc i64 %1978 to i32
  %1985 = and i32 %1984, 255
  %1986 = call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1989, i8* %1990, align 1
  %1991 = xor i64 %1975, %1974
  %1992 = xor i64 %1991, %1978
  %1993 = lshr i64 %1992, 4
  %1994 = trunc i64 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1995, i8* %1996, align 1
  %1997 = icmp eq i64 %1978, 0
  %1998 = zext i1 %1997 to i8
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1998, i8* %1999, align 1
  %2000 = lshr i64 %1978, 63
  %2001 = trunc i64 %2000 to i8
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2001, i8* %2002, align 1
  %2003 = lshr i64 %1974, 63
  %2004 = lshr i64 %1975, 63
  %2005 = xor i64 %2000, %2003
  %2006 = xor i64 %2000, %2004
  %2007 = add i64 %2005, %2006
  %2008 = icmp eq i64 %2007, 2
  %2009 = zext i1 %2008 to i8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2009, i8* %2010, align 1
  store %struct.Memory* %loadMem_439bcb, %struct.Memory** %MEMORY
  %loadMem_439bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 1
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2017, i64 0, i64 1
  %YMM1.i563 = bitcast %union.VectorReg* %2018 to %"class.std::bitset"*
  %2019 = bitcast %"class.std::bitset"* %YMM1.i563 to i8*
  %2020 = load i64, i64* %RAX.i562
  %2021 = load i64, i64* %PC.i561
  %2022 = add i64 %2021, 4
  store i64 %2022, i64* %PC.i561
  %2023 = inttoptr i64 %2020 to float*
  %2024 = load float, float* %2023
  %2025 = fpext float %2024 to double
  %2026 = bitcast i8* %2019 to double*
  store double %2025, double* %2026, align 1
  store %struct.Memory* %loadMem_439bce, %struct.Memory** %MEMORY
  %loadMem_439bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 33
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2030, i64 0, i64 0
  %XMM0.i556 = bitcast %union.VectorReg* %2031 to %union.vec128_t*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2032, i64 0, i64 1
  %XMM1.i557 = bitcast %union.VectorReg* %2033 to %union.vec128_t*
  %2034 = bitcast %union.vec128_t* %XMM1.i557 to i8*
  %2035 = bitcast %union.vec128_t* %XMM0.i556 to i8*
  %2036 = load i64, i64* %PC.i555
  %2037 = add i64 %2036, 4
  store i64 %2037, i64* %PC.i555
  %2038 = bitcast i8* %2034 to double*
  %2039 = load double, double* %2038, align 1
  %2040 = bitcast i8* %2035 to double*
  %2041 = load double, double* %2040, align 1
  %2042 = fcmp uno double %2039, %2041
  br i1 %2042, label %2043, label %2055

; <label>:2043:                                   ; preds = %block_.L_439bb7
  %2044 = fadd double %2039, %2041
  %2045 = bitcast double %2044 to i64
  %2046 = and i64 %2045, 9221120237041090560
  %2047 = icmp eq i64 %2046, 9218868437227405312
  %2048 = and i64 %2045, 2251799813685247
  %2049 = icmp ne i64 %2048, 0
  %2050 = and i1 %2047, %2049
  br i1 %2050, label %2051, label %2061

; <label>:2051:                                   ; preds = %2043
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2053 = load i64, i64* %2052, align 8
  %2054 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2053, %struct.Memory* %loadMem_439bd2)
  br label %routine_ucomisd__xmm0___xmm1.exit558

; <label>:2055:                                   ; preds = %block_.L_439bb7
  %2056 = fcmp ogt double %2039, %2041
  br i1 %2056, label %2061, label %2057

; <label>:2057:                                   ; preds = %2055
  %2058 = fcmp olt double %2039, %2041
  br i1 %2058, label %2061, label %2059

; <label>:2059:                                   ; preds = %2057
  %2060 = fcmp oeq double %2039, %2041
  br i1 %2060, label %2061, label %2068

; <label>:2061:                                   ; preds = %2059, %2057, %2055, %2043
  %2062 = phi i8 [ 0, %2055 ], [ 0, %2057 ], [ 1, %2059 ], [ 1, %2043 ]
  %2063 = phi i8 [ 0, %2055 ], [ 0, %2057 ], [ 0, %2059 ], [ 1, %2043 ]
  %2064 = phi i8 [ 0, %2055 ], [ 1, %2057 ], [ 0, %2059 ], [ 1, %2043 ]
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2062, i8* %2065, align 1
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2063, i8* %2066, align 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2064, i8* %2067, align 1
  br label %2068

; <label>:2068:                                   ; preds = %2061, %2059
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2069, align 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2070, align 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2071, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit558

routine_ucomisd__xmm0___xmm1.exit558:             ; preds = %2051, %2068
  %2072 = phi %struct.Memory* [ %2054, %2051 ], [ %loadMem_439bd2, %2068 ]
  store %struct.Memory* %2072, %struct.Memory** %MEMORY
  %loadMem_439bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2075 to i64*
  %2076 = load i64, i64* %PC.i554
  %2077 = add i64 %2076, 40
  %2078 = load i64, i64* %PC.i554
  %2079 = add i64 %2078, 6
  %2080 = load i64, i64* %PC.i554
  %2081 = add i64 %2080, 6
  store i64 %2081, i64* %PC.i554
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2083 = load i8, i8* %2082, align 1
  %2084 = icmp eq i8 %2083, 0
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %BRANCH_TAKEN, align 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2087 = select i1 %2084, i64 %2077, i64 %2079
  store i64 %2087, i64* %2086, align 8
  store %struct.Memory* %loadMem_439bd6, %struct.Memory** %MEMORY
  %loadBr_439bd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439bd6 = icmp eq i8 %loadBr_439bd6, 1
  br i1 %cmpBr_439bd6, label %block_.L_439bfe, label %block_439bdc

block_439bdc:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit558
  %loadMem_439bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %PC.i553
  %2092 = add i64 %2091, 34
  %2093 = load i64, i64* %PC.i553
  %2094 = add i64 %2093, 6
  %2095 = load i64, i64* %PC.i553
  %2096 = add i64 %2095, 6
  store i64 %2096, i64* %PC.i553
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2098 = load i8, i8* %2097, align 1
  store i8 %2098, i8* %BRANCH_TAKEN, align 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2100 = icmp ne i8 %2098, 0
  %2101 = select i1 %2100, i64 %2092, i64 %2094
  store i64 %2101, i64* %2099, align 8
  store %struct.Memory* %loadMem_439bdc, %struct.Memory** %MEMORY
  %loadBr_439bdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439bdc = icmp eq i8 %loadBr_439bdc, 1
  br i1 %cmpBr_439bdc, label %block_.L_439bfe, label %block_439be2

block_439be2:                                     ; preds = %block_439bdc
  %loadMem_439be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 11
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RDI.i552 = bitcast %union.anon* %2107 to i64*
  %2108 = load i64, i64* %PC.i551
  %2109 = add i64 %2108, 10
  store i64 %2109, i64* %PC.i551
  store i64 ptrtoint (%G__0x57d9d0_type* @G__0x57d9d0 to i64), i64* %RDI.i552, align 8
  store %struct.Memory* %loadMem_439be2, %struct.Memory** %MEMORY
  %loadMem_439bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 9
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RSI.i549 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 15
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RBP.i550
  %2120 = sub i64 %2119, 52
  %2121 = load i64, i64* %PC.i548
  %2122 = add i64 %2121, 3
  store i64 %2122, i64* %PC.i548
  %2123 = inttoptr i64 %2120 to i32*
  %2124 = load i32, i32* %2123
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RSI.i549, align 8
  store %struct.Memory* %loadMem_439bec, %struct.Memory** %MEMORY
  %loadMem_439bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 1
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %2132 = bitcast %union.anon* %2131 to %struct.anon.2*
  %AL.i547 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2132, i32 0, i32 0
  %2133 = load i64, i64* %PC.i546
  %2134 = add i64 %2133, 2
  store i64 %2134, i64* %PC.i546
  store i8 0, i8* %AL.i547, align 1
  store %struct.Memory* %loadMem_439bef, %struct.Memory** %MEMORY
  %loadMem1_439bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %PC.i545
  %2139 = add i64 %2138, 98751
  %2140 = load i64, i64* %PC.i545
  %2141 = add i64 %2140, 5
  %2142 = load i64, i64* %PC.i545
  %2143 = add i64 %2142, 5
  store i64 %2143, i64* %PC.i545
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2145 = load i64, i64* %2144, align 8
  %2146 = add i64 %2145, -8
  %2147 = inttoptr i64 %2146 to i64*
  store i64 %2141, i64* %2147
  store i64 %2146, i64* %2144, align 8
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2139, i64* %2148, align 8
  store %struct.Memory* %loadMem1_439bf1, %struct.Memory** %MEMORY
  %loadMem2_439bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439bf1 = load i64, i64* %3
  %call2_439bf1 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439bf1, %struct.Memory* %loadMem2_439bf1)
  store %struct.Memory* %call2_439bf1, %struct.Memory** %MEMORY
  %loadMem_439bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 1
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %EAX.i543 = bitcast %union.anon* %2154 to i32*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 15
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %2157 to i64*
  %2158 = load i64, i64* %RBP.i544
  %2159 = sub i64 %2158, 68
  %2160 = load i32, i32* %EAX.i543
  %2161 = zext i32 %2160 to i64
  %2162 = load i64, i64* %PC.i542
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC.i542
  %2164 = inttoptr i64 %2159 to i32*
  store i32 %2160, i32* %2164
  store %struct.Memory* %loadMem_439bf6, %struct.Memory** %MEMORY
  %loadMem_439bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %PC.i541
  %2169 = add i64 %2168, 47
  %2170 = load i64, i64* %PC.i541
  %2171 = add i64 %2170, 5
  store i64 %2171, i64* %PC.i541
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2169, i64* %2172, align 8
  store %struct.Memory* %loadMem_439bf9, %struct.Memory** %MEMORY
  br label %block_.L_439c28

block_.L_439bfe:                                  ; preds = %block_439bdc, %routine_ucomisd__xmm0___xmm1.exit558
  %loadMem_439bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 11
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %RDI.i540 = bitcast %union.anon* %2178 to i64*
  %2179 = load i64, i64* %PC.i539
  %2180 = add i64 %2179, 10
  store i64 %2180, i64* %PC.i539
  store i64 ptrtoint (%G__0x57d9da_type* @G__0x57d9da to i64), i64* %RDI.i540, align 8
  store %struct.Memory* %loadMem_439bfe, %struct.Memory** %MEMORY
  %loadMem_439c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 9
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RSI.i537 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 15
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RBP.i538
  %2191 = sub i64 %2190, 52
  %2192 = load i64, i64* %PC.i536
  %2193 = add i64 %2192, 3
  store i64 %2193, i64* %PC.i536
  %2194 = inttoptr i64 %2191 to i32*
  %2195 = load i32, i32* %2194
  %2196 = zext i32 %2195 to i64
  store i64 %2196, i64* %RSI.i537, align 8
  store %struct.Memory* %loadMem_439c08, %struct.Memory** %MEMORY
  %loadMem_439c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 1
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 15
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %2205 to i64*
  %2206 = load i64, i64* %RBP.i535
  %2207 = sub i64 %2206, 16
  %2208 = load i64, i64* %PC.i533
  %2209 = add i64 %2208, 4
  store i64 %2209, i64* %PC.i533
  %2210 = inttoptr i64 %2207 to i64*
  %2211 = load i64, i64* %2210
  store i64 %2211, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_439c0b, %struct.Memory** %MEMORY
  %loadMem_439c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 5
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RBP.i532
  %2222 = sub i64 %2221, 52
  %2223 = load i64, i64* %PC.i530
  %2224 = add i64 %2223, 4
  store i64 %2224, i64* %PC.i530
  %2225 = inttoptr i64 %2222 to i32*
  %2226 = load i32, i32* %2225
  %2227 = sext i32 %2226 to i64
  store i64 %2227, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_439c0f, %struct.Memory** %MEMORY
  %loadMem_439c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 5
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %RCX.i529
  %2235 = load i64, i64* %PC.i528
  %2236 = add i64 %2235, 4
  store i64 %2236, i64* %PC.i528
  %2237 = sext i64 %2234 to i128
  %2238 = and i128 %2237, -18446744073709551616
  %2239 = zext i64 %2234 to i128
  %2240 = or i128 %2238, %2239
  %2241 = mul i128 48, %2240
  %2242 = trunc i128 %2241 to i64
  store i64 %2242, i64* %RCX.i529, align 8
  %2243 = sext i64 %2242 to i128
  %2244 = icmp ne i128 %2243, %2241
  %2245 = zext i1 %2244 to i8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2245, i8* %2246, align 1
  %2247 = trunc i128 %2241 to i32
  %2248 = and i32 %2247, 255
  %2249 = call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2252, i8* %2253, align 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2254, align 1
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2255, align 1
  %2256 = lshr i64 %2242, 63
  %2257 = trunc i64 %2256 to i8
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2257, i8* %2258, align 1
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2245, i8* %2259, align 1
  store %struct.Memory* %loadMem_439c13, %struct.Memory** %MEMORY
  %loadMem_439c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 1
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 5
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %2268 to i64*
  %2269 = load i64, i64* %RAX.i526
  %2270 = load i64, i64* %RCX.i527
  %2271 = load i64, i64* %PC.i525
  %2272 = add i64 %2271, 3
  store i64 %2272, i64* %PC.i525
  %2273 = add i64 %2270, %2269
  store i64 %2273, i64* %RAX.i526, align 8
  %2274 = icmp ult i64 %2273, %2269
  %2275 = icmp ult i64 %2273, %2270
  %2276 = or i1 %2274, %2275
  %2277 = zext i1 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2277, i8* %2278, align 1
  %2279 = trunc i64 %2273 to i32
  %2280 = and i32 %2279, 255
  %2281 = call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2284, i8* %2285, align 1
  %2286 = xor i64 %2270, %2269
  %2287 = xor i64 %2286, %2273
  %2288 = lshr i64 %2287, 4
  %2289 = trunc i64 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2290, i8* %2291, align 1
  %2292 = icmp eq i64 %2273, 0
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2293, i8* %2294, align 1
  %2295 = lshr i64 %2273, 63
  %2296 = trunc i64 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2296, i8* %2297, align 1
  %2298 = lshr i64 %2269, 63
  %2299 = lshr i64 %2270, 63
  %2300 = xor i64 %2295, %2298
  %2301 = xor i64 %2295, %2299
  %2302 = add i64 %2300, %2301
  %2303 = icmp eq i64 %2302, 2
  %2304 = zext i1 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2304, i8* %2305, align 1
  store %struct.Memory* %loadMem_439c17, %struct.Memory** %MEMORY
  %loadMem_439c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 33
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 1
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2312, i64 0, i64 0
  %YMM0.i524 = bitcast %union.VectorReg* %2313 to %"class.std::bitset"*
  %2314 = bitcast %"class.std::bitset"* %YMM0.i524 to i8*
  %2315 = load i64, i64* %RAX.i523
  %2316 = load i64, i64* %PC.i522
  %2317 = add i64 %2316, 4
  store i64 %2317, i64* %PC.i522
  %2318 = inttoptr i64 %2315 to float*
  %2319 = load float, float* %2318
  %2320 = fpext float %2319 to double
  %2321 = bitcast i8* %2314 to double*
  store double %2320, double* %2321, align 1
  store %struct.Memory* %loadMem_439c1a, %struct.Memory** %MEMORY
  %loadMem_439c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 1
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %2328 = bitcast %union.anon* %2327 to %struct.anon.2*
  %AL.i521 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2328, i32 0, i32 0
  %2329 = load i64, i64* %PC.i520
  %2330 = add i64 %2329, 2
  store i64 %2330, i64* %PC.i520
  store i8 1, i8* %AL.i521, align 1
  store %struct.Memory* %loadMem_439c1e, %struct.Memory** %MEMORY
  %loadMem1_439c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2333 to i64*
  %2334 = load i64, i64* %PC.i519
  %2335 = add i64 %2334, 98704
  %2336 = load i64, i64* %PC.i519
  %2337 = add i64 %2336, 5
  %2338 = load i64, i64* %PC.i519
  %2339 = add i64 %2338, 5
  store i64 %2339, i64* %PC.i519
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2341 = load i64, i64* %2340, align 8
  %2342 = add i64 %2341, -8
  %2343 = inttoptr i64 %2342 to i64*
  store i64 %2337, i64* %2343
  store i64 %2342, i64* %2340, align 8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2335, i64* %2344, align 8
  store %struct.Memory* %loadMem1_439c20, %struct.Memory** %MEMORY
  %loadMem2_439c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439c20 = load i64, i64* %3
  %call2_439c20 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439c20, %struct.Memory* %loadMem2_439c20)
  store %struct.Memory* %call2_439c20, %struct.Memory** %MEMORY
  %loadMem_439c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 1
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %EAX.i517 = bitcast %union.anon* %2350 to i32*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 15
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RBP.i518 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %RBP.i518
  %2355 = sub i64 %2354, 72
  %2356 = load i32, i32* %EAX.i517
  %2357 = zext i32 %2356 to i64
  %2358 = load i64, i64* %PC.i516
  %2359 = add i64 %2358, 3
  store i64 %2359, i64* %PC.i516
  %2360 = inttoptr i64 %2355 to i32*
  store i32 %2356, i32* %2360
  store %struct.Memory* %loadMem_439c25, %struct.Memory** %MEMORY
  br label %block_.L_439c28

block_.L_439c28:                                  ; preds = %block_.L_439bfe, %block_439be2
  %loadMem_439c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2363 to i64*
  %2364 = load i64, i64* %PC.i515
  %2365 = add i64 %2364, 375
  %2366 = load i64, i64* %PC.i515
  %2367 = add i64 %2366, 5
  store i64 %2367, i64* %PC.i515
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2365, i64* %2368, align 8
  store %struct.Memory* %loadMem_439c28, %struct.Memory** %MEMORY
  br label %block_.L_439d9f

block_.L_439c2d:                                  ; preds = %block_439ba2, %block_.L_439b78
  %loadMem_439c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 33
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 1
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 15
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %2377 to i64*
  %2378 = load i64, i64* %RBP.i514
  %2379 = sub i64 %2378, 8
  %2380 = load i64, i64* %PC.i512
  %2381 = add i64 %2380, 4
  store i64 %2381, i64* %PC.i512
  %2382 = inttoptr i64 %2379 to i64*
  %2383 = load i64, i64* %2382
  store i64 %2383, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_439c2d, %struct.Memory** %MEMORY
  %loadMem_439c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 5
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 15
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %RBP.i511
  %2394 = sub i64 %2393, 52
  %2395 = load i64, i64* %PC.i509
  %2396 = add i64 %2395, 4
  store i64 %2396, i64* %PC.i509
  %2397 = inttoptr i64 %2394 to i32*
  %2398 = load i32, i32* %2397
  %2399 = sext i32 %2398 to i64
  store i64 %2399, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_439c31, %struct.Memory** %MEMORY
  %loadMem_439c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 5
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RCX.i508
  %2407 = load i64, i64* %PC.i507
  %2408 = add i64 %2407, 4
  store i64 %2408, i64* %PC.i507
  %2409 = sext i64 %2406 to i128
  %2410 = and i128 %2409, -18446744073709551616
  %2411 = zext i64 %2406 to i128
  %2412 = or i128 %2410, %2411
  %2413 = mul i128 36, %2412
  %2414 = trunc i128 %2413 to i64
  store i64 %2414, i64* %RCX.i508, align 8
  %2415 = sext i64 %2414 to i128
  %2416 = icmp ne i128 %2415, %2413
  %2417 = zext i1 %2416 to i8
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2417, i8* %2418, align 1
  %2419 = trunc i128 %2413 to i32
  %2420 = and i32 %2419, 255
  %2421 = call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2424, i8* %2425, align 1
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2426, align 1
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2427, align 1
  %2428 = lshr i64 %2414, 63
  %2429 = trunc i64 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2429, i8* %2430, align 1
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2417, i8* %2431, align 1
  store %struct.Memory* %loadMem_439c35, %struct.Memory** %MEMORY
  %loadMem_439c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 5
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %RAX.i505
  %2442 = load i64, i64* %RCX.i506
  %2443 = load i64, i64* %PC.i504
  %2444 = add i64 %2443, 3
  store i64 %2444, i64* %PC.i504
  %2445 = add i64 %2442, %2441
  store i64 %2445, i64* %RAX.i505, align 8
  %2446 = icmp ult i64 %2445, %2441
  %2447 = icmp ult i64 %2445, %2442
  %2448 = or i1 %2446, %2447
  %2449 = zext i1 %2448 to i8
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2449, i8* %2450, align 1
  %2451 = trunc i64 %2445 to i32
  %2452 = and i32 %2451, 255
  %2453 = call i32 @llvm.ctpop.i32(i32 %2452)
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  %2456 = xor i8 %2455, 1
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2456, i8* %2457, align 1
  %2458 = xor i64 %2442, %2441
  %2459 = xor i64 %2458, %2445
  %2460 = lshr i64 %2459, 4
  %2461 = trunc i64 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2462, i8* %2463, align 1
  %2464 = icmp eq i64 %2445, 0
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2465, i8* %2466, align 1
  %2467 = lshr i64 %2445, 63
  %2468 = trunc i64 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2468, i8* %2469, align 1
  %2470 = lshr i64 %2441, 63
  %2471 = lshr i64 %2442, 63
  %2472 = xor i64 %2467, %2470
  %2473 = xor i64 %2467, %2471
  %2474 = add i64 %2472, %2473
  %2475 = icmp eq i64 %2474, 2
  %2476 = zext i1 %2475 to i8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2476, i8* %2477, align 1
  store %struct.Memory* %loadMem_439c39, %struct.Memory** %MEMORY
  %loadMem_439c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %2483 to i64*
  %2484 = load i64, i64* %RAX.i503
  %2485 = add i64 %2484, 28
  %2486 = load i64, i64* %PC.i502
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC.i502
  %2488 = inttoptr i64 %2485 to i8*
  %2489 = load i8, i8* %2488
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2490, align 1
  %2491 = zext i8 %2489 to i32
  %2492 = call i32 @llvm.ctpop.i32(i32 %2491)
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2495, i8* %2496, align 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2497, align 1
  %2498 = icmp eq i8 %2489, 0
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2499, i8* %2500, align 1
  %2501 = lshr i8 %2489, 7
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2501, i8* %2502, align 1
  %2503 = lshr i8 %2489, 7
  %2504 = xor i8 %2501, %2503
  %2505 = add i8 %2504, %2503
  %2506 = icmp eq i8 %2505, 2
  %2507 = zext i1 %2506 to i8
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2507, i8* %2508, align 1
  store %struct.Memory* %loadMem_439c3c, %struct.Memory** %MEMORY
  %loadMem_439c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %PC.i501
  %2513 = add i64 %2512, 76
  %2514 = load i64, i64* %PC.i501
  %2515 = add i64 %2514, 6
  %2516 = load i64, i64* %PC.i501
  %2517 = add i64 %2516, 6
  store i64 %2517, i64* %PC.i501
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2519 = load i8, i8* %2518, align 1
  %2520 = icmp eq i8 %2519, 0
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %BRANCH_TAKEN, align 1
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2523 = select i1 %2520, i64 %2513, i64 %2515
  store i64 %2523, i64* %2522, align 8
  store %struct.Memory* %loadMem_439c40, %struct.Memory** %MEMORY
  %loadBr_439c40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c40 = icmp eq i8 %loadBr_439c40, 1
  br i1 %cmpBr_439c40, label %block_.L_439c8c, label %block_439c46

block_439c46:                                     ; preds = %block_.L_439c2d
  %loadMem_439c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 1
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 15
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RBP.i500
  %2534 = sub i64 %2533, 52
  %2535 = load i64, i64* %PC.i498
  %2536 = add i64 %2535, 4
  store i64 %2536, i64* %PC.i498
  %2537 = inttoptr i64 %2534 to i32*
  %2538 = load i32, i32* %2537
  %2539 = sext i32 %2538 to i64
  store i64 %2539, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_439c46, %struct.Memory** %MEMORY
  %loadMem_439c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 5
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RAX.i496
  %2550 = add i64 %2549, 12099168
  %2551 = load i64, i64* %PC.i495
  %2552 = add i64 %2551, 8
  store i64 %2552, i64* %PC.i495
  %2553 = inttoptr i64 %2550 to i8*
  %2554 = load i8, i8* %2553
  %2555 = zext i8 %2554 to i64
  store i64 %2555, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_439c4a, %struct.Memory** %MEMORY
  %loadMem_439c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 5
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %ECX.i494 = bitcast %union.anon* %2561 to i32*
  %2562 = load i32, i32* %ECX.i494
  %2563 = zext i32 %2562 to i64
  %2564 = load i64, i64* %PC.i493
  %2565 = add i64 %2564, 3
  store i64 %2565, i64* %PC.i493
  %2566 = sub i32 %2562, 1
  %2567 = icmp ult i32 %2562, 1
  %2568 = zext i1 %2567 to i8
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2568, i8* %2569, align 1
  %2570 = and i32 %2566, 255
  %2571 = call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2574, i8* %2575, align 1
  %2576 = xor i64 1, %2563
  %2577 = trunc i64 %2576 to i32
  %2578 = xor i32 %2577, %2566
  %2579 = lshr i32 %2578, 4
  %2580 = trunc i32 %2579 to i8
  %2581 = and i8 %2580, 1
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2581, i8* %2582, align 1
  %2583 = icmp eq i32 %2566, 0
  %2584 = zext i1 %2583 to i8
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2584, i8* %2585, align 1
  %2586 = lshr i32 %2566, 31
  %2587 = trunc i32 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2587, i8* %2588, align 1
  %2589 = lshr i32 %2562, 31
  %2590 = xor i32 %2586, %2589
  %2591 = add i32 %2590, %2589
  %2592 = icmp eq i32 %2591, 2
  %2593 = zext i1 %2592 to i8
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2593, i8* %2594, align 1
  store %struct.Memory* %loadMem_439c52, %struct.Memory** %MEMORY
  %loadMem_439c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2597 to i64*
  %2598 = load i64, i64* %PC.i492
  %2599 = add i64 %2598, 27
  %2600 = load i64, i64* %PC.i492
  %2601 = add i64 %2600, 6
  %2602 = load i64, i64* %PC.i492
  %2603 = add i64 %2602, 6
  store i64 %2603, i64* %PC.i492
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2605 = load i8, i8* %2604, align 1
  store i8 %2605, i8* %BRANCH_TAKEN, align 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2607 = icmp ne i8 %2605, 0
  %2608 = select i1 %2607, i64 %2599, i64 %2601
  store i64 %2608, i64* %2606, align 8
  store %struct.Memory* %loadMem_439c55, %struct.Memory** %MEMORY
  %loadBr_439c55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c55 = icmp eq i8 %loadBr_439c55, 1
  br i1 %cmpBr_439c55, label %block_.L_439c70, label %block_439c5b

block_439c5b:                                     ; preds = %block_439c46
  %loadMem_439c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 1
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 15
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RBP.i491
  %2619 = sub i64 %2618, 52
  %2620 = load i64, i64* %PC.i489
  %2621 = add i64 %2620, 4
  store i64 %2621, i64* %PC.i489
  %2622 = inttoptr i64 %2619 to i32*
  %2623 = load i32, i32* %2622
  %2624 = sext i32 %2623 to i64
  store i64 %2624, i64* %RAX.i490, align 8
  store %struct.Memory* %loadMem_439c5b, %struct.Memory** %MEMORY
  %loadMem_439c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 1
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %RAX.i487
  %2635 = add i64 %2634, 12099168
  %2636 = load i64, i64* %PC.i486
  %2637 = add i64 %2636, 8
  store i64 %2637, i64* %PC.i486
  %2638 = inttoptr i64 %2635 to i8*
  %2639 = load i8, i8* %2638
  %2640 = zext i8 %2639 to i64
  store i64 %2640, i64* %RCX.i488, align 8
  store %struct.Memory* %loadMem_439c5f, %struct.Memory** %MEMORY
  %loadMem_439c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 5
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %ECX.i485 = bitcast %union.anon* %2646 to i32*
  %2647 = load i32, i32* %ECX.i485
  %2648 = zext i32 %2647 to i64
  %2649 = load i64, i64* %PC.i484
  %2650 = add i64 %2649, 3
  store i64 %2650, i64* %PC.i484
  %2651 = sub i32 %2647, 2
  %2652 = icmp ult i32 %2647, 2
  %2653 = zext i1 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2653, i8* %2654, align 1
  %2655 = and i32 %2651, 255
  %2656 = call i32 @llvm.ctpop.i32(i32 %2655)
  %2657 = trunc i32 %2656 to i8
  %2658 = and i8 %2657, 1
  %2659 = xor i8 %2658, 1
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2659, i8* %2660, align 1
  %2661 = xor i64 2, %2648
  %2662 = trunc i64 %2661 to i32
  %2663 = xor i32 %2662, %2651
  %2664 = lshr i32 %2663, 4
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2666, i8* %2667, align 1
  %2668 = icmp eq i32 %2651, 0
  %2669 = zext i1 %2668 to i8
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2669, i8* %2670, align 1
  %2671 = lshr i32 %2651, 31
  %2672 = trunc i32 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2672, i8* %2673, align 1
  %2674 = lshr i32 %2647, 31
  %2675 = xor i32 %2671, %2674
  %2676 = add i32 %2675, %2674
  %2677 = icmp eq i32 %2676, 2
  %2678 = zext i1 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2678, i8* %2679, align 1
  store %struct.Memory* %loadMem_439c67, %struct.Memory** %MEMORY
  %loadMem_439c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 33
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %PC.i483
  %2684 = add i64 %2683, 34
  %2685 = load i64, i64* %PC.i483
  %2686 = add i64 %2685, 6
  %2687 = load i64, i64* %PC.i483
  %2688 = add i64 %2687, 6
  store i64 %2688, i64* %PC.i483
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2690 = load i8, i8* %2689, align 1
  %2691 = icmp eq i8 %2690, 0
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %BRANCH_TAKEN, align 1
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2694 = select i1 %2691, i64 %2684, i64 %2686
  store i64 %2694, i64* %2693, align 8
  store %struct.Memory* %loadMem_439c6a, %struct.Memory** %MEMORY
  %loadBr_439c6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439c6a = icmp eq i8 %loadBr_439c6a, 1
  br i1 %cmpBr_439c6a, label %block_.L_439c8c, label %block_.L_439c70

block_.L_439c70:                                  ; preds = %block_439c5b, %block_439c46
  %loadMem_439c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 11
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RDI.i482 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %PC.i481
  %2702 = add i64 %2701, 10
  store i64 %2702, i64* %PC.i481
  store i64 ptrtoint (%G__0x57da01_type* @G__0x57da01 to i64), i64* %RDI.i482, align 8
  store %struct.Memory* %loadMem_439c70, %struct.Memory** %MEMORY
  %loadMem_439c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 9
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RSI.i479 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 15
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %2711 to i64*
  %2712 = load i64, i64* %RBP.i480
  %2713 = sub i64 %2712, 52
  %2714 = load i64, i64* %PC.i478
  %2715 = add i64 %2714, 3
  store i64 %2715, i64* %PC.i478
  %2716 = inttoptr i64 %2713 to i32*
  %2717 = load i32, i32* %2716
  %2718 = zext i32 %2717 to i64
  store i64 %2718, i64* %RSI.i479, align 8
  store %struct.Memory* %loadMem_439c7a, %struct.Memory** %MEMORY
  %loadMem_439c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 33
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 1
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %2725 = bitcast %union.anon* %2724 to %struct.anon.2*
  %AL.i477 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2725, i32 0, i32 0
  %2726 = load i64, i64* %PC.i476
  %2727 = add i64 %2726, 2
  store i64 %2727, i64* %PC.i476
  store i8 0, i8* %AL.i477, align 1
  store %struct.Memory* %loadMem_439c7d, %struct.Memory** %MEMORY
  %loadMem1_439c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %PC.i475
  %2732 = add i64 %2731, 98609
  %2733 = load i64, i64* %PC.i475
  %2734 = add i64 %2733, 5
  %2735 = load i64, i64* %PC.i475
  %2736 = add i64 %2735, 5
  store i64 %2736, i64* %PC.i475
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2738 = load i64, i64* %2737, align 8
  %2739 = add i64 %2738, -8
  %2740 = inttoptr i64 %2739 to i64*
  store i64 %2734, i64* %2740
  store i64 %2739, i64* %2737, align 8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2732, i64* %2741, align 8
  store %struct.Memory* %loadMem1_439c7f, %struct.Memory** %MEMORY
  %loadMem2_439c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439c7f = load i64, i64* %3
  %call2_439c7f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439c7f, %struct.Memory* %loadMem2_439c7f)
  store %struct.Memory* %call2_439c7f, %struct.Memory** %MEMORY
  %loadMem_439c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %EAX.i473 = bitcast %union.anon* %2747 to i32*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i474
  %2752 = sub i64 %2751, 76
  %2753 = load i32, i32* %EAX.i473
  %2754 = zext i32 %2753 to i64
  %2755 = load i64, i64* %PC.i472
  %2756 = add i64 %2755, 3
  store i64 %2756, i64* %PC.i472
  %2757 = inttoptr i64 %2752 to i32*
  store i32 %2753, i32* %2757
  store %struct.Memory* %loadMem_439c84, %struct.Memory** %MEMORY
  %loadMem_439c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %2760 to i64*
  %2761 = load i64, i64* %PC.i471
  %2762 = add i64 %2761, 275
  %2763 = load i64, i64* %PC.i471
  %2764 = add i64 %2763, 5
  store i64 %2764, i64* %PC.i471
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2762, i64* %2765, align 8
  store %struct.Memory* %loadMem_439c87, %struct.Memory** %MEMORY
  br label %block_.L_439d9a

block_.L_439c8c:                                  ; preds = %block_439c5b, %block_.L_439c2d
  %loadMem_439c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 1
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 15
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %RBP.i470
  %2776 = sub i64 %2775, 8
  %2777 = load i64, i64* %PC.i468
  %2778 = add i64 %2777, 4
  store i64 %2778, i64* %PC.i468
  %2779 = inttoptr i64 %2776 to i64*
  %2780 = load i64, i64* %2779
  store i64 %2780, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_439c8c, %struct.Memory** %MEMORY
  %loadMem_439c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 5
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %2786 to i64*
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 15
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %2789 to i64*
  %2790 = load i64, i64* %RBP.i467
  %2791 = sub i64 %2790, 52
  %2792 = load i64, i64* %PC.i465
  %2793 = add i64 %2792, 4
  store i64 %2793, i64* %PC.i465
  %2794 = inttoptr i64 %2791 to i32*
  %2795 = load i32, i32* %2794
  %2796 = sext i32 %2795 to i64
  store i64 %2796, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_439c90, %struct.Memory** %MEMORY
  %loadMem_439c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 33
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2799 to i64*
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 5
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %RCX.i464
  %2804 = load i64, i64* %PC.i463
  %2805 = add i64 %2804, 4
  store i64 %2805, i64* %PC.i463
  %2806 = sext i64 %2803 to i128
  %2807 = and i128 %2806, -18446744073709551616
  %2808 = zext i64 %2803 to i128
  %2809 = or i128 %2807, %2808
  %2810 = mul i128 36, %2809
  %2811 = trunc i128 %2810 to i64
  store i64 %2811, i64* %RCX.i464, align 8
  %2812 = sext i64 %2811 to i128
  %2813 = icmp ne i128 %2812, %2810
  %2814 = zext i1 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2814, i8* %2815, align 1
  %2816 = trunc i128 %2810 to i32
  %2817 = and i32 %2816, 255
  %2818 = call i32 @llvm.ctpop.i32(i32 %2817)
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  %2821 = xor i8 %2820, 1
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2821, i8* %2822, align 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2823, align 1
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2824, align 1
  %2825 = lshr i64 %2811, 63
  %2826 = trunc i64 %2825 to i8
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2826, i8* %2827, align 1
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2814, i8* %2828, align 1
  store %struct.Memory* %loadMem_439c94, %struct.Memory** %MEMORY
  %loadMem_439c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 1
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %2834 to i64*
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2836 = getelementptr inbounds %struct.GPR, %struct.GPR* %2835, i32 0, i32 5
  %2837 = getelementptr inbounds %struct.Reg, %struct.Reg* %2836, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %2837 to i64*
  %2838 = load i64, i64* %RAX.i461
  %2839 = load i64, i64* %RCX.i462
  %2840 = load i64, i64* %PC.i460
  %2841 = add i64 %2840, 3
  store i64 %2841, i64* %PC.i460
  %2842 = add i64 %2839, %2838
  store i64 %2842, i64* %RAX.i461, align 8
  %2843 = icmp ult i64 %2842, %2838
  %2844 = icmp ult i64 %2842, %2839
  %2845 = or i1 %2843, %2844
  %2846 = zext i1 %2845 to i8
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2846, i8* %2847, align 1
  %2848 = trunc i64 %2842 to i32
  %2849 = and i32 %2848, 255
  %2850 = call i32 @llvm.ctpop.i32(i32 %2849)
  %2851 = trunc i32 %2850 to i8
  %2852 = and i8 %2851, 1
  %2853 = xor i8 %2852, 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2853, i8* %2854, align 1
  %2855 = xor i64 %2839, %2838
  %2856 = xor i64 %2855, %2842
  %2857 = lshr i64 %2856, 4
  %2858 = trunc i64 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2859, i8* %2860, align 1
  %2861 = icmp eq i64 %2842, 0
  %2862 = zext i1 %2861 to i8
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2862, i8* %2863, align 1
  %2864 = lshr i64 %2842, 63
  %2865 = trunc i64 %2864 to i8
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2865, i8* %2866, align 1
  %2867 = lshr i64 %2838, 63
  %2868 = lshr i64 %2839, 63
  %2869 = xor i64 %2864, %2867
  %2870 = xor i64 %2864, %2868
  %2871 = add i64 %2869, %2870
  %2872 = icmp eq i64 %2871, 2
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2873, i8* %2874, align 1
  store %struct.Memory* %loadMem_439c98, %struct.Memory** %MEMORY
  %loadMem_439c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 1
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 7
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RAX.i458
  %2885 = add i64 %2884, 28
  %2886 = load i64, i64* %PC.i457
  %2887 = add i64 %2886, 4
  store i64 %2887, i64* %PC.i457
  %2888 = inttoptr i64 %2885 to i8*
  %2889 = load i8, i8* %2888
  %2890 = sext i8 %2889 to i64
  %2891 = and i64 %2890, 4294967295
  store i64 %2891, i64* %RDX.i459, align 8
  store %struct.Memory* %loadMem_439c9b, %struct.Memory** %MEMORY
  %loadMem_439c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 33
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 7
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2897 to i32*
  %2898 = load i32, i32* %EDX.i
  %2899 = zext i32 %2898 to i64
  %2900 = load i64, i64* %PC.i456
  %2901 = add i64 %2900, 3
  store i64 %2901, i64* %PC.i456
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2902, align 1
  %2903 = and i32 %2898, 255
  %2904 = call i32 @llvm.ctpop.i32(i32 %2903)
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  %2907 = xor i8 %2906, 1
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2907, i8* %2908, align 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2909, align 1
  %2910 = icmp eq i32 %2898, 0
  %2911 = zext i1 %2910 to i8
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2911, i8* %2912, align 1
  %2913 = lshr i32 %2898, 31
  %2914 = trunc i32 %2913 to i8
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2914, i8* %2915, align 1
  %2916 = lshr i32 %2898, 31
  %2917 = xor i32 %2913, %2916
  %2918 = add i32 %2917, %2916
  %2919 = icmp eq i32 %2918, 2
  %2920 = zext i1 %2919 to i8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2920, i8* %2921, align 1
  store %struct.Memory* %loadMem_439c9f, %struct.Memory** %MEMORY
  %loadMem_439ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %PC.i455
  %2926 = add i64 %2925, 55
  %2927 = load i64, i64* %PC.i455
  %2928 = add i64 %2927, 6
  %2929 = load i64, i64* %PC.i455
  %2930 = add i64 %2929, 6
  store i64 %2930, i64* %PC.i455
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2932 = load i8, i8* %2931, align 1
  store i8 %2932, i8* %BRANCH_TAKEN, align 1
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2934 = icmp ne i8 %2932, 0
  %2935 = select i1 %2934, i64 %2926, i64 %2928
  store i64 %2935, i64* %2933, align 8
  store %struct.Memory* %loadMem_439ca2, %struct.Memory** %MEMORY
  %loadBr_439ca2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ca2 = icmp eq i8 %loadBr_439ca2, 1
  br i1 %cmpBr_439ca2, label %block_.L_439cd9, label %block_439ca8

block_439ca8:                                     ; preds = %block_.L_439c8c
  %loadMem_439ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 33
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 1
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 15
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %2944 to i64*
  %2945 = load i64, i64* %RBP.i454
  %2946 = sub i64 %2945, 52
  %2947 = load i64, i64* %PC.i452
  %2948 = add i64 %2947, 4
  store i64 %2948, i64* %PC.i452
  %2949 = inttoptr i64 %2946 to i32*
  %2950 = load i32, i32* %2949
  %2951 = sext i32 %2950 to i64
  store i64 %2951, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_439ca8, %struct.Memory** %MEMORY
  %loadMem_439cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 1
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 5
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %2960 to i64*
  %2961 = load i64, i64* %RAX.i450
  %2962 = add i64 %2961, 12099168
  %2963 = load i64, i64* %PC.i449
  %2964 = add i64 %2963, 8
  store i64 %2964, i64* %PC.i449
  %2965 = inttoptr i64 %2962 to i8*
  %2966 = load i8, i8* %2965
  %2967 = zext i8 %2966 to i64
  store i64 %2967, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_439cac, %struct.Memory** %MEMORY
  %loadMem_439cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 5
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %ECX.i448 = bitcast %union.anon* %2973 to i32*
  %2974 = load i32, i32* %ECX.i448
  %2975 = zext i32 %2974 to i64
  %2976 = load i64, i64* %PC.i447
  %2977 = add i64 %2976, 3
  store i64 %2977, i64* %PC.i447
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2978, align 1
  %2979 = and i32 %2974, 255
  %2980 = call i32 @llvm.ctpop.i32(i32 %2979)
  %2981 = trunc i32 %2980 to i8
  %2982 = and i8 %2981, 1
  %2983 = xor i8 %2982, 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2983, i8* %2984, align 1
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2985, align 1
  %2986 = icmp eq i32 %2974, 0
  %2987 = zext i1 %2986 to i8
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2987, i8* %2988, align 1
  %2989 = lshr i32 %2974, 31
  %2990 = trunc i32 %2989 to i8
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2990, i8* %2991, align 1
  %2992 = lshr i32 %2974, 31
  %2993 = xor i32 %2989, %2992
  %2994 = add i32 %2993, %2992
  %2995 = icmp eq i32 %2994, 2
  %2996 = zext i1 %2995 to i8
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2996, i8* %2997, align 1
  store %struct.Memory* %loadMem_439cb4, %struct.Memory** %MEMORY
  %loadMem_439cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 33
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3000 to i64*
  %3001 = load i64, i64* %PC.i446
  %3002 = add i64 %3001, 34
  %3003 = load i64, i64* %PC.i446
  %3004 = add i64 %3003, 6
  %3005 = load i64, i64* %PC.i446
  %3006 = add i64 %3005, 6
  store i64 %3006, i64* %PC.i446
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3008 = load i8, i8* %3007, align 1
  %3009 = icmp eq i8 %3008, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %BRANCH_TAKEN, align 1
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3012 = select i1 %3009, i64 %3002, i64 %3004
  store i64 %3012, i64* %3011, align 8
  store %struct.Memory* %loadMem_439cb7, %struct.Memory** %MEMORY
  %loadBr_439cb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439cb7 = icmp eq i8 %loadBr_439cb7, 1
  br i1 %cmpBr_439cb7, label %block_.L_439cd9, label %block_439cbd

block_439cbd:                                     ; preds = %block_439ca8
  %loadMem_439cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 11
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RDI.i445 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %PC.i444
  %3020 = add i64 %3019, 10
  store i64 %3020, i64* %PC.i444
  store i64 ptrtoint (%G__0x57da0a_type* @G__0x57da0a to i64), i64* %RDI.i445, align 8
  store %struct.Memory* %loadMem_439cbd, %struct.Memory** %MEMORY
  %loadMem_439cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 33
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 9
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %RSI.i442 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 15
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %RBP.i443
  %3031 = sub i64 %3030, 52
  %3032 = load i64, i64* %PC.i441
  %3033 = add i64 %3032, 3
  store i64 %3033, i64* %PC.i441
  %3034 = inttoptr i64 %3031 to i32*
  %3035 = load i32, i32* %3034
  %3036 = zext i32 %3035 to i64
  store i64 %3036, i64* %RSI.i442, align 8
  store %struct.Memory* %loadMem_439cc7, %struct.Memory** %MEMORY
  %loadMem_439cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 33
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 1
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %3043 = bitcast %union.anon* %3042 to %struct.anon.2*
  %AL.i440 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3043, i32 0, i32 0
  %3044 = load i64, i64* %PC.i439
  %3045 = add i64 %3044, 2
  store i64 %3045, i64* %PC.i439
  store i8 0, i8* %AL.i440, align 1
  store %struct.Memory* %loadMem_439cca, %struct.Memory** %MEMORY
  %loadMem1_439ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %3048 to i64*
  %3049 = load i64, i64* %PC.i438
  %3050 = add i64 %3049, 98532
  %3051 = load i64, i64* %PC.i438
  %3052 = add i64 %3051, 5
  %3053 = load i64, i64* %PC.i438
  %3054 = add i64 %3053, 5
  store i64 %3054, i64* %PC.i438
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3056 = load i64, i64* %3055, align 8
  %3057 = add i64 %3056, -8
  %3058 = inttoptr i64 %3057 to i64*
  store i64 %3052, i64* %3058
  store i64 %3057, i64* %3055, align 8
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3050, i64* %3059, align 8
  store %struct.Memory* %loadMem1_439ccc, %struct.Memory** %MEMORY
  %loadMem2_439ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ccc = load i64, i64* %3
  %call2_439ccc = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439ccc, %struct.Memory* %loadMem2_439ccc)
  store %struct.Memory* %call2_439ccc, %struct.Memory** %MEMORY
  %loadMem_439cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 1
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %EAX.i436 = bitcast %union.anon* %3065 to i32*
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3067 = getelementptr inbounds %struct.GPR, %struct.GPR* %3066, i32 0, i32 15
  %3068 = getelementptr inbounds %struct.Reg, %struct.Reg* %3067, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %3068 to i64*
  %3069 = load i64, i64* %RBP.i437
  %3070 = sub i64 %3069, 80
  %3071 = load i32, i32* %EAX.i436
  %3072 = zext i32 %3071 to i64
  %3073 = load i64, i64* %PC.i435
  %3074 = add i64 %3073, 3
  store i64 %3074, i64* %PC.i435
  %3075 = inttoptr i64 %3070 to i32*
  store i32 %3071, i32* %3075
  store %struct.Memory* %loadMem_439cd1, %struct.Memory** %MEMORY
  %loadMem_439cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 33
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3078 to i64*
  %3079 = load i64, i64* %PC.i434
  %3080 = add i64 %3079, 193
  %3081 = load i64, i64* %PC.i434
  %3082 = add i64 %3081, 5
  store i64 %3082, i64* %PC.i434
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3080, i64* %3083, align 8
  store %struct.Memory* %loadMem_439cd4, %struct.Memory** %MEMORY
  br label %block_.L_439d95

block_.L_439cd9:                                  ; preds = %block_439ca8, %block_.L_439c8c
  %loadMem_439cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 33
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 11
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RDI.i432 = bitcast %union.anon* %3089 to i64*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 15
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %3092 to i64*
  %3093 = load i64, i64* %RBP.i433
  %3094 = sub i64 %3093, 16
  %3095 = load i64, i64* %PC.i431
  %3096 = add i64 %3095, 4
  store i64 %3096, i64* %PC.i431
  %3097 = inttoptr i64 %3094 to i64*
  %3098 = load i64, i64* %3097
  store i64 %3098, i64* %RDI.i432, align 8
  store %struct.Memory* %loadMem_439cd9, %struct.Memory** %MEMORY
  %loadMem_439cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 9
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %RSI.i429 = bitcast %union.anon* %3104 to i64*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 15
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %3107 to i64*
  %3108 = load i64, i64* %RBP.i430
  %3109 = sub i64 %3108, 52
  %3110 = load i64, i64* %PC.i428
  %3111 = add i64 %3110, 3
  store i64 %3111, i64* %PC.i428
  %3112 = inttoptr i64 %3109 to i32*
  %3113 = load i32, i32* %3112
  %3114 = zext i32 %3113 to i64
  store i64 %3114, i64* %RSI.i429, align 8
  store %struct.Memory* %loadMem_439cdd, %struct.Memory** %MEMORY
  %loadMem1_439ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %PC.i427
  %3119 = add i64 %3118, 4944
  %3120 = load i64, i64* %PC.i427
  %3121 = add i64 %3120, 5
  %3122 = load i64, i64* %PC.i427
  %3123 = add i64 %3122, 5
  store i64 %3123, i64* %PC.i427
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3125 = load i64, i64* %3124, align 8
  %3126 = add i64 %3125, -8
  %3127 = inttoptr i64 %3126 to i64*
  store i64 %3121, i64* %3127
  store i64 %3126, i64* %3124, align 8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3119, i64* %3128, align 8
  store %struct.Memory* %loadMem1_439ce0, %struct.Memory** %MEMORY
  %loadMem2_439ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ce0 = load i64, i64* %3
  %call2_439ce0 = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64 %loadPC_439ce0, %struct.Memory* %loadMem2_439ce0)
  store %struct.Memory* %call2_439ce0, %struct.Memory** %MEMORY
  %loadMem_439ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 1
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %EAX.i426 = bitcast %union.anon* %3134 to i32*
  %3135 = load i32, i32* %EAX.i426
  %3136 = zext i32 %3135 to i64
  %3137 = load i64, i64* %PC.i425
  %3138 = add i64 %3137, 3
  store i64 %3138, i64* %PC.i425
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3139, align 1
  %3140 = and i32 %3135, 255
  %3141 = call i32 @llvm.ctpop.i32(i32 %3140)
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  %3144 = xor i8 %3143, 1
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3144, i8* %3145, align 1
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3146, align 1
  %3147 = icmp eq i32 %3135, 0
  %3148 = zext i1 %3147 to i8
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3148, i8* %3149, align 1
  %3150 = lshr i32 %3135, 31
  %3151 = trunc i32 %3150 to i8
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3151, i8* %3152, align 1
  %3153 = lshr i32 %3135, 31
  %3154 = xor i32 %3150, %3153
  %3155 = add i32 %3154, %3153
  %3156 = icmp eq i32 %3155, 2
  %3157 = zext i1 %3156 to i8
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3157, i8* %3158, align 1
  store %struct.Memory* %loadMem_439ce5, %struct.Memory** %MEMORY
  %loadMem_439ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 33
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3161 to i64*
  %3162 = load i64, i64* %PC.i424
  %3163 = add i64 %3162, 145
  %3164 = load i64, i64* %PC.i424
  %3165 = add i64 %3164, 6
  %3166 = load i64, i64* %PC.i424
  %3167 = add i64 %3166, 6
  store i64 %3167, i64* %PC.i424
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3169 = load i8, i8* %3168, align 1
  store i8 %3169, i8* %BRANCH_TAKEN, align 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3171 = icmp ne i8 %3169, 0
  %3172 = select i1 %3171, i64 %3163, i64 %3165
  store i64 %3172, i64* %3170, align 8
  store %struct.Memory* %loadMem_439ce8, %struct.Memory** %MEMORY
  %loadBr_439ce8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ce8 = icmp eq i8 %loadBr_439ce8, 1
  br i1 %cmpBr_439ce8, label %block_.L_439d79, label %block_439cee

block_439cee:                                     ; preds = %block_.L_439cd9
  %loadMem_439cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 1
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %3178 to i64*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 15
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %3181 to i64*
  %3182 = load i64, i64* %RBP.i423
  %3183 = sub i64 %3182, 52
  %3184 = load i64, i64* %PC.i421
  %3185 = add i64 %3184, 4
  store i64 %3185, i64* %PC.i421
  %3186 = inttoptr i64 %3183 to i32*
  %3187 = load i32, i32* %3186
  %3188 = sext i32 %3187 to i64
  store i64 %3188, i64* %RAX.i422, align 8
  store %struct.Memory* %loadMem_439cee, %struct.Memory** %MEMORY
  %loadMem_439cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 1
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 5
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %3197 to i64*
  %3198 = load i64, i64* %RAX.i419
  %3199 = add i64 %3198, 12099168
  %3200 = load i64, i64* %PC.i418
  %3201 = add i64 %3200, 8
  store i64 %3201, i64* %PC.i418
  %3202 = inttoptr i64 %3199 to i8*
  %3203 = load i8, i8* %3202
  %3204 = zext i8 %3203 to i64
  store i64 %3204, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_439cf2, %struct.Memory** %MEMORY
  %loadMem_439cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3207 to i64*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 5
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %ECX.i417 = bitcast %union.anon* %3210 to i32*
  %3211 = load i32, i32* %ECX.i417
  %3212 = zext i32 %3211 to i64
  %3213 = load i64, i64* %PC.i416
  %3214 = add i64 %3213, 3
  store i64 %3214, i64* %PC.i416
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3215, align 1
  %3216 = and i32 %3211, 255
  %3217 = call i32 @llvm.ctpop.i32(i32 %3216)
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = xor i8 %3219, 1
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3220, i8* %3221, align 1
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3222, align 1
  %3223 = icmp eq i32 %3211, 0
  %3224 = zext i1 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3224, i8* %3225, align 1
  %3226 = lshr i32 %3211, 31
  %3227 = trunc i32 %3226 to i8
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3227, i8* %3228, align 1
  %3229 = lshr i32 %3211, 31
  %3230 = xor i32 %3226, %3229
  %3231 = add i32 %3230, %3229
  %3232 = icmp eq i32 %3231, 2
  %3233 = zext i1 %3232 to i8
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3233, i8* %3234, align 1
  store %struct.Memory* %loadMem_439cfa, %struct.Memory** %MEMORY
  %loadMem_439cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3237 to i64*
  %3238 = load i64, i64* %PC.i415
  %3239 = add i64 %3238, 124
  %3240 = load i64, i64* %PC.i415
  %3241 = add i64 %3240, 6
  %3242 = load i64, i64* %PC.i415
  %3243 = add i64 %3242, 6
  store i64 %3243, i64* %PC.i415
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3245 = load i8, i8* %3244, align 1
  %3246 = icmp eq i8 %3245, 0
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %BRANCH_TAKEN, align 1
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3249 = select i1 %3246, i64 %3239, i64 %3241
  store i64 %3249, i64* %3248, align 8
  store %struct.Memory* %loadMem_439cfd, %struct.Memory** %MEMORY
  %loadBr_439cfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439cfd = icmp eq i8 %loadBr_439cfd, 1
  br i1 %cmpBr_439cfd, label %block_.L_439d79, label %block_439d03

block_439d03:                                     ; preds = %block_439cee
  %loadMem_439d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3253, i64 0, i64 0
  %YMM0.i414 = bitcast %union.VectorReg* %3254 to %"class.std::bitset"*
  %3255 = bitcast %"class.std::bitset"* %YMM0.i414 to i8*
  %3256 = load i64, i64* %PC.i413
  %3257 = add i64 %3256, ptrtoint (%G_0xa9305__rip__type* @G_0xa9305__rip_ to i64)
  %3258 = load i64, i64* %PC.i413
  %3259 = add i64 %3258, 8
  store i64 %3259, i64* %PC.i413
  %3260 = inttoptr i64 %3257 to double*
  %3261 = load double, double* %3260
  %3262 = bitcast i8* %3255 to double*
  store double %3261, double* %3262, align 1
  %3263 = getelementptr inbounds i8, i8* %3255, i64 8
  %3264 = bitcast i8* %3263 to double*
  store double 0.000000e+00, double* %3264, align 1
  store %struct.Memory* %loadMem_439d03, %struct.Memory** %MEMORY
  %loadMem_439d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 33
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 1
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 15
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %RBP.i412
  %3275 = sub i64 %3274, 16
  %3276 = load i64, i64* %PC.i410
  %3277 = add i64 %3276, 4
  store i64 %3277, i64* %PC.i410
  %3278 = inttoptr i64 %3275 to i64*
  %3279 = load i64, i64* %3278
  store i64 %3279, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_439d0b, %struct.Memory** %MEMORY
  %loadMem_439d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 33
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 5
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 15
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3288 to i64*
  %3289 = load i64, i64* %RBP.i409
  %3290 = sub i64 %3289, 52
  %3291 = load i64, i64* %PC.i407
  %3292 = add i64 %3291, 4
  store i64 %3292, i64* %PC.i407
  %3293 = inttoptr i64 %3290 to i32*
  %3294 = load i32, i32* %3293
  %3295 = sext i32 %3294 to i64
  store i64 %3295, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_439d0f, %struct.Memory** %MEMORY
  %loadMem_439d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 33
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3298 to i64*
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 5
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %3301 to i64*
  %3302 = load i64, i64* %RCX.i406
  %3303 = load i64, i64* %PC.i405
  %3304 = add i64 %3303, 4
  store i64 %3304, i64* %PC.i405
  %3305 = sext i64 %3302 to i128
  %3306 = and i128 %3305, -18446744073709551616
  %3307 = zext i64 %3302 to i128
  %3308 = or i128 %3306, %3307
  %3309 = mul i128 48, %3308
  %3310 = trunc i128 %3309 to i64
  store i64 %3310, i64* %RCX.i406, align 8
  %3311 = sext i64 %3310 to i128
  %3312 = icmp ne i128 %3311, %3309
  %3313 = zext i1 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3313, i8* %3314, align 1
  %3315 = trunc i128 %3309 to i32
  %3316 = and i32 %3315, 255
  %3317 = call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3320, i8* %3321, align 1
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3322, align 1
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3323, align 1
  %3324 = lshr i64 %3310, 63
  %3325 = trunc i64 %3324 to i8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3325, i8* %3326, align 1
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3313, i8* %3327, align 1
  store %struct.Memory* %loadMem_439d13, %struct.Memory** %MEMORY
  %loadMem_439d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 1
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 5
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %3336 to i64*
  %3337 = load i64, i64* %RAX.i403
  %3338 = load i64, i64* %RCX.i404
  %3339 = load i64, i64* %PC.i402
  %3340 = add i64 %3339, 3
  store i64 %3340, i64* %PC.i402
  %3341 = add i64 %3338, %3337
  store i64 %3341, i64* %RAX.i403, align 8
  %3342 = icmp ult i64 %3341, %3337
  %3343 = icmp ult i64 %3341, %3338
  %3344 = or i1 %3342, %3343
  %3345 = zext i1 %3344 to i8
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3345, i8* %3346, align 1
  %3347 = trunc i64 %3341 to i32
  %3348 = and i32 %3347, 255
  %3349 = call i32 @llvm.ctpop.i32(i32 %3348)
  %3350 = trunc i32 %3349 to i8
  %3351 = and i8 %3350, 1
  %3352 = xor i8 %3351, 1
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3352, i8* %3353, align 1
  %3354 = xor i64 %3338, %3337
  %3355 = xor i64 %3354, %3341
  %3356 = lshr i64 %3355, 4
  %3357 = trunc i64 %3356 to i8
  %3358 = and i8 %3357, 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3358, i8* %3359, align 1
  %3360 = icmp eq i64 %3341, 0
  %3361 = zext i1 %3360 to i8
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3361, i8* %3362, align 1
  %3363 = lshr i64 %3341, 63
  %3364 = trunc i64 %3363 to i8
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3364, i8* %3365, align 1
  %3366 = lshr i64 %3337, 63
  %3367 = lshr i64 %3338, 63
  %3368 = xor i64 %3363, %3366
  %3369 = xor i64 %3363, %3367
  %3370 = add i64 %3368, %3369
  %3371 = icmp eq i64 %3370, 2
  %3372 = zext i1 %3371 to i8
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3372, i8* %3373, align 1
  store %struct.Memory* %loadMem_439d17, %struct.Memory** %MEMORY
  %loadMem_439d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 33
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 1
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3380, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3381 to %"class.std::bitset"*
  %3382 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %3383 = load i64, i64* %RAX.i401
  %3384 = load i64, i64* %PC.i400
  %3385 = add i64 %3384, 4
  store i64 %3385, i64* %PC.i400
  %3386 = inttoptr i64 %3383 to float*
  %3387 = load float, float* %3386
  %3388 = fpext float %3387 to double
  %3389 = bitcast i8* %3382 to double*
  store double %3388, double* %3389, align 1
  store %struct.Memory* %loadMem_439d1a, %struct.Memory** %MEMORY
  %loadMem_439d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3394 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3393, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3394 to %union.vec128_t*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3396 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3395, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3396 to %union.vec128_t*
  %3397 = bitcast %union.vec128_t* %XMM1.i to i8*
  %3398 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3399 = load i64, i64* %PC.i396
  %3400 = add i64 %3399, 4
  store i64 %3400, i64* %PC.i396
  %3401 = bitcast i8* %3397 to double*
  %3402 = load double, double* %3401, align 1
  %3403 = bitcast i8* %3398 to double*
  %3404 = load double, double* %3403, align 1
  %3405 = fcmp uno double %3402, %3404
  br i1 %3405, label %3406, label %3418

; <label>:3406:                                   ; preds = %block_439d03
  %3407 = fadd double %3402, %3404
  %3408 = bitcast double %3407 to i64
  %3409 = and i64 %3408, 9221120237041090560
  %3410 = icmp eq i64 %3409, 9218868437227405312
  %3411 = and i64 %3408, 2251799813685247
  %3412 = icmp ne i64 %3411, 0
  %3413 = and i1 %3410, %3412
  br i1 %3413, label %3414, label %3424

; <label>:3414:                                   ; preds = %3406
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3416 = load i64, i64* %3415, align 8
  %3417 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3416, %struct.Memory* %loadMem_439d1e)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3418:                                   ; preds = %block_439d03
  %3419 = fcmp ogt double %3402, %3404
  br i1 %3419, label %3424, label %3420

; <label>:3420:                                   ; preds = %3418
  %3421 = fcmp olt double %3402, %3404
  br i1 %3421, label %3424, label %3422

; <label>:3422:                                   ; preds = %3420
  %3423 = fcmp oeq double %3402, %3404
  br i1 %3423, label %3424, label %3431

; <label>:3424:                                   ; preds = %3422, %3420, %3418, %3406
  %3425 = phi i8 [ 0, %3418 ], [ 0, %3420 ], [ 1, %3422 ], [ 1, %3406 ]
  %3426 = phi i8 [ 0, %3418 ], [ 0, %3420 ], [ 0, %3422 ], [ 1, %3406 ]
  %3427 = phi i8 [ 0, %3418 ], [ 1, %3420 ], [ 0, %3422 ], [ 1, %3406 ]
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3425, i8* %3428, align 1
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3426, i8* %3429, align 1
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3427, i8* %3430, align 1
  br label %3431

; <label>:3431:                                   ; preds = %3424, %3422
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3432, align 1
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3433, align 1
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3434, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3414, %3431
  %3435 = phi %struct.Memory* [ %3417, %3414 ], [ %loadMem_439d1e, %3431 ]
  store %struct.Memory* %3435, %struct.Memory** %MEMORY
  %loadMem_439d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 33
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3438 to i64*
  %3439 = load i64, i64* %PC.i395
  %3440 = add i64 %3439, 40
  %3441 = load i64, i64* %PC.i395
  %3442 = add i64 %3441, 6
  %3443 = load i64, i64* %PC.i395
  %3444 = add i64 %3443, 6
  store i64 %3444, i64* %PC.i395
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3446 = load i8, i8* %3445, align 1
  %3447 = icmp eq i8 %3446, 0
  %3448 = zext i1 %3447 to i8
  store i8 %3448, i8* %BRANCH_TAKEN, align 1
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3450 = select i1 %3447, i64 %3440, i64 %3442
  store i64 %3450, i64* %3449, align 8
  store %struct.Memory* %loadMem_439d22, %struct.Memory** %MEMORY
  %loadBr_439d22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439d22 = icmp eq i8 %loadBr_439d22, 1
  br i1 %cmpBr_439d22, label %block_.L_439d4a, label %block_439d28

block_439d28:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_439d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %PC.i394
  %3455 = add i64 %3454, 34
  %3456 = load i64, i64* %PC.i394
  %3457 = add i64 %3456, 6
  %3458 = load i64, i64* %PC.i394
  %3459 = add i64 %3458, 6
  store i64 %3459, i64* %PC.i394
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3461 = load i8, i8* %3460, align 1
  store i8 %3461, i8* %BRANCH_TAKEN, align 1
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3463 = icmp ne i8 %3461, 0
  %3464 = select i1 %3463, i64 %3455, i64 %3457
  store i64 %3464, i64* %3462, align 8
  store %struct.Memory* %loadMem_439d28, %struct.Memory** %MEMORY
  %loadBr_439d28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439d28 = icmp eq i8 %loadBr_439d28, 1
  br i1 %cmpBr_439d28, label %block_.L_439d4a, label %block_439d2e

block_439d2e:                                     ; preds = %block_439d28
  %loadMem_439d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 33
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 11
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RDI.i393 = bitcast %union.anon* %3470 to i64*
  %3471 = load i64, i64* %PC.i392
  %3472 = add i64 %3471, 10
  store i64 %3472, i64* %PC.i392
  store i64 ptrtoint (%G__0x57da13_type* @G__0x57da13 to i64), i64* %RDI.i393, align 8
  store %struct.Memory* %loadMem_439d2e, %struct.Memory** %MEMORY
  %loadMem_439d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 33
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3475 to i64*
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3477 = getelementptr inbounds %struct.GPR, %struct.GPR* %3476, i32 0, i32 9
  %3478 = getelementptr inbounds %struct.Reg, %struct.Reg* %3477, i32 0, i32 0
  %RSI.i390 = bitcast %union.anon* %3478 to i64*
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3480 = getelementptr inbounds %struct.GPR, %struct.GPR* %3479, i32 0, i32 15
  %3481 = getelementptr inbounds %struct.Reg, %struct.Reg* %3480, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %3481 to i64*
  %3482 = load i64, i64* %RBP.i391
  %3483 = sub i64 %3482, 52
  %3484 = load i64, i64* %PC.i389
  %3485 = add i64 %3484, 3
  store i64 %3485, i64* %PC.i389
  %3486 = inttoptr i64 %3483 to i32*
  %3487 = load i32, i32* %3486
  %3488 = zext i32 %3487 to i64
  store i64 %3488, i64* %RSI.i390, align 8
  store %struct.Memory* %loadMem_439d38, %struct.Memory** %MEMORY
  %loadMem_439d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 1
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %3495 = bitcast %union.anon* %3494 to %struct.anon.2*
  %AL.i388 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3495, i32 0, i32 0
  %3496 = load i64, i64* %PC.i387
  %3497 = add i64 %3496, 2
  store i64 %3497, i64* %PC.i387
  store i8 0, i8* %AL.i388, align 1
  store %struct.Memory* %loadMem_439d3b, %struct.Memory** %MEMORY
  %loadMem1_439d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %3500 to i64*
  %3501 = load i64, i64* %PC.i386
  %3502 = add i64 %3501, 98419
  %3503 = load i64, i64* %PC.i386
  %3504 = add i64 %3503, 5
  %3505 = load i64, i64* %PC.i386
  %3506 = add i64 %3505, 5
  store i64 %3506, i64* %PC.i386
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3508 = load i64, i64* %3507, align 8
  %3509 = add i64 %3508, -8
  %3510 = inttoptr i64 %3509 to i64*
  store i64 %3504, i64* %3510
  store i64 %3509, i64* %3507, align 8
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3502, i64* %3511, align 8
  store %struct.Memory* %loadMem1_439d3d, %struct.Memory** %MEMORY
  %loadMem2_439d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d3d = load i64, i64* %3
  %call2_439d3d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439d3d, %struct.Memory* %loadMem2_439d3d)
  store %struct.Memory* %call2_439d3d, %struct.Memory** %MEMORY
  %loadMem_439d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 33
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 1
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %EAX.i384 = bitcast %union.anon* %3517 to i32*
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3519 = getelementptr inbounds %struct.GPR, %struct.GPR* %3518, i32 0, i32 15
  %3520 = getelementptr inbounds %struct.Reg, %struct.Reg* %3519, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %3520 to i64*
  %3521 = load i64, i64* %RBP.i385
  %3522 = sub i64 %3521, 84
  %3523 = load i32, i32* %EAX.i384
  %3524 = zext i32 %3523 to i64
  %3525 = load i64, i64* %PC.i383
  %3526 = add i64 %3525, 3
  store i64 %3526, i64* %PC.i383
  %3527 = inttoptr i64 %3522 to i32*
  store i32 %3523, i32* %3527
  store %struct.Memory* %loadMem_439d42, %struct.Memory** %MEMORY
  %loadMem_439d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3530 to i64*
  %3531 = load i64, i64* %PC.i382
  %3532 = add i64 %3531, 47
  %3533 = load i64, i64* %PC.i382
  %3534 = add i64 %3533, 5
  store i64 %3534, i64* %PC.i382
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3532, i64* %3535, align 8
  store %struct.Memory* %loadMem_439d45, %struct.Memory** %MEMORY
  br label %block_.L_439d74

block_.L_439d4a:                                  ; preds = %block_439d28, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_439d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 11
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %RDI.i381 = bitcast %union.anon* %3541 to i64*
  %3542 = load i64, i64* %PC.i380
  %3543 = add i64 %3542, 10
  store i64 %3543, i64* %PC.i380
  store i64 ptrtoint (%G__0x57da1c_type* @G__0x57da1c to i64), i64* %RDI.i381, align 8
  store %struct.Memory* %loadMem_439d4a, %struct.Memory** %MEMORY
  %loadMem_439d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 9
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RSI.i378 = bitcast %union.anon* %3549 to i64*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 15
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %3552 to i64*
  %3553 = load i64, i64* %RBP.i379
  %3554 = sub i64 %3553, 52
  %3555 = load i64, i64* %PC.i377
  %3556 = add i64 %3555, 3
  store i64 %3556, i64* %PC.i377
  %3557 = inttoptr i64 %3554 to i32*
  %3558 = load i32, i32* %3557
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RSI.i378, align 8
  store %struct.Memory* %loadMem_439d54, %struct.Memory** %MEMORY
  %loadMem_439d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3561 = getelementptr inbounds %struct.GPR, %struct.GPR* %3560, i32 0, i32 33
  %3562 = getelementptr inbounds %struct.Reg, %struct.Reg* %3561, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %3562 to i64*
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3564 = getelementptr inbounds %struct.GPR, %struct.GPR* %3563, i32 0, i32 1
  %3565 = getelementptr inbounds %struct.Reg, %struct.Reg* %3564, i32 0, i32 0
  %RAX.i375 = bitcast %union.anon* %3565 to i64*
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 15
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %3568 to i64*
  %3569 = load i64, i64* %RBP.i376
  %3570 = sub i64 %3569, 16
  %3571 = load i64, i64* %PC.i374
  %3572 = add i64 %3571, 4
  store i64 %3572, i64* %PC.i374
  %3573 = inttoptr i64 %3570 to i64*
  %3574 = load i64, i64* %3573
  store i64 %3574, i64* %RAX.i375, align 8
  store %struct.Memory* %loadMem_439d57, %struct.Memory** %MEMORY
  %loadMem_439d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3577 to i64*
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 5
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 15
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %3583 to i64*
  %3584 = load i64, i64* %RBP.i373
  %3585 = sub i64 %3584, 52
  %3586 = load i64, i64* %PC.i371
  %3587 = add i64 %3586, 4
  store i64 %3587, i64* %PC.i371
  %3588 = inttoptr i64 %3585 to i32*
  %3589 = load i32, i32* %3588
  %3590 = sext i32 %3589 to i64
  store i64 %3590, i64* %RCX.i372, align 8
  store %struct.Memory* %loadMem_439d5b, %struct.Memory** %MEMORY
  %loadMem_439d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 5
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %3596 to i64*
  %3597 = load i64, i64* %RCX.i370
  %3598 = load i64, i64* %PC.i369
  %3599 = add i64 %3598, 4
  store i64 %3599, i64* %PC.i369
  %3600 = sext i64 %3597 to i128
  %3601 = and i128 %3600, -18446744073709551616
  %3602 = zext i64 %3597 to i128
  %3603 = or i128 %3601, %3602
  %3604 = mul i128 48, %3603
  %3605 = trunc i128 %3604 to i64
  store i64 %3605, i64* %RCX.i370, align 8
  %3606 = sext i64 %3605 to i128
  %3607 = icmp ne i128 %3606, %3604
  %3608 = zext i1 %3607 to i8
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3608, i8* %3609, align 1
  %3610 = trunc i128 %3604 to i32
  %3611 = and i32 %3610, 255
  %3612 = call i32 @llvm.ctpop.i32(i32 %3611)
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  %3615 = xor i8 %3614, 1
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3615, i8* %3616, align 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3617, align 1
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3618, align 1
  %3619 = lshr i64 %3605, 63
  %3620 = trunc i64 %3619 to i8
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3620, i8* %3621, align 1
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3608, i8* %3622, align 1
  store %struct.Memory* %loadMem_439d5f, %struct.Memory** %MEMORY
  %loadMem_439d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 1
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RAX.i367 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 5
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %RAX.i367
  %3633 = load i64, i64* %RCX.i368
  %3634 = load i64, i64* %PC.i366
  %3635 = add i64 %3634, 3
  store i64 %3635, i64* %PC.i366
  %3636 = add i64 %3633, %3632
  store i64 %3636, i64* %RAX.i367, align 8
  %3637 = icmp ult i64 %3636, %3632
  %3638 = icmp ult i64 %3636, %3633
  %3639 = or i1 %3637, %3638
  %3640 = zext i1 %3639 to i8
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3640, i8* %3641, align 1
  %3642 = trunc i64 %3636 to i32
  %3643 = and i32 %3642, 255
  %3644 = call i32 @llvm.ctpop.i32(i32 %3643)
  %3645 = trunc i32 %3644 to i8
  %3646 = and i8 %3645, 1
  %3647 = xor i8 %3646, 1
  %3648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3647, i8* %3648, align 1
  %3649 = xor i64 %3633, %3632
  %3650 = xor i64 %3649, %3636
  %3651 = lshr i64 %3650, 4
  %3652 = trunc i64 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3653, i8* %3654, align 1
  %3655 = icmp eq i64 %3636, 0
  %3656 = zext i1 %3655 to i8
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3656, i8* %3657, align 1
  %3658 = lshr i64 %3636, 63
  %3659 = trunc i64 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3659, i8* %3660, align 1
  %3661 = lshr i64 %3632, 63
  %3662 = lshr i64 %3633, 63
  %3663 = xor i64 %3658, %3661
  %3664 = xor i64 %3658, %3662
  %3665 = add i64 %3663, %3664
  %3666 = icmp eq i64 %3665, 2
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3667, i8* %3668, align 1
  store %struct.Memory* %loadMem_439d63, %struct.Memory** %MEMORY
  %loadMem_439d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 33
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3671 to i64*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 1
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3676 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3675, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3676 to %"class.std::bitset"*
  %3677 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3678 = load i64, i64* %RAX.i365
  %3679 = load i64, i64* %PC.i364
  %3680 = add i64 %3679, 4
  store i64 %3680, i64* %PC.i364
  %3681 = inttoptr i64 %3678 to float*
  %3682 = load float, float* %3681
  %3683 = fpext float %3682 to double
  %3684 = bitcast i8* %3677 to double*
  store double %3683, double* %3684, align 1
  store %struct.Memory* %loadMem_439d66, %struct.Memory** %MEMORY
  %loadMem_439d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 1
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %3691 = bitcast %union.anon* %3690 to %struct.anon.2*
  %AL.i363 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3691, i32 0, i32 0
  %3692 = load i64, i64* %PC.i362
  %3693 = add i64 %3692, 2
  store i64 %3693, i64* %PC.i362
  store i8 1, i8* %AL.i363, align 1
  store %struct.Memory* %loadMem_439d6a, %struct.Memory** %MEMORY
  %loadMem1_439d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3696 to i64*
  %3697 = load i64, i64* %PC.i361
  %3698 = add i64 %3697, 98372
  %3699 = load i64, i64* %PC.i361
  %3700 = add i64 %3699, 5
  %3701 = load i64, i64* %PC.i361
  %3702 = add i64 %3701, 5
  store i64 %3702, i64* %PC.i361
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3704 = load i64, i64* %3703, align 8
  %3705 = add i64 %3704, -8
  %3706 = inttoptr i64 %3705 to i64*
  store i64 %3700, i64* %3706
  store i64 %3705, i64* %3703, align 8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3698, i64* %3707, align 8
  store %struct.Memory* %loadMem1_439d6c, %struct.Memory** %MEMORY
  %loadMem2_439d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d6c = load i64, i64* %3
  %call2_439d6c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439d6c, %struct.Memory* %loadMem2_439d6c)
  store %struct.Memory* %call2_439d6c, %struct.Memory** %MEMORY
  %loadMem_439d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 33
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3710 to i64*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 1
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %EAX.i359 = bitcast %union.anon* %3713 to i32*
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3715 = getelementptr inbounds %struct.GPR, %struct.GPR* %3714, i32 0, i32 15
  %3716 = getelementptr inbounds %struct.Reg, %struct.Reg* %3715, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %3716 to i64*
  %3717 = load i64, i64* %RBP.i360
  %3718 = sub i64 %3717, 88
  %3719 = load i32, i32* %EAX.i359
  %3720 = zext i32 %3719 to i64
  %3721 = load i64, i64* %PC.i358
  %3722 = add i64 %3721, 3
  store i64 %3722, i64* %PC.i358
  %3723 = inttoptr i64 %3718 to i32*
  store i32 %3719, i32* %3723
  store %struct.Memory* %loadMem_439d71, %struct.Memory** %MEMORY
  br label %block_.L_439d74

block_.L_439d74:                                  ; preds = %block_.L_439d4a, %block_439d2e
  %loadMem_439d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %PC.i357
  %3728 = add i64 %3727, 28
  %3729 = load i64, i64* %PC.i357
  %3730 = add i64 %3729, 5
  store i64 %3730, i64* %PC.i357
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3728, i64* %3731, align 8
  store %struct.Memory* %loadMem_439d74, %struct.Memory** %MEMORY
  br label %block_.L_439d90

block_.L_439d79:                                  ; preds = %block_439cee, %block_.L_439cd9
  %loadMem_439d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 33
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 11
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RDI.i356 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %PC.i355
  %3739 = add i64 %3738, 10
  store i64 %3739, i64* %PC.i355
  store i64 ptrtoint (%G__0x57b826_type* @G__0x57b826 to i64), i64* %RDI.i356, align 8
  store %struct.Memory* %loadMem_439d79, %struct.Memory** %MEMORY
  %loadMem_439d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 9
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %RSI.i353 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 15
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %RBP.i354
  %3750 = sub i64 %3749, 52
  %3751 = load i64, i64* %PC.i352
  %3752 = add i64 %3751, 3
  store i64 %3752, i64* %PC.i352
  %3753 = inttoptr i64 %3750 to i32*
  %3754 = load i32, i32* %3753
  %3755 = zext i32 %3754 to i64
  store i64 %3755, i64* %RSI.i353, align 8
  store %struct.Memory* %loadMem_439d83, %struct.Memory** %MEMORY
  %loadMem_439d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 33
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3758 to i64*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 1
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %3762 = bitcast %union.anon* %3761 to %struct.anon.2*
  %AL.i351 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3762, i32 0, i32 0
  %3763 = load i64, i64* %PC.i350
  %3764 = add i64 %3763, 2
  store i64 %3764, i64* %PC.i350
  store i8 0, i8* %AL.i351, align 1
  store %struct.Memory* %loadMem_439d86, %struct.Memory** %MEMORY
  %loadMem1_439d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3767 to i64*
  %3768 = load i64, i64* %PC.i349
  %3769 = add i64 %3768, 98344
  %3770 = load i64, i64* %PC.i349
  %3771 = add i64 %3770, 5
  %3772 = load i64, i64* %PC.i349
  %3773 = add i64 %3772, 5
  store i64 %3773, i64* %PC.i349
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3775 = load i64, i64* %3774, align 8
  %3776 = add i64 %3775, -8
  %3777 = inttoptr i64 %3776 to i64*
  store i64 %3771, i64* %3777
  store i64 %3776, i64* %3774, align 8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3769, i64* %3778, align 8
  store %struct.Memory* %loadMem1_439d88, %struct.Memory** %MEMORY
  %loadMem2_439d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439d88 = load i64, i64* %3
  %call2_439d88 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439d88, %struct.Memory* %loadMem2_439d88)
  store %struct.Memory* %call2_439d88, %struct.Memory** %MEMORY
  %loadMem_439d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 1
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %EAX.i347 = bitcast %union.anon* %3784 to i32*
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 15
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %3787 to i64*
  %3788 = load i64, i64* %RBP.i348
  %3789 = sub i64 %3788, 92
  %3790 = load i32, i32* %EAX.i347
  %3791 = zext i32 %3790 to i64
  %3792 = load i64, i64* %PC.i346
  %3793 = add i64 %3792, 3
  store i64 %3793, i64* %PC.i346
  %3794 = inttoptr i64 %3789 to i32*
  store i32 %3790, i32* %3794
  store %struct.Memory* %loadMem_439d8d, %struct.Memory** %MEMORY
  br label %block_.L_439d90

block_.L_439d90:                                  ; preds = %block_.L_439d79, %block_.L_439d74
  %loadMem_439d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %PC.i345
  %3799 = add i64 %3798, 5
  %3800 = load i64, i64* %PC.i345
  %3801 = add i64 %3800, 5
  store i64 %3801, i64* %PC.i345
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3799, i64* %3802, align 8
  store %struct.Memory* %loadMem_439d90, %struct.Memory** %MEMORY
  br label %block_.L_439d95

block_.L_439d95:                                  ; preds = %block_.L_439d90, %block_439cbd
  %loadMem_439d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3805 to i64*
  %3806 = load i64, i64* %PC.i344
  %3807 = add i64 %3806, 5
  %3808 = load i64, i64* %PC.i344
  %3809 = add i64 %3808, 5
  store i64 %3809, i64* %PC.i344
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3807, i64* %3810, align 8
  store %struct.Memory* %loadMem_439d95, %struct.Memory** %MEMORY
  br label %block_.L_439d9a

block_.L_439d9a:                                  ; preds = %block_.L_439d95, %block_.L_439c70
  %loadMem_439d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 33
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3813 to i64*
  %3814 = load i64, i64* %PC.i343
  %3815 = add i64 %3814, 5
  %3816 = load i64, i64* %PC.i343
  %3817 = add i64 %3816, 5
  store i64 %3817, i64* %PC.i343
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3815, i64* %3818, align 8
  store %struct.Memory* %loadMem_439d9a, %struct.Memory** %MEMORY
  br label %block_.L_439d9f

block_.L_439d9f:                                  ; preds = %block_.L_439d9a, %block_.L_439c28
  %loadMem_439d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %PC.i342
  %3823 = add i64 %3822, 5
  %3824 = load i64, i64* %PC.i342
  %3825 = add i64 %3824, 5
  store i64 %3825, i64* %PC.i342
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3823, i64* %3826, align 8
  store %struct.Memory* %loadMem_439d9f, %struct.Memory** %MEMORY
  br label %block_.L_439da4

block_.L_439da4:                                  ; preds = %block_.L_439d9f, %block_.L_439b5c
  %loadMem_439da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 33
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %3829 to i64*
  %3830 = load i64, i64* %PC.i341
  %3831 = add i64 %3830, 5
  %3832 = load i64, i64* %PC.i341
  %3833 = add i64 %3832, 5
  store i64 %3833, i64* %PC.i341
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3831, i64* %3834, align 8
  store %struct.Memory* %loadMem_439da4, %struct.Memory** %MEMORY
  br label %block_.L_439da9

block_.L_439da9:                                  ; preds = %block_.L_439da4, %block_439b11
  %loadMem_439da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 1
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 15
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %3843 to i64*
  %3844 = load i64, i64* %RBP.i340
  %3845 = sub i64 %3844, 28
  %3846 = load i64, i64* %PC.i338
  %3847 = add i64 %3846, 3
  store i64 %3847, i64* %PC.i338
  %3848 = inttoptr i64 %3845 to i32*
  %3849 = load i32, i32* %3848
  %3850 = zext i32 %3849 to i64
  store i64 %3850, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_439da9, %struct.Memory** %MEMORY
  %loadMem_439dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 1
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %RAX.i337
  %3858 = load i64, i64* %PC.i336
  %3859 = add i64 %3858, 3
  store i64 %3859, i64* %PC.i336
  %3860 = trunc i64 %3857 to i32
  %3861 = add i32 1, %3860
  %3862 = zext i32 %3861 to i64
  store i64 %3862, i64* %RAX.i337, align 8
  %3863 = icmp ult i32 %3861, %3860
  %3864 = icmp ult i32 %3861, 1
  %3865 = or i1 %3863, %3864
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3866, i8* %3867, align 1
  %3868 = and i32 %3861, 255
  %3869 = call i32 @llvm.ctpop.i32(i32 %3868)
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  %3872 = xor i8 %3871, 1
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3872, i8* %3873, align 1
  %3874 = xor i64 1, %3857
  %3875 = trunc i64 %3874 to i32
  %3876 = xor i32 %3875, %3861
  %3877 = lshr i32 %3876, 4
  %3878 = trunc i32 %3877 to i8
  %3879 = and i8 %3878, 1
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3879, i8* %3880, align 1
  %3881 = icmp eq i32 %3861, 0
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3882, i8* %3883, align 1
  %3884 = lshr i32 %3861, 31
  %3885 = trunc i32 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3885, i8* %3886, align 1
  %3887 = lshr i32 %3860, 31
  %3888 = xor i32 %3884, %3887
  %3889 = add i32 %3888, %3884
  %3890 = icmp eq i32 %3889, 2
  %3891 = zext i1 %3890 to i8
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3891, i8* %3892, align 1
  store %struct.Memory* %loadMem_439dac, %struct.Memory** %MEMORY
  %loadMem_439daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %EAX.i334 = bitcast %union.anon* %3898 to i32*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 15
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RBP.i335
  %3903 = sub i64 %3902, 28
  %3904 = load i32, i32* %EAX.i334
  %3905 = zext i32 %3904 to i64
  %3906 = load i64, i64* %PC.i333
  %3907 = add i64 %3906, 3
  store i64 %3907, i64* %PC.i333
  %3908 = inttoptr i64 %3903 to i32*
  store i32 %3904, i32* %3908
  store %struct.Memory* %loadMem_439daf, %struct.Memory** %MEMORY
  %loadMem_439db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %3911 to i64*
  %3912 = load i64, i64* %PC.i332
  %3913 = add i64 %3912, -729
  %3914 = load i64, i64* %PC.i332
  %3915 = add i64 %3914, 5
  store i64 %3915, i64* %PC.i332
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3913, i64* %3916, align 8
  store %struct.Memory* %loadMem_439db2, %struct.Memory** %MEMORY
  br label %block_.L_439ad9

block_.L_439db7:                                  ; preds = %block_.L_439ad9
  %loadMem_439db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3919 to i64*
  %3920 = load i64, i64* %PC.i331
  %3921 = add i64 %3920, 5
  %3922 = load i64, i64* %PC.i331
  %3923 = add i64 %3922, 5
  store i64 %3923, i64* %PC.i331
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3921, i64* %3924, align 8
  store %struct.Memory* %loadMem_439db7, %struct.Memory** %MEMORY
  br label %block_.L_439dbc

block_.L_439dbc:                                  ; preds = %block_.L_439db7
  %loadMem_439dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3926 = getelementptr inbounds %struct.GPR, %struct.GPR* %3925, i32 0, i32 33
  %3927 = getelementptr inbounds %struct.Reg, %struct.Reg* %3926, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3927 to i64*
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 1
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 15
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %3933 to i64*
  %3934 = load i64, i64* %RBP.i330
  %3935 = sub i64 %3934, 24
  %3936 = load i64, i64* %PC.i328
  %3937 = add i64 %3936, 3
  store i64 %3937, i64* %PC.i328
  %3938 = inttoptr i64 %3935 to i32*
  %3939 = load i32, i32* %3938
  %3940 = zext i32 %3939 to i64
  store i64 %3940, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_439dbc, %struct.Memory** %MEMORY
  %loadMem_439dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 33
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 1
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %3946 to i64*
  %3947 = load i64, i64* %RAX.i327
  %3948 = load i64, i64* %PC.i326
  %3949 = add i64 %3948, 3
  store i64 %3949, i64* %PC.i326
  %3950 = trunc i64 %3947 to i32
  %3951 = add i32 1, %3950
  %3952 = zext i32 %3951 to i64
  store i64 %3952, i64* %RAX.i327, align 8
  %3953 = icmp ult i32 %3951, %3950
  %3954 = icmp ult i32 %3951, 1
  %3955 = or i1 %3953, %3954
  %3956 = zext i1 %3955 to i8
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3956, i8* %3957, align 1
  %3958 = and i32 %3951, 255
  %3959 = call i32 @llvm.ctpop.i32(i32 %3958)
  %3960 = trunc i32 %3959 to i8
  %3961 = and i8 %3960, 1
  %3962 = xor i8 %3961, 1
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3962, i8* %3963, align 1
  %3964 = xor i64 1, %3947
  %3965 = trunc i64 %3964 to i32
  %3966 = xor i32 %3965, %3951
  %3967 = lshr i32 %3966, 4
  %3968 = trunc i32 %3967 to i8
  %3969 = and i8 %3968, 1
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3969, i8* %3970, align 1
  %3971 = icmp eq i32 %3951, 0
  %3972 = zext i1 %3971 to i8
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3972, i8* %3973, align 1
  %3974 = lshr i32 %3951, 31
  %3975 = trunc i32 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3975, i8* %3976, align 1
  %3977 = lshr i32 %3950, 31
  %3978 = xor i32 %3974, %3977
  %3979 = add i32 %3978, %3974
  %3980 = icmp eq i32 %3979, 2
  %3981 = zext i1 %3980 to i8
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3981, i8* %3982, align 1
  store %struct.Memory* %loadMem_439dbf, %struct.Memory** %MEMORY
  %loadMem_439dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 1
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %EAX.i324 = bitcast %union.anon* %3988 to i32*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 15
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %3991 to i64*
  %3992 = load i64, i64* %RBP.i325
  %3993 = sub i64 %3992, 24
  %3994 = load i32, i32* %EAX.i324
  %3995 = zext i32 %3994 to i64
  %3996 = load i64, i64* %PC.i323
  %3997 = add i64 %3996, 3
  store i64 %3997, i64* %PC.i323
  %3998 = inttoptr i64 %3993 to i32*
  store i32 %3994, i32* %3998
  store %struct.Memory* %loadMem_439dc2, %struct.Memory** %MEMORY
  %loadMem_439dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4001 to i64*
  %4002 = load i64, i64* %PC.i322
  %4003 = add i64 %4002, -771
  %4004 = load i64, i64* %PC.i322
  %4005 = add i64 %4004, 5
  store i64 %4005, i64* %PC.i322
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4003, i64* %4006, align 8
  store %struct.Memory* %loadMem_439dc5, %struct.Memory** %MEMORY
  br label %block_.L_439ac2

block_.L_439dca:                                  ; preds = %block_.L_439ac2
  %loadMem_439dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 33
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 11
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RDI.i321 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %PC.i320
  %4014 = add i64 %4013, 10
  store i64 %4014, i64* %PC.i320
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i321, align 8
  store %struct.Memory* %loadMem_439dca, %struct.Memory** %MEMORY
  %loadMem_439dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 33
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 1
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %4021 = bitcast %union.anon* %4020 to %struct.anon.2*
  %AL.i319 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4021, i32 0, i32 0
  %4022 = load i64, i64* %PC.i318
  %4023 = add i64 %4022, 2
  store i64 %4023, i64* %PC.i318
  store i8 0, i8* %AL.i319, align 1
  store %struct.Memory* %loadMem_439dd4, %struct.Memory** %MEMORY
  %loadMem1_439dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 33
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %PC.i317
  %4028 = add i64 %4027, 98266
  %4029 = load i64, i64* %PC.i317
  %4030 = add i64 %4029, 5
  %4031 = load i64, i64* %PC.i317
  %4032 = add i64 %4031, 5
  store i64 %4032, i64* %PC.i317
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4034 = load i64, i64* %4033, align 8
  %4035 = add i64 %4034, -8
  %4036 = inttoptr i64 %4035 to i64*
  store i64 %4030, i64* %4036
  store i64 %4035, i64* %4033, align 8
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4028, i64* %4037, align 8
  store %struct.Memory* %loadMem1_439dd6, %struct.Memory** %MEMORY
  %loadMem2_439dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439dd6 = load i64, i64* %3
  %call2_439dd6 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439dd6, %struct.Memory* %loadMem2_439dd6)
  store %struct.Memory* %call2_439dd6, %struct.Memory** %MEMORY
  %loadMem_439ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 33
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4040 to i64*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 5
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %4043 to i64*
  %4044 = load i64, i64* %PC.i315
  %4045 = add i64 %4044, 7
  store i64 %4045, i64* %PC.i315
  %4046 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %4047 = zext i32 %4046 to i64
  store i64 %4047, i64* %RCX.i316, align 8
  store %struct.Memory* %loadMem_439ddb, %struct.Memory** %MEMORY
  %loadMem_439de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 33
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 5
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %ECX.i313 = bitcast %union.anon* %4053 to i32*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 15
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %4056 to i64*
  %4057 = load i64, i64* %RBP.i314
  %4058 = sub i64 %4057, 32
  %4059 = load i32, i32* %ECX.i313
  %4060 = zext i32 %4059 to i64
  %4061 = load i64, i64* %PC.i312
  %4062 = add i64 %4061, 3
  store i64 %4062, i64* %PC.i312
  %4063 = inttoptr i64 %4058 to i32*
  store i32 %4059, i32* %4063
  store %struct.Memory* %loadMem_439de2, %struct.Memory** %MEMORY
  %loadMem_439de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 15
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %4069 to i64*
  %4070 = load i64, i64* %RBP.i311
  %4071 = sub i64 %4070, 36
  %4072 = load i64, i64* %PC.i310
  %4073 = add i64 %4072, 7
  store i64 %4073, i64* %PC.i310
  %4074 = inttoptr i64 %4071 to i32*
  store i32 -1, i32* %4074
  store %struct.Memory* %loadMem_439de5, %struct.Memory** %MEMORY
  %loadMem_439dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 33
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4077 to i64*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 5
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %4080 to i64*
  %4081 = load i64, i64* %PC.i308
  %4082 = add i64 %4081, 7
  store i64 %4082, i64* %PC.i308
  %4083 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RCX.i309, align 8
  store %struct.Memory* %loadMem_439dec, %struct.Memory** %MEMORY
  %loadMem_439df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4086 = getelementptr inbounds %struct.GPR, %struct.GPR* %4085, i32 0, i32 33
  %4087 = getelementptr inbounds %struct.Reg, %struct.Reg* %4086, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4087 to i64*
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 5
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %ECX.i306 = bitcast %union.anon* %4090 to i32*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 15
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %RBP.i307
  %4095 = sub i64 %4094, 40
  %4096 = load i32, i32* %ECX.i306
  %4097 = zext i32 %4096 to i64
  %4098 = load i64, i64* %PC.i305
  %4099 = add i64 %4098, 3
  store i64 %4099, i64* %PC.i305
  %4100 = inttoptr i64 %4095 to i32*
  store i32 %4096, i32* %4100
  store %struct.Memory* %loadMem_439df3, %struct.Memory** %MEMORY
  %loadMem_439df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 15
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %4106 to i64*
  %4107 = load i64, i64* %RBP.i304
  %4108 = sub i64 %4107, 44
  %4109 = load i64, i64* %PC.i303
  %4110 = add i64 %4109, 7
  store i64 %4110, i64* %PC.i303
  %4111 = inttoptr i64 %4108 to i32*
  store i32 -1, i32* %4111
  store %struct.Memory* %loadMem_439df6, %struct.Memory** %MEMORY
  %loadMem_439dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 15
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RBP.i302
  %4119 = sub i64 %4118, 24
  %4120 = load i64, i64* %PC.i301
  %4121 = add i64 %4120, 7
  store i64 %4121, i64* %PC.i301
  %4122 = inttoptr i64 %4119 to i32*
  store i32 0, i32* %4122
  store %struct.Memory* %loadMem_439dfd, %struct.Memory** %MEMORY
  %loadMem_439e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 33
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 1
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %4128 to i32*
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 15
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %4131 to i64*
  %4132 = load i64, i64* %RBP.i300
  %4133 = sub i64 %4132, 96
  %4134 = load i32, i32* %EAX.i299
  %4135 = zext i32 %4134 to i64
  %4136 = load i64, i64* %PC.i298
  %4137 = add i64 %4136, 3
  store i64 %4137, i64* %PC.i298
  %4138 = inttoptr i64 %4133 to i32*
  store i32 %4134, i32* %4138
  store %struct.Memory* %loadMem_439e04, %struct.Memory** %MEMORY
  br label %block_.L_439e07

block_.L_439e07:                                  ; preds = %block_.L_439eb7, %block_.L_439dca
  %loadMem_439e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 1
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %4144 to i64*
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 15
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %4147 to i64*
  %4148 = load i64, i64* %RBP.i297
  %4149 = sub i64 %4148, 24
  %4150 = load i64, i64* %PC.i295
  %4151 = add i64 %4150, 3
  store i64 %4151, i64* %PC.i295
  %4152 = inttoptr i64 %4149 to i32*
  %4153 = load i32, i32* %4152
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_439e07, %struct.Memory** %MEMORY
  %loadMem_439e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %4157 to i64*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 1
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %4160 to i32*
  %4161 = load i32, i32* %EAX.i294
  %4162 = zext i32 %4161 to i64
  %4163 = load i64, i64* %PC.i293
  %4164 = add i64 %4163, 7
  store i64 %4164, i64* %PC.i293
  %4165 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %4166 = sub i32 %4161, %4165
  %4167 = icmp ult i32 %4161, %4165
  %4168 = zext i1 %4167 to i8
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4168, i8* %4169, align 1
  %4170 = and i32 %4166, 255
  %4171 = call i32 @llvm.ctpop.i32(i32 %4170)
  %4172 = trunc i32 %4171 to i8
  %4173 = and i8 %4172, 1
  %4174 = xor i8 %4173, 1
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4174, i8* %4175, align 1
  %4176 = xor i32 %4165, %4161
  %4177 = xor i32 %4176, %4166
  %4178 = lshr i32 %4177, 4
  %4179 = trunc i32 %4178 to i8
  %4180 = and i8 %4179, 1
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4180, i8* %4181, align 1
  %4182 = icmp eq i32 %4166, 0
  %4183 = zext i1 %4182 to i8
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4183, i8* %4184, align 1
  %4185 = lshr i32 %4166, 31
  %4186 = trunc i32 %4185 to i8
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4186, i8* %4187, align 1
  %4188 = lshr i32 %4161, 31
  %4189 = lshr i32 %4165, 31
  %4190 = xor i32 %4189, %4188
  %4191 = xor i32 %4185, %4188
  %4192 = add i32 %4191, %4190
  %4193 = icmp eq i32 %4192, 2
  %4194 = zext i1 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4194, i8* %4195, align 1
  store %struct.Memory* %loadMem_439e0a, %struct.Memory** %MEMORY
  %loadMem_439e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4198 to i64*
  %4199 = load i64, i64* %PC.i292
  %4200 = add i64 %4199, 180
  %4201 = load i64, i64* %PC.i292
  %4202 = add i64 %4201, 6
  %4203 = load i64, i64* %PC.i292
  %4204 = add i64 %4203, 6
  store i64 %4204, i64* %PC.i292
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4206 = load i8, i8* %4205, align 1
  %4207 = icmp ne i8 %4206, 0
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4209 = load i8, i8* %4208, align 1
  %4210 = icmp ne i8 %4209, 0
  %4211 = xor i1 %4207, %4210
  %4212 = xor i1 %4211, true
  %4213 = zext i1 %4212 to i8
  store i8 %4213, i8* %BRANCH_TAKEN, align 1
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4215 = select i1 %4211, i64 %4202, i64 %4200
  store i64 %4215, i64* %4214, align 8
  store %struct.Memory* %loadMem_439e11, %struct.Memory** %MEMORY
  %loadBr_439e11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e11 = icmp eq i8 %loadBr_439e11, 1
  br i1 %cmpBr_439e11, label %block_.L_439ec5, label %block_439e17

block_439e17:                                     ; preds = %block_.L_439e07
  %loadMem_439e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 33
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 15
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %RBP.i291
  %4223 = sub i64 %4222, 28
  %4224 = load i64, i64* %PC.i290
  %4225 = add i64 %4224, 7
  store i64 %4225, i64* %PC.i290
  %4226 = inttoptr i64 %4223 to i32*
  store i32 0, i32* %4226
  store %struct.Memory* %loadMem_439e17, %struct.Memory** %MEMORY
  br label %block_.L_439e1e

block_.L_439e1e:                                  ; preds = %block_.L_439ea4, %block_439e17
  %loadMem_439e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 1
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 15
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RBP.i289
  %4237 = sub i64 %4236, 28
  %4238 = load i64, i64* %PC.i287
  %4239 = add i64 %4238, 3
  store i64 %4239, i64* %PC.i287
  %4240 = inttoptr i64 %4237 to i32*
  %4241 = load i32, i32* %4240
  %4242 = zext i32 %4241 to i64
  store i64 %4242, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_439e1e, %struct.Memory** %MEMORY
  %loadMem_439e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 1
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %EAX.i286 = bitcast %union.anon* %4248 to i32*
  %4249 = load i32, i32* %EAX.i286
  %4250 = zext i32 %4249 to i64
  %4251 = load i64, i64* %PC.i285
  %4252 = add i64 %4251, 7
  store i64 %4252, i64* %PC.i285
  %4253 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %4254 = sub i32 %4249, %4253
  %4255 = icmp ult i32 %4249, %4253
  %4256 = zext i1 %4255 to i8
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4256, i8* %4257, align 1
  %4258 = and i32 %4254, 255
  %4259 = call i32 @llvm.ctpop.i32(i32 %4258)
  %4260 = trunc i32 %4259 to i8
  %4261 = and i8 %4260, 1
  %4262 = xor i8 %4261, 1
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4262, i8* %4263, align 1
  %4264 = xor i32 %4253, %4249
  %4265 = xor i32 %4264, %4254
  %4266 = lshr i32 %4265, 4
  %4267 = trunc i32 %4266 to i8
  %4268 = and i8 %4267, 1
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4268, i8* %4269, align 1
  %4270 = icmp eq i32 %4254, 0
  %4271 = zext i1 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4271, i8* %4272, align 1
  %4273 = lshr i32 %4254, 31
  %4274 = trunc i32 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4274, i8* %4275, align 1
  %4276 = lshr i32 %4249, 31
  %4277 = lshr i32 %4253, 31
  %4278 = xor i32 %4277, %4276
  %4279 = xor i32 %4273, %4276
  %4280 = add i32 %4279, %4278
  %4281 = icmp eq i32 %4280, 2
  %4282 = zext i1 %4281 to i8
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4282, i8* %4283, align 1
  store %struct.Memory* %loadMem_439e21, %struct.Memory** %MEMORY
  %loadMem_439e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4286 to i64*
  %4287 = load i64, i64* %PC.i284
  %4288 = add i64 %4287, 138
  %4289 = load i64, i64* %PC.i284
  %4290 = add i64 %4289, 6
  %4291 = load i64, i64* %PC.i284
  %4292 = add i64 %4291, 6
  store i64 %4292, i64* %PC.i284
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4294 = load i8, i8* %4293, align 1
  %4295 = icmp ne i8 %4294, 0
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4297 = load i8, i8* %4296, align 1
  %4298 = icmp ne i8 %4297, 0
  %4299 = xor i1 %4295, %4298
  %4300 = xor i1 %4299, true
  %4301 = zext i1 %4300 to i8
  store i8 %4301, i8* %BRANCH_TAKEN, align 1
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4303 = select i1 %4299, i64 %4290, i64 %4288
  store i64 %4303, i64* %4302, align 8
  store %struct.Memory* %loadMem_439e28, %struct.Memory** %MEMORY
  %loadBr_439e28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e28 = icmp eq i8 %loadBr_439e28, 1
  br i1 %cmpBr_439e28, label %block_.L_439eb2, label %block_439e2e

block_439e2e:                                     ; preds = %block_.L_439e1e
  %loadMem_439e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 33
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4306 to i64*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 1
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %4309 to i64*
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4311 = getelementptr inbounds %struct.GPR, %struct.GPR* %4310, i32 0, i32 15
  %4312 = getelementptr inbounds %struct.Reg, %struct.Reg* %4311, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %4312 to i64*
  %4313 = load i64, i64* %RBP.i283
  %4314 = sub i64 %4313, 8
  %4315 = load i64, i64* %PC.i281
  %4316 = add i64 %4315, 4
  store i64 %4316, i64* %PC.i281
  %4317 = inttoptr i64 %4314 to i64*
  %4318 = load i64, i64* %4317
  store i64 %4318, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_439e2e, %struct.Memory** %MEMORY
  %loadMem_439e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 33
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4321 to i64*
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4323 = getelementptr inbounds %struct.GPR, %struct.GPR* %4322, i32 0, i32 5
  %4324 = getelementptr inbounds %struct.Reg, %struct.Reg* %4323, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %4324 to i64*
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 15
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %4327 to i64*
  %4328 = load i64, i64* %RBP.i280
  %4329 = sub i64 %4328, 24
  %4330 = load i64, i64* %PC.i278
  %4331 = add i64 %4330, 4
  store i64 %4331, i64* %PC.i278
  %4332 = inttoptr i64 %4329 to i32*
  %4333 = load i32, i32* %4332
  %4334 = sext i32 %4333 to i64
  %4335 = mul i64 %4334, 20
  %4336 = trunc i64 %4335 to i32
  %4337 = and i64 %4335, 4294967295
  store i64 %4337, i64* %RCX.i279, align 8
  %4338 = shl i64 %4335, 32
  %4339 = ashr exact i64 %4338, 32
  %4340 = icmp ne i64 %4339, %4335
  %4341 = zext i1 %4340 to i8
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4341, i8* %4342, align 1
  %4343 = and i32 %4336, 255
  %4344 = call i32 @llvm.ctpop.i32(i32 %4343)
  %4345 = trunc i32 %4344 to i8
  %4346 = and i8 %4345, 1
  %4347 = xor i8 %4346, 1
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4347, i8* %4348, align 1
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4349, align 1
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4350, align 1
  %4351 = lshr i32 %4336, 31
  %4352 = trunc i32 %4351 to i8
  %4353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4352, i8* %4353, align 1
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4341, i8* %4354, align 1
  store %struct.Memory* %loadMem_439e32, %struct.Memory** %MEMORY
  %loadMem_439e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 5
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %4360 to i64*
  %4361 = load i64, i64* %RCX.i277
  %4362 = load i64, i64* %PC.i276
  %4363 = add i64 %4362, 3
  store i64 %4363, i64* %PC.i276
  %4364 = trunc i64 %4361 to i32
  %4365 = add i32 21, %4364
  %4366 = zext i32 %4365 to i64
  store i64 %4366, i64* %RCX.i277, align 8
  %4367 = icmp ult i32 %4365, %4364
  %4368 = icmp ult i32 %4365, 21
  %4369 = or i1 %4367, %4368
  %4370 = zext i1 %4369 to i8
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4370, i8* %4371, align 1
  %4372 = and i32 %4365, 255
  %4373 = call i32 @llvm.ctpop.i32(i32 %4372)
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4376, i8* %4377, align 1
  %4378 = xor i64 21, %4361
  %4379 = trunc i64 %4378 to i32
  %4380 = xor i32 %4379, %4365
  %4381 = lshr i32 %4380, 4
  %4382 = trunc i32 %4381 to i8
  %4383 = and i8 %4382, 1
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4383, i8* %4384, align 1
  %4385 = icmp eq i32 %4365, 0
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4386, i8* %4387, align 1
  %4388 = lshr i32 %4365, 31
  %4389 = trunc i32 %4388 to i8
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4389, i8* %4390, align 1
  %4391 = lshr i32 %4364, 31
  %4392 = xor i32 %4388, %4391
  %4393 = add i32 %4392, %4388
  %4394 = icmp eq i32 %4393, 2
  %4395 = zext i1 %4394 to i8
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4395, i8* %4396, align 1
  store %struct.Memory* %loadMem_439e36, %struct.Memory** %MEMORY
  %loadMem_439e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 33
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %4399 to i64*
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 5
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 15
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %4405 to i64*
  %4406 = load i64, i64* %RCX.i274
  %4407 = load i64, i64* %RBP.i275
  %4408 = sub i64 %4407, 28
  %4409 = load i64, i64* %PC.i273
  %4410 = add i64 %4409, 3
  store i64 %4410, i64* %PC.i273
  %4411 = trunc i64 %4406 to i32
  %4412 = inttoptr i64 %4408 to i32*
  %4413 = load i32, i32* %4412
  %4414 = add i32 %4413, %4411
  %4415 = zext i32 %4414 to i64
  store i64 %4415, i64* %RCX.i274, align 8
  %4416 = icmp ult i32 %4414, %4411
  %4417 = icmp ult i32 %4414, %4413
  %4418 = or i1 %4416, %4417
  %4419 = zext i1 %4418 to i8
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4419, i8* %4420, align 1
  %4421 = and i32 %4414, 255
  %4422 = call i32 @llvm.ctpop.i32(i32 %4421)
  %4423 = trunc i32 %4422 to i8
  %4424 = and i8 %4423, 1
  %4425 = xor i8 %4424, 1
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4425, i8* %4426, align 1
  %4427 = xor i32 %4413, %4411
  %4428 = xor i32 %4427, %4414
  %4429 = lshr i32 %4428, 4
  %4430 = trunc i32 %4429 to i8
  %4431 = and i8 %4430, 1
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4431, i8* %4432, align 1
  %4433 = icmp eq i32 %4414, 0
  %4434 = zext i1 %4433 to i8
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4434, i8* %4435, align 1
  %4436 = lshr i32 %4414, 31
  %4437 = trunc i32 %4436 to i8
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4437, i8* %4438, align 1
  %4439 = lshr i32 %4411, 31
  %4440 = lshr i32 %4413, 31
  %4441 = xor i32 %4436, %4439
  %4442 = xor i32 %4436, %4440
  %4443 = add i32 %4441, %4442
  %4444 = icmp eq i32 %4443, 2
  %4445 = zext i1 %4444 to i8
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4445, i8* %4446, align 1
  store %struct.Memory* %loadMem_439e39, %struct.Memory** %MEMORY
  %loadMem_439e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 33
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 5
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %ECX.i271 = bitcast %union.anon* %4452 to i32*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 7
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %4455 to i64*
  %4456 = load i32, i32* %ECX.i271
  %4457 = zext i32 %4456 to i64
  %4458 = load i64, i64* %PC.i270
  %4459 = add i64 %4458, 3
  store i64 %4459, i64* %PC.i270
  %4460 = shl i64 %4457, 32
  %4461 = ashr exact i64 %4460, 32
  store i64 %4461, i64* %RDX.i272, align 8
  store %struct.Memory* %loadMem_439e3c, %struct.Memory** %MEMORY
  %loadMem_439e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 33
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4464 to i64*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 7
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %4467 to i64*
  %4468 = load i64, i64* %RDX.i269
  %4469 = load i64, i64* %PC.i268
  %4470 = add i64 %4469, 4
  store i64 %4470, i64* %PC.i268
  %4471 = sext i64 %4468 to i128
  %4472 = and i128 %4471, -18446744073709551616
  %4473 = zext i64 %4468 to i128
  %4474 = or i128 %4472, %4473
  %4475 = mul i128 36, %4474
  %4476 = trunc i128 %4475 to i64
  store i64 %4476, i64* %RDX.i269, align 8
  %4477 = sext i64 %4476 to i128
  %4478 = icmp ne i128 %4477, %4475
  %4479 = zext i1 %4478 to i8
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4479, i8* %4480, align 1
  %4481 = trunc i128 %4475 to i32
  %4482 = and i32 %4481, 255
  %4483 = call i32 @llvm.ctpop.i32(i32 %4482)
  %4484 = trunc i32 %4483 to i8
  %4485 = and i8 %4484, 1
  %4486 = xor i8 %4485, 1
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4486, i8* %4487, align 1
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4488, align 1
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4489, align 1
  %4490 = lshr i64 %4476, 63
  %4491 = trunc i64 %4490 to i8
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4491, i8* %4492, align 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4479, i8* %4493, align 1
  store %struct.Memory* %loadMem_439e3f, %struct.Memory** %MEMORY
  %loadMem_439e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 1
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 7
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %4502 to i64*
  %4503 = load i64, i64* %RAX.i266
  %4504 = load i64, i64* %RDX.i267
  %4505 = load i64, i64* %PC.i265
  %4506 = add i64 %4505, 3
  store i64 %4506, i64* %PC.i265
  %4507 = add i64 %4504, %4503
  store i64 %4507, i64* %RAX.i266, align 8
  %4508 = icmp ult i64 %4507, %4503
  %4509 = icmp ult i64 %4507, %4504
  %4510 = or i1 %4508, %4509
  %4511 = zext i1 %4510 to i8
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4511, i8* %4512, align 1
  %4513 = trunc i64 %4507 to i32
  %4514 = and i32 %4513, 255
  %4515 = call i32 @llvm.ctpop.i32(i32 %4514)
  %4516 = trunc i32 %4515 to i8
  %4517 = and i8 %4516, 1
  %4518 = xor i8 %4517, 1
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4518, i8* %4519, align 1
  %4520 = xor i64 %4504, %4503
  %4521 = xor i64 %4520, %4507
  %4522 = lshr i64 %4521, 4
  %4523 = trunc i64 %4522 to i8
  %4524 = and i8 %4523, 1
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4524, i8* %4525, align 1
  %4526 = icmp eq i64 %4507, 0
  %4527 = zext i1 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4527, i8* %4528, align 1
  %4529 = lshr i64 %4507, 63
  %4530 = trunc i64 %4529 to i8
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4530, i8* %4531, align 1
  %4532 = lshr i64 %4503, 63
  %4533 = lshr i64 %4504, 63
  %4534 = xor i64 %4529, %4532
  %4535 = xor i64 %4529, %4533
  %4536 = add i64 %4534, %4535
  %4537 = icmp eq i64 %4536, 2
  %4538 = zext i1 %4537 to i8
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4538, i8* %4539, align 1
  store %struct.Memory* %loadMem_439e43, %struct.Memory** %MEMORY
  %loadMem_439e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 33
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %4542 to i64*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 1
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 5
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %RAX.i263
  %4550 = add i64 %4549, 12
  %4551 = load i64, i64* %PC.i262
  %4552 = add i64 %4551, 3
  store i64 %4552, i64* %PC.i262
  %4553 = inttoptr i64 %4550 to i32*
  %4554 = load i32, i32* %4553
  %4555 = zext i32 %4554 to i64
  store i64 %4555, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_439e46, %struct.Memory** %MEMORY
  %loadMem_439e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 33
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4558 to i64*
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4560 = getelementptr inbounds %struct.GPR, %struct.GPR* %4559, i32 0, i32 5
  %4561 = getelementptr inbounds %struct.Reg, %struct.Reg* %4560, i32 0, i32 0
  %ECX.i260 = bitcast %union.anon* %4561 to i32*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 15
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %4564 to i64*
  %4565 = load i32, i32* %ECX.i260
  %4566 = zext i32 %4565 to i64
  %4567 = load i64, i64* %RBP.i261
  %4568 = sub i64 %4567, 48
  %4569 = load i64, i64* %PC.i259
  %4570 = add i64 %4569, 3
  store i64 %4570, i64* %PC.i259
  %4571 = inttoptr i64 %4568 to i32*
  %4572 = load i32, i32* %4571
  %4573 = sub i32 %4565, %4572
  %4574 = icmp ult i32 %4565, %4572
  %4575 = zext i1 %4574 to i8
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4575, i8* %4576, align 1
  %4577 = and i32 %4573, 255
  %4578 = call i32 @llvm.ctpop.i32(i32 %4577)
  %4579 = trunc i32 %4578 to i8
  %4580 = and i8 %4579, 1
  %4581 = xor i8 %4580, 1
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4581, i8* %4582, align 1
  %4583 = xor i32 %4572, %4565
  %4584 = xor i32 %4583, %4573
  %4585 = lshr i32 %4584, 4
  %4586 = trunc i32 %4585 to i8
  %4587 = and i8 %4586, 1
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4587, i8* %4588, align 1
  %4589 = icmp eq i32 %4573, 0
  %4590 = zext i1 %4589 to i8
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4590, i8* %4591, align 1
  %4592 = lshr i32 %4573, 31
  %4593 = trunc i32 %4592 to i8
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4593, i8* %4594, align 1
  %4595 = lshr i32 %4565, 31
  %4596 = lshr i32 %4572, 31
  %4597 = xor i32 %4596, %4595
  %4598 = xor i32 %4592, %4595
  %4599 = add i32 %4598, %4597
  %4600 = icmp eq i32 %4599, 2
  %4601 = zext i1 %4600 to i8
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4601, i8* %4602, align 1
  store %struct.Memory* %loadMem_439e49, %struct.Memory** %MEMORY
  %loadMem_439e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %PC.i258
  %4607 = add i64 %4606, 11
  %4608 = load i64, i64* %PC.i258
  %4609 = add i64 %4608, 6
  %4610 = load i64, i64* %PC.i258
  %4611 = add i64 %4610, 6
  store i64 %4611, i64* %PC.i258
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4613 = load i8, i8* %4612, align 1
  store i8 %4613, i8* %BRANCH_TAKEN, align 1
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4615 = icmp ne i8 %4613, 0
  %4616 = select i1 %4615, i64 %4607, i64 %4609
  store i64 %4616, i64* %4614, align 8
  store %struct.Memory* %loadMem_439e4c, %struct.Memory** %MEMORY
  %loadBr_439e4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e4c = icmp eq i8 %loadBr_439e4c, 1
  br i1 %cmpBr_439e4c, label %block_.L_439e57, label %block_439e52

block_439e52:                                     ; preds = %block_439e2e
  %loadMem_439e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 33
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %4619 to i64*
  %4620 = load i64, i64* %PC.i257
  %4621 = add i64 %4620, 82
  %4622 = load i64, i64* %PC.i257
  %4623 = add i64 %4622, 5
  store i64 %4623, i64* %PC.i257
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4621, i64* %4624, align 8
  store %struct.Memory* %loadMem_439e52, %struct.Memory** %MEMORY
  br label %block_.L_439ea4

block_.L_439e57:                                  ; preds = %block_439e2e
  %loadMem_439e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 33
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %4627 to i64*
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4629 = getelementptr inbounds %struct.GPR, %struct.GPR* %4628, i32 0, i32 1
  %4630 = getelementptr inbounds %struct.Reg, %struct.Reg* %4629, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %4630 to i64*
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4632 = getelementptr inbounds %struct.GPR, %struct.GPR* %4631, i32 0, i32 15
  %4633 = getelementptr inbounds %struct.Reg, %struct.Reg* %4632, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %4633 to i64*
  %4634 = load i64, i64* %RBP.i256
  %4635 = sub i64 %4634, 24
  %4636 = load i64, i64* %PC.i254
  %4637 = add i64 %4636, 3
  store i64 %4637, i64* %PC.i254
  %4638 = inttoptr i64 %4635 to i32*
  %4639 = load i32, i32* %4638
  %4640 = zext i32 %4639 to i64
  store i64 %4640, i64* %RAX.i255, align 8
  store %struct.Memory* %loadMem_439e57, %struct.Memory** %MEMORY
  %loadMem_439e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %EAX.i252 = bitcast %union.anon* %4646 to i32*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 15
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %4649 to i64*
  %4650 = load i32, i32* %EAX.i252
  %4651 = zext i32 %4650 to i64
  %4652 = load i64, i64* %RBP.i253
  %4653 = sub i64 %4652, 32
  %4654 = load i64, i64* %PC.i251
  %4655 = add i64 %4654, 3
  store i64 %4655, i64* %PC.i251
  %4656 = inttoptr i64 %4653 to i32*
  %4657 = load i32, i32* %4656
  %4658 = sub i32 %4650, %4657
  %4659 = icmp ult i32 %4650, %4657
  %4660 = zext i1 %4659 to i8
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4660, i8* %4661, align 1
  %4662 = and i32 %4658, 255
  %4663 = call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4666, i8* %4667, align 1
  %4668 = xor i32 %4657, %4650
  %4669 = xor i32 %4668, %4658
  %4670 = lshr i32 %4669, 4
  %4671 = trunc i32 %4670 to i8
  %4672 = and i8 %4671, 1
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4672, i8* %4673, align 1
  %4674 = icmp eq i32 %4658, 0
  %4675 = zext i1 %4674 to i8
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4675, i8* %4676, align 1
  %4677 = lshr i32 %4658, 31
  %4678 = trunc i32 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4678, i8* %4679, align 1
  %4680 = lshr i32 %4650, 31
  %4681 = lshr i32 %4657, 31
  %4682 = xor i32 %4681, %4680
  %4683 = xor i32 %4677, %4680
  %4684 = add i32 %4683, %4682
  %4685 = icmp eq i32 %4684, 2
  %4686 = zext i1 %4685 to i8
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4686, i8* %4687, align 1
  store %struct.Memory* %loadMem_439e5a, %struct.Memory** %MEMORY
  %loadMem_439e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4690 to i64*
  %4691 = load i64, i64* %PC.i250
  %4692 = add i64 %4691, 12
  %4693 = load i64, i64* %PC.i250
  %4694 = add i64 %4693, 6
  %4695 = load i64, i64* %PC.i250
  %4696 = add i64 %4695, 6
  store i64 %4696, i64* %PC.i250
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4698 = load i8, i8* %4697, align 1
  %4699 = icmp ne i8 %4698, 0
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4701 = load i8, i8* %4700, align 1
  %4702 = icmp ne i8 %4701, 0
  %4703 = xor i1 %4699, %4702
  %4704 = xor i1 %4703, true
  %4705 = zext i1 %4704 to i8
  store i8 %4705, i8* %BRANCH_TAKEN, align 1
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4707 = select i1 %4703, i64 %4694, i64 %4692
  store i64 %4707, i64* %4706, align 8
  store %struct.Memory* %loadMem_439e5d, %struct.Memory** %MEMORY
  %loadBr_439e5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e5d = icmp eq i8 %loadBr_439e5d, 1
  br i1 %cmpBr_439e5d, label %block_.L_439e69, label %block_439e63

block_439e63:                                     ; preds = %block_.L_439e57
  %loadMem_439e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 1
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 15
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %4716 to i64*
  %4717 = load i64, i64* %RBP.i249
  %4718 = sub i64 %4717, 24
  %4719 = load i64, i64* %PC.i247
  %4720 = add i64 %4719, 3
  store i64 %4720, i64* %PC.i247
  %4721 = inttoptr i64 %4718 to i32*
  %4722 = load i32, i32* %4721
  %4723 = zext i32 %4722 to i64
  store i64 %4723, i64* %RAX.i248, align 8
  store %struct.Memory* %loadMem_439e63, %struct.Memory** %MEMORY
  %loadMem_439e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 33
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 1
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %EAX.i245 = bitcast %union.anon* %4729 to i32*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 15
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %RBP.i246
  %4734 = sub i64 %4733, 32
  %4735 = load i32, i32* %EAX.i245
  %4736 = zext i32 %4735 to i64
  %4737 = load i64, i64* %PC.i244
  %4738 = add i64 %4737, 3
  store i64 %4738, i64* %PC.i244
  %4739 = inttoptr i64 %4734 to i32*
  store i32 %4735, i32* %4739
  store %struct.Memory* %loadMem_439e66, %struct.Memory** %MEMORY
  br label %block_.L_439e69

block_.L_439e69:                                  ; preds = %block_439e63, %block_.L_439e57
  %loadMem_439e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 1
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %4745 to i64*
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 15
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %4748 to i64*
  %4749 = load i64, i64* %RBP.i243
  %4750 = sub i64 %4749, 24
  %4751 = load i64, i64* %PC.i241
  %4752 = add i64 %4751, 3
  store i64 %4752, i64* %PC.i241
  %4753 = inttoptr i64 %4750 to i32*
  %4754 = load i32, i32* %4753
  %4755 = zext i32 %4754 to i64
  store i64 %4755, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_439e69, %struct.Memory** %MEMORY
  %loadMem_439e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4757 = getelementptr inbounds %struct.GPR, %struct.GPR* %4756, i32 0, i32 33
  %4758 = getelementptr inbounds %struct.Reg, %struct.Reg* %4757, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4758 to i64*
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4760 = getelementptr inbounds %struct.GPR, %struct.GPR* %4759, i32 0, i32 1
  %4761 = getelementptr inbounds %struct.Reg, %struct.Reg* %4760, i32 0, i32 0
  %EAX.i239 = bitcast %union.anon* %4761 to i32*
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4763 = getelementptr inbounds %struct.GPR, %struct.GPR* %4762, i32 0, i32 15
  %4764 = getelementptr inbounds %struct.Reg, %struct.Reg* %4763, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %4764 to i64*
  %4765 = load i32, i32* %EAX.i239
  %4766 = zext i32 %4765 to i64
  %4767 = load i64, i64* %RBP.i240
  %4768 = sub i64 %4767, 36
  %4769 = load i64, i64* %PC.i238
  %4770 = add i64 %4769, 3
  store i64 %4770, i64* %PC.i238
  %4771 = inttoptr i64 %4768 to i32*
  %4772 = load i32, i32* %4771
  %4773 = sub i32 %4765, %4772
  %4774 = icmp ult i32 %4765, %4772
  %4775 = zext i1 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4775, i8* %4776, align 1
  %4777 = and i32 %4773, 255
  %4778 = call i32 @llvm.ctpop.i32(i32 %4777)
  %4779 = trunc i32 %4778 to i8
  %4780 = and i8 %4779, 1
  %4781 = xor i8 %4780, 1
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4781, i8* %4782, align 1
  %4783 = xor i32 %4772, %4765
  %4784 = xor i32 %4783, %4773
  %4785 = lshr i32 %4784, 4
  %4786 = trunc i32 %4785 to i8
  %4787 = and i8 %4786, 1
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4787, i8* %4788, align 1
  %4789 = icmp eq i32 %4773, 0
  %4790 = zext i1 %4789 to i8
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4790, i8* %4791, align 1
  %4792 = lshr i32 %4773, 31
  %4793 = trunc i32 %4792 to i8
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4793, i8* %4794, align 1
  %4795 = lshr i32 %4765, 31
  %4796 = lshr i32 %4772, 31
  %4797 = xor i32 %4796, %4795
  %4798 = xor i32 %4792, %4795
  %4799 = add i32 %4798, %4797
  %4800 = icmp eq i32 %4799, 2
  %4801 = zext i1 %4800 to i8
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4801, i8* %4802, align 1
  store %struct.Memory* %loadMem_439e6c, %struct.Memory** %MEMORY
  %loadMem_439e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 33
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4805 to i64*
  %4806 = load i64, i64* %PC.i237
  %4807 = add i64 %4806, 12
  %4808 = load i64, i64* %PC.i237
  %4809 = add i64 %4808, 6
  %4810 = load i64, i64* %PC.i237
  %4811 = add i64 %4810, 6
  store i64 %4811, i64* %PC.i237
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4813 = load i8, i8* %4812, align 1
  %4814 = icmp ne i8 %4813, 0
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4816 = load i8, i8* %4815, align 1
  %4817 = icmp ne i8 %4816, 0
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4819 = load i8, i8* %4818, align 1
  %4820 = icmp ne i8 %4819, 0
  %4821 = xor i1 %4817, %4820
  %4822 = or i1 %4814, %4821
  %4823 = zext i1 %4822 to i8
  store i8 %4823, i8* %BRANCH_TAKEN, align 1
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4825 = select i1 %4822, i64 %4807, i64 %4809
  store i64 %4825, i64* %4824, align 8
  store %struct.Memory* %loadMem_439e6f, %struct.Memory** %MEMORY
  %loadBr_439e6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e6f = icmp eq i8 %loadBr_439e6f, 1
  br i1 %cmpBr_439e6f, label %block_.L_439e7b, label %block_439e75

block_439e75:                                     ; preds = %block_.L_439e69
  %loadMem_439e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 1
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 15
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RBP.i236
  %4836 = sub i64 %4835, 24
  %4837 = load i64, i64* %PC.i234
  %4838 = add i64 %4837, 3
  store i64 %4838, i64* %PC.i234
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839
  %4841 = zext i32 %4840 to i64
  store i64 %4841, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_439e75, %struct.Memory** %MEMORY
  %loadMem_439e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 1
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %4847 to i32*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 15
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %RBP.i233
  %4852 = sub i64 %4851, 36
  %4853 = load i32, i32* %EAX.i232
  %4854 = zext i32 %4853 to i64
  %4855 = load i64, i64* %PC.i231
  %4856 = add i64 %4855, 3
  store i64 %4856, i64* %PC.i231
  %4857 = inttoptr i64 %4852 to i32*
  store i32 %4853, i32* %4857
  store %struct.Memory* %loadMem_439e78, %struct.Memory** %MEMORY
  br label %block_.L_439e7b

block_.L_439e7b:                                  ; preds = %block_439e75, %block_.L_439e69
  %loadMem_439e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 33
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 1
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 15
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RBP.i230
  %4868 = sub i64 %4867, 28
  %4869 = load i64, i64* %PC.i228
  %4870 = add i64 %4869, 3
  store i64 %4870, i64* %PC.i228
  %4871 = inttoptr i64 %4868 to i32*
  %4872 = load i32, i32* %4871
  %4873 = zext i32 %4872 to i64
  store i64 %4873, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_439e7b, %struct.Memory** %MEMORY
  %loadMem_439e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 33
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4876 to i64*
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 1
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %EAX.i226 = bitcast %union.anon* %4879 to i32*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 15
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4882 to i64*
  %4883 = load i32, i32* %EAX.i226
  %4884 = zext i32 %4883 to i64
  %4885 = load i64, i64* %RBP.i227
  %4886 = sub i64 %4885, 40
  %4887 = load i64, i64* %PC.i225
  %4888 = add i64 %4887, 3
  store i64 %4888, i64* %PC.i225
  %4889 = inttoptr i64 %4886 to i32*
  %4890 = load i32, i32* %4889
  %4891 = sub i32 %4883, %4890
  %4892 = icmp ult i32 %4883, %4890
  %4893 = zext i1 %4892 to i8
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4893, i8* %4894, align 1
  %4895 = and i32 %4891, 255
  %4896 = call i32 @llvm.ctpop.i32(i32 %4895)
  %4897 = trunc i32 %4896 to i8
  %4898 = and i8 %4897, 1
  %4899 = xor i8 %4898, 1
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4899, i8* %4900, align 1
  %4901 = xor i32 %4890, %4883
  %4902 = xor i32 %4901, %4891
  %4903 = lshr i32 %4902, 4
  %4904 = trunc i32 %4903 to i8
  %4905 = and i8 %4904, 1
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4905, i8* %4906, align 1
  %4907 = icmp eq i32 %4891, 0
  %4908 = zext i1 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4908, i8* %4909, align 1
  %4910 = lshr i32 %4891, 31
  %4911 = trunc i32 %4910 to i8
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4911, i8* %4912, align 1
  %4913 = lshr i32 %4883, 31
  %4914 = lshr i32 %4890, 31
  %4915 = xor i32 %4914, %4913
  %4916 = xor i32 %4910, %4913
  %4917 = add i32 %4916, %4915
  %4918 = icmp eq i32 %4917, 2
  %4919 = zext i1 %4918 to i8
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4919, i8* %4920, align 1
  store %struct.Memory* %loadMem_439e7e, %struct.Memory** %MEMORY
  %loadMem_439e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4922 = getelementptr inbounds %struct.GPR, %struct.GPR* %4921, i32 0, i32 33
  %4923 = getelementptr inbounds %struct.Reg, %struct.Reg* %4922, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4923 to i64*
  %4924 = load i64, i64* %PC.i224
  %4925 = add i64 %4924, 12
  %4926 = load i64, i64* %PC.i224
  %4927 = add i64 %4926, 6
  %4928 = load i64, i64* %PC.i224
  %4929 = add i64 %4928, 6
  store i64 %4929, i64* %PC.i224
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4931 = load i8, i8* %4930, align 1
  %4932 = icmp ne i8 %4931, 0
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4934 = load i8, i8* %4933, align 1
  %4935 = icmp ne i8 %4934, 0
  %4936 = xor i1 %4932, %4935
  %4937 = xor i1 %4936, true
  %4938 = zext i1 %4937 to i8
  store i8 %4938, i8* %BRANCH_TAKEN, align 1
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4940 = select i1 %4936, i64 %4927, i64 %4925
  store i64 %4940, i64* %4939, align 8
  store %struct.Memory* %loadMem_439e81, %struct.Memory** %MEMORY
  %loadBr_439e81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e81 = icmp eq i8 %loadBr_439e81, 1
  br i1 %cmpBr_439e81, label %block_.L_439e8d, label %block_439e87

block_439e87:                                     ; preds = %block_.L_439e7b
  %loadMem_439e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 33
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4943 to i64*
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 1
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4948 = getelementptr inbounds %struct.GPR, %struct.GPR* %4947, i32 0, i32 15
  %4949 = getelementptr inbounds %struct.Reg, %struct.Reg* %4948, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %4949 to i64*
  %4950 = load i64, i64* %RBP.i223
  %4951 = sub i64 %4950, 28
  %4952 = load i64, i64* %PC.i221
  %4953 = add i64 %4952, 3
  store i64 %4953, i64* %PC.i221
  %4954 = inttoptr i64 %4951 to i32*
  %4955 = load i32, i32* %4954
  %4956 = zext i32 %4955 to i64
  store i64 %4956, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_439e87, %struct.Memory** %MEMORY
  %loadMem_439e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 1
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %4962 to i32*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 15
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4965 to i64*
  %4966 = load i64, i64* %RBP.i220
  %4967 = sub i64 %4966, 40
  %4968 = load i32, i32* %EAX.i219
  %4969 = zext i32 %4968 to i64
  %4970 = load i64, i64* %PC.i218
  %4971 = add i64 %4970, 3
  store i64 %4971, i64* %PC.i218
  %4972 = inttoptr i64 %4967 to i32*
  store i32 %4968, i32* %4972
  store %struct.Memory* %loadMem_439e8a, %struct.Memory** %MEMORY
  br label %block_.L_439e8d

block_.L_439e8d:                                  ; preds = %block_439e87, %block_.L_439e7b
  %loadMem_439e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 33
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 1
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %4978 to i64*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 15
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %4981 to i64*
  %4982 = load i64, i64* %RBP.i217
  %4983 = sub i64 %4982, 28
  %4984 = load i64, i64* %PC.i215
  %4985 = add i64 %4984, 3
  store i64 %4985, i64* %PC.i215
  %4986 = inttoptr i64 %4983 to i32*
  %4987 = load i32, i32* %4986
  %4988 = zext i32 %4987 to i64
  store i64 %4988, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_439e8d, %struct.Memory** %MEMORY
  %loadMem_439e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 33
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 1
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %4994 to i32*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 15
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4997 to i64*
  %4998 = load i32, i32* %EAX.i213
  %4999 = zext i32 %4998 to i64
  %5000 = load i64, i64* %RBP.i214
  %5001 = sub i64 %5000, 44
  %5002 = load i64, i64* %PC.i212
  %5003 = add i64 %5002, 3
  store i64 %5003, i64* %PC.i212
  %5004 = inttoptr i64 %5001 to i32*
  %5005 = load i32, i32* %5004
  %5006 = sub i32 %4998, %5005
  %5007 = icmp ult i32 %4998, %5005
  %5008 = zext i1 %5007 to i8
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5008, i8* %5009, align 1
  %5010 = and i32 %5006, 255
  %5011 = call i32 @llvm.ctpop.i32(i32 %5010)
  %5012 = trunc i32 %5011 to i8
  %5013 = and i8 %5012, 1
  %5014 = xor i8 %5013, 1
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5014, i8* %5015, align 1
  %5016 = xor i32 %5005, %4998
  %5017 = xor i32 %5016, %5006
  %5018 = lshr i32 %5017, 4
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5020, i8* %5021, align 1
  %5022 = icmp eq i32 %5006, 0
  %5023 = zext i1 %5022 to i8
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5023, i8* %5024, align 1
  %5025 = lshr i32 %5006, 31
  %5026 = trunc i32 %5025 to i8
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5026, i8* %5027, align 1
  %5028 = lshr i32 %4998, 31
  %5029 = lshr i32 %5005, 31
  %5030 = xor i32 %5029, %5028
  %5031 = xor i32 %5025, %5028
  %5032 = add i32 %5031, %5030
  %5033 = icmp eq i32 %5032, 2
  %5034 = zext i1 %5033 to i8
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5034, i8* %5035, align 1
  store %struct.Memory* %loadMem_439e90, %struct.Memory** %MEMORY
  %loadMem_439e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5037 = getelementptr inbounds %struct.GPR, %struct.GPR* %5036, i32 0, i32 33
  %5038 = getelementptr inbounds %struct.Reg, %struct.Reg* %5037, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5038 to i64*
  %5039 = load i64, i64* %PC.i211
  %5040 = add i64 %5039, 12
  %5041 = load i64, i64* %PC.i211
  %5042 = add i64 %5041, 6
  %5043 = load i64, i64* %PC.i211
  %5044 = add i64 %5043, 6
  store i64 %5044, i64* %PC.i211
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5046 = load i8, i8* %5045, align 1
  %5047 = icmp ne i8 %5046, 0
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5049 = load i8, i8* %5048, align 1
  %5050 = icmp ne i8 %5049, 0
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5052 = load i8, i8* %5051, align 1
  %5053 = icmp ne i8 %5052, 0
  %5054 = xor i1 %5050, %5053
  %5055 = or i1 %5047, %5054
  %5056 = zext i1 %5055 to i8
  store i8 %5056, i8* %BRANCH_TAKEN, align 1
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5058 = select i1 %5055, i64 %5040, i64 %5042
  store i64 %5058, i64* %5057, align 8
  store %struct.Memory* %loadMem_439e93, %struct.Memory** %MEMORY
  %loadBr_439e93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439e93 = icmp eq i8 %loadBr_439e93, 1
  br i1 %cmpBr_439e93, label %block_.L_439e9f, label %block_439e99

block_439e99:                                     ; preds = %block_.L_439e8d
  %loadMem_439e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5060 = getelementptr inbounds %struct.GPR, %struct.GPR* %5059, i32 0, i32 33
  %5061 = getelementptr inbounds %struct.Reg, %struct.Reg* %5060, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5061 to i64*
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 1
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %5064 to i64*
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 15
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %RBP.i210
  %5069 = sub i64 %5068, 28
  %5070 = load i64, i64* %PC.i208
  %5071 = add i64 %5070, 3
  store i64 %5071, i64* %PC.i208
  %5072 = inttoptr i64 %5069 to i32*
  %5073 = load i32, i32* %5072
  %5074 = zext i32 %5073 to i64
  store i64 %5074, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_439e99, %struct.Memory** %MEMORY
  %loadMem_439e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 33
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5077 to i64*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 1
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %5080 to i32*
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 15
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5083 to i64*
  %5084 = load i64, i64* %RBP.i207
  %5085 = sub i64 %5084, 44
  %5086 = load i32, i32* %EAX.i206
  %5087 = zext i32 %5086 to i64
  %5088 = load i64, i64* %PC.i205
  %5089 = add i64 %5088, 3
  store i64 %5089, i64* %PC.i205
  %5090 = inttoptr i64 %5085 to i32*
  store i32 %5086, i32* %5090
  store %struct.Memory* %loadMem_439e9c, %struct.Memory** %MEMORY
  br label %block_.L_439e9f

block_.L_439e9f:                                  ; preds = %block_439e99, %block_.L_439e8d
  %loadMem_439e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 33
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5093 to i64*
  %5094 = load i64, i64* %PC.i204
  %5095 = add i64 %5094, 5
  %5096 = load i64, i64* %PC.i204
  %5097 = add i64 %5096, 5
  store i64 %5097, i64* %PC.i204
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5095, i64* %5098, align 8
  store %struct.Memory* %loadMem_439e9f, %struct.Memory** %MEMORY
  br label %block_.L_439ea4

block_.L_439ea4:                                  ; preds = %block_.L_439e9f, %block_439e52
  %loadMem_439ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 33
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 1
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 15
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %5107 to i64*
  %5108 = load i64, i64* %RBP.i203
  %5109 = sub i64 %5108, 28
  %5110 = load i64, i64* %PC.i201
  %5111 = add i64 %5110, 3
  store i64 %5111, i64* %PC.i201
  %5112 = inttoptr i64 %5109 to i32*
  %5113 = load i32, i32* %5112
  %5114 = zext i32 %5113 to i64
  store i64 %5114, i64* %RAX.i202, align 8
  store %struct.Memory* %loadMem_439ea4, %struct.Memory** %MEMORY
  %loadMem_439ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %5117 to i64*
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5119 = getelementptr inbounds %struct.GPR, %struct.GPR* %5118, i32 0, i32 1
  %5120 = getelementptr inbounds %struct.Reg, %struct.Reg* %5119, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %5120 to i64*
  %5121 = load i64, i64* %RAX.i200
  %5122 = load i64, i64* %PC.i199
  %5123 = add i64 %5122, 3
  store i64 %5123, i64* %PC.i199
  %5124 = trunc i64 %5121 to i32
  %5125 = add i32 1, %5124
  %5126 = zext i32 %5125 to i64
  store i64 %5126, i64* %RAX.i200, align 8
  %5127 = icmp ult i32 %5125, %5124
  %5128 = icmp ult i32 %5125, 1
  %5129 = or i1 %5127, %5128
  %5130 = zext i1 %5129 to i8
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5130, i8* %5131, align 1
  %5132 = and i32 %5125, 255
  %5133 = call i32 @llvm.ctpop.i32(i32 %5132)
  %5134 = trunc i32 %5133 to i8
  %5135 = and i8 %5134, 1
  %5136 = xor i8 %5135, 1
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5136, i8* %5137, align 1
  %5138 = xor i64 1, %5121
  %5139 = trunc i64 %5138 to i32
  %5140 = xor i32 %5139, %5125
  %5141 = lshr i32 %5140, 4
  %5142 = trunc i32 %5141 to i8
  %5143 = and i8 %5142, 1
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5143, i8* %5144, align 1
  %5145 = icmp eq i32 %5125, 0
  %5146 = zext i1 %5145 to i8
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5146, i8* %5147, align 1
  %5148 = lshr i32 %5125, 31
  %5149 = trunc i32 %5148 to i8
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5149, i8* %5150, align 1
  %5151 = lshr i32 %5124, 31
  %5152 = xor i32 %5148, %5151
  %5153 = add i32 %5152, %5148
  %5154 = icmp eq i32 %5153, 2
  %5155 = zext i1 %5154 to i8
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5155, i8* %5156, align 1
  store %struct.Memory* %loadMem_439ea7, %struct.Memory** %MEMORY
  %loadMem_439eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5158 = getelementptr inbounds %struct.GPR, %struct.GPR* %5157, i32 0, i32 33
  %5159 = getelementptr inbounds %struct.Reg, %struct.Reg* %5158, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5159 to i64*
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 1
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %EAX.i197 = bitcast %union.anon* %5162 to i32*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 15
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %5165 to i64*
  %5166 = load i64, i64* %RBP.i198
  %5167 = sub i64 %5166, 28
  %5168 = load i32, i32* %EAX.i197
  %5169 = zext i32 %5168 to i64
  %5170 = load i64, i64* %PC.i196
  %5171 = add i64 %5170, 3
  store i64 %5171, i64* %PC.i196
  %5172 = inttoptr i64 %5167 to i32*
  store i32 %5168, i32* %5172
  store %struct.Memory* %loadMem_439eaa, %struct.Memory** %MEMORY
  %loadMem_439ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 33
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5175 to i64*
  %5176 = load i64, i64* %PC.i195
  %5177 = add i64 %5176, -143
  %5178 = load i64, i64* %PC.i195
  %5179 = add i64 %5178, 5
  store i64 %5179, i64* %PC.i195
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5177, i64* %5180, align 8
  store %struct.Memory* %loadMem_439ead, %struct.Memory** %MEMORY
  br label %block_.L_439e1e

block_.L_439eb2:                                  ; preds = %block_.L_439e1e
  %loadMem_439eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 33
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5183 to i64*
  %5184 = load i64, i64* %PC.i194
  %5185 = add i64 %5184, 5
  %5186 = load i64, i64* %PC.i194
  %5187 = add i64 %5186, 5
  store i64 %5187, i64* %PC.i194
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5185, i64* %5188, align 8
  store %struct.Memory* %loadMem_439eb2, %struct.Memory** %MEMORY
  br label %block_.L_439eb7

block_.L_439eb7:                                  ; preds = %block_.L_439eb2
  %loadMem_439eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 1
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RAX.i192 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 15
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %RBP.i193
  %5199 = sub i64 %5198, 24
  %5200 = load i64, i64* %PC.i191
  %5201 = add i64 %5200, 3
  store i64 %5201, i64* %PC.i191
  %5202 = inttoptr i64 %5199 to i32*
  %5203 = load i32, i32* %5202
  %5204 = zext i32 %5203 to i64
  store i64 %5204, i64* %RAX.i192, align 8
  store %struct.Memory* %loadMem_439eb7, %struct.Memory** %MEMORY
  %loadMem_439eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5206 = getelementptr inbounds %struct.GPR, %struct.GPR* %5205, i32 0, i32 33
  %5207 = getelementptr inbounds %struct.Reg, %struct.Reg* %5206, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5207 to i64*
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 1
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %5210 to i64*
  %5211 = load i64, i64* %RAX.i190
  %5212 = load i64, i64* %PC.i189
  %5213 = add i64 %5212, 3
  store i64 %5213, i64* %PC.i189
  %5214 = trunc i64 %5211 to i32
  %5215 = add i32 1, %5214
  %5216 = zext i32 %5215 to i64
  store i64 %5216, i64* %RAX.i190, align 8
  %5217 = icmp ult i32 %5215, %5214
  %5218 = icmp ult i32 %5215, 1
  %5219 = or i1 %5217, %5218
  %5220 = zext i1 %5219 to i8
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5220, i8* %5221, align 1
  %5222 = and i32 %5215, 255
  %5223 = call i32 @llvm.ctpop.i32(i32 %5222)
  %5224 = trunc i32 %5223 to i8
  %5225 = and i8 %5224, 1
  %5226 = xor i8 %5225, 1
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5226, i8* %5227, align 1
  %5228 = xor i64 1, %5211
  %5229 = trunc i64 %5228 to i32
  %5230 = xor i32 %5229, %5215
  %5231 = lshr i32 %5230, 4
  %5232 = trunc i32 %5231 to i8
  %5233 = and i8 %5232, 1
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5233, i8* %5234, align 1
  %5235 = icmp eq i32 %5215, 0
  %5236 = zext i1 %5235 to i8
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5236, i8* %5237, align 1
  %5238 = lshr i32 %5215, 31
  %5239 = trunc i32 %5238 to i8
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5239, i8* %5240, align 1
  %5241 = lshr i32 %5214, 31
  %5242 = xor i32 %5238, %5241
  %5243 = add i32 %5242, %5238
  %5244 = icmp eq i32 %5243, 2
  %5245 = zext i1 %5244 to i8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5245, i8* %5246, align 1
  store %struct.Memory* %loadMem_439eba, %struct.Memory** %MEMORY
  %loadMem_439ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 1
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %EAX.i187 = bitcast %union.anon* %5252 to i32*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 15
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %5255 to i64*
  %5256 = load i64, i64* %RBP.i188
  %5257 = sub i64 %5256, 24
  %5258 = load i32, i32* %EAX.i187
  %5259 = zext i32 %5258 to i64
  %5260 = load i64, i64* %PC.i186
  %5261 = add i64 %5260, 3
  store i64 %5261, i64* %PC.i186
  %5262 = inttoptr i64 %5257 to i32*
  store i32 %5258, i32* %5262
  store %struct.Memory* %loadMem_439ebd, %struct.Memory** %MEMORY
  %loadMem_439ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 33
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5265 to i64*
  %5266 = load i64, i64* %PC.i185
  %5267 = add i64 %5266, -185
  %5268 = load i64, i64* %PC.i185
  %5269 = add i64 %5268, 5
  store i64 %5269, i64* %PC.i185
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5267, i64* %5270, align 8
  store %struct.Memory* %loadMem_439ec0, %struct.Memory** %MEMORY
  br label %block_.L_439e07

block_.L_439ec5:                                  ; preds = %block_.L_439e07
  %loadMem_439ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 33
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5273 to i64*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 1
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %5276 to i64*
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 15
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %RBP.i184
  %5281 = sub i64 %5280, 32
  %5282 = load i64, i64* %PC.i182
  %5283 = add i64 %5282, 3
  store i64 %5283, i64* %PC.i182
  %5284 = inttoptr i64 %5281 to i32*
  %5285 = load i32, i32* %5284
  %5286 = zext i32 %5285 to i64
  store i64 %5286, i64* %RAX.i183, align 8
  store %struct.Memory* %loadMem_439ec5, %struct.Memory** %MEMORY
  %loadMem_439ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %5292 to i32*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 15
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %RBP.i181
  %5297 = sub i64 %5296, 24
  %5298 = load i32, i32* %EAX.i180
  %5299 = zext i32 %5298 to i64
  %5300 = load i64, i64* %PC.i179
  %5301 = add i64 %5300, 3
  store i64 %5301, i64* %PC.i179
  %5302 = inttoptr i64 %5297 to i32*
  store i32 %5298, i32* %5302
  store %struct.Memory* %loadMem_439ec8, %struct.Memory** %MEMORY
  br label %block_.L_439ecb

block_.L_439ecb:                                  ; preds = %block_.L_43a02b, %block_.L_439ec5
  %loadMem_439ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 33
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 1
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 15
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %5311 to i64*
  %5312 = load i64, i64* %RBP.i178
  %5313 = sub i64 %5312, 24
  %5314 = load i64, i64* %PC.i176
  %5315 = add i64 %5314, 3
  store i64 %5315, i64* %PC.i176
  %5316 = inttoptr i64 %5313 to i32*
  %5317 = load i32, i32* %5316
  %5318 = zext i32 %5317 to i64
  store i64 %5318, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_439ecb, %struct.Memory** %MEMORY
  %loadMem_439ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 33
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5321 to i64*
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5323 = getelementptr inbounds %struct.GPR, %struct.GPR* %5322, i32 0, i32 1
  %5324 = getelementptr inbounds %struct.Reg, %struct.Reg* %5323, i32 0, i32 0
  %EAX.i174 = bitcast %union.anon* %5324 to i32*
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5326 = getelementptr inbounds %struct.GPR, %struct.GPR* %5325, i32 0, i32 15
  %5327 = getelementptr inbounds %struct.Reg, %struct.Reg* %5326, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %5327 to i64*
  %5328 = load i32, i32* %EAX.i174
  %5329 = zext i32 %5328 to i64
  %5330 = load i64, i64* %RBP.i175
  %5331 = sub i64 %5330, 36
  %5332 = load i64, i64* %PC.i173
  %5333 = add i64 %5332, 3
  store i64 %5333, i64* %PC.i173
  %5334 = inttoptr i64 %5331 to i32*
  %5335 = load i32, i32* %5334
  %5336 = sub i32 %5328, %5335
  %5337 = icmp ult i32 %5328, %5335
  %5338 = zext i1 %5337 to i8
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5338, i8* %5339, align 1
  %5340 = and i32 %5336, 255
  %5341 = call i32 @llvm.ctpop.i32(i32 %5340)
  %5342 = trunc i32 %5341 to i8
  %5343 = and i8 %5342, 1
  %5344 = xor i8 %5343, 1
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5344, i8* %5345, align 1
  %5346 = xor i32 %5335, %5328
  %5347 = xor i32 %5346, %5336
  %5348 = lshr i32 %5347, 4
  %5349 = trunc i32 %5348 to i8
  %5350 = and i8 %5349, 1
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5350, i8* %5351, align 1
  %5352 = icmp eq i32 %5336, 0
  %5353 = zext i1 %5352 to i8
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5353, i8* %5354, align 1
  %5355 = lshr i32 %5336, 31
  %5356 = trunc i32 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5356, i8* %5357, align 1
  %5358 = lshr i32 %5328, 31
  %5359 = lshr i32 %5335, 31
  %5360 = xor i32 %5359, %5358
  %5361 = xor i32 %5355, %5358
  %5362 = add i32 %5361, %5360
  %5363 = icmp eq i32 %5362, 2
  %5364 = zext i1 %5363 to i8
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5364, i8* %5365, align 1
  store %struct.Memory* %loadMem_439ece, %struct.Memory** %MEMORY
  %loadMem_439ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 33
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5368 to i64*
  %5369 = load i64, i64* %PC.i172
  %5370 = add i64 %5369, 380
  %5371 = load i64, i64* %PC.i172
  %5372 = add i64 %5371, 6
  %5373 = load i64, i64* %PC.i172
  %5374 = add i64 %5373, 6
  store i64 %5374, i64* %PC.i172
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5376 = load i8, i8* %5375, align 1
  %5377 = icmp eq i8 %5376, 0
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5379 = load i8, i8* %5378, align 1
  %5380 = icmp ne i8 %5379, 0
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5382 = load i8, i8* %5381, align 1
  %5383 = icmp ne i8 %5382, 0
  %5384 = xor i1 %5380, %5383
  %5385 = xor i1 %5384, true
  %5386 = and i1 %5377, %5385
  %5387 = zext i1 %5386 to i8
  store i8 %5387, i8* %BRANCH_TAKEN, align 1
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5389 = select i1 %5386, i64 %5370, i64 %5372
  store i64 %5389, i64* %5388, align 8
  store %struct.Memory* %loadMem_439ed1, %struct.Memory** %MEMORY
  %loadBr_439ed1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ed1 = icmp eq i8 %loadBr_439ed1, 1
  br i1 %cmpBr_439ed1, label %block_.L_43a04d, label %block_439ed7

block_439ed7:                                     ; preds = %block_.L_439ecb
  %loadMem_439ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 33
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5392 to i64*
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 11
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %5395 to i64*
  %5396 = load i64, i64* %PC.i170
  %5397 = add i64 %5396, 10
  store i64 %5397, i64* %PC.i170
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDI.i171, align 8
  store %struct.Memory* %loadMem_439ed7, %struct.Memory** %MEMORY
  %loadMem_439ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5399 = getelementptr inbounds %struct.GPR, %struct.GPR* %5398, i32 0, i32 33
  %5400 = getelementptr inbounds %struct.Reg, %struct.Reg* %5399, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5400 to i64*
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 1
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %5404 = bitcast %union.anon* %5403 to %struct.anon.2*
  %AL.i169 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5404, i32 0, i32 0
  %5405 = load i64, i64* %PC.i168
  %5406 = add i64 %5405, 2
  store i64 %5406, i64* %PC.i168
  store i8 0, i8* %AL.i169, align 1
  store %struct.Memory* %loadMem_439ee1, %struct.Memory** %MEMORY
  %loadMem1_439ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 33
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %5409 to i64*
  %5410 = load i64, i64* %PC.i167
  %5411 = add i64 %5410, 97997
  %5412 = load i64, i64* %PC.i167
  %5413 = add i64 %5412, 5
  %5414 = load i64, i64* %PC.i167
  %5415 = add i64 %5414, 5
  store i64 %5415, i64* %PC.i167
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5417 = load i64, i64* %5416, align 8
  %5418 = add i64 %5417, -8
  %5419 = inttoptr i64 %5418 to i64*
  store i64 %5413, i64* %5419
  store i64 %5418, i64* %5416, align 8
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5411, i64* %5420, align 8
  store %struct.Memory* %loadMem1_439ee3, %struct.Memory** %MEMORY
  %loadMem2_439ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ee3 = load i64, i64* %3
  %call2_439ee3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439ee3, %struct.Memory* %loadMem2_439ee3)
  store %struct.Memory* %call2_439ee3, %struct.Memory** %MEMORY
  %loadMem_439ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 33
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %5423 to i64*
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5425 = getelementptr inbounds %struct.GPR, %struct.GPR* %5424, i32 0, i32 5
  %5426 = getelementptr inbounds %struct.Reg, %struct.Reg* %5425, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %5426 to i64*
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5428 = getelementptr inbounds %struct.GPR, %struct.GPR* %5427, i32 0, i32 15
  %5429 = getelementptr inbounds %struct.Reg, %struct.Reg* %5428, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %5429 to i64*
  %5430 = load i64, i64* %RBP.i166
  %5431 = sub i64 %5430, 40
  %5432 = load i64, i64* %PC.i164
  %5433 = add i64 %5432, 3
  store i64 %5433, i64* %PC.i164
  %5434 = inttoptr i64 %5431 to i32*
  %5435 = load i32, i32* %5434
  %5436 = zext i32 %5435 to i64
  store i64 %5436, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_439ee8, %struct.Memory** %MEMORY
  %loadMem_439eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 33
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %5439 to i64*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 5
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %ECX.i162 = bitcast %union.anon* %5442 to i32*
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 15
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %5445 to i64*
  %5446 = load i64, i64* %RBP.i163
  %5447 = sub i64 %5446, 28
  %5448 = load i32, i32* %ECX.i162
  %5449 = zext i32 %5448 to i64
  %5450 = load i64, i64* %PC.i161
  %5451 = add i64 %5450, 3
  store i64 %5451, i64* %PC.i161
  %5452 = inttoptr i64 %5447 to i32*
  store i32 %5448, i32* %5452
  store %struct.Memory* %loadMem_439eeb, %struct.Memory** %MEMORY
  %loadMem_439eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 33
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5455 to i64*
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 1
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %EAX.i159 = bitcast %union.anon* %5458 to i32*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 15
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %5461 to i64*
  %5462 = load i64, i64* %RBP.i160
  %5463 = sub i64 %5462, 100
  %5464 = load i32, i32* %EAX.i159
  %5465 = zext i32 %5464 to i64
  %5466 = load i64, i64* %PC.i158
  %5467 = add i64 %5466, 3
  store i64 %5467, i64* %PC.i158
  %5468 = inttoptr i64 %5463 to i32*
  store i32 %5464, i32* %5468
  store %struct.Memory* %loadMem_439eee, %struct.Memory** %MEMORY
  br label %block_.L_439ef1

block_.L_439ef1:                                  ; preds = %block_.L_43a01d, %block_439ed7
  %loadMem_439ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 33
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %5471 to i64*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 1
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %5474 to i64*
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 15
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %5477 to i64*
  %5478 = load i64, i64* %RBP.i157
  %5479 = sub i64 %5478, 28
  %5480 = load i64, i64* %PC.i155
  %5481 = add i64 %5480, 3
  store i64 %5481, i64* %PC.i155
  %5482 = inttoptr i64 %5479 to i32*
  %5483 = load i32, i32* %5482
  %5484 = zext i32 %5483 to i64
  store i64 %5484, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_439ef1, %struct.Memory** %MEMORY
  %loadMem_439ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5486 = getelementptr inbounds %struct.GPR, %struct.GPR* %5485, i32 0, i32 33
  %5487 = getelementptr inbounds %struct.Reg, %struct.Reg* %5486, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5487 to i64*
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 1
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %5490 to i32*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 15
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %5493 to i64*
  %5494 = load i32, i32* %EAX.i153
  %5495 = zext i32 %5494 to i64
  %5496 = load i64, i64* %RBP.i154
  %5497 = sub i64 %5496, 44
  %5498 = load i64, i64* %PC.i152
  %5499 = add i64 %5498, 3
  store i64 %5499, i64* %PC.i152
  %5500 = inttoptr i64 %5497 to i32*
  %5501 = load i32, i32* %5500
  %5502 = sub i32 %5494, %5501
  %5503 = icmp ult i32 %5494, %5501
  %5504 = zext i1 %5503 to i8
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5504, i8* %5505, align 1
  %5506 = and i32 %5502, 255
  %5507 = call i32 @llvm.ctpop.i32(i32 %5506)
  %5508 = trunc i32 %5507 to i8
  %5509 = and i8 %5508, 1
  %5510 = xor i8 %5509, 1
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5510, i8* %5511, align 1
  %5512 = xor i32 %5501, %5494
  %5513 = xor i32 %5512, %5502
  %5514 = lshr i32 %5513, 4
  %5515 = trunc i32 %5514 to i8
  %5516 = and i8 %5515, 1
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5516, i8* %5517, align 1
  %5518 = icmp eq i32 %5502, 0
  %5519 = zext i1 %5518 to i8
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5519, i8* %5520, align 1
  %5521 = lshr i32 %5502, 31
  %5522 = trunc i32 %5521 to i8
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5522, i8* %5523, align 1
  %5524 = lshr i32 %5494, 31
  %5525 = lshr i32 %5501, 31
  %5526 = xor i32 %5525, %5524
  %5527 = xor i32 %5521, %5524
  %5528 = add i32 %5527, %5526
  %5529 = icmp eq i32 %5528, 2
  %5530 = zext i1 %5529 to i8
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5530, i8* %5531, align 1
  store %struct.Memory* %loadMem_439ef4, %struct.Memory** %MEMORY
  %loadMem_439ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 33
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5534 to i64*
  %5535 = load i64, i64* %PC.i151
  %5536 = add i64 %5535, 308
  %5537 = load i64, i64* %PC.i151
  %5538 = add i64 %5537, 6
  %5539 = load i64, i64* %PC.i151
  %5540 = add i64 %5539, 6
  store i64 %5540, i64* %PC.i151
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5542 = load i8, i8* %5541, align 1
  %5543 = icmp eq i8 %5542, 0
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5545 = load i8, i8* %5544, align 1
  %5546 = icmp ne i8 %5545, 0
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5548 = load i8, i8* %5547, align 1
  %5549 = icmp ne i8 %5548, 0
  %5550 = xor i1 %5546, %5549
  %5551 = xor i1 %5550, true
  %5552 = and i1 %5543, %5551
  %5553 = zext i1 %5552 to i8
  store i8 %5553, i8* %BRANCH_TAKEN, align 1
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5555 = select i1 %5552, i64 %5536, i64 %5538
  store i64 %5555, i64* %5554, align 8
  store %struct.Memory* %loadMem_439ef7, %struct.Memory** %MEMORY
  %loadBr_439ef7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439ef7 = icmp eq i8 %loadBr_439ef7, 1
  br i1 %cmpBr_439ef7, label %block_.L_43a02b, label %block_439efd

block_439efd:                                     ; preds = %block_.L_439ef1
  %loadMem_439efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 33
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5558 to i64*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 1
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %5561 to i64*
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 15
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %5564 to i64*
  %5565 = load i64, i64* %RBP.i150
  %5566 = sub i64 %5565, 24
  %5567 = load i64, i64* %PC.i148
  %5568 = add i64 %5567, 4
  store i64 %5568, i64* %PC.i148
  %5569 = inttoptr i64 %5566 to i32*
  %5570 = load i32, i32* %5569
  %5571 = sext i32 %5570 to i64
  %5572 = mul i64 %5571, 20
  %5573 = trunc i64 %5572 to i32
  %5574 = and i64 %5572, 4294967295
  store i64 %5574, i64* %RAX.i149, align 8
  %5575 = shl i64 %5572, 32
  %5576 = ashr exact i64 %5575, 32
  %5577 = icmp ne i64 %5576, %5572
  %5578 = zext i1 %5577 to i8
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5578, i8* %5579, align 1
  %5580 = and i32 %5573, 255
  %5581 = call i32 @llvm.ctpop.i32(i32 %5580)
  %5582 = trunc i32 %5581 to i8
  %5583 = and i8 %5582, 1
  %5584 = xor i8 %5583, 1
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5584, i8* %5585, align 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5586, align 1
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5587, align 1
  %5588 = lshr i32 %5573, 31
  %5589 = trunc i32 %5588 to i8
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5589, i8* %5590, align 1
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5578, i8* %5591, align 1
  store %struct.Memory* %loadMem_439efd, %struct.Memory** %MEMORY
  %loadMem_439f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 33
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %5594 to i64*
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5596 = getelementptr inbounds %struct.GPR, %struct.GPR* %5595, i32 0, i32 1
  %5597 = getelementptr inbounds %struct.Reg, %struct.Reg* %5596, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %5597 to i64*
  %5598 = load i64, i64* %RAX.i147
  %5599 = load i64, i64* %PC.i146
  %5600 = add i64 %5599, 3
  store i64 %5600, i64* %PC.i146
  %5601 = trunc i64 %5598 to i32
  %5602 = add i32 21, %5601
  %5603 = zext i32 %5602 to i64
  store i64 %5603, i64* %RAX.i147, align 8
  %5604 = icmp ult i32 %5602, %5601
  %5605 = icmp ult i32 %5602, 21
  %5606 = or i1 %5604, %5605
  %5607 = zext i1 %5606 to i8
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5607, i8* %5608, align 1
  %5609 = and i32 %5602, 255
  %5610 = call i32 @llvm.ctpop.i32(i32 %5609)
  %5611 = trunc i32 %5610 to i8
  %5612 = and i8 %5611, 1
  %5613 = xor i8 %5612, 1
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5613, i8* %5614, align 1
  %5615 = xor i64 21, %5598
  %5616 = trunc i64 %5615 to i32
  %5617 = xor i32 %5616, %5602
  %5618 = lshr i32 %5617, 4
  %5619 = trunc i32 %5618 to i8
  %5620 = and i8 %5619, 1
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5620, i8* %5621, align 1
  %5622 = icmp eq i32 %5602, 0
  %5623 = zext i1 %5622 to i8
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5623, i8* %5624, align 1
  %5625 = lshr i32 %5602, 31
  %5626 = trunc i32 %5625 to i8
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5626, i8* %5627, align 1
  %5628 = lshr i32 %5601, 31
  %5629 = xor i32 %5625, %5628
  %5630 = add i32 %5629, %5625
  %5631 = icmp eq i32 %5630, 2
  %5632 = zext i1 %5631 to i8
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5632, i8* %5633, align 1
  store %struct.Memory* %loadMem_439f01, %struct.Memory** %MEMORY
  %loadMem_439f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5635 = getelementptr inbounds %struct.GPR, %struct.GPR* %5634, i32 0, i32 33
  %5636 = getelementptr inbounds %struct.Reg, %struct.Reg* %5635, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %5636 to i64*
  %5637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5638 = getelementptr inbounds %struct.GPR, %struct.GPR* %5637, i32 0, i32 1
  %5639 = getelementptr inbounds %struct.Reg, %struct.Reg* %5638, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %5639 to i64*
  %5640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5641 = getelementptr inbounds %struct.GPR, %struct.GPR* %5640, i32 0, i32 15
  %5642 = getelementptr inbounds %struct.Reg, %struct.Reg* %5641, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %5642 to i64*
  %5643 = load i64, i64* %RAX.i144
  %5644 = load i64, i64* %RBP.i145
  %5645 = sub i64 %5644, 28
  %5646 = load i64, i64* %PC.i143
  %5647 = add i64 %5646, 3
  store i64 %5647, i64* %PC.i143
  %5648 = trunc i64 %5643 to i32
  %5649 = inttoptr i64 %5645 to i32*
  %5650 = load i32, i32* %5649
  %5651 = add i32 %5650, %5648
  %5652 = zext i32 %5651 to i64
  store i64 %5652, i64* %RAX.i144, align 8
  %5653 = icmp ult i32 %5651, %5648
  %5654 = icmp ult i32 %5651, %5650
  %5655 = or i1 %5653, %5654
  %5656 = zext i1 %5655 to i8
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5656, i8* %5657, align 1
  %5658 = and i32 %5651, 255
  %5659 = call i32 @llvm.ctpop.i32(i32 %5658)
  %5660 = trunc i32 %5659 to i8
  %5661 = and i8 %5660, 1
  %5662 = xor i8 %5661, 1
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5662, i8* %5663, align 1
  %5664 = xor i32 %5650, %5648
  %5665 = xor i32 %5664, %5651
  %5666 = lshr i32 %5665, 4
  %5667 = trunc i32 %5666 to i8
  %5668 = and i8 %5667, 1
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5668, i8* %5669, align 1
  %5670 = icmp eq i32 %5651, 0
  %5671 = zext i1 %5670 to i8
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5671, i8* %5672, align 1
  %5673 = lshr i32 %5651, 31
  %5674 = trunc i32 %5673 to i8
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5674, i8* %5675, align 1
  %5676 = lshr i32 %5648, 31
  %5677 = lshr i32 %5650, 31
  %5678 = xor i32 %5673, %5676
  %5679 = xor i32 %5673, %5677
  %5680 = add i32 %5678, %5679
  %5681 = icmp eq i32 %5680, 2
  %5682 = zext i1 %5681 to i8
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5682, i8* %5683, align 1
  store %struct.Memory* %loadMem_439f04, %struct.Memory** %MEMORY
  %loadMem_439f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5685 = getelementptr inbounds %struct.GPR, %struct.GPR* %5684, i32 0, i32 33
  %5686 = getelementptr inbounds %struct.Reg, %struct.Reg* %5685, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5686 to i64*
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5688 = getelementptr inbounds %struct.GPR, %struct.GPR* %5687, i32 0, i32 1
  %5689 = getelementptr inbounds %struct.Reg, %struct.Reg* %5688, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %5689 to i32*
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 15
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %5692 to i64*
  %5693 = load i64, i64* %RBP.i142
  %5694 = sub i64 %5693, 56
  %5695 = load i32, i32* %EAX.i141
  %5696 = zext i32 %5695 to i64
  %5697 = load i64, i64* %PC.i140
  %5698 = add i64 %5697, 3
  store i64 %5698, i64* %PC.i140
  %5699 = inttoptr i64 %5694 to i32*
  store i32 %5695, i32* %5699
  store %struct.Memory* %loadMem_439f07, %struct.Memory** %MEMORY
  %loadMem_439f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 33
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %5702 to i64*
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 5
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %5705 to i64*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 15
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %5708 to i64*
  %5709 = load i64, i64* %RBP.i139
  %5710 = sub i64 %5709, 8
  %5711 = load i64, i64* %PC.i137
  %5712 = add i64 %5711, 4
  store i64 %5712, i64* %PC.i137
  %5713 = inttoptr i64 %5710 to i64*
  %5714 = load i64, i64* %5713
  store i64 %5714, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_439f0a, %struct.Memory** %MEMORY
  %loadMem_439f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 33
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %5717 to i64*
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 7
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %5720 to i64*
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 15
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %5723 to i64*
  %5724 = load i64, i64* %RBP.i136
  %5725 = sub i64 %5724, 56
  %5726 = load i64, i64* %PC.i134
  %5727 = add i64 %5726, 4
  store i64 %5727, i64* %PC.i134
  %5728 = inttoptr i64 %5725 to i32*
  %5729 = load i32, i32* %5728
  %5730 = sext i32 %5729 to i64
  store i64 %5730, i64* %RDX.i135, align 8
  store %struct.Memory* %loadMem_439f0e, %struct.Memory** %MEMORY
  %loadMem_439f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5732 = getelementptr inbounds %struct.GPR, %struct.GPR* %5731, i32 0, i32 33
  %5733 = getelementptr inbounds %struct.Reg, %struct.Reg* %5732, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5733 to i64*
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5735 = getelementptr inbounds %struct.GPR, %struct.GPR* %5734, i32 0, i32 7
  %5736 = getelementptr inbounds %struct.Reg, %struct.Reg* %5735, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %5736 to i64*
  %5737 = load i64, i64* %RDX.i133
  %5738 = load i64, i64* %PC.i132
  %5739 = add i64 %5738, 4
  store i64 %5739, i64* %PC.i132
  %5740 = sext i64 %5737 to i128
  %5741 = and i128 %5740, -18446744073709551616
  %5742 = zext i64 %5737 to i128
  %5743 = or i128 %5741, %5742
  %5744 = mul i128 36, %5743
  %5745 = trunc i128 %5744 to i64
  store i64 %5745, i64* %RDX.i133, align 8
  %5746 = sext i64 %5745 to i128
  %5747 = icmp ne i128 %5746, %5744
  %5748 = zext i1 %5747 to i8
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5748, i8* %5749, align 1
  %5750 = trunc i128 %5744 to i32
  %5751 = and i32 %5750, 255
  %5752 = call i32 @llvm.ctpop.i32(i32 %5751)
  %5753 = trunc i32 %5752 to i8
  %5754 = and i8 %5753, 1
  %5755 = xor i8 %5754, 1
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5755, i8* %5756, align 1
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5757, align 1
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5758, align 1
  %5759 = lshr i64 %5745, 63
  %5760 = trunc i64 %5759 to i8
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5760, i8* %5761, align 1
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5748, i8* %5762, align 1
  store %struct.Memory* %loadMem_439f12, %struct.Memory** %MEMORY
  %loadMem_439f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5764 = getelementptr inbounds %struct.GPR, %struct.GPR* %5763, i32 0, i32 33
  %5765 = getelementptr inbounds %struct.Reg, %struct.Reg* %5764, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5765 to i64*
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5767 = getelementptr inbounds %struct.GPR, %struct.GPR* %5766, i32 0, i32 5
  %5768 = getelementptr inbounds %struct.Reg, %struct.Reg* %5767, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %5768 to i64*
  %5769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5770 = getelementptr inbounds %struct.GPR, %struct.GPR* %5769, i32 0, i32 7
  %5771 = getelementptr inbounds %struct.Reg, %struct.Reg* %5770, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5771 to i64*
  %5772 = load i64, i64* %RCX.i131
  %5773 = load i64, i64* %RDX.i
  %5774 = load i64, i64* %PC.i130
  %5775 = add i64 %5774, 3
  store i64 %5775, i64* %PC.i130
  %5776 = add i64 %5773, %5772
  store i64 %5776, i64* %RCX.i131, align 8
  %5777 = icmp ult i64 %5776, %5772
  %5778 = icmp ult i64 %5776, %5773
  %5779 = or i1 %5777, %5778
  %5780 = zext i1 %5779 to i8
  %5781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5780, i8* %5781, align 1
  %5782 = trunc i64 %5776 to i32
  %5783 = and i32 %5782, 255
  %5784 = call i32 @llvm.ctpop.i32(i32 %5783)
  %5785 = trunc i32 %5784 to i8
  %5786 = and i8 %5785, 1
  %5787 = xor i8 %5786, 1
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5787, i8* %5788, align 1
  %5789 = xor i64 %5773, %5772
  %5790 = xor i64 %5789, %5776
  %5791 = lshr i64 %5790, 4
  %5792 = trunc i64 %5791 to i8
  %5793 = and i8 %5792, 1
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5793, i8* %5794, align 1
  %5795 = icmp eq i64 %5776, 0
  %5796 = zext i1 %5795 to i8
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5796, i8* %5797, align 1
  %5798 = lshr i64 %5776, 63
  %5799 = trunc i64 %5798 to i8
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5799, i8* %5800, align 1
  %5801 = lshr i64 %5772, 63
  %5802 = lshr i64 %5773, 63
  %5803 = xor i64 %5798, %5801
  %5804 = xor i64 %5798, %5802
  %5805 = add i64 %5803, %5804
  %5806 = icmp eq i64 %5805, 2
  %5807 = zext i1 %5806 to i8
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5807, i8* %5808, align 1
  store %struct.Memory* %loadMem_439f16, %struct.Memory** %MEMORY
  %loadMem_439f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5810 = getelementptr inbounds %struct.GPR, %struct.GPR* %5809, i32 0, i32 33
  %5811 = getelementptr inbounds %struct.Reg, %struct.Reg* %5810, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5811 to i64*
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 1
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %5814 to i64*
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5816 = getelementptr inbounds %struct.GPR, %struct.GPR* %5815, i32 0, i32 5
  %5817 = getelementptr inbounds %struct.Reg, %struct.Reg* %5816, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %5817 to i64*
  %5818 = load i64, i64* %RCX.i129
  %5819 = add i64 %5818, 12
  %5820 = load i64, i64* %PC.i127
  %5821 = add i64 %5820, 3
  store i64 %5821, i64* %PC.i127
  %5822 = inttoptr i64 %5819 to i32*
  %5823 = load i32, i32* %5822
  %5824 = zext i32 %5823 to i64
  store i64 %5824, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_439f19, %struct.Memory** %MEMORY
  %loadMem_439f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 33
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 1
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %5830 to i32*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 15
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %5833 to i64*
  %5834 = load i32, i32* %EAX.i125
  %5835 = zext i32 %5834 to i64
  %5836 = load i64, i64* %RBP.i126
  %5837 = sub i64 %5836, 48
  %5838 = load i64, i64* %PC.i124
  %5839 = add i64 %5838, 3
  store i64 %5839, i64* %PC.i124
  %5840 = inttoptr i64 %5837 to i32*
  %5841 = load i32, i32* %5840
  %5842 = sub i32 %5834, %5841
  %5843 = icmp ult i32 %5834, %5841
  %5844 = zext i1 %5843 to i8
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5844, i8* %5845, align 1
  %5846 = and i32 %5842, 255
  %5847 = call i32 @llvm.ctpop.i32(i32 %5846)
  %5848 = trunc i32 %5847 to i8
  %5849 = and i8 %5848, 1
  %5850 = xor i8 %5849, 1
  %5851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5850, i8* %5851, align 1
  %5852 = xor i32 %5841, %5834
  %5853 = xor i32 %5852, %5842
  %5854 = lshr i32 %5853, 4
  %5855 = trunc i32 %5854 to i8
  %5856 = and i8 %5855, 1
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5856, i8* %5857, align 1
  %5858 = icmp eq i32 %5842, 0
  %5859 = zext i1 %5858 to i8
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5859, i8* %5860, align 1
  %5861 = lshr i32 %5842, 31
  %5862 = trunc i32 %5861 to i8
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5862, i8* %5863, align 1
  %5864 = lshr i32 %5834, 31
  %5865 = lshr i32 %5841, 31
  %5866 = xor i32 %5865, %5864
  %5867 = xor i32 %5861, %5864
  %5868 = add i32 %5867, %5866
  %5869 = icmp eq i32 %5868, 2
  %5870 = zext i1 %5869 to i8
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5870, i8* %5871, align 1
  store %struct.Memory* %loadMem_439f1c, %struct.Memory** %MEMORY
  %loadMem_439f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5873 = getelementptr inbounds %struct.GPR, %struct.GPR* %5872, i32 0, i32 33
  %5874 = getelementptr inbounds %struct.Reg, %struct.Reg* %5873, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5874 to i64*
  %5875 = load i64, i64* %PC.i123
  %5876 = add i64 %5875, 229
  %5877 = load i64, i64* %PC.i123
  %5878 = add i64 %5877, 6
  %5879 = load i64, i64* %PC.i123
  %5880 = add i64 %5879, 6
  store i64 %5880, i64* %PC.i123
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5882 = load i8, i8* %5881, align 1
  %5883 = icmp eq i8 %5882, 0
  %5884 = zext i1 %5883 to i8
  store i8 %5884, i8* %BRANCH_TAKEN, align 1
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5886 = select i1 %5883, i64 %5876, i64 %5878
  store i64 %5886, i64* %5885, align 8
  store %struct.Memory* %loadMem_439f1f, %struct.Memory** %MEMORY
  %loadBr_439f1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f1f = icmp eq i8 %loadBr_439f1f, 1
  br i1 %cmpBr_439f1f, label %block_.L_43a004, label %block_439f25

block_439f25:                                     ; preds = %block_439efd
  %loadMem_439f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 1
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %5892 to i64*
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 15
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5895 to i64*
  %5896 = load i64, i64* %RBP.i122
  %5897 = sub i64 %5896, 56
  %5898 = load i64, i64* %PC.i120
  %5899 = add i64 %5898, 4
  store i64 %5899, i64* %PC.i120
  %5900 = inttoptr i64 %5897 to i32*
  %5901 = load i32, i32* %5900
  %5902 = sext i32 %5901 to i64
  store i64 %5902, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_439f25, %struct.Memory** %MEMORY
  %loadMem_439f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5904 = getelementptr inbounds %struct.GPR, %struct.GPR* %5903, i32 0, i32 33
  %5905 = getelementptr inbounds %struct.Reg, %struct.Reg* %5904, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5905 to i64*
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5907 = getelementptr inbounds %struct.GPR, %struct.GPR* %5906, i32 0, i32 1
  %5908 = getelementptr inbounds %struct.Reg, %struct.Reg* %5907, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %5908 to i64*
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5910 = getelementptr inbounds %struct.GPR, %struct.GPR* %5909, i32 0, i32 5
  %5911 = getelementptr inbounds %struct.Reg, %struct.Reg* %5910, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %5911 to i64*
  %5912 = load i64, i64* %RAX.i118
  %5913 = add i64 %5912, 12099168
  %5914 = load i64, i64* %PC.i117
  %5915 = add i64 %5914, 8
  store i64 %5915, i64* %PC.i117
  %5916 = inttoptr i64 %5913 to i8*
  %5917 = load i8, i8* %5916
  %5918 = zext i8 %5917 to i64
  store i64 %5918, i64* %RCX.i119, align 8
  store %struct.Memory* %loadMem_439f29, %struct.Memory** %MEMORY
  %loadMem_439f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5920 = getelementptr inbounds %struct.GPR, %struct.GPR* %5919, i32 0, i32 33
  %5921 = getelementptr inbounds %struct.Reg, %struct.Reg* %5920, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5921 to i64*
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5923 = getelementptr inbounds %struct.GPR, %struct.GPR* %5922, i32 0, i32 5
  %5924 = getelementptr inbounds %struct.Reg, %struct.Reg* %5923, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5924 to i32*
  %5925 = load i32, i32* %ECX.i
  %5926 = zext i32 %5925 to i64
  %5927 = load i64, i64* %PC.i116
  %5928 = add i64 %5927, 3
  store i64 %5928, i64* %PC.i116
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5929, align 1
  %5930 = and i32 %5925, 255
  %5931 = call i32 @llvm.ctpop.i32(i32 %5930)
  %5932 = trunc i32 %5931 to i8
  %5933 = and i8 %5932, 1
  %5934 = xor i8 %5933, 1
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5934, i8* %5935, align 1
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5936, align 1
  %5937 = icmp eq i32 %5925, 0
  %5938 = zext i1 %5937 to i8
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5938, i8* %5939, align 1
  %5940 = lshr i32 %5925, 31
  %5941 = trunc i32 %5940 to i8
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5941, i8* %5942, align 1
  %5943 = lshr i32 %5925, 31
  %5944 = xor i32 %5940, %5943
  %5945 = add i32 %5944, %5943
  %5946 = icmp eq i32 %5945, 2
  %5947 = zext i1 %5946 to i8
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5947, i8* %5948, align 1
  store %struct.Memory* %loadMem_439f31, %struct.Memory** %MEMORY
  %loadMem_439f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 33
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5951 to i64*
  %5952 = load i64, i64* %PC.i115
  %5953 = add i64 %5952, 132
  %5954 = load i64, i64* %PC.i115
  %5955 = add i64 %5954, 6
  %5956 = load i64, i64* %PC.i115
  %5957 = add i64 %5956, 6
  store i64 %5957, i64* %PC.i115
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5959 = load i8, i8* %5958, align 1
  %5960 = icmp eq i8 %5959, 0
  %5961 = zext i1 %5960 to i8
  store i8 %5961, i8* %BRANCH_TAKEN, align 1
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5963 = select i1 %5960, i64 %5953, i64 %5955
  store i64 %5963, i64* %5962, align 8
  store %struct.Memory* %loadMem_439f34, %struct.Memory** %MEMORY
  %loadBr_439f34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f34 = icmp eq i8 %loadBr_439f34, 1
  br i1 %cmpBr_439f34, label %block_.L_439fb8, label %block_439f3a

block_439f3a:                                     ; preds = %block_439f25
  %loadMem_439f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 33
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 1
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %5969 to i64*
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5971 = getelementptr inbounds %struct.GPR, %struct.GPR* %5970, i32 0, i32 15
  %5972 = getelementptr inbounds %struct.Reg, %struct.Reg* %5971, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %5972 to i64*
  %5973 = load i64, i64* %RBP.i114
  %5974 = sub i64 %5973, 8
  %5975 = load i64, i64* %PC.i112
  %5976 = add i64 %5975, 4
  store i64 %5976, i64* %PC.i112
  %5977 = inttoptr i64 %5974 to i64*
  %5978 = load i64, i64* %5977
  store i64 %5978, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_439f3a, %struct.Memory** %MEMORY
  %loadMem_439f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 5
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %5984 to i64*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 15
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %RBP.i111
  %5989 = sub i64 %5988, 56
  %5990 = load i64, i64* %PC.i109
  %5991 = add i64 %5990, 4
  store i64 %5991, i64* %PC.i109
  %5992 = inttoptr i64 %5989 to i32*
  %5993 = load i32, i32* %5992
  %5994 = sext i32 %5993 to i64
  store i64 %5994, i64* %RCX.i110, align 8
  store %struct.Memory* %loadMem_439f3e, %struct.Memory** %MEMORY
  %loadMem_439f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 33
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5997 to i64*
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 5
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %6000 to i64*
  %6001 = load i64, i64* %RCX.i108
  %6002 = load i64, i64* %PC.i107
  %6003 = add i64 %6002, 4
  store i64 %6003, i64* %PC.i107
  %6004 = sext i64 %6001 to i128
  %6005 = and i128 %6004, -18446744073709551616
  %6006 = zext i64 %6001 to i128
  %6007 = or i128 %6005, %6006
  %6008 = mul i128 36, %6007
  %6009 = trunc i128 %6008 to i64
  store i64 %6009, i64* %RCX.i108, align 8
  %6010 = sext i64 %6009 to i128
  %6011 = icmp ne i128 %6010, %6008
  %6012 = zext i1 %6011 to i8
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6012, i8* %6013, align 1
  %6014 = trunc i128 %6008 to i32
  %6015 = and i32 %6014, 255
  %6016 = call i32 @llvm.ctpop.i32(i32 %6015)
  %6017 = trunc i32 %6016 to i8
  %6018 = and i8 %6017, 1
  %6019 = xor i8 %6018, 1
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6019, i8* %6020, align 1
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6021, align 1
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6022, align 1
  %6023 = lshr i64 %6009, 63
  %6024 = trunc i64 %6023 to i8
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6024, i8* %6025, align 1
  %6026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6012, i8* %6026, align 1
  store %struct.Memory* %loadMem_439f42, %struct.Memory** %MEMORY
  %loadMem_439f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 33
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 1
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %6032 to i64*
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 5
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6035 to i64*
  %6036 = load i64, i64* %RAX.i106
  %6037 = load i64, i64* %RCX.i
  %6038 = load i64, i64* %PC.i105
  %6039 = add i64 %6038, 3
  store i64 %6039, i64* %PC.i105
  %6040 = add i64 %6037, %6036
  store i64 %6040, i64* %RAX.i106, align 8
  %6041 = icmp ult i64 %6040, %6036
  %6042 = icmp ult i64 %6040, %6037
  %6043 = or i1 %6041, %6042
  %6044 = zext i1 %6043 to i8
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6044, i8* %6045, align 1
  %6046 = trunc i64 %6040 to i32
  %6047 = and i32 %6046, 255
  %6048 = call i32 @llvm.ctpop.i32(i32 %6047)
  %6049 = trunc i32 %6048 to i8
  %6050 = and i8 %6049, 1
  %6051 = xor i8 %6050, 1
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6051, i8* %6052, align 1
  %6053 = xor i64 %6037, %6036
  %6054 = xor i64 %6053, %6040
  %6055 = lshr i64 %6054, 4
  %6056 = trunc i64 %6055 to i8
  %6057 = and i8 %6056, 1
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6057, i8* %6058, align 1
  %6059 = icmp eq i64 %6040, 0
  %6060 = zext i1 %6059 to i8
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6060, i8* %6061, align 1
  %6062 = lshr i64 %6040, 63
  %6063 = trunc i64 %6062 to i8
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6063, i8* %6064, align 1
  %6065 = lshr i64 %6036, 63
  %6066 = lshr i64 %6037, 63
  %6067 = xor i64 %6062, %6065
  %6068 = xor i64 %6062, %6066
  %6069 = add i64 %6067, %6068
  %6070 = icmp eq i64 %6069, 2
  %6071 = zext i1 %6070 to i8
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6071, i8* %6072, align 1
  store %struct.Memory* %loadMem_439f46, %struct.Memory** %MEMORY
  %loadMem_439f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 33
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6075 to i64*
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 1
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %6078 to i64*
  %6079 = load i64, i64* %RAX.i104
  %6080 = add i64 %6079, 28
  %6081 = load i64, i64* %PC.i103
  %6082 = add i64 %6081, 4
  store i64 %6082, i64* %PC.i103
  %6083 = inttoptr i64 %6080 to i8*
  %6084 = load i8, i8* %6083
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6085, align 1
  %6086 = zext i8 %6084 to i32
  %6087 = call i32 @llvm.ctpop.i32(i32 %6086)
  %6088 = trunc i32 %6087 to i8
  %6089 = and i8 %6088, 1
  %6090 = xor i8 %6089, 1
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6090, i8* %6091, align 1
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6092, align 1
  %6093 = icmp eq i8 %6084, 0
  %6094 = zext i1 %6093 to i8
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6094, i8* %6095, align 1
  %6096 = lshr i8 %6084, 7
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6096, i8* %6097, align 1
  %6098 = lshr i8 %6084, 7
  %6099 = xor i8 %6096, %6098
  %6100 = add i8 %6099, %6098
  %6101 = icmp eq i8 %6100, 2
  %6102 = zext i1 %6101 to i8
  %6103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6102, i8* %6103, align 1
  store %struct.Memory* %loadMem_439f49, %struct.Memory** %MEMORY
  %loadMem_439f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6105 = getelementptr inbounds %struct.GPR, %struct.GPR* %6104, i32 0, i32 33
  %6106 = getelementptr inbounds %struct.Reg, %struct.Reg* %6105, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6106 to i64*
  %6107 = load i64, i64* %PC.i102
  %6108 = add i64 %6107, 31
  %6109 = load i64, i64* %PC.i102
  %6110 = add i64 %6109, 6
  %6111 = load i64, i64* %PC.i102
  %6112 = add i64 %6111, 6
  store i64 %6112, i64* %PC.i102
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6114 = load i8, i8* %6113, align 1
  store i8 %6114, i8* %BRANCH_TAKEN, align 1
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6116 = icmp ne i8 %6114, 0
  %6117 = select i1 %6116, i64 %6108, i64 %6110
  store i64 %6117, i64* %6115, align 8
  store %struct.Memory* %loadMem_439f4d, %struct.Memory** %MEMORY
  %loadBr_439f4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f4d = icmp eq i8 %loadBr_439f4d, 1
  br i1 %cmpBr_439f4d, label %block_.L_439f6c, label %block_439f53

block_439f53:                                     ; preds = %block_439f3a
  %loadMem_439f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6119 = getelementptr inbounds %struct.GPR, %struct.GPR* %6118, i32 0, i32 33
  %6120 = getelementptr inbounds %struct.Reg, %struct.Reg* %6119, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6120 to i64*
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6122 = getelementptr inbounds %struct.GPR, %struct.GPR* %6121, i32 0, i32 11
  %6123 = getelementptr inbounds %struct.Reg, %struct.Reg* %6122, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %6123 to i64*
  %6124 = load i64, i64* %PC.i100
  %6125 = add i64 %6124, 10
  store i64 %6125, i64* %PC.i100
  store i64 ptrtoint (%G__0x57da42_type* @G__0x57da42 to i64), i64* %RDI.i101, align 8
  store %struct.Memory* %loadMem_439f53, %struct.Memory** %MEMORY
  %loadMem_439f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 33
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 1
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %6132 = bitcast %union.anon* %6131 to %struct.anon.2*
  %AL.i99 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6132, i32 0, i32 0
  %6133 = load i64, i64* %PC.i98
  %6134 = add i64 %6133, 2
  store i64 %6134, i64* %PC.i98
  store i8 0, i8* %AL.i99, align 1
  store %struct.Memory* %loadMem_439f5d, %struct.Memory** %MEMORY
  %loadMem1_439f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6136 = getelementptr inbounds %struct.GPR, %struct.GPR* %6135, i32 0, i32 33
  %6137 = getelementptr inbounds %struct.Reg, %struct.Reg* %6136, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6137 to i64*
  %6138 = load i64, i64* %PC.i97
  %6139 = add i64 %6138, 97873
  %6140 = load i64, i64* %PC.i97
  %6141 = add i64 %6140, 5
  %6142 = load i64, i64* %PC.i97
  %6143 = add i64 %6142, 5
  store i64 %6143, i64* %PC.i97
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6145 = load i64, i64* %6144, align 8
  %6146 = add i64 %6145, -8
  %6147 = inttoptr i64 %6146 to i64*
  store i64 %6141, i64* %6147
  store i64 %6146, i64* %6144, align 8
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6139, i64* %6148, align 8
  store %struct.Memory* %loadMem1_439f5f, %struct.Memory** %MEMORY
  %loadMem2_439f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f5f = load i64, i64* %3
  %call2_439f5f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439f5f, %struct.Memory* %loadMem2_439f5f)
  store %struct.Memory* %call2_439f5f, %struct.Memory** %MEMORY
  %loadMem_439f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6150 = getelementptr inbounds %struct.GPR, %struct.GPR* %6149, i32 0, i32 33
  %6151 = getelementptr inbounds %struct.Reg, %struct.Reg* %6150, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6151 to i64*
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6153 = getelementptr inbounds %struct.GPR, %struct.GPR* %6152, i32 0, i32 1
  %6154 = getelementptr inbounds %struct.Reg, %struct.Reg* %6153, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %6154 to i32*
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6156 = getelementptr inbounds %struct.GPR, %struct.GPR* %6155, i32 0, i32 15
  %6157 = getelementptr inbounds %struct.Reg, %struct.Reg* %6156, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %6157 to i64*
  %6158 = load i64, i64* %RBP.i96
  %6159 = sub i64 %6158, 104
  %6160 = load i32, i32* %EAX.i95
  %6161 = zext i32 %6160 to i64
  %6162 = load i64, i64* %PC.i94
  %6163 = add i64 %6162, 3
  store i64 %6163, i64* %PC.i94
  %6164 = inttoptr i64 %6159 to i32*
  store i32 %6160, i32* %6164
  store %struct.Memory* %loadMem_439f64, %struct.Memory** %MEMORY
  %loadMem_439f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6166 = getelementptr inbounds %struct.GPR, %struct.GPR* %6165, i32 0, i32 33
  %6167 = getelementptr inbounds %struct.Reg, %struct.Reg* %6166, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6167 to i64*
  %6168 = load i64, i64* %PC.i93
  %6169 = add i64 %6168, 76
  %6170 = load i64, i64* %PC.i93
  %6171 = add i64 %6170, 5
  store i64 %6171, i64* %PC.i93
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6169, i64* %6172, align 8
  store %struct.Memory* %loadMem_439f67, %struct.Memory** %MEMORY
  br label %block_.L_439fb3

block_.L_439f6c:                                  ; preds = %block_439f3a
  %loadMem_439f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 11
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %RDI.i91 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 15
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %6181 to i64*
  %6182 = load i64, i64* %RBP.i92
  %6183 = sub i64 %6182, 16
  %6184 = load i64, i64* %PC.i90
  %6185 = add i64 %6184, 4
  store i64 %6185, i64* %PC.i90
  %6186 = inttoptr i64 %6183 to i64*
  %6187 = load i64, i64* %6186
  store i64 %6187, i64* %RDI.i91, align 8
  store %struct.Memory* %loadMem_439f6c, %struct.Memory** %MEMORY
  %loadMem_439f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6189 = getelementptr inbounds %struct.GPR, %struct.GPR* %6188, i32 0, i32 33
  %6190 = getelementptr inbounds %struct.Reg, %struct.Reg* %6189, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6190 to i64*
  %6191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6192 = getelementptr inbounds %struct.GPR, %struct.GPR* %6191, i32 0, i32 9
  %6193 = getelementptr inbounds %struct.Reg, %struct.Reg* %6192, i32 0, i32 0
  %RSI.i88 = bitcast %union.anon* %6193 to i64*
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6195 = getelementptr inbounds %struct.GPR, %struct.GPR* %6194, i32 0, i32 15
  %6196 = getelementptr inbounds %struct.Reg, %struct.Reg* %6195, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %6196 to i64*
  %6197 = load i64, i64* %RBP.i89
  %6198 = sub i64 %6197, 56
  %6199 = load i64, i64* %PC.i87
  %6200 = add i64 %6199, 3
  store i64 %6200, i64* %PC.i87
  %6201 = inttoptr i64 %6198 to i32*
  %6202 = load i32, i32* %6201
  %6203 = zext i32 %6202 to i64
  store i64 %6203, i64* %RSI.i88, align 8
  store %struct.Memory* %loadMem_439f70, %struct.Memory** %MEMORY
  %loadMem1_439f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6205 = getelementptr inbounds %struct.GPR, %struct.GPR* %6204, i32 0, i32 33
  %6206 = getelementptr inbounds %struct.Reg, %struct.Reg* %6205, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6206 to i64*
  %6207 = load i64, i64* %PC.i86
  %6208 = add i64 %6207, 4285
  %6209 = load i64, i64* %PC.i86
  %6210 = add i64 %6209, 5
  %6211 = load i64, i64* %PC.i86
  %6212 = add i64 %6211, 5
  store i64 %6212, i64* %PC.i86
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6214 = load i64, i64* %6213, align 8
  %6215 = add i64 %6214, -8
  %6216 = inttoptr i64 %6215 to i64*
  store i64 %6210, i64* %6216
  store i64 %6215, i64* %6213, align 8
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6208, i64* %6217, align 8
  store %struct.Memory* %loadMem1_439f73, %struct.Memory** %MEMORY
  %loadMem2_439f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f73 = load i64, i64* %3
  %call2_439f73 = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64 %loadPC_439f73, %struct.Memory* %loadMem2_439f73)
  store %struct.Memory* %call2_439f73, %struct.Memory** %MEMORY
  %loadMem_439f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 33
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 1
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %EAX.i85 = bitcast %union.anon* %6223 to i32*
  %6224 = load i32, i32* %EAX.i85
  %6225 = zext i32 %6224 to i64
  %6226 = load i64, i64* %PC.i84
  %6227 = add i64 %6226, 3
  store i64 %6227, i64* %PC.i84
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6228, align 1
  %6229 = and i32 %6224, 255
  %6230 = call i32 @llvm.ctpop.i32(i32 %6229)
  %6231 = trunc i32 %6230 to i8
  %6232 = and i8 %6231, 1
  %6233 = xor i8 %6232, 1
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6233, i8* %6234, align 1
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6235, align 1
  %6236 = icmp eq i32 %6224, 0
  %6237 = zext i1 %6236 to i8
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6237, i8* %6238, align 1
  %6239 = lshr i32 %6224, 31
  %6240 = trunc i32 %6239 to i8
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6240, i8* %6241, align 1
  %6242 = lshr i32 %6224, 31
  %6243 = xor i32 %6239, %6242
  %6244 = add i32 %6243, %6242
  %6245 = icmp eq i32 %6244, 2
  %6246 = zext i1 %6245 to i8
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6246, i8* %6247, align 1
  store %struct.Memory* %loadMem_439f78, %struct.Memory** %MEMORY
  %loadMem_439f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 33
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6250 to i64*
  %6251 = load i64, i64* %PC.i83
  %6252 = add i64 %6251, 31
  %6253 = load i64, i64* %PC.i83
  %6254 = add i64 %6253, 6
  %6255 = load i64, i64* %PC.i83
  %6256 = add i64 %6255, 6
  store i64 %6256, i64* %PC.i83
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6258 = load i8, i8* %6257, align 1
  store i8 %6258, i8* %BRANCH_TAKEN, align 1
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6260 = icmp ne i8 %6258, 0
  %6261 = select i1 %6260, i64 %6252, i64 %6254
  store i64 %6261, i64* %6259, align 8
  store %struct.Memory* %loadMem_439f7b, %struct.Memory** %MEMORY
  %loadBr_439f7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439f7b = icmp eq i8 %loadBr_439f7b, 1
  br i1 %cmpBr_439f7b, label %block_.L_439f9a, label %block_439f81

block_439f81:                                     ; preds = %block_.L_439f6c
  %loadMem_439f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 33
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %6264 to i64*
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6266 = getelementptr inbounds %struct.GPR, %struct.GPR* %6265, i32 0, i32 11
  %6267 = getelementptr inbounds %struct.Reg, %struct.Reg* %6266, i32 0, i32 0
  %RDI.i82 = bitcast %union.anon* %6267 to i64*
  %6268 = load i64, i64* %PC.i81
  %6269 = add i64 %6268, 10
  store i64 %6269, i64* %PC.i81
  store i64 ptrtoint (%G__0x57da46_type* @G__0x57da46 to i64), i64* %RDI.i82, align 8
  store %struct.Memory* %loadMem_439f81, %struct.Memory** %MEMORY
  %loadMem_439f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 33
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6272 to i64*
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 1
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %6276 = bitcast %union.anon* %6275 to %struct.anon.2*
  %AL.i80 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6276, i32 0, i32 0
  %6277 = load i64, i64* %PC.i79
  %6278 = add i64 %6277, 2
  store i64 %6278, i64* %PC.i79
  store i8 0, i8* %AL.i80, align 1
  store %struct.Memory* %loadMem_439f8b, %struct.Memory** %MEMORY
  %loadMem1_439f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 33
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6281 to i64*
  %6282 = load i64, i64* %PC.i78
  %6283 = add i64 %6282, 97827
  %6284 = load i64, i64* %PC.i78
  %6285 = add i64 %6284, 5
  %6286 = load i64, i64* %PC.i78
  %6287 = add i64 %6286, 5
  store i64 %6287, i64* %PC.i78
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6289 = load i64, i64* %6288, align 8
  %6290 = add i64 %6289, -8
  %6291 = inttoptr i64 %6290 to i64*
  store i64 %6285, i64* %6291
  store i64 %6290, i64* %6288, align 8
  %6292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6283, i64* %6292, align 8
  store %struct.Memory* %loadMem1_439f8d, %struct.Memory** %MEMORY
  %loadMem2_439f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439f8d = load i64, i64* %3
  %call2_439f8d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439f8d, %struct.Memory* %loadMem2_439f8d)
  store %struct.Memory* %call2_439f8d, %struct.Memory** %MEMORY
  %loadMem_439f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 33
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6295 to i64*
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 1
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %6298 to i32*
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 15
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %6301 to i64*
  %6302 = load i64, i64* %RBP.i77
  %6303 = sub i64 %6302, 108
  %6304 = load i32, i32* %EAX.i76
  %6305 = zext i32 %6304 to i64
  %6306 = load i64, i64* %PC.i75
  %6307 = add i64 %6306, 3
  store i64 %6307, i64* %PC.i75
  %6308 = inttoptr i64 %6303 to i32*
  store i32 %6304, i32* %6308
  store %struct.Memory* %loadMem_439f92, %struct.Memory** %MEMORY
  %loadMem_439f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6310 = getelementptr inbounds %struct.GPR, %struct.GPR* %6309, i32 0, i32 33
  %6311 = getelementptr inbounds %struct.Reg, %struct.Reg* %6310, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %6311 to i64*
  %6312 = load i64, i64* %PC.i74
  %6313 = add i64 %6312, 25
  %6314 = load i64, i64* %PC.i74
  %6315 = add i64 %6314, 5
  store i64 %6315, i64* %PC.i74
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6313, i64* %6316, align 8
  store %struct.Memory* %loadMem_439f95, %struct.Memory** %MEMORY
  br label %block_.L_439fae

block_.L_439f9a:                                  ; preds = %block_.L_439f6c
  %loadMem_439f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6318 = getelementptr inbounds %struct.GPR, %struct.GPR* %6317, i32 0, i32 33
  %6319 = getelementptr inbounds %struct.Reg, %struct.Reg* %6318, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6319 to i64*
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6321 = getelementptr inbounds %struct.GPR, %struct.GPR* %6320, i32 0, i32 11
  %6322 = getelementptr inbounds %struct.Reg, %struct.Reg* %6321, i32 0, i32 0
  %RDI.i73 = bitcast %union.anon* %6322 to i64*
  %6323 = load i64, i64* %PC.i72
  %6324 = add i64 %6323, 10
  store i64 %6324, i64* %PC.i72
  store i64 ptrtoint (%G__0x57da4a_type* @G__0x57da4a to i64), i64* %RDI.i73, align 8
  store %struct.Memory* %loadMem_439f9a, %struct.Memory** %MEMORY
  %loadMem_439fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 33
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6327 to i64*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 1
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %6331 = bitcast %union.anon* %6330 to %struct.anon.2*
  %AL.i71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6331, i32 0, i32 0
  %6332 = load i64, i64* %PC.i70
  %6333 = add i64 %6332, 2
  store i64 %6333, i64* %PC.i70
  store i8 0, i8* %AL.i71, align 1
  store %struct.Memory* %loadMem_439fa4, %struct.Memory** %MEMORY
  %loadMem1_439fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6335 = getelementptr inbounds %struct.GPR, %struct.GPR* %6334, i32 0, i32 33
  %6336 = getelementptr inbounds %struct.Reg, %struct.Reg* %6335, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %6336 to i64*
  %6337 = load i64, i64* %PC.i69
  %6338 = add i64 %6337, 97802
  %6339 = load i64, i64* %PC.i69
  %6340 = add i64 %6339, 5
  %6341 = load i64, i64* %PC.i69
  %6342 = add i64 %6341, 5
  store i64 %6342, i64* %PC.i69
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6344 = load i64, i64* %6343, align 8
  %6345 = add i64 %6344, -8
  %6346 = inttoptr i64 %6345 to i64*
  store i64 %6340, i64* %6346
  store i64 %6345, i64* %6343, align 8
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6338, i64* %6347, align 8
  store %struct.Memory* %loadMem1_439fa6, %struct.Memory** %MEMORY
  %loadMem2_439fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439fa6 = load i64, i64* %3
  %call2_439fa6 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439fa6, %struct.Memory* %loadMem2_439fa6)
  store %struct.Memory* %call2_439fa6, %struct.Memory** %MEMORY
  %loadMem_439fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 33
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %6350 to i64*
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 1
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %EAX.i67 = bitcast %union.anon* %6353 to i32*
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 15
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %6356 to i64*
  %6357 = load i64, i64* %RBP.i68
  %6358 = sub i64 %6357, 112
  %6359 = load i32, i32* %EAX.i67
  %6360 = zext i32 %6359 to i64
  %6361 = load i64, i64* %PC.i66
  %6362 = add i64 %6361, 3
  store i64 %6362, i64* %PC.i66
  %6363 = inttoptr i64 %6358 to i32*
  store i32 %6359, i32* %6363
  store %struct.Memory* %loadMem_439fab, %struct.Memory** %MEMORY
  br label %block_.L_439fae

block_.L_439fae:                                  ; preds = %block_.L_439f9a, %block_439f81
  %loadMem_439fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6365 = getelementptr inbounds %struct.GPR, %struct.GPR* %6364, i32 0, i32 33
  %6366 = getelementptr inbounds %struct.Reg, %struct.Reg* %6365, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6366 to i64*
  %6367 = load i64, i64* %PC.i65
  %6368 = add i64 %6367, 5
  %6369 = load i64, i64* %PC.i65
  %6370 = add i64 %6369, 5
  store i64 %6370, i64* %PC.i65
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6368, i64* %6371, align 8
  store %struct.Memory* %loadMem_439fae, %struct.Memory** %MEMORY
  br label %block_.L_439fb3

block_.L_439fb3:                                  ; preds = %block_.L_439fae, %block_439f53
  %loadMem_439fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6373 = getelementptr inbounds %struct.GPR, %struct.GPR* %6372, i32 0, i32 33
  %6374 = getelementptr inbounds %struct.Reg, %struct.Reg* %6373, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6374 to i64*
  %6375 = load i64, i64* %PC.i64
  %6376 = add i64 %6375, 76
  %6377 = load i64, i64* %PC.i64
  %6378 = add i64 %6377, 5
  store i64 %6378, i64* %PC.i64
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6376, i64* %6379, align 8
  store %struct.Memory* %loadMem_439fb3, %struct.Memory** %MEMORY
  br label %block_.L_439fff

block_.L_439fb8:                                  ; preds = %block_439f25
  %loadMem_439fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 33
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6382 to i64*
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 11
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %RDI.i62 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 15
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %6388 to i64*
  %6389 = load i64, i64* %RBP.i63
  %6390 = sub i64 %6389, 16
  %6391 = load i64, i64* %PC.i61
  %6392 = add i64 %6391, 4
  store i64 %6392, i64* %PC.i61
  %6393 = inttoptr i64 %6390 to i64*
  %6394 = load i64, i64* %6393
  store i64 %6394, i64* %RDI.i62, align 8
  store %struct.Memory* %loadMem_439fb8, %struct.Memory** %MEMORY
  %loadMem_439fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6396 = getelementptr inbounds %struct.GPR, %struct.GPR* %6395, i32 0, i32 33
  %6397 = getelementptr inbounds %struct.Reg, %struct.Reg* %6396, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %6397 to i64*
  %6398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6399 = getelementptr inbounds %struct.GPR, %struct.GPR* %6398, i32 0, i32 9
  %6400 = getelementptr inbounds %struct.Reg, %struct.Reg* %6399, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6400 to i64*
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6402 = getelementptr inbounds %struct.GPR, %struct.GPR* %6401, i32 0, i32 15
  %6403 = getelementptr inbounds %struct.Reg, %struct.Reg* %6402, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %6403 to i64*
  %6404 = load i64, i64* %RBP.i60
  %6405 = sub i64 %6404, 56
  %6406 = load i64, i64* %PC.i59
  %6407 = add i64 %6406, 3
  store i64 %6407, i64* %PC.i59
  %6408 = inttoptr i64 %6405 to i32*
  %6409 = load i32, i32* %6408
  %6410 = zext i32 %6409 to i64
  store i64 %6410, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_439fbc, %struct.Memory** %MEMORY
  %loadMem1_439fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6412 = getelementptr inbounds %struct.GPR, %struct.GPR* %6411, i32 0, i32 33
  %6413 = getelementptr inbounds %struct.Reg, %struct.Reg* %6412, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6413 to i64*
  %6414 = load i64, i64* %PC.i58
  %6415 = add i64 %6414, 4209
  %6416 = load i64, i64* %PC.i58
  %6417 = add i64 %6416, 5
  %6418 = load i64, i64* %PC.i58
  %6419 = add i64 %6418, 5
  store i64 %6419, i64* %PC.i58
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6421 = load i64, i64* %6420, align 8
  %6422 = add i64 %6421, -8
  %6423 = inttoptr i64 %6422 to i64*
  store i64 %6417, i64* %6423
  store i64 %6422, i64* %6420, align 8
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6415, i64* %6424, align 8
  store %struct.Memory* %loadMem1_439fbf, %struct.Memory** %MEMORY
  %loadMem2_439fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439fbf = load i64, i64* %3
  %call2_439fbf = call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* %0, i64 %loadPC_439fbf, %struct.Memory* %loadMem2_439fbf)
  store %struct.Memory* %call2_439fbf, %struct.Memory** %MEMORY
  %loadMem_439fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6426 = getelementptr inbounds %struct.GPR, %struct.GPR* %6425, i32 0, i32 33
  %6427 = getelementptr inbounds %struct.Reg, %struct.Reg* %6426, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %6427 to i64*
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6429 = getelementptr inbounds %struct.GPR, %struct.GPR* %6428, i32 0, i32 1
  %6430 = getelementptr inbounds %struct.Reg, %struct.Reg* %6429, i32 0, i32 0
  %EAX.i57 = bitcast %union.anon* %6430 to i32*
  %6431 = load i32, i32* %EAX.i57
  %6432 = zext i32 %6431 to i64
  %6433 = load i64, i64* %PC.i56
  %6434 = add i64 %6433, 3
  store i64 %6434, i64* %PC.i56
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6435, align 1
  %6436 = and i32 %6431, 255
  %6437 = call i32 @llvm.ctpop.i32(i32 %6436)
  %6438 = trunc i32 %6437 to i8
  %6439 = and i8 %6438, 1
  %6440 = xor i8 %6439, 1
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6440, i8* %6441, align 1
  %6442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6442, align 1
  %6443 = icmp eq i32 %6431, 0
  %6444 = zext i1 %6443 to i8
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6444, i8* %6445, align 1
  %6446 = lshr i32 %6431, 31
  %6447 = trunc i32 %6446 to i8
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6447, i8* %6448, align 1
  %6449 = lshr i32 %6431, 31
  %6450 = xor i32 %6446, %6449
  %6451 = add i32 %6450, %6449
  %6452 = icmp eq i32 %6451, 2
  %6453 = zext i1 %6452 to i8
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6453, i8* %6454, align 1
  store %struct.Memory* %loadMem_439fc4, %struct.Memory** %MEMORY
  %loadMem_439fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6456 = getelementptr inbounds %struct.GPR, %struct.GPR* %6455, i32 0, i32 33
  %6457 = getelementptr inbounds %struct.Reg, %struct.Reg* %6456, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6457 to i64*
  %6458 = load i64, i64* %PC.i55
  %6459 = add i64 %6458, 31
  %6460 = load i64, i64* %PC.i55
  %6461 = add i64 %6460, 6
  %6462 = load i64, i64* %PC.i55
  %6463 = add i64 %6462, 6
  store i64 %6463, i64* %PC.i55
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6465 = load i8, i8* %6464, align 1
  store i8 %6465, i8* %BRANCH_TAKEN, align 1
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6467 = icmp ne i8 %6465, 0
  %6468 = select i1 %6467, i64 %6459, i64 %6461
  store i64 %6468, i64* %6466, align 8
  store %struct.Memory* %loadMem_439fc7, %struct.Memory** %MEMORY
  %loadBr_439fc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439fc7 = icmp eq i8 %loadBr_439fc7, 1
  br i1 %cmpBr_439fc7, label %block_.L_439fe6, label %block_439fcd

block_439fcd:                                     ; preds = %block_.L_439fb8
  %loadMem_439fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6470 = getelementptr inbounds %struct.GPR, %struct.GPR* %6469, i32 0, i32 33
  %6471 = getelementptr inbounds %struct.Reg, %struct.Reg* %6470, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %6471 to i64*
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6473 = getelementptr inbounds %struct.GPR, %struct.GPR* %6472, i32 0, i32 11
  %6474 = getelementptr inbounds %struct.Reg, %struct.Reg* %6473, i32 0, i32 0
  %RDI.i54 = bitcast %union.anon* %6474 to i64*
  %6475 = load i64, i64* %PC.i53
  %6476 = add i64 %6475, 10
  store i64 %6476, i64* %PC.i53
  store i64 ptrtoint (%G__0x57da4e_type* @G__0x57da4e to i64), i64* %RDI.i54, align 8
  store %struct.Memory* %loadMem_439fcd, %struct.Memory** %MEMORY
  %loadMem_439fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6478 = getelementptr inbounds %struct.GPR, %struct.GPR* %6477, i32 0, i32 33
  %6479 = getelementptr inbounds %struct.Reg, %struct.Reg* %6478, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %6479 to i64*
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6481 = getelementptr inbounds %struct.GPR, %struct.GPR* %6480, i32 0, i32 1
  %6482 = getelementptr inbounds %struct.Reg, %struct.Reg* %6481, i32 0, i32 0
  %6483 = bitcast %union.anon* %6482 to %struct.anon.2*
  %AL.i52 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6483, i32 0, i32 0
  %6484 = load i64, i64* %PC.i51
  %6485 = add i64 %6484, 2
  store i64 %6485, i64* %PC.i51
  store i8 0, i8* %AL.i52, align 1
  store %struct.Memory* %loadMem_439fd7, %struct.Memory** %MEMORY
  %loadMem1_439fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6487 = getelementptr inbounds %struct.GPR, %struct.GPR* %6486, i32 0, i32 33
  %6488 = getelementptr inbounds %struct.Reg, %struct.Reg* %6487, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6488 to i64*
  %6489 = load i64, i64* %PC.i50
  %6490 = add i64 %6489, 97751
  %6491 = load i64, i64* %PC.i50
  %6492 = add i64 %6491, 5
  %6493 = load i64, i64* %PC.i50
  %6494 = add i64 %6493, 5
  store i64 %6494, i64* %PC.i50
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6496 = load i64, i64* %6495, align 8
  %6497 = add i64 %6496, -8
  %6498 = inttoptr i64 %6497 to i64*
  store i64 %6492, i64* %6498
  store i64 %6497, i64* %6495, align 8
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6490, i64* %6499, align 8
  store %struct.Memory* %loadMem1_439fd9, %struct.Memory** %MEMORY
  %loadMem2_439fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439fd9 = load i64, i64* %3
  %call2_439fd9 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439fd9, %struct.Memory* %loadMem2_439fd9)
  store %struct.Memory* %call2_439fd9, %struct.Memory** %MEMORY
  %loadMem_439fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 33
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6502 to i64*
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6504 = getelementptr inbounds %struct.GPR, %struct.GPR* %6503, i32 0, i32 1
  %6505 = getelementptr inbounds %struct.Reg, %struct.Reg* %6504, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %6505 to i32*
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 15
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %6508 to i64*
  %6509 = load i64, i64* %RBP.i49
  %6510 = sub i64 %6509, 116
  %6511 = load i32, i32* %EAX.i48
  %6512 = zext i32 %6511 to i64
  %6513 = load i64, i64* %PC.i47
  %6514 = add i64 %6513, 3
  store i64 %6514, i64* %PC.i47
  %6515 = inttoptr i64 %6510 to i32*
  store i32 %6511, i32* %6515
  store %struct.Memory* %loadMem_439fde, %struct.Memory** %MEMORY
  %loadMem_439fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6517 = getelementptr inbounds %struct.GPR, %struct.GPR* %6516, i32 0, i32 33
  %6518 = getelementptr inbounds %struct.Reg, %struct.Reg* %6517, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6518 to i64*
  %6519 = load i64, i64* %PC.i46
  %6520 = add i64 %6519, 25
  %6521 = load i64, i64* %PC.i46
  %6522 = add i64 %6521, 5
  store i64 %6522, i64* %PC.i46
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6520, i64* %6523, align 8
  store %struct.Memory* %loadMem_439fe1, %struct.Memory** %MEMORY
  br label %block_.L_439ffa

block_.L_439fe6:                                  ; preds = %block_.L_439fb8
  %loadMem_439fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %6526 to i64*
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6528 = getelementptr inbounds %struct.GPR, %struct.GPR* %6527, i32 0, i32 11
  %6529 = getelementptr inbounds %struct.Reg, %struct.Reg* %6528, i32 0, i32 0
  %RDI.i45 = bitcast %union.anon* %6529 to i64*
  %6530 = load i64, i64* %PC.i44
  %6531 = add i64 %6530, 10
  store i64 %6531, i64* %PC.i44
  store i64 ptrtoint (%G__0x57da52_type* @G__0x57da52 to i64), i64* %RDI.i45, align 8
  store %struct.Memory* %loadMem_439fe6, %struct.Memory** %MEMORY
  %loadMem_439ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 33
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %6534 to i64*
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 1
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %6538 = bitcast %union.anon* %6537 to %struct.anon.2*
  %AL.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6538, i32 0, i32 0
  %6539 = load i64, i64* %PC.i42
  %6540 = add i64 %6539, 2
  store i64 %6540, i64* %PC.i42
  store i8 0, i8* %AL.i43, align 1
  store %struct.Memory* %loadMem_439ff0, %struct.Memory** %MEMORY
  %loadMem1_439ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6542 = getelementptr inbounds %struct.GPR, %struct.GPR* %6541, i32 0, i32 33
  %6543 = getelementptr inbounds %struct.Reg, %struct.Reg* %6542, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6543 to i64*
  %6544 = load i64, i64* %PC.i41
  %6545 = add i64 %6544, 97726
  %6546 = load i64, i64* %PC.i41
  %6547 = add i64 %6546, 5
  %6548 = load i64, i64* %PC.i41
  %6549 = add i64 %6548, 5
  store i64 %6549, i64* %PC.i41
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6551 = load i64, i64* %6550, align 8
  %6552 = add i64 %6551, -8
  %6553 = inttoptr i64 %6552 to i64*
  store i64 %6547, i64* %6553
  store i64 %6552, i64* %6550, align 8
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6545, i64* %6554, align 8
  store %struct.Memory* %loadMem1_439ff2, %struct.Memory** %MEMORY
  %loadMem2_439ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439ff2 = load i64, i64* %3
  %call2_439ff2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_439ff2, %struct.Memory* %loadMem2_439ff2)
  store %struct.Memory* %call2_439ff2, %struct.Memory** %MEMORY
  %loadMem_439ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6556 = getelementptr inbounds %struct.GPR, %struct.GPR* %6555, i32 0, i32 33
  %6557 = getelementptr inbounds %struct.Reg, %struct.Reg* %6556, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6557 to i64*
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 1
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %6560 to i32*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 15
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %6563 to i64*
  %6564 = load i64, i64* %RBP.i40
  %6565 = sub i64 %6564, 120
  %6566 = load i32, i32* %EAX.i39
  %6567 = zext i32 %6566 to i64
  %6568 = load i64, i64* %PC.i38
  %6569 = add i64 %6568, 3
  store i64 %6569, i64* %PC.i38
  %6570 = inttoptr i64 %6565 to i32*
  store i32 %6566, i32* %6570
  store %struct.Memory* %loadMem_439ff7, %struct.Memory** %MEMORY
  br label %block_.L_439ffa

block_.L_439ffa:                                  ; preds = %block_.L_439fe6, %block_439fcd
  %loadMem_439ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6572 = getelementptr inbounds %struct.GPR, %struct.GPR* %6571, i32 0, i32 33
  %6573 = getelementptr inbounds %struct.Reg, %struct.Reg* %6572, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6573 to i64*
  %6574 = load i64, i64* %PC.i37
  %6575 = add i64 %6574, 5
  %6576 = load i64, i64* %PC.i37
  %6577 = add i64 %6576, 5
  store i64 %6577, i64* %PC.i37
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6575, i64* %6578, align 8
  store %struct.Memory* %loadMem_439ffa, %struct.Memory** %MEMORY
  br label %block_.L_439fff

block_.L_439fff:                                  ; preds = %block_.L_439ffa, %block_.L_439fb3
  %loadMem_439fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 33
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6581 to i64*
  %6582 = load i64, i64* %PC.i36
  %6583 = add i64 %6582, 25
  %6584 = load i64, i64* %PC.i36
  %6585 = add i64 %6584, 5
  store i64 %6585, i64* %PC.i36
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6583, i64* %6586, align 8
  store %struct.Memory* %loadMem_439fff, %struct.Memory** %MEMORY
  br label %block_.L_43a018

block_.L_43a004:                                  ; preds = %block_439efd
  %loadMem_43a004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6588 = getelementptr inbounds %struct.GPR, %struct.GPR* %6587, i32 0, i32 33
  %6589 = getelementptr inbounds %struct.Reg, %struct.Reg* %6588, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6589 to i64*
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 11
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %RDI.i35 = bitcast %union.anon* %6592 to i64*
  %6593 = load i64, i64* %PC.i34
  %6594 = add i64 %6593, 10
  store i64 %6594, i64* %PC.i34
  store i64 ptrtoint (%G__0x57da56_type* @G__0x57da56 to i64), i64* %RDI.i35, align 8
  store %struct.Memory* %loadMem_43a004, %struct.Memory** %MEMORY
  %loadMem_43a00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 33
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 1
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %6601 = bitcast %union.anon* %6600 to %struct.anon.2*
  %AL.i33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6601, i32 0, i32 0
  %6602 = load i64, i64* %PC.i32
  %6603 = add i64 %6602, 2
  store i64 %6603, i64* %PC.i32
  store i8 0, i8* %AL.i33, align 1
  store %struct.Memory* %loadMem_43a00e, %struct.Memory** %MEMORY
  %loadMem1_43a010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 33
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6606 to i64*
  %6607 = load i64, i64* %PC.i31
  %6608 = add i64 %6607, 97696
  %6609 = load i64, i64* %PC.i31
  %6610 = add i64 %6609, 5
  %6611 = load i64, i64* %PC.i31
  %6612 = add i64 %6611, 5
  store i64 %6612, i64* %PC.i31
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6614 = load i64, i64* %6613, align 8
  %6615 = add i64 %6614, -8
  %6616 = inttoptr i64 %6615 to i64*
  store i64 %6610, i64* %6616
  store i64 %6615, i64* %6613, align 8
  %6617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6608, i64* %6617, align 8
  store %struct.Memory* %loadMem1_43a010, %struct.Memory** %MEMORY
  %loadMem2_43a010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a010 = load i64, i64* %3
  %call2_43a010 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43a010, %struct.Memory* %loadMem2_43a010)
  store %struct.Memory* %call2_43a010, %struct.Memory** %MEMORY
  %loadMem_43a015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 33
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6620 to i64*
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 1
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %EAX.i29 = bitcast %union.anon* %6623 to i32*
  %6624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6625 = getelementptr inbounds %struct.GPR, %struct.GPR* %6624, i32 0, i32 15
  %6626 = getelementptr inbounds %struct.Reg, %struct.Reg* %6625, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %6626 to i64*
  %6627 = load i64, i64* %RBP.i30
  %6628 = sub i64 %6627, 124
  %6629 = load i32, i32* %EAX.i29
  %6630 = zext i32 %6629 to i64
  %6631 = load i64, i64* %PC.i28
  %6632 = add i64 %6631, 3
  store i64 %6632, i64* %PC.i28
  %6633 = inttoptr i64 %6628 to i32*
  store i32 %6629, i32* %6633
  store %struct.Memory* %loadMem_43a015, %struct.Memory** %MEMORY
  br label %block_.L_43a018

block_.L_43a018:                                  ; preds = %block_.L_43a004, %block_.L_439fff
  %loadMem_43a018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 33
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6636 to i64*
  %6637 = load i64, i64* %PC.i27
  %6638 = add i64 %6637, 5
  %6639 = load i64, i64* %PC.i27
  %6640 = add i64 %6639, 5
  store i64 %6640, i64* %PC.i27
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6638, i64* %6641, align 8
  store %struct.Memory* %loadMem_43a018, %struct.Memory** %MEMORY
  br label %block_.L_43a01d

block_.L_43a01d:                                  ; preds = %block_.L_43a018
  %loadMem_43a01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 33
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %6644 to i64*
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6646 = getelementptr inbounds %struct.GPR, %struct.GPR* %6645, i32 0, i32 1
  %6647 = getelementptr inbounds %struct.Reg, %struct.Reg* %6646, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %6647 to i64*
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6649 = getelementptr inbounds %struct.GPR, %struct.GPR* %6648, i32 0, i32 15
  %6650 = getelementptr inbounds %struct.Reg, %struct.Reg* %6649, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %6650 to i64*
  %6651 = load i64, i64* %RBP.i26
  %6652 = sub i64 %6651, 28
  %6653 = load i64, i64* %PC.i24
  %6654 = add i64 %6653, 3
  store i64 %6654, i64* %PC.i24
  %6655 = inttoptr i64 %6652 to i32*
  %6656 = load i32, i32* %6655
  %6657 = zext i32 %6656 to i64
  store i64 %6657, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_43a01d, %struct.Memory** %MEMORY
  %loadMem_43a020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 33
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 1
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %RAX.i23
  %6665 = load i64, i64* %PC.i22
  %6666 = add i64 %6665, 3
  store i64 %6666, i64* %PC.i22
  %6667 = trunc i64 %6664 to i32
  %6668 = add i32 1, %6667
  %6669 = zext i32 %6668 to i64
  store i64 %6669, i64* %RAX.i23, align 8
  %6670 = icmp ult i32 %6668, %6667
  %6671 = icmp ult i32 %6668, 1
  %6672 = or i1 %6670, %6671
  %6673 = zext i1 %6672 to i8
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6673, i8* %6674, align 1
  %6675 = and i32 %6668, 255
  %6676 = call i32 @llvm.ctpop.i32(i32 %6675)
  %6677 = trunc i32 %6676 to i8
  %6678 = and i8 %6677, 1
  %6679 = xor i8 %6678, 1
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6679, i8* %6680, align 1
  %6681 = xor i64 1, %6664
  %6682 = trunc i64 %6681 to i32
  %6683 = xor i32 %6682, %6668
  %6684 = lshr i32 %6683, 4
  %6685 = trunc i32 %6684 to i8
  %6686 = and i8 %6685, 1
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6686, i8* %6687, align 1
  %6688 = icmp eq i32 %6668, 0
  %6689 = zext i1 %6688 to i8
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6689, i8* %6690, align 1
  %6691 = lshr i32 %6668, 31
  %6692 = trunc i32 %6691 to i8
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6692, i8* %6693, align 1
  %6694 = lshr i32 %6667, 31
  %6695 = xor i32 %6691, %6694
  %6696 = add i32 %6695, %6691
  %6697 = icmp eq i32 %6696, 2
  %6698 = zext i1 %6697 to i8
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6698, i8* %6699, align 1
  store %struct.Memory* %loadMem_43a020, %struct.Memory** %MEMORY
  %loadMem_43a023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6701 = getelementptr inbounds %struct.GPR, %struct.GPR* %6700, i32 0, i32 33
  %6702 = getelementptr inbounds %struct.Reg, %struct.Reg* %6701, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6702 to i64*
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 1
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %6705 to i32*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 15
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %6708 to i64*
  %6709 = load i64, i64* %RBP.i21
  %6710 = sub i64 %6709, 28
  %6711 = load i32, i32* %EAX.i20
  %6712 = zext i32 %6711 to i64
  %6713 = load i64, i64* %PC.i19
  %6714 = add i64 %6713, 3
  store i64 %6714, i64* %PC.i19
  %6715 = inttoptr i64 %6710 to i32*
  store i32 %6711, i32* %6715
  store %struct.Memory* %loadMem_43a023, %struct.Memory** %MEMORY
  %loadMem_43a026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 33
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6718 to i64*
  %6719 = load i64, i64* %PC.i18
  %6720 = add i64 %6719, -309
  %6721 = load i64, i64* %PC.i18
  %6722 = add i64 %6721, 5
  store i64 %6722, i64* %PC.i18
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6720, i64* %6723, align 8
  store %struct.Memory* %loadMem_43a026, %struct.Memory** %MEMORY
  br label %block_.L_439ef1

block_.L_43a02b:                                  ; preds = %block_.L_439ef1
  %loadMem_43a02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 11
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6729 to i64*
  %6730 = load i64, i64* %PC.i17
  %6731 = add i64 %6730, 10
  store i64 %6731, i64* %PC.i17
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43a02b, %struct.Memory** %MEMORY
  %loadMem_43a035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 33
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6734 to i64*
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 1
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %6738 = bitcast %union.anon* %6737 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6738, i32 0, i32 0
  %6739 = load i64, i64* %PC.i16
  %6740 = add i64 %6739, 2
  store i64 %6740, i64* %PC.i16
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_43a035, %struct.Memory** %MEMORY
  %loadMem1_43a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6742 = getelementptr inbounds %struct.GPR, %struct.GPR* %6741, i32 0, i32 33
  %6743 = getelementptr inbounds %struct.Reg, %struct.Reg* %6742, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %6743 to i64*
  %6744 = load i64, i64* %PC.i15
  %6745 = add i64 %6744, 97657
  %6746 = load i64, i64* %PC.i15
  %6747 = add i64 %6746, 5
  %6748 = load i64, i64* %PC.i15
  %6749 = add i64 %6748, 5
  store i64 %6749, i64* %PC.i15
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6751 = load i64, i64* %6750, align 8
  %6752 = add i64 %6751, -8
  %6753 = inttoptr i64 %6752 to i64*
  store i64 %6747, i64* %6753
  store i64 %6752, i64* %6750, align 8
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6745, i64* %6754, align 8
  store %struct.Memory* %loadMem1_43a037, %struct.Memory** %MEMORY
  %loadMem2_43a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43a037 = load i64, i64* %3
  %call2_43a037 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_43a037, %struct.Memory* %loadMem2_43a037)
  store %struct.Memory* %call2_43a037, %struct.Memory** %MEMORY
  %loadMem_43a03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6756 = getelementptr inbounds %struct.GPR, %struct.GPR* %6755, i32 0, i32 33
  %6757 = getelementptr inbounds %struct.Reg, %struct.Reg* %6756, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6757 to i64*
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 1
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %6760 to i32*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 15
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %6763 to i64*
  %6764 = load i64, i64* %RBP.i14
  %6765 = sub i64 %6764, 128
  %6766 = load i32, i32* %EAX.i13
  %6767 = zext i32 %6766 to i64
  %6768 = load i64, i64* %PC.i12
  %6769 = add i64 %6768, 3
  store i64 %6769, i64* %PC.i12
  %6770 = inttoptr i64 %6765 to i32*
  store i32 %6766, i32* %6770
  store %struct.Memory* %loadMem_43a03c, %struct.Memory** %MEMORY
  %loadMem_43a03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6772 = getelementptr inbounds %struct.GPR, %struct.GPR* %6771, i32 0, i32 33
  %6773 = getelementptr inbounds %struct.Reg, %struct.Reg* %6772, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6773 to i64*
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6775 = getelementptr inbounds %struct.GPR, %struct.GPR* %6774, i32 0, i32 1
  %6776 = getelementptr inbounds %struct.Reg, %struct.Reg* %6775, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6776 to i64*
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6778 = getelementptr inbounds %struct.GPR, %struct.GPR* %6777, i32 0, i32 15
  %6779 = getelementptr inbounds %struct.Reg, %struct.Reg* %6778, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6779 to i64*
  %6780 = load i64, i64* %RBP.i11
  %6781 = sub i64 %6780, 24
  %6782 = load i64, i64* %PC.i9
  %6783 = add i64 %6782, 3
  store i64 %6783, i64* %PC.i9
  %6784 = inttoptr i64 %6781 to i32*
  %6785 = load i32, i32* %6784
  %6786 = zext i32 %6785 to i64
  store i64 %6786, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_43a03f, %struct.Memory** %MEMORY
  %loadMem_43a042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 33
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6789 to i64*
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6791 = getelementptr inbounds %struct.GPR, %struct.GPR* %6790, i32 0, i32 1
  %6792 = getelementptr inbounds %struct.Reg, %struct.Reg* %6791, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6792 to i64*
  %6793 = load i64, i64* %RAX.i
  %6794 = load i64, i64* %PC.i8
  %6795 = add i64 %6794, 3
  store i64 %6795, i64* %PC.i8
  %6796 = trunc i64 %6793 to i32
  %6797 = add i32 1, %6796
  %6798 = zext i32 %6797 to i64
  store i64 %6798, i64* %RAX.i, align 8
  %6799 = icmp ult i32 %6797, %6796
  %6800 = icmp ult i32 %6797, 1
  %6801 = or i1 %6799, %6800
  %6802 = zext i1 %6801 to i8
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6802, i8* %6803, align 1
  %6804 = and i32 %6797, 255
  %6805 = call i32 @llvm.ctpop.i32(i32 %6804)
  %6806 = trunc i32 %6805 to i8
  %6807 = and i8 %6806, 1
  %6808 = xor i8 %6807, 1
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6808, i8* %6809, align 1
  %6810 = xor i64 1, %6793
  %6811 = trunc i64 %6810 to i32
  %6812 = xor i32 %6811, %6797
  %6813 = lshr i32 %6812, 4
  %6814 = trunc i32 %6813 to i8
  %6815 = and i8 %6814, 1
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6815, i8* %6816, align 1
  %6817 = icmp eq i32 %6797, 0
  %6818 = zext i1 %6817 to i8
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6818, i8* %6819, align 1
  %6820 = lshr i32 %6797, 31
  %6821 = trunc i32 %6820 to i8
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6821, i8* %6822, align 1
  %6823 = lshr i32 %6796, 31
  %6824 = xor i32 %6820, %6823
  %6825 = add i32 %6824, %6820
  %6826 = icmp eq i32 %6825, 2
  %6827 = zext i1 %6826 to i8
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6827, i8* %6828, align 1
  store %struct.Memory* %loadMem_43a042, %struct.Memory** %MEMORY
  %loadMem_43a045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6830 = getelementptr inbounds %struct.GPR, %struct.GPR* %6829, i32 0, i32 33
  %6831 = getelementptr inbounds %struct.Reg, %struct.Reg* %6830, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6831 to i64*
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 1
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6834 to i32*
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6836 = getelementptr inbounds %struct.GPR, %struct.GPR* %6835, i32 0, i32 15
  %6837 = getelementptr inbounds %struct.Reg, %struct.Reg* %6836, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6837 to i64*
  %6838 = load i64, i64* %RBP.i7
  %6839 = sub i64 %6838, 24
  %6840 = load i32, i32* %EAX.i
  %6841 = zext i32 %6840 to i64
  %6842 = load i64, i64* %PC.i6
  %6843 = add i64 %6842, 3
  store i64 %6843, i64* %PC.i6
  %6844 = inttoptr i64 %6839 to i32*
  store i32 %6840, i32* %6844
  store %struct.Memory* %loadMem_43a045, %struct.Memory** %MEMORY
  %loadMem_43a048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 33
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6847 to i64*
  %6848 = load i64, i64* %PC.i5
  %6849 = add i64 %6848, -381
  %6850 = load i64, i64* %PC.i5
  %6851 = add i64 %6850, 5
  store i64 %6851, i64* %PC.i5
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6849, i64* %6852, align 8
  store %struct.Memory* %loadMem_43a048, %struct.Memory** %MEMORY
  br label %block_.L_439ecb

block_.L_43a04d:                                  ; preds = %block_.L_439ecb
  %loadMem_43a04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6854 = getelementptr inbounds %struct.GPR, %struct.GPR* %6853, i32 0, i32 33
  %6855 = getelementptr inbounds %struct.Reg, %struct.Reg* %6854, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6855 to i64*
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6857 = getelementptr inbounds %struct.GPR, %struct.GPR* %6856, i32 0, i32 13
  %6858 = getelementptr inbounds %struct.Reg, %struct.Reg* %6857, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6858 to i64*
  %6859 = load i64, i64* %RSP.i
  %6860 = load i64, i64* %PC.i4
  %6861 = add i64 %6860, 7
  store i64 %6861, i64* %PC.i4
  %6862 = add i64 128, %6859
  store i64 %6862, i64* %RSP.i, align 8
  %6863 = icmp ult i64 %6862, %6859
  %6864 = icmp ult i64 %6862, 128
  %6865 = or i1 %6863, %6864
  %6866 = zext i1 %6865 to i8
  %6867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6866, i8* %6867, align 1
  %6868 = trunc i64 %6862 to i32
  %6869 = and i32 %6868, 255
  %6870 = call i32 @llvm.ctpop.i32(i32 %6869)
  %6871 = trunc i32 %6870 to i8
  %6872 = and i8 %6871, 1
  %6873 = xor i8 %6872, 1
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6873, i8* %6874, align 1
  %6875 = xor i64 128, %6859
  %6876 = xor i64 %6875, %6862
  %6877 = lshr i64 %6876, 4
  %6878 = trunc i64 %6877 to i8
  %6879 = and i8 %6878, 1
  %6880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6879, i8* %6880, align 1
  %6881 = icmp eq i64 %6862, 0
  %6882 = zext i1 %6881 to i8
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6882, i8* %6883, align 1
  %6884 = lshr i64 %6862, 63
  %6885 = trunc i64 %6884 to i8
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6885, i8* %6886, align 1
  %6887 = lshr i64 %6859, 63
  %6888 = xor i64 %6884, %6887
  %6889 = add i64 %6888, %6884
  %6890 = icmp eq i64 %6889, 2
  %6891 = zext i1 %6890 to i8
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6891, i8* %6892, align 1
  store %struct.Memory* %loadMem_43a04d, %struct.Memory** %MEMORY
  %loadMem_43a054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6894 = getelementptr inbounds %struct.GPR, %struct.GPR* %6893, i32 0, i32 33
  %6895 = getelementptr inbounds %struct.Reg, %struct.Reg* %6894, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6895 to i64*
  %6896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6897 = getelementptr inbounds %struct.GPR, %struct.GPR* %6896, i32 0, i32 15
  %6898 = getelementptr inbounds %struct.Reg, %struct.Reg* %6897, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6898 to i64*
  %6899 = load i64, i64* %PC.i2
  %6900 = add i64 %6899, 1
  store i64 %6900, i64* %PC.i2
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6902 = load i64, i64* %6901, align 8
  %6903 = add i64 %6902, 8
  %6904 = inttoptr i64 %6902 to i64*
  %6905 = load i64, i64* %6904
  store i64 %6905, i64* %RBP.i3, align 8
  store i64 %6903, i64* %6901, align 8
  store %struct.Memory* %loadMem_43a054, %struct.Memory** %MEMORY
  %loadMem_43a055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6907 = getelementptr inbounds %struct.GPR, %struct.GPR* %6906, i32 0, i32 33
  %6908 = getelementptr inbounds %struct.Reg, %struct.Reg* %6907, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6908 to i64*
  %6909 = load i64, i64* %PC.i1
  %6910 = add i64 %6909, 1
  store i64 %6910, i64* %PC.i1
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6913 = load i64, i64* %6912, align 8
  %6914 = inttoptr i64 %6913 to i64*
  %6915 = load i64, i64* %6914
  store i64 %6915, i64* %6911, align 8
  %6916 = add i64 %6913, 8
  store i64 %6916, i64* %6912, align 8
  store %struct.Memory* %loadMem_43a055, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_43a055
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

define %struct.Memory* @routine_movq__0x57d997___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57d997_type* @G__0x57d997 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x24___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 36, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl___rdi____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x4__rcx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x24___r8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 36, %15
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

define %struct.Memory* @routine_addq__r8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl_0x8__rdi____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_439dca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_439db7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 36, %15
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

define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 20
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

define %struct.Memory* @routine_je_.L_439b16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_439da9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
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

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_439b78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_439b5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_439b78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57d9c6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57d9c6_type* @G__0x57d9c6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_439da4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_halfeye(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_439c2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_439bb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_439c2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xa9451__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa9451__rip__type* @G_0xa9451__rip_ to i64)
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

define %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 48, %15
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

define %struct.Memory* @routine_cvtss2sd___rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to float*
  %16 = load float, float* %15
  %17 = fpext float %16 to double
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
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

define %struct.Memory* @routine_jne_.L_439bfe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_439bfe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57d9d0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57d9d0_type* @G__0x57d9d0 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439c28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57d9da___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57d9da_type* @G__0x57d9da to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd___rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to float*
  %16 = load float, float* %15
  %17 = fpext float %16 to double
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
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

define %struct.Memory* @routine_jmpq_.L_439d9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_439c8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_439c70(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57da01___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da01_type* @G__0x57da01 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439d9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_439cd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_439cd9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57da0a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da0a_type* @G__0x57da0a to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439d95(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_439d79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_439d79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0xa9305__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xa9305__rip__type* @G_0xa9305__rip_ to i64)
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

define %struct.Memory* @routine_jne_.L_439d4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_439d4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57da13___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da13_type* @G__0x57da13 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439d74(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57da1c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da1c_type* @G__0x57da1c to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439d90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57b826___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57b826_type* @G__0x57b826 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439ad9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_439dbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_439ac2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
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

define %struct.Memory* @routine_jge_.L_439ec5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_439eb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_439e57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_439ea4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 32
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

define %struct.Memory* @routine_jge_.L_439e69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 36
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

define %struct.Memory* @routine_jle_.L_439e7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 40
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

define %struct.Memory* @routine_jge_.L_439e8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jle_.L_439e9f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_439e1e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_439eb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_439e07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jg_.L_43a04d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x58898d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jg_.L_43a02b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jne_.L_43a004(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_439fb8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_439f6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57da42___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da42_type* @G__0x57da42 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439fb3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_439f9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57da46___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da46_type* @G__0x57da46 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439fae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57da4a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da4a_type* @G__0x57da4a to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439fff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_439fe6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x57da4e___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da4e_type* @G__0x57da4e to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_439ffa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57da52___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da52_type* @G__0x57da52 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_43a018(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57da56___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57da56_type* @G__0x57da56 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_jmpq_.L_43a01d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_439ef1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_439ecb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
