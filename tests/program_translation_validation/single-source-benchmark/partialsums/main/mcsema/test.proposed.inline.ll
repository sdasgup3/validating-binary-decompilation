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
%G_0x327__rip__type = type <{ [8 x i8] }>
%G_0x40a__rip__type = type <{ [8 x i8] }>
%G_0x426__rip__type = type <{ [8 x i8] }>
%G_0x446__rip__type = type <{ [8 x i8] }>
%G_0x483__rip__type = type <{ [8 x i8] }>
%G_0x4a6__rip__type = type <{ [8 x i8] }>
%G_0x4c9__rip__type = type <{ [8 x i8] }>
%G_0x4d1__rip__type = type <{ [8 x i8] }>
%G_0x4e9__rip__type = type <{ [8 x i8] }>
%G_0x509__rip__type = type <{ [8 x i8] }>
%G_0x511__rip__type = type <{ [8 x i8] }>
%G__0x400c28_type = type <{ [8 x i8] }>
%G__0x400c31_type = type <{ [8 x i8] }>
%G__0x400c39_type = type <{ [8 x i8] }>
%G__0x400c40_type = type <{ [8 x i8] }>
%G__0x400c49_type = type <{ [8 x i8] }>
%G__0x400c55_type = type <{ [8 x i8] }>
%G__0x400c63_type = type <{ [8 x i8] }>
%G__0x400c70_type = type <{ [8 x i8] }>
%G__0x400c7c_type = type <{ [8 x i8] }>
%G__0x400c85_type = type <{ [8 x i8] }>
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
@G_0x327__rip_ = global %G_0x327__rip__type zeroinitializer
@G_0x40a__rip_ = global %G_0x40a__rip__type zeroinitializer
@G_0x426__rip_ = global %G_0x426__rip__type zeroinitializer
@G_0x446__rip_ = global %G_0x446__rip__type zeroinitializer
@G_0x483__rip_ = global %G_0x483__rip__type zeroinitializer
@G_0x4a6__rip_ = global %G_0x4a6__rip__type zeroinitializer
@G_0x4c9__rip_ = global %G_0x4c9__rip__type zeroinitializer
@G_0x4d1__rip_ = global %G_0x4d1__rip__type zeroinitializer
@G_0x4e9__rip_ = global %G_0x4e9__rip__type zeroinitializer
@G_0x509__rip_ = global %G_0x509__rip__type zeroinitializer
@G_0x511__rip_ = global %G_0x511__rip__type zeroinitializer
@G__0x400c28 = global %G__0x400c28_type zeroinitializer
@G__0x400c31 = global %G__0x400c31_type zeroinitializer
@G__0x400c39 = global %G__0x400c39_type zeroinitializer
@G__0x400c40 = global %G__0x400c40_type zeroinitializer
@G__0x400c49 = global %G__0x400c49_type zeroinitializer
@G__0x400c55 = global %G__0x400c55_type zeroinitializer
@G__0x400c63 = global %G__0x400c63_type zeroinitializer
@G__0x400c70 = global %G__0x400c70_type zeroinitializer
@G__0x400c7c = global %G__0x400c7c_type zeroinitializer
@G__0x400c85 = global %G__0x400c85_type zeroinitializer

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

declare %struct.Memory* @sub_400630.make_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400670.sum_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4006a0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006a0, %struct.Memory** %MEMORY
  %loadMem_4006a1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4006a1, %struct.Memory** %MEMORY
  %loadMem_4006a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i24 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i24
  %36 = load i64, i64* %PC.i23
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i23
  %38 = sub i64 %35, 336
  store i64 %38, i64* %RSP.i24, align 8
  %39 = icmp ult i64 %35, 336
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
  %49 = xor i64 336, %35
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
  store %struct.Memory* %loadMem_4006a4, %struct.Memory** %MEMORY
  %loadMem_4006ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i40 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i to i8*
  %77 = load i64, i64* %PC.i39
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i39
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_4006ab, %struct.Memory** %MEMORY
  %loadMem_4006ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i56
  %111 = sub i64 %110, 4
  %112 = load i64, i64* %PC.i55
  %113 = add i64 %112, 7
  store i64 %113, i64* %PC.i55
  %114 = inttoptr i64 %111 to i32*
  store i32 0, i32* %114
  store %struct.Memory* %loadMem_4006ae, %struct.Memory** %MEMORY
  %loadMem_4006b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %120 to i32*
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 15
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %123 to i64*
  %124 = load i64, i64* %RBP.i72
  %125 = sub i64 %124, 8
  %126 = load i32, i32* %EDI.i
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC.i71
  %129 = add i64 %128, 3
  store i64 %129, i64* %PC.i71
  %130 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %130
  store %struct.Memory* %loadMem_4006b5, %struct.Memory** %MEMORY
  %loadMem_4006b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 9
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RSI.i87 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 15
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %RBP.i88
  %141 = sub i64 %140, 16
  %142 = load i64, i64* %RSI.i87
  %143 = load i64, i64* %PC.i86
  %144 = add i64 %143, 4
  store i64 %144, i64* %PC.i86
  %145 = inttoptr i64 %141 to i64*
  store i64 %142, i64* %145
  store %struct.Memory* %loadMem_4006b8, %struct.Memory** %MEMORY
  %loadMem_4006bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 33
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %148 to i64*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %152, i64 0, i64 0
  %XMM0.i104 = bitcast %union.VectorReg* %153 to %union.vec128_t*
  %154 = load i64, i64* %RBP.i103
  %155 = sub i64 %154, 24
  %156 = bitcast %union.vec128_t* %XMM0.i104 to i8*
  %157 = load i64, i64* %PC.i102
  %158 = add i64 %157, 5
  store i64 %158, i64* %PC.i102
  %159 = bitcast i8* %156 to double*
  %160 = load double, double* %159, align 1
  %161 = inttoptr i64 %155 to double*
  store double %160, double* %161
  store %struct.Memory* %loadMem_4006bc, %struct.Memory** %MEMORY
  %loadMem_4006c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %169 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %168, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %169 to %union.vec128_t*
  %170 = load i64, i64* %RBP.i120
  %171 = sub i64 %170, 32
  %172 = bitcast %union.vec128_t* %XMM0.i121 to i8*
  %173 = load i64, i64* %PC.i119
  %174 = add i64 %173, 5
  store i64 %174, i64* %PC.i119
  %175 = bitcast i8* %172 to double*
  %176 = load double, double* %175, align 1
  %177 = inttoptr i64 %171 to double*
  store double %176, double* %177
  store %struct.Memory* %loadMem_4006c1, %struct.Memory** %MEMORY
  %loadMem_4006c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 33
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 15
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %183 to i64*
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %185 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %184, i64 0, i64 0
  %XMM0.i137 = bitcast %union.VectorReg* %185 to %union.vec128_t*
  %186 = load i64, i64* %RBP.i136
  %187 = sub i64 %186, 40
  %188 = bitcast %union.vec128_t* %XMM0.i137 to i8*
  %189 = load i64, i64* %PC.i135
  %190 = add i64 %189, 5
  store i64 %190, i64* %PC.i135
  %191 = bitcast i8* %188 to double*
  %192 = load double, double* %191, align 1
  %193 = inttoptr i64 %187 to double*
  store double %192, double* %193
  store %struct.Memory* %loadMem_4006c6, %struct.Memory** %MEMORY
  %loadMem_4006cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 15
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %200, i64 0, i64 0
  %XMM0.i247 = bitcast %union.VectorReg* %201 to %union.vec128_t*
  %202 = load i64, i64* %RBP.i246
  %203 = sub i64 %202, 48
  %204 = bitcast %union.vec128_t* %XMM0.i247 to i8*
  %205 = load i64, i64* %PC.i245
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC.i245
  %207 = bitcast i8* %204 to double*
  %208 = load double, double* %207, align 1
  %209 = inttoptr i64 %203 to double*
  store double %208, double* %209
  store %struct.Memory* %loadMem_4006cb, %struct.Memory** %MEMORY
  %loadMem_4006d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 15
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RBP.i368
  %217 = sub i64 %216, 276
  %218 = load i64, i64* %PC.i367
  %219 = add i64 %218, 10
  store i64 %219, i64* %PC.i367
  %220 = inttoptr i64 %217 to i32*
  store i32 2500000, i32* %220
  store %struct.Memory* %loadMem_4006d0, %struct.Memory** %MEMORY
  %loadMem_4006da = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 15
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %227, i64 0, i64 0
  %XMM0.i390 = bitcast %union.VectorReg* %228 to %union.vec128_t*
  %229 = load i64, i64* %RBP.i389
  %230 = sub i64 %229, 288
  %231 = bitcast %union.vec128_t* %XMM0.i390 to i8*
  %232 = load i64, i64* %PC.i388
  %233 = add i64 %232, 8
  store i64 %233, i64* %PC.i388
  %234 = bitcast i8* %231 to double*
  %235 = load double, double* %234, align 1
  %236 = inttoptr i64 %230 to double*
  store double %235, double* %236
  store %struct.Memory* %loadMem_4006da, %struct.Memory** %MEMORY
  %loadMem_4006e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %243, i64 0, i64 1
  %YMM1.i484 = bitcast %union.VectorReg* %244 to %"class.std::bitset"*
  %245 = bitcast %"class.std::bitset"* %YMM1.i484 to i8*
  %246 = load i64, i64* %RBP.i483
  %247 = sub i64 %246, 288
  %248 = load i64, i64* %PC.i482
  %249 = add i64 %248, 8
  store i64 %249, i64* %PC.i482
  %250 = inttoptr i64 %247 to double*
  %251 = load double, double* %250
  %252 = bitcast i8* %245 to double*
  store double %251, double* %252, align 1
  %253 = getelementptr inbounds i8, i8* %245, i64 8
  %254 = bitcast i8* %253 to double*
  store double 0.000000e+00, double* %254, align 1
  store %struct.Memory* %loadMem_4006e2, %struct.Memory** %MEMORY
  %loadMem1_4006ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %PC.i481
  %259 = add i64 %258, -186
  %260 = load i64, i64* %PC.i481
  %261 = add i64 %260, 5
  %262 = load i64, i64* %PC.i481
  %263 = add i64 %262, 5
  store i64 %263, i64* %PC.i481
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %261, i64* %267
  store i64 %266, i64* %264, align 8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %259, i64* %268, align 8
  store %struct.Memory* %loadMem1_4006ea, %struct.Memory** %MEMORY
  %loadMem2_4006ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4006ea = load i64, i64* %3
  %call2_4006ea = call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %loadPC_4006ea, %struct.Memory* %loadMem2_4006ea)
  store %struct.Memory* %call2_4006ea, %struct.Memory** %MEMORY
  %loadMem_4006ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 33
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 1
  %YMM1.i480 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = bitcast %"class.std::bitset"* %YMM1.i480 to i8*
  %275 = load i64, i64* %PC.i479
  %276 = load i64, i64* %PC.i479
  %277 = add i64 %276, 8
  store i64 %277, i64* %PC.i479
  %278 = load double, double* bitcast (%G_0x511__rip__type* @G_0x511__rip_ to double*)
  %279 = bitcast i8* %274 to double*
  store double %278, double* %279, align 1
  %280 = getelementptr inbounds i8, i8* %274, i64 8
  %281 = bitcast i8* %280 to double*
  store double 0.000000e+00, double* %281, align 1
  store %struct.Memory* %loadMem_4006ef, %struct.Memory** %MEMORY
  %loadMem_4006f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 15
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 0
  %XMM0.i478 = bitcast %union.VectorReg* %289 to %union.vec128_t*
  %290 = load i64, i64* %RBP.i477
  %291 = sub i64 %290, 144
  %292 = bitcast %union.vec128_t* %XMM0.i478 to i8*
  %293 = load i64, i64* %PC.i476
  %294 = add i64 %293, 8
  store i64 %294, i64* %PC.i476
  %295 = bitcast i8* %292 to double*
  %296 = load double, double* %295, align 1
  %297 = getelementptr inbounds i8, i8* %292, i64 8
  %298 = bitcast i8* %297 to double*
  %299 = load double, double* %298, align 1
  %300 = inttoptr i64 %291 to double*
  store double %296, double* %300
  %301 = add i64 %291, 8
  %302 = inttoptr i64 %301 to double*
  store double %299, double* %302
  store %struct.Memory* %loadMem_4006f7, %struct.Memory** %MEMORY
  %loadMem_4006ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 0
  %YMM0.i474 = bitcast %union.VectorReg* %307 to %"class.std::bitset"*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 1
  %XMM1.i475 = bitcast %union.VectorReg* %309 to %union.vec128_t*
  %310 = bitcast %"class.std::bitset"* %YMM0.i474 to i8*
  %311 = bitcast %union.vec128_t* %XMM1.i475 to i8*
  %312 = load i64, i64* %PC.i473
  %313 = add i64 %312, 3
  store i64 %313, i64* %PC.i473
  %314 = bitcast i8* %311 to <2 x i32>*
  %315 = load <2 x i32>, <2 x i32>* %314, align 1
  %316 = getelementptr inbounds i8, i8* %311, i64 8
  %317 = bitcast i8* %316 to <2 x i32>*
  %318 = load <2 x i32>, <2 x i32>* %317, align 1
  %319 = extractelement <2 x i32> %315, i32 0
  %320 = bitcast i8* %310 to i32*
  store i32 %319, i32* %320, align 1
  %321 = extractelement <2 x i32> %315, i32 1
  %322 = getelementptr inbounds i8, i8* %310, i64 4
  %323 = bitcast i8* %322 to i32*
  store i32 %321, i32* %323, align 1
  %324 = extractelement <2 x i32> %318, i32 0
  %325 = getelementptr inbounds i8, i8* %310, i64 8
  %326 = bitcast i8* %325 to i32*
  store i32 %324, i32* %326, align 1
  %327 = extractelement <2 x i32> %318, i32 1
  %328 = getelementptr inbounds i8, i8* %310, i64 12
  %329 = bitcast i8* %328 to i32*
  store i32 %327, i32* %329, align 1
  store %struct.Memory* %loadMem_4006ff, %struct.Memory** %MEMORY
  %loadMem1_400702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %332 to i64*
  %333 = load i64, i64* %PC.i472
  %334 = add i64 %333, -210
  %335 = load i64, i64* %PC.i472
  %336 = add i64 %335, 5
  %337 = load i64, i64* %PC.i472
  %338 = add i64 %337, 5
  store i64 %338, i64* %PC.i472
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = add i64 %340, -8
  %342 = inttoptr i64 %341 to i64*
  store i64 %336, i64* %342
  store i64 %341, i64* %339, align 8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %334, i64* %343, align 8
  store %struct.Memory* %loadMem1_400702, %struct.Memory** %MEMORY
  %loadMem2_400702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400702 = load i64, i64* %3
  %call2_400702 = call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %loadPC_400702, %struct.Memory* %loadMem2_400702)
  store %struct.Memory* %call2_400702, %struct.Memory** %MEMORY
  %loadMem_400707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %348 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %347, i64 0, i64 1
  %YMM1.i471 = bitcast %union.VectorReg* %348 to %"class.std::bitset"*
  %349 = bitcast %"class.std::bitset"* %YMM1.i471 to i8*
  %350 = load i64, i64* %PC.i470
  %351 = load i64, i64* %PC.i470
  %352 = add i64 %351, 8
  store i64 %352, i64* %PC.i470
  %353 = load double, double* bitcast (%G_0x509__rip__type* @G_0x509__rip_ to double*)
  %354 = bitcast i8* %349 to double*
  store double %353, double* %354, align 1
  %355 = getelementptr inbounds i8, i8* %349, i64 8
  %356 = bitcast i8* %355 to double*
  store double 0.000000e+00, double* %356, align 1
  store %struct.Memory* %loadMem_400707, %struct.Memory** %MEMORY
  %loadMem_40070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 33
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 15
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %362 to i64*
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %363, i64 0, i64 0
  %XMM0.i469 = bitcast %union.VectorReg* %364 to %union.vec128_t*
  %365 = load i64, i64* %RBP.i468
  %366 = sub i64 %365, 160
  %367 = bitcast %union.vec128_t* %XMM0.i469 to i8*
  %368 = load i64, i64* %PC.i467
  %369 = add i64 %368, 8
  store i64 %369, i64* %PC.i467
  %370 = bitcast i8* %367 to double*
  %371 = load double, double* %370, align 1
  %372 = getelementptr inbounds i8, i8* %367, i64 8
  %373 = bitcast i8* %372 to double*
  %374 = load double, double* %373, align 1
  %375 = inttoptr i64 %366 to double*
  store double %371, double* %375
  %376 = add i64 %366, 8
  %377 = inttoptr i64 %376 to double*
  store double %374, double* %377
  store %struct.Memory* %loadMem_40070f, %struct.Memory** %MEMORY
  %loadMem_400717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %381, i64 0, i64 0
  %YMM0.i465 = bitcast %union.VectorReg* %382 to %"class.std::bitset"*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %383, i64 0, i64 1
  %XMM1.i466 = bitcast %union.VectorReg* %384 to %union.vec128_t*
  %385 = bitcast %"class.std::bitset"* %YMM0.i465 to i8*
  %386 = bitcast %union.vec128_t* %XMM1.i466 to i8*
  %387 = load i64, i64* %PC.i464
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC.i464
  %389 = bitcast i8* %386 to <2 x i32>*
  %390 = load <2 x i32>, <2 x i32>* %389, align 1
  %391 = getelementptr inbounds i8, i8* %386, i64 8
  %392 = bitcast i8* %391 to <2 x i32>*
  %393 = load <2 x i32>, <2 x i32>* %392, align 1
  %394 = extractelement <2 x i32> %390, i32 0
  %395 = bitcast i8* %385 to i32*
  store i32 %394, i32* %395, align 1
  %396 = extractelement <2 x i32> %390, i32 1
  %397 = getelementptr inbounds i8, i8* %385, i64 4
  %398 = bitcast i8* %397 to i32*
  store i32 %396, i32* %398, align 1
  %399 = extractelement <2 x i32> %393, i32 0
  %400 = getelementptr inbounds i8, i8* %385, i64 8
  %401 = bitcast i8* %400 to i32*
  store i32 %399, i32* %401, align 1
  %402 = extractelement <2 x i32> %393, i32 1
  %403 = getelementptr inbounds i8, i8* %385, i64 12
  %404 = bitcast i8* %403 to i32*
  store i32 %402, i32* %404, align 1
  store %struct.Memory* %loadMem_400717, %struct.Memory** %MEMORY
  %loadMem1_40071a = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 33
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %PC.i463
  %409 = add i64 %408, -234
  %410 = load i64, i64* %PC.i463
  %411 = add i64 %410, 5
  %412 = load i64, i64* %PC.i463
  %413 = add i64 %412, 5
  store i64 %413, i64* %PC.i463
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = add i64 %415, -8
  %417 = inttoptr i64 %416 to i64*
  store i64 %411, i64* %417
  store i64 %416, i64* %414, align 8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %409, i64* %418, align 8
  store %struct.Memory* %loadMem1_40071a, %struct.Memory** %MEMORY
  %loadMem2_40071a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40071a = load i64, i64* %3
  %call2_40071a = call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %loadPC_40071a, %struct.Memory* %loadMem2_40071a)
  store %struct.Memory* %call2_40071a, %struct.Memory** %MEMORY
  %loadMem_40071f = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %422, i64 0, i64 1
  %YMM1.i462 = bitcast %union.VectorReg* %423 to %"class.std::bitset"*
  %424 = bitcast %"class.std::bitset"* %YMM1.i462 to i8*
  %425 = load i64, i64* %PC.i461
  %426 = load i64, i64* %PC.i461
  %427 = add i64 %426, 8
  store i64 %427, i64* %PC.i461
  %428 = load double, double* bitcast (%G_0x4e9__rip__type* @G_0x4e9__rip_ to double*)
  %429 = bitcast i8* %424 to double*
  store double %428, double* %429, align 1
  %430 = getelementptr inbounds i8, i8* %424, i64 8
  %431 = bitcast i8* %430 to double*
  store double 0.000000e+00, double* %431, align 1
  store %struct.Memory* %loadMem_40071f, %struct.Memory** %MEMORY
  %loadMem_400727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 15
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %438, i64 0, i64 0
  %XMM0.i460 = bitcast %union.VectorReg* %439 to %union.vec128_t*
  %440 = load i64, i64* %RBP.i459
  %441 = sub i64 %440, 176
  %442 = bitcast %union.vec128_t* %XMM0.i460 to i8*
  %443 = load i64, i64* %PC.i458
  %444 = add i64 %443, 8
  store i64 %444, i64* %PC.i458
  %445 = bitcast i8* %442 to double*
  %446 = load double, double* %445, align 1
  %447 = getelementptr inbounds i8, i8* %442, i64 8
  %448 = bitcast i8* %447 to double*
  %449 = load double, double* %448, align 1
  %450 = inttoptr i64 %441 to double*
  store double %446, double* %450
  %451 = add i64 %441, 8
  %452 = inttoptr i64 %451 to double*
  store double %449, double* %452
  store %struct.Memory* %loadMem_400727, %struct.Memory** %MEMORY
  %loadMem_40072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %456, i64 0, i64 0
  %YMM0.i456 = bitcast %union.VectorReg* %457 to %"class.std::bitset"*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %458, i64 0, i64 1
  %XMM1.i457 = bitcast %union.VectorReg* %459 to %union.vec128_t*
  %460 = bitcast %"class.std::bitset"* %YMM0.i456 to i8*
  %461 = bitcast %union.vec128_t* %XMM1.i457 to i8*
  %462 = load i64, i64* %PC.i455
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC.i455
  %464 = bitcast i8* %461 to <2 x i32>*
  %465 = load <2 x i32>, <2 x i32>* %464, align 1
  %466 = getelementptr inbounds i8, i8* %461, i64 8
  %467 = bitcast i8* %466 to <2 x i32>*
  %468 = load <2 x i32>, <2 x i32>* %467, align 1
  %469 = extractelement <2 x i32> %465, i32 0
  %470 = bitcast i8* %460 to i32*
  store i32 %469, i32* %470, align 1
  %471 = extractelement <2 x i32> %465, i32 1
  %472 = getelementptr inbounds i8, i8* %460, i64 4
  %473 = bitcast i8* %472 to i32*
  store i32 %471, i32* %473, align 1
  %474 = extractelement <2 x i32> %468, i32 0
  %475 = getelementptr inbounds i8, i8* %460, i64 8
  %476 = bitcast i8* %475 to i32*
  store i32 %474, i32* %476, align 1
  %477 = extractelement <2 x i32> %468, i32 1
  %478 = getelementptr inbounds i8, i8* %460, i64 12
  %479 = bitcast i8* %478 to i32*
  store i32 %477, i32* %479, align 1
  store %struct.Memory* %loadMem_40072f, %struct.Memory** %MEMORY
  %loadMem1_400732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %PC.i454
  %484 = add i64 %483, -258
  %485 = load i64, i64* %PC.i454
  %486 = add i64 %485, 5
  %487 = load i64, i64* %PC.i454
  %488 = add i64 %487, 5
  store i64 %488, i64* %PC.i454
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %490, -8
  %492 = inttoptr i64 %491 to i64*
  store i64 %486, i64* %492
  store i64 %491, i64* %489, align 8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %484, i64* %493, align 8
  store %struct.Memory* %loadMem1_400732, %struct.Memory** %MEMORY
  %loadMem2_400732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400732 = load i64, i64* %3
  %call2_400732 = call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %loadPC_400732, %struct.Memory* %loadMem2_400732)
  store %struct.Memory* %call2_400732, %struct.Memory** %MEMORY
  %loadMem_400737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %497, i64 0, i64 1
  %YMM1.i453 = bitcast %union.VectorReg* %498 to %"class.std::bitset"*
  %499 = bitcast %"class.std::bitset"* %YMM1.i453 to i8*
  %500 = load i64, i64* %PC.i452
  %501 = load i64, i64* %PC.i452
  %502 = add i64 %501, 8
  store i64 %502, i64* %PC.i452
  %503 = load double, double* bitcast (%G_0x4c9__rip__type* @G_0x4c9__rip_ to double*)
  %504 = bitcast i8* %499 to double*
  store double %503, double* %504, align 1
  %505 = getelementptr inbounds i8, i8* %499, i64 8
  %506 = bitcast i8* %505 to double*
  store double 0.000000e+00, double* %506, align 1
  store %struct.Memory* %loadMem_400737, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %509 to i64*
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %511 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %510, i64 0, i64 2
  %YMM2.i451 = bitcast %union.VectorReg* %511 to %"class.std::bitset"*
  %512 = bitcast %"class.std::bitset"* %YMM2.i451 to i8*
  %513 = load i64, i64* %PC.i450
  %514 = load i64, i64* %PC.i450
  %515 = add i64 %514, 8
  store i64 %515, i64* %PC.i450
  %516 = load double, double* bitcast (%G_0x4d1__rip__type* @G_0x4d1__rip_ to double*)
  %517 = bitcast i8* %512 to double*
  store double %516, double* %517, align 1
  %518 = getelementptr inbounds i8, i8* %512, i64 8
  %519 = bitcast i8* %518 to double*
  store double 0.000000e+00, double* %519, align 1
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 33
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %522 to i64*
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 15
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %527 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %526, i64 0, i64 0
  %XMM0.i449 = bitcast %union.VectorReg* %527 to %union.vec128_t*
  %528 = load i64, i64* %RBP.i448
  %529 = sub i64 %528, 208
  %530 = bitcast %union.vec128_t* %XMM0.i449 to i8*
  %531 = load i64, i64* %PC.i447
  %532 = add i64 %531, 8
  store i64 %532, i64* %PC.i447
  %533 = bitcast i8* %530 to double*
  %534 = load double, double* %533, align 1
  %535 = getelementptr inbounds i8, i8* %530, i64 8
  %536 = bitcast i8* %535 to double*
  %537 = load double, double* %536, align 1
  %538 = inttoptr i64 %529 to double*
  store double %534, double* %538
  %539 = add i64 %529, 8
  %540 = inttoptr i64 %539 to double*
  store double %537, double* %540
  store %struct.Memory* %loadMem_400747, %struct.Memory** %MEMORY
  %loadMem_40074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %544, i64 0, i64 0
  %YMM0.i445 = bitcast %union.VectorReg* %545 to %"class.std::bitset"*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %547 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %546, i64 0, i64 1
  %XMM1.i446 = bitcast %union.VectorReg* %547 to %union.vec128_t*
  %548 = bitcast %"class.std::bitset"* %YMM0.i445 to i8*
  %549 = bitcast %union.vec128_t* %XMM1.i446 to i8*
  %550 = load i64, i64* %PC.i444
  %551 = add i64 %550, 3
  store i64 %551, i64* %PC.i444
  %552 = bitcast i8* %549 to <2 x i32>*
  %553 = load <2 x i32>, <2 x i32>* %552, align 1
  %554 = getelementptr inbounds i8, i8* %549, i64 8
  %555 = bitcast i8* %554 to <2 x i32>*
  %556 = load <2 x i32>, <2 x i32>* %555, align 1
  %557 = extractelement <2 x i32> %553, i32 0
  %558 = bitcast i8* %548 to i32*
  store i32 %557, i32* %558, align 1
  %559 = extractelement <2 x i32> %553, i32 1
  %560 = getelementptr inbounds i8, i8* %548, i64 4
  %561 = bitcast i8* %560 to i32*
  store i32 %559, i32* %561, align 1
  %562 = extractelement <2 x i32> %556, i32 0
  %563 = getelementptr inbounds i8, i8* %548, i64 8
  %564 = bitcast i8* %563 to i32*
  store i32 %562, i32* %564, align 1
  %565 = extractelement <2 x i32> %556, i32 1
  %566 = getelementptr inbounds i8, i8* %548, i64 12
  %567 = bitcast i8* %566 to i32*
  store i32 %565, i32* %567, align 1
  store %struct.Memory* %loadMem_40074f, %struct.Memory** %MEMORY
  %loadMem_400752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %571, i64 0, i64 1
  %YMM1.i442 = bitcast %union.VectorReg* %572 to %"class.std::bitset"*
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %574 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %573, i64 0, i64 2
  %XMM2.i443 = bitcast %union.VectorReg* %574 to %union.vec128_t*
  %575 = bitcast %"class.std::bitset"* %YMM1.i442 to i8*
  %576 = bitcast %union.vec128_t* %XMM2.i443 to i8*
  %577 = load i64, i64* %PC.i441
  %578 = add i64 %577, 3
  store i64 %578, i64* %PC.i441
  %579 = bitcast i8* %576 to <2 x i32>*
  %580 = load <2 x i32>, <2 x i32>* %579, align 1
  %581 = getelementptr inbounds i8, i8* %576, i64 8
  %582 = bitcast i8* %581 to <2 x i32>*
  %583 = load <2 x i32>, <2 x i32>* %582, align 1
  %584 = extractelement <2 x i32> %580, i32 0
  %585 = bitcast i8* %575 to i32*
  store i32 %584, i32* %585, align 1
  %586 = extractelement <2 x i32> %580, i32 1
  %587 = getelementptr inbounds i8, i8* %575, i64 4
  %588 = bitcast i8* %587 to i32*
  store i32 %586, i32* %588, align 1
  %589 = extractelement <2 x i32> %583, i32 0
  %590 = getelementptr inbounds i8, i8* %575, i64 8
  %591 = bitcast i8* %590 to i32*
  store i32 %589, i32* %591, align 1
  %592 = extractelement <2 x i32> %583, i32 1
  %593 = getelementptr inbounds i8, i8* %575, i64 12
  %594 = bitcast i8* %593 to i32*
  store i32 %592, i32* %594, align 1
  store %struct.Memory* %loadMem_400752, %struct.Memory** %MEMORY
  %loadMem1_400755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %597 to i64*
  %598 = load i64, i64* %PC.i440
  %599 = add i64 %598, -293
  %600 = load i64, i64* %PC.i440
  %601 = add i64 %600, 5
  %602 = load i64, i64* %PC.i440
  %603 = add i64 %602, 5
  store i64 %603, i64* %PC.i440
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = add i64 %605, -8
  %607 = inttoptr i64 %606 to i64*
  store i64 %601, i64* %607
  store i64 %606, i64* %604, align 8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %599, i64* %608, align 8
  store %struct.Memory* %loadMem1_400755, %struct.Memory** %MEMORY
  %loadMem2_400755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400755 = load i64, i64* %3
  %call2_400755 = call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %loadPC_400755, %struct.Memory* %loadMem2_400755)
  store %struct.Memory* %call2_400755, %struct.Memory** %MEMORY
  %loadMem_40075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %613 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %612, i64 0, i64 1
  %YMM1.i439 = bitcast %union.VectorReg* %613 to %"class.std::bitset"*
  %614 = bitcast %"class.std::bitset"* %YMM1.i439 to i8*
  %615 = load i64, i64* %PC.i438
  %616 = load i64, i64* %PC.i438
  %617 = add i64 %616, 8
  store i64 %617, i64* %PC.i438
  %618 = load double, double* bitcast (%G_0x4a6__rip__type* @G_0x4a6__rip_ to double*)
  %619 = bitcast i8* %614 to double*
  store double %618, double* %619, align 1
  %620 = getelementptr inbounds i8, i8* %614, i64 8
  %621 = bitcast i8* %620 to double*
  store double 0.000000e+00, double* %621, align 1
  store %struct.Memory* %loadMem_40075a, %struct.Memory** %MEMORY
  %loadMem_400762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %625, i64 0, i64 2
  %YMM2.i437 = bitcast %union.VectorReg* %626 to %"class.std::bitset"*
  %627 = bitcast %"class.std::bitset"* %YMM2.i437 to i8*
  %628 = load i64, i64* %PC.i436
  %629 = load i64, i64* %PC.i436
  %630 = add i64 %629, 8
  store i64 %630, i64* %PC.i436
  %631 = load double, double* bitcast (%G_0x4a6__rip__type* @G_0x4a6__rip_ to double*)
  %632 = bitcast i8* %627 to double*
  store double %631, double* %632, align 1
  %633 = getelementptr inbounds i8, i8* %627, i64 8
  %634 = bitcast i8* %633 to double*
  store double 0.000000e+00, double* %634, align 1
  store %struct.Memory* %loadMem_400762, %struct.Memory** %MEMORY
  %loadMem_40076a = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 15
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %642 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %641, i64 0, i64 0
  %XMM0.i435 = bitcast %union.VectorReg* %642 to %union.vec128_t*
  %643 = load i64, i64* %RBP.i434
  %644 = sub i64 %643, 192
  %645 = bitcast %union.vec128_t* %XMM0.i435 to i8*
  %646 = load i64, i64* %PC.i433
  %647 = add i64 %646, 8
  store i64 %647, i64* %PC.i433
  %648 = bitcast i8* %645 to double*
  %649 = load double, double* %648, align 1
  %650 = getelementptr inbounds i8, i8* %645, i64 8
  %651 = bitcast i8* %650 to double*
  %652 = load double, double* %651, align 1
  %653 = inttoptr i64 %644 to double*
  store double %649, double* %653
  %654 = add i64 %644, 8
  %655 = inttoptr i64 %654 to double*
  store double %652, double* %655
  store %struct.Memory* %loadMem_40076a, %struct.Memory** %MEMORY
  %loadMem_400772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 33
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %660 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %659, i64 0, i64 0
  %YMM0.i431 = bitcast %union.VectorReg* %660 to %"class.std::bitset"*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %662 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %661, i64 0, i64 1
  %XMM1.i432 = bitcast %union.VectorReg* %662 to %union.vec128_t*
  %663 = bitcast %"class.std::bitset"* %YMM0.i431 to i8*
  %664 = bitcast %union.vec128_t* %XMM1.i432 to i8*
  %665 = load i64, i64* %PC.i430
  %666 = add i64 %665, 3
  store i64 %666, i64* %PC.i430
  %667 = bitcast i8* %664 to <2 x i32>*
  %668 = load <2 x i32>, <2 x i32>* %667, align 1
  %669 = getelementptr inbounds i8, i8* %664, i64 8
  %670 = bitcast i8* %669 to <2 x i32>*
  %671 = load <2 x i32>, <2 x i32>* %670, align 1
  %672 = extractelement <2 x i32> %668, i32 0
  %673 = bitcast i8* %663 to i32*
  store i32 %672, i32* %673, align 1
  %674 = extractelement <2 x i32> %668, i32 1
  %675 = getelementptr inbounds i8, i8* %663, i64 4
  %676 = bitcast i8* %675 to i32*
  store i32 %674, i32* %676, align 1
  %677 = extractelement <2 x i32> %671, i32 0
  %678 = getelementptr inbounds i8, i8* %663, i64 8
  %679 = bitcast i8* %678 to i32*
  store i32 %677, i32* %679, align 1
  %680 = extractelement <2 x i32> %671, i32 1
  %681 = getelementptr inbounds i8, i8* %663, i64 12
  %682 = bitcast i8* %681 to i32*
  store i32 %680, i32* %682, align 1
  store %struct.Memory* %loadMem_400772, %struct.Memory** %MEMORY
  %loadMem_400775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %687 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %686, i64 0, i64 1
  %YMM1.i428 = bitcast %union.VectorReg* %687 to %"class.std::bitset"*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %688, i64 0, i64 2
  %XMM2.i429 = bitcast %union.VectorReg* %689 to %union.vec128_t*
  %690 = bitcast %"class.std::bitset"* %YMM1.i428 to i8*
  %691 = bitcast %union.vec128_t* %XMM2.i429 to i8*
  %692 = load i64, i64* %PC.i427
  %693 = add i64 %692, 3
  store i64 %693, i64* %PC.i427
  %694 = bitcast i8* %691 to <2 x i32>*
  %695 = load <2 x i32>, <2 x i32>* %694, align 1
  %696 = getelementptr inbounds i8, i8* %691, i64 8
  %697 = bitcast i8* %696 to <2 x i32>*
  %698 = load <2 x i32>, <2 x i32>* %697, align 1
  %699 = extractelement <2 x i32> %695, i32 0
  %700 = bitcast i8* %690 to i32*
  store i32 %699, i32* %700, align 1
  %701 = extractelement <2 x i32> %695, i32 1
  %702 = getelementptr inbounds i8, i8* %690, i64 4
  %703 = bitcast i8* %702 to i32*
  store i32 %701, i32* %703, align 1
  %704 = extractelement <2 x i32> %698, i32 0
  %705 = getelementptr inbounds i8, i8* %690, i64 8
  %706 = bitcast i8* %705 to i32*
  store i32 %704, i32* %706, align 1
  %707 = extractelement <2 x i32> %698, i32 1
  %708 = getelementptr inbounds i8, i8* %690, i64 12
  %709 = bitcast i8* %708 to i32*
  store i32 %707, i32* %709, align 1
  store %struct.Memory* %loadMem_400775, %struct.Memory** %MEMORY
  %loadMem1_400778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %PC.i426
  %714 = add i64 %713, -328
  %715 = load i64, i64* %PC.i426
  %716 = add i64 %715, 5
  %717 = load i64, i64* %PC.i426
  %718 = add i64 %717, 5
  store i64 %718, i64* %PC.i426
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %720 = load i64, i64* %719, align 8
  %721 = add i64 %720, -8
  %722 = inttoptr i64 %721 to i64*
  store i64 %716, i64* %722
  store i64 %721, i64* %719, align 8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %714, i64* %723, align 8
  store %struct.Memory* %loadMem1_400778, %struct.Memory** %MEMORY
  %loadMem2_400778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400778 = load i64, i64* %3
  %call2_400778 = call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %loadPC_400778, %struct.Memory* %loadMem2_400778)
  store %struct.Memory* %call2_400778, %struct.Memory** %MEMORY
  %loadMem_40077d = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %727, i64 0, i64 1
  %YMM1.i425 = bitcast %union.VectorReg* %728 to %"class.std::bitset"*
  %729 = bitcast %"class.std::bitset"* %YMM1.i425 to i8*
  %730 = load i64, i64* %PC.i424
  %731 = load i64, i64* %PC.i424
  %732 = add i64 %731, 8
  store i64 %732, i64* %PC.i424
  %733 = load double, double* bitcast (%G_0x483__rip__type* @G_0x483__rip_ to double*)
  %734 = bitcast i8* %729 to double*
  store double %733, double* %734, align 1
  %735 = getelementptr inbounds i8, i8* %729, i64 8
  %736 = bitcast i8* %735 to double*
  store double 0.000000e+00, double* %736, align 1
  store %struct.Memory* %loadMem_40077d, %struct.Memory** %MEMORY
  %loadMem_400785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 15
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %744 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %743, i64 0, i64 0
  %XMM0.i423 = bitcast %union.VectorReg* %744 to %union.vec128_t*
  %745 = load i64, i64* %RBP.i422
  %746 = sub i64 %745, 240
  %747 = bitcast %union.vec128_t* %XMM0.i423 to i8*
  %748 = load i64, i64* %PC.i421
  %749 = add i64 %748, 8
  store i64 %749, i64* %PC.i421
  %750 = bitcast i8* %747 to double*
  %751 = load double, double* %750, align 1
  %752 = getelementptr inbounds i8, i8* %747, i64 8
  %753 = bitcast i8* %752 to double*
  %754 = load double, double* %753, align 1
  %755 = inttoptr i64 %746 to double*
  store double %751, double* %755
  %756 = add i64 %746, 8
  %757 = inttoptr i64 %756 to double*
  store double %754, double* %757
  store %struct.Memory* %loadMem_400785, %struct.Memory** %MEMORY
  %loadMem_40078d = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 15
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %765 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %764, i64 0, i64 0
  %YMM0.i420 = bitcast %union.VectorReg* %765 to %"class.std::bitset"*
  %766 = bitcast %"class.std::bitset"* %YMM0.i420 to i8*
  %767 = load i64, i64* %RBP.i419
  %768 = sub i64 %767, 144
  %769 = load i64, i64* %PC.i418
  %770 = add i64 %769, 8
  store i64 %770, i64* %PC.i418
  %771 = inttoptr i64 %768 to double*
  %772 = load double, double* %771
  %773 = add i64 %768, 8
  %774 = inttoptr i64 %773 to double*
  %775 = load double, double* %774
  %776 = bitcast i8* %766 to double*
  store double %772, double* %776, align 1
  %777 = getelementptr inbounds i8, i8* %766, i64 8
  %778 = bitcast i8* %777 to double*
  store double %775, double* %778, align 1
  store %struct.Memory* %loadMem_40078d, %struct.Memory** %MEMORY
  %loadMem_400795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 15
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %785, i64 0, i64 0
  %XMM0.i417 = bitcast %union.VectorReg* %786 to %union.vec128_t*
  %787 = load i64, i64* %RBP.i416
  %788 = sub i64 %787, 128
  %789 = bitcast %union.vec128_t* %XMM0.i417 to i8*
  %790 = load i64, i64* %PC.i415
  %791 = add i64 %790, 5
  store i64 %791, i64* %PC.i415
  %792 = bitcast i8* %789 to double*
  %793 = load double, double* %792, align 1
  %794 = getelementptr inbounds i8, i8* %789, i64 8
  %795 = bitcast i8* %794 to double*
  %796 = load double, double* %795, align 1
  %797 = inttoptr i64 %788 to double*
  store double %793, double* %797
  %798 = add i64 %788, 8
  %799 = inttoptr i64 %798 to double*
  store double %796, double* %799
  store %struct.Memory* %loadMem_400795, %struct.Memory** %MEMORY
  %loadMem_40079a = load %struct.Memory*, %struct.Memory** %MEMORY
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 33
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 15
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %807 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %806, i64 0, i64 0
  %XMM0.i414 = bitcast %union.VectorReg* %807 to %union.vec128_t*
  %808 = load i64, i64* %RBP.i413
  %809 = sub i64 %808, 112
  %810 = bitcast %union.vec128_t* %XMM0.i414 to i8*
  %811 = load i64, i64* %PC.i412
  %812 = add i64 %811, 5
  store i64 %812, i64* %PC.i412
  %813 = bitcast i8* %810 to double*
  %814 = load double, double* %813, align 1
  %815 = getelementptr inbounds i8, i8* %810, i64 8
  %816 = bitcast i8* %815 to double*
  %817 = load double, double* %816, align 1
  %818 = inttoptr i64 %809 to double*
  store double %814, double* %818
  %819 = add i64 %809, 8
  %820 = inttoptr i64 %819 to double*
  store double %817, double* %820
  store %struct.Memory* %loadMem_40079a, %struct.Memory** %MEMORY
  %loadMem_40079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 33
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %823 to i64*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 15
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %827, i64 0, i64 0
  %XMM0.i411 = bitcast %union.VectorReg* %828 to %union.vec128_t*
  %829 = load i64, i64* %RBP.i410
  %830 = sub i64 %829, 96
  %831 = bitcast %union.vec128_t* %XMM0.i411 to i8*
  %832 = load i64, i64* %PC.i409
  %833 = add i64 %832, 5
  store i64 %833, i64* %PC.i409
  %834 = bitcast i8* %831 to double*
  %835 = load double, double* %834, align 1
  %836 = getelementptr inbounds i8, i8* %831, i64 8
  %837 = bitcast i8* %836 to double*
  %838 = load double, double* %837, align 1
  %839 = inttoptr i64 %830 to double*
  store double %835, double* %839
  %840 = add i64 %830, 8
  %841 = inttoptr i64 %840 to double*
  store double %838, double* %841
  store %struct.Memory* %loadMem_40079f, %struct.Memory** %MEMORY
  %loadMem_4007a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 15
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %849 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %848, i64 0, i64 0
  %XMM0.i408 = bitcast %union.VectorReg* %849 to %union.vec128_t*
  %850 = load i64, i64* %RBP.i407
  %851 = sub i64 %850, 80
  %852 = bitcast %union.vec128_t* %XMM0.i408 to i8*
  %853 = load i64, i64* %PC.i406
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC.i406
  %855 = bitcast i8* %852 to double*
  %856 = load double, double* %855, align 1
  %857 = getelementptr inbounds i8, i8* %852, i64 8
  %858 = bitcast i8* %857 to double*
  %859 = load double, double* %858, align 1
  %860 = inttoptr i64 %851 to double*
  store double %856, double* %860
  %861 = add i64 %851, 8
  %862 = inttoptr i64 %861 to double*
  store double %859, double* %862
  store %struct.Memory* %loadMem_4007a4, %struct.Memory** %MEMORY
  %loadMem_4007a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %870 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %869, i64 0, i64 0
  %XMM0.i405 = bitcast %union.VectorReg* %870 to %union.vec128_t*
  %871 = load i64, i64* %RBP.i404
  %872 = sub i64 %871, 64
  %873 = bitcast %union.vec128_t* %XMM0.i405 to i8*
  %874 = load i64, i64* %PC.i403
  %875 = add i64 %874, 5
  store i64 %875, i64* %PC.i403
  %876 = bitcast i8* %873 to double*
  %877 = load double, double* %876, align 1
  %878 = getelementptr inbounds i8, i8* %873, i64 8
  %879 = bitcast i8* %878 to double*
  %880 = load double, double* %879, align 1
  %881 = inttoptr i64 %872 to double*
  store double %877, double* %881
  %882 = add i64 %872, 8
  %883 = inttoptr i64 %882 to double*
  store double %880, double* %883
  store %struct.Memory* %loadMem_4007a9, %struct.Memory** %MEMORY
  %loadMem_4007ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %891 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %890, i64 0, i64 1
  %XMM1.i402 = bitcast %union.VectorReg* %891 to %union.vec128_t*
  %892 = load i64, i64* %RBP.i401
  %893 = sub i64 %892, 248
  %894 = bitcast %union.vec128_t* %XMM1.i402 to i8*
  %895 = load i64, i64* %PC.i400
  %896 = add i64 %895, 8
  store i64 %896, i64* %PC.i400
  %897 = bitcast i8* %894 to double*
  %898 = load double, double* %897, align 1
  %899 = inttoptr i64 %893 to double*
  store double %898, double* %899
  store %struct.Memory* %loadMem_4007ae, %struct.Memory** %MEMORY
  br label %block_.L_4007b6

block_.L_4007b6:                                  ; preds = %block_4007d2, %entry
  %loadMem_4007b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 15
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %905 to i64*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %907 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %906, i64 0, i64 0
  %YMM0.i399 = bitcast %union.VectorReg* %907 to %"class.std::bitset"*
  %908 = bitcast %"class.std::bitset"* %YMM0.i399 to i8*
  %909 = load i64, i64* %RBP.i398
  %910 = sub i64 %909, 248
  %911 = load i64, i64* %PC.i397
  %912 = add i64 %911, 8
  store i64 %912, i64* %PC.i397
  %913 = inttoptr i64 %910 to double*
  %914 = load double, double* %913
  %915 = bitcast i8* %908 to double*
  store double %914, double* %915, align 1
  %916 = getelementptr inbounds i8, i8* %908, i64 8
  %917 = bitcast i8* %916 to double*
  store double 0.000000e+00, double* %917, align 1
  store %struct.Memory* %loadMem_4007b6, %struct.Memory** %MEMORY
  %loadMem_4007be = load %struct.Memory*, %struct.Memory** %MEMORY
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 33
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 1
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 15
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %926 to i64*
  %927 = load i64, i64* %RBP.i396
  %928 = sub i64 %927, 276
  %929 = load i64, i64* %PC.i394
  %930 = add i64 %929, 6
  store i64 %930, i64* %PC.i394
  %931 = inttoptr i64 %928 to i32*
  %932 = load i32, i32* %931
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RAX.i395, align 8
  store %struct.Memory* %loadMem_4007be, %struct.Memory** %MEMORY
  %loadMem_4007c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 33
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 1
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %EAX.i392 = bitcast %union.anon* %939 to i32*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %940, i64 0, i64 1
  %YMM1.i393 = bitcast %union.VectorReg* %941 to %"class.std::bitset"*
  %942 = bitcast %"class.std::bitset"* %YMM1.i393 to i8*
  %943 = load i32, i32* %EAX.i392
  %944 = zext i32 %943 to i64
  %945 = load i64, i64* %PC.i391
  %946 = add i64 %945, 4
  store i64 %946, i64* %PC.i391
  %947 = sitofp i32 %943 to double
  %948 = bitcast i8* %942 to double*
  store double %947, double* %948, align 1
  store %struct.Memory* %loadMem_4007c4, %struct.Memory** %MEMORY
  %loadMem_4007c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 33
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %952, i64 0, i64 0
  %XMM0.i385 = bitcast %union.VectorReg* %953 to %union.vec128_t*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %955 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %954, i64 0, i64 1
  %XMM1.i386 = bitcast %union.VectorReg* %955 to %union.vec128_t*
  %956 = bitcast %union.vec128_t* %XMM1.i386 to i8*
  %957 = bitcast %union.vec128_t* %XMM0.i385 to i8*
  %958 = load i64, i64* %PC.i384
  %959 = add i64 %958, 4
  store i64 %959, i64* %PC.i384
  %960 = bitcast i8* %956 to double*
  %961 = load double, double* %960, align 1
  %962 = bitcast i8* %957 to double*
  %963 = load double, double* %962, align 1
  %964 = fcmp uno double %961, %963
  br i1 %964, label %965, label %977

; <label>:965:                                    ; preds = %block_.L_4007b6
  %966 = fadd double %961, %963
  %967 = bitcast double %966 to i64
  %968 = and i64 %967, 9221120237041090560
  %969 = icmp eq i64 %968, 9218868437227405312
  %970 = and i64 %967, 2251799813685247
  %971 = icmp ne i64 %970, 0
  %972 = and i1 %969, %971
  br i1 %972, label %973, label %983

; <label>:973:                                    ; preds = %965
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %975 = load i64, i64* %974, align 8
  %976 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %975, %struct.Memory* %loadMem_4007c8)
  br label %routine_ucomisd__xmm0___xmm1.exit387

; <label>:977:                                    ; preds = %block_.L_4007b6
  %978 = fcmp ogt double %961, %963
  br i1 %978, label %983, label %979

; <label>:979:                                    ; preds = %977
  %980 = fcmp olt double %961, %963
  br i1 %980, label %983, label %981

; <label>:981:                                    ; preds = %979
  %982 = fcmp oeq double %961, %963
  br i1 %982, label %983, label %990

; <label>:983:                                    ; preds = %981, %979, %977, %965
  %984 = phi i8 [ 0, %977 ], [ 0, %979 ], [ 1, %981 ], [ 1, %965 ]
  %985 = phi i8 [ 0, %977 ], [ 0, %979 ], [ 0, %981 ], [ 1, %965 ]
  %986 = phi i8 [ 0, %977 ], [ 1, %979 ], [ 0, %981 ], [ 1, %965 ]
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %984, i8* %987, align 1
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %985, i8* %988, align 1
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %986, i8* %989, align 1
  br label %990

; <label>:990:                                    ; preds = %983, %981
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %991, align 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %992, align 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %993, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit387

routine_ucomisd__xmm0___xmm1.exit387:             ; preds = %973, %990
  %994 = phi %struct.Memory* [ %976, %973 ], [ %loadMem_4007c8, %990 ]
  store %struct.Memory* %994, %struct.Memory** %MEMORY
  %loadMem_4007cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %PC.i383
  %999 = add i64 %998, 298
  %1000 = load i64, i64* %PC.i383
  %1001 = add i64 %1000, 6
  %1002 = load i64, i64* %PC.i383
  %1003 = add i64 %1002, 6
  store i64 %1003, i64* %PC.i383
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1005 = load i8, i8* %1004, align 1
  store i8 %1005, i8* %BRANCH_TAKEN, align 1
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1007 = icmp ne i8 %1005, 0
  %1008 = select i1 %1007, i64 %999, i64 %1001
  store i64 %1008, i64* %1006, align 8
  store %struct.Memory* %loadMem_4007cc, %struct.Memory** %MEMORY
  %loadBr_4007cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4007cc = icmp eq i8 %loadBr_4007cc, 1
  br i1 %cmpBr_4007cc, label %block_.L_4008f6, label %block_4007d2

block_4007d2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit387
  %loadMem_4007d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 33
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1013 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1012, i64 0, i64 0
  %YMM0.i382 = bitcast %union.VectorReg* %1013 to %"class.std::bitset"*
  %1014 = bitcast %"class.std::bitset"* %YMM0.i382 to i8*
  %1015 = load i64, i64* %PC.i381
  %1016 = load i64, i64* %PC.i381
  %1017 = add i64 %1016, 8
  store i64 %1017, i64* %PC.i381
  %1018 = load double, double* bitcast (%G_0x446__rip__type* @G_0x446__rip_ to double*)
  %1019 = bitcast i8* %1014 to double*
  store double %1018, double* %1019, align 1
  %1020 = getelementptr inbounds i8, i8* %1014, i64 8
  %1021 = bitcast i8* %1020 to double*
  store double 0.000000e+00, double* %1021, align 1
  store %struct.Memory* %loadMem_4007d2, %struct.Memory** %MEMORY
  %loadMem_4007da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 33
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1025, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %1026 to %"class.std::bitset"*
  %1027 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %1028 = load i64, i64* %PC.i379
  %1029 = load i64, i64* %PC.i379
  %1030 = add i64 %1029, 8
  store i64 %1030, i64* %PC.i379
  %1031 = load double, double* bitcast (%G_0x426__rip__type* @G_0x426__rip_ to double*)
  %1032 = bitcast i8* %1027 to double*
  store double %1031, double* %1032, align 1
  %1033 = getelementptr inbounds i8, i8* %1027, i64 8
  %1034 = bitcast i8* %1033 to double*
  store double 0.000000e+00, double* %1034, align 1
  store %struct.Memory* %loadMem_4007da, %struct.Memory** %MEMORY
  %loadMem_4007e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1041, i64 0, i64 2
  %YMM2.i378 = bitcast %union.VectorReg* %1042 to %"class.std::bitset"*
  %1043 = bitcast %"class.std::bitset"* %YMM2.i378 to i8*
  %1044 = load i64, i64* %RBP.i377
  %1045 = sub i64 %1044, 248
  %1046 = load i64, i64* %PC.i376
  %1047 = add i64 %1046, 8
  store i64 %1047, i64* %PC.i376
  %1048 = inttoptr i64 %1045 to double*
  %1049 = load double, double* %1048
  %1050 = bitcast i8* %1043 to double*
  store double %1049, double* %1050, align 1
  %1051 = getelementptr inbounds i8, i8* %1043, i64 8
  %1052 = bitcast i8* %1051 to double*
  store double 0.000000e+00, double* %1052, align 1
  store %struct.Memory* %loadMem_4007e2, %struct.Memory** %MEMORY
  %loadMem_4007ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1057 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1056, i64 0, i64 2
  %YMM2.i374 = bitcast %union.VectorReg* %1057 to %"class.std::bitset"*
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1059 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1058, i64 0, i64 1
  %XMM1.i375 = bitcast %union.VectorReg* %1059 to %union.vec128_t*
  %1060 = bitcast %"class.std::bitset"* %YMM2.i374 to i8*
  %1061 = bitcast %"class.std::bitset"* %YMM2.i374 to i8*
  %1062 = bitcast %union.vec128_t* %XMM1.i375 to i8*
  %1063 = load i64, i64* %PC.i373
  %1064 = add i64 %1063, 4
  store i64 %1064, i64* %PC.i373
  %1065 = bitcast i8* %1061 to double*
  %1066 = load double, double* %1065, align 1
  %1067 = getelementptr inbounds i8, i8* %1061, i64 8
  %1068 = bitcast i8* %1067 to i64*
  %1069 = load i64, i64* %1068, align 1
  %1070 = bitcast i8* %1062 to double*
  %1071 = load double, double* %1070, align 1
  %1072 = fsub double %1066, %1071
  %1073 = bitcast i8* %1060 to double*
  store double %1072, double* %1073, align 1
  %1074 = getelementptr inbounds i8, i8* %1060, i64 8
  %1075 = bitcast i8* %1074 to i64*
  store i64 %1069, i64* %1075, align 1
  store %struct.Memory* %loadMem_4007ea, %struct.Memory** %MEMORY
  %loadMem_4007ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1080 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1079, i64 0, i64 1
  %YMM1.i371 = bitcast %union.VectorReg* %1080 to %"class.std::bitset"*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1082 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1081, i64 0, i64 2
  %XMM2.i372 = bitcast %union.VectorReg* %1082 to %union.vec128_t*
  %1083 = bitcast %"class.std::bitset"* %YMM1.i371 to i8*
  %1084 = bitcast %union.vec128_t* %XMM2.i372 to i8*
  %1085 = load i64, i64* %PC.i370
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %PC.i370
  %1087 = bitcast i8* %1084 to <2 x i32>*
  %1088 = load <2 x i32>, <2 x i32>* %1087, align 1
  %1089 = getelementptr inbounds i8, i8* %1084, i64 8
  %1090 = bitcast i8* %1089 to <2 x i32>*
  %1091 = load <2 x i32>, <2 x i32>* %1090, align 1
  %1092 = extractelement <2 x i32> %1088, i32 0
  %1093 = bitcast i8* %1083 to i32*
  store i32 %1092, i32* %1093, align 1
  %1094 = extractelement <2 x i32> %1088, i32 1
  %1095 = getelementptr inbounds i8, i8* %1083, i64 4
  %1096 = bitcast i8* %1095 to i32*
  store i32 %1094, i32* %1096, align 1
  %1097 = extractelement <2 x i32> %1091, i32 0
  %1098 = getelementptr inbounds i8, i8* %1083, i64 8
  %1099 = bitcast i8* %1098 to i32*
  store i32 %1097, i32* %1099, align 1
  %1100 = extractelement <2 x i32> %1091, i32 1
  %1101 = getelementptr inbounds i8, i8* %1083, i64 12
  %1102 = bitcast i8* %1101 to i32*
  store i32 %1100, i32* %1102, align 1
  store %struct.Memory* %loadMem_4007ee, %struct.Memory** %MEMORY
  %loadMem1_4007f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1105 to i64*
  %1106 = load i64, i64* %PC.i369
  %1107 = add i64 %1106, -753
  %1108 = load i64, i64* %PC.i369
  %1109 = add i64 %1108, 5
  %1110 = load i64, i64* %PC.i369
  %1111 = add i64 %1110, 5
  store i64 %1111, i64* %PC.i369
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1113 = load i64, i64* %1112, align 8
  %1114 = add i64 %1113, -8
  %1115 = inttoptr i64 %1114 to i64*
  store i64 %1109, i64* %1115
  store i64 %1114, i64* %1112, align 8
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1107, i64* %1116, align 8
  store %struct.Memory* %loadMem1_4007f1, %struct.Memory** %MEMORY
  %loadMem2_4007f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4007f1 = load i64, i64* %3
  %1117 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %loadMem2_4007f1)
  store %struct.Memory* %1117, %struct.Memory** %MEMORY
  %loadMem_4007f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1122 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1121, i64 0, i64 1
  %YMM1.i366 = bitcast %union.VectorReg* %1122 to %"class.std::bitset"*
  %1123 = bitcast %"class.std::bitset"* %YMM1.i366 to i8*
  %1124 = load i64, i64* %PC.i365
  %1125 = load i64, i64* %PC.i365
  %1126 = add i64 %1125, 8
  store i64 %1126, i64* %PC.i365
  %1127 = load double, double* bitcast (%G_0x40a__rip__type* @G_0x40a__rip_ to double*)
  %1128 = bitcast i8* %1123 to double*
  store double %1127, double* %1128, align 1
  %1129 = getelementptr inbounds i8, i8* %1123, i64 8
  %1130 = bitcast i8* %1129 to double*
  store double 0.000000e+00, double* %1130, align 1
  store %struct.Memory* %loadMem_4007f6, %struct.Memory** %MEMORY
  %loadMem_4007fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 15
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1137, i64 0, i64 0
  %YMM0.i364 = bitcast %union.VectorReg* %1138 to %"class.std::bitset"*
  %1139 = bitcast %"class.std::bitset"* %YMM0.i364 to i8*
  %1140 = bitcast %"class.std::bitset"* %YMM0.i364 to i8*
  %1141 = load i64, i64* %RBP.i363
  %1142 = sub i64 %1141, 24
  %1143 = load i64, i64* %PC.i362
  %1144 = add i64 %1143, 5
  store i64 %1144, i64* %PC.i362
  %1145 = bitcast i8* %1140 to double*
  %1146 = load double, double* %1145, align 1
  %1147 = getelementptr inbounds i8, i8* %1140, i64 8
  %1148 = bitcast i8* %1147 to i64*
  %1149 = load i64, i64* %1148, align 1
  %1150 = inttoptr i64 %1142 to double*
  %1151 = load double, double* %1150
  %1152 = fadd double %1146, %1151
  %1153 = bitcast i8* %1139 to double*
  store double %1152, double* %1153, align 1
  %1154 = getelementptr inbounds i8, i8* %1139, i64 8
  %1155 = bitcast i8* %1154 to i64*
  store i64 %1149, i64* %1155, align 1
  store %struct.Memory* %loadMem_4007fe, %struct.Memory** %MEMORY
  %loadMem_400803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1162, i64 0, i64 0
  %XMM0.i361 = bitcast %union.VectorReg* %1163 to %union.vec128_t*
  %1164 = load i64, i64* %RBP.i360
  %1165 = sub i64 %1164, 24
  %1166 = bitcast %union.vec128_t* %XMM0.i361 to i8*
  %1167 = load i64, i64* %PC.i359
  %1168 = add i64 %1167, 5
  store i64 %1168, i64* %PC.i359
  %1169 = bitcast i8* %1166 to double*
  %1170 = load double, double* %1169, align 1
  %1171 = inttoptr i64 %1165 to double*
  store double %1170, double* %1171
  store %struct.Memory* %loadMem_400803, %struct.Memory** %MEMORY
  %loadMem_400808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 15
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1179 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1178, i64 0, i64 0
  %YMM0.i358 = bitcast %union.VectorReg* %1179 to %"class.std::bitset"*
  %1180 = bitcast %"class.std::bitset"* %YMM0.i358 to i8*
  %1181 = load i64, i64* %RBP.i357
  %1182 = sub i64 %1181, 248
  %1183 = load i64, i64* %PC.i356
  %1184 = add i64 %1183, 8
  store i64 %1184, i64* %PC.i356
  %1185 = inttoptr i64 %1182 to double*
  %1186 = load double, double* %1185
  %1187 = bitcast i8* %1180 to double*
  store double %1186, double* %1187, align 1
  %1188 = getelementptr inbounds i8, i8* %1180, i64 8
  %1189 = bitcast i8* %1188 to double*
  store double 0.000000e+00, double* %1189, align 1
  store %struct.Memory* %loadMem_400808, %struct.Memory** %MEMORY
  %loadMem_400810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 15
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1197 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1196, i64 0, i64 1
  %XMM1.i355 = bitcast %union.VectorReg* %1197 to %union.vec128_t*
  %1198 = load i64, i64* %RBP.i354
  %1199 = sub i64 %1198, 296
  %1200 = bitcast %union.vec128_t* %XMM1.i355 to i8*
  %1201 = load i64, i64* %PC.i353
  %1202 = add i64 %1201, 8
  store i64 %1202, i64* %PC.i353
  %1203 = bitcast i8* %1200 to double*
  %1204 = load double, double* %1203, align 1
  %1205 = inttoptr i64 %1199 to double*
  store double %1204, double* %1205
  store %struct.Memory* %loadMem_400810, %struct.Memory** %MEMORY
  %loadMem1_400818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %PC.i352
  %1210 = add i64 %1209, -744
  %1211 = load i64, i64* %PC.i352
  %1212 = add i64 %1211, 5
  %1213 = load i64, i64* %PC.i352
  %1214 = add i64 %1213, 5
  store i64 %1214, i64* %PC.i352
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1216 = load i64, i64* %1215, align 8
  %1217 = add i64 %1216, -8
  %1218 = inttoptr i64 %1217 to i64*
  store i64 %1212, i64* %1218
  store i64 %1217, i64* %1215, align 8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1210, i64* %1219, align 8
  store %struct.Memory* %loadMem1_400818, %struct.Memory** %MEMORY
  %loadMem2_400818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400818 = load i64, i64* %3
  %call2_400818 = call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %loadPC_400818, %struct.Memory* %loadMem2_400818)
  store %struct.Memory* %call2_400818, %struct.Memory** %MEMORY
  %loadMem_40081d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 15
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1226, i64 0, i64 1
  %YMM1.i351 = bitcast %union.VectorReg* %1227 to %"class.std::bitset"*
  %1228 = bitcast %"class.std::bitset"* %YMM1.i351 to i8*
  %1229 = load i64, i64* %RBP.i350
  %1230 = sub i64 %1229, 296
  %1231 = load i64, i64* %PC.i349
  %1232 = add i64 %1231, 8
  store i64 %1232, i64* %PC.i349
  %1233 = inttoptr i64 %1230 to double*
  %1234 = load double, double* %1233
  %1235 = bitcast i8* %1228 to double*
  store double %1234, double* %1235, align 1
  %1236 = getelementptr inbounds i8, i8* %1228, i64 8
  %1237 = bitcast i8* %1236 to double*
  store double 0.000000e+00, double* %1237, align 1
  store %struct.Memory* %loadMem_40081d, %struct.Memory** %MEMORY
  %loadMem_400825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1241, i64 0, i64 1
  %YMM1.i347 = bitcast %union.VectorReg* %1242 to %"class.std::bitset"*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1244 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1243, i64 0, i64 0
  %XMM0.i348 = bitcast %union.VectorReg* %1244 to %union.vec128_t*
  %1245 = bitcast %"class.std::bitset"* %YMM1.i347 to i8*
  %1246 = bitcast %"class.std::bitset"* %YMM1.i347 to i8*
  %1247 = bitcast %union.vec128_t* %XMM0.i348 to i8*
  %1248 = load i64, i64* %PC.i346
  %1249 = add i64 %1248, 4
  store i64 %1249, i64* %PC.i346
  %1250 = bitcast i8* %1246 to double*
  %1251 = load double, double* %1250, align 1
  %1252 = getelementptr inbounds i8, i8* %1246, i64 8
  %1253 = bitcast i8* %1252 to i64*
  %1254 = load i64, i64* %1253, align 1
  %1255 = bitcast i8* %1247 to double*
  %1256 = load double, double* %1255, align 1
  %1257 = fdiv double %1251, %1256
  %1258 = bitcast i8* %1245 to double*
  store double %1257, double* %1258, align 1
  %1259 = getelementptr inbounds i8, i8* %1245, i64 8
  %1260 = bitcast i8* %1259 to i64*
  store i64 %1254, i64* %1260, align 1
  store %struct.Memory* %loadMem_400825, %struct.Memory** %MEMORY
  %loadMem_400829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 15
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1267, i64 0, i64 1
  %YMM1.i345 = bitcast %union.VectorReg* %1268 to %"class.std::bitset"*
  %1269 = bitcast %"class.std::bitset"* %YMM1.i345 to i8*
  %1270 = bitcast %"class.std::bitset"* %YMM1.i345 to i8*
  %1271 = load i64, i64* %RBP.i344
  %1272 = sub i64 %1271, 32
  %1273 = load i64, i64* %PC.i343
  %1274 = add i64 %1273, 5
  store i64 %1274, i64* %PC.i343
  %1275 = bitcast i8* %1270 to double*
  %1276 = load double, double* %1275, align 1
  %1277 = getelementptr inbounds i8, i8* %1270, i64 8
  %1278 = bitcast i8* %1277 to i64*
  %1279 = load i64, i64* %1278, align 1
  %1280 = inttoptr i64 %1272 to double*
  %1281 = load double, double* %1280
  %1282 = fadd double %1276, %1281
  %1283 = bitcast i8* %1269 to double*
  store double %1282, double* %1283, align 1
  %1284 = getelementptr inbounds i8, i8* %1269, i64 8
  %1285 = bitcast i8* %1284 to i64*
  store i64 %1279, i64* %1285, align 1
  store %struct.Memory* %loadMem_400829, %struct.Memory** %MEMORY
  %loadMem_40082e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 15
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1292, i64 0, i64 1
  %XMM1.i342 = bitcast %union.VectorReg* %1293 to %union.vec128_t*
  %1294 = load i64, i64* %RBP.i341
  %1295 = sub i64 %1294, 32
  %1296 = bitcast %union.vec128_t* %XMM1.i342 to i8*
  %1297 = load i64, i64* %PC.i340
  %1298 = add i64 %1297, 5
  store i64 %1298, i64* %PC.i340
  %1299 = bitcast i8* %1296 to double*
  %1300 = load double, double* %1299, align 1
  %1301 = inttoptr i64 %1295 to double*
  store double %1300, double* %1301
  store %struct.Memory* %loadMem_40082e, %struct.Memory** %MEMORY
  %loadMem_400833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 33
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 15
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1307 to i64*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1308, i64 0, i64 0
  %YMM0.i339 = bitcast %union.VectorReg* %1309 to %"class.std::bitset"*
  %1310 = bitcast %"class.std::bitset"* %YMM0.i339 to i8*
  %1311 = load i64, i64* %RBP.i338
  %1312 = sub i64 %1311, 248
  %1313 = load i64, i64* %PC.i337
  %1314 = add i64 %1313, 8
  store i64 %1314, i64* %PC.i337
  %1315 = inttoptr i64 %1312 to double*
  %1316 = load double, double* %1315
  %1317 = bitcast i8* %1310 to double*
  store double %1316, double* %1317, align 1
  %1318 = getelementptr inbounds i8, i8* %1310, i64 8
  %1319 = bitcast i8* %1318 to double*
  store double 0.000000e+00, double* %1319, align 1
  store %struct.Memory* %loadMem_400833, %struct.Memory** %MEMORY
  %loadMem_40083b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 15
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1326, i64 0, i64 0
  %YMM0.i336 = bitcast %union.VectorReg* %1327 to %"class.std::bitset"*
  %1328 = bitcast %"class.std::bitset"* %YMM0.i336 to i8*
  %1329 = bitcast %"class.std::bitset"* %YMM0.i336 to i8*
  %1330 = load i64, i64* %RBP.i335
  %1331 = sub i64 %1330, 248
  %1332 = load i64, i64* %PC.i334
  %1333 = add i64 %1332, 8
  store i64 %1333, i64* %PC.i334
  %1334 = bitcast i8* %1329 to double*
  %1335 = load double, double* %1334, align 1
  %1336 = getelementptr inbounds i8, i8* %1329, i64 8
  %1337 = bitcast i8* %1336 to i64*
  %1338 = load i64, i64* %1337, align 1
  %1339 = inttoptr i64 %1331 to double*
  %1340 = load double, double* %1339
  %1341 = fmul double %1335, %1340
  %1342 = bitcast i8* %1328 to double*
  store double %1341, double* %1342, align 1
  %1343 = getelementptr inbounds i8, i8* %1328, i64 8
  %1344 = bitcast i8* %1343 to i64*
  store i64 %1338, i64* %1344, align 1
  store %struct.Memory* %loadMem_40083b, %struct.Memory** %MEMORY
  %loadMem_400843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 15
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1350 to i64*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1352 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1351, i64 0, i64 0
  %YMM0.i333 = bitcast %union.VectorReg* %1352 to %"class.std::bitset"*
  %1353 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %1354 = bitcast %"class.std::bitset"* %YMM0.i333 to i8*
  %1355 = load i64, i64* %RBP.i332
  %1356 = sub i64 %1355, 248
  %1357 = load i64, i64* %PC.i331
  %1358 = add i64 %1357, 8
  store i64 %1358, i64* %PC.i331
  %1359 = bitcast i8* %1354 to double*
  %1360 = load double, double* %1359, align 1
  %1361 = getelementptr inbounds i8, i8* %1354, i64 8
  %1362 = bitcast i8* %1361 to i64*
  %1363 = load i64, i64* %1362, align 1
  %1364 = inttoptr i64 %1356 to double*
  %1365 = load double, double* %1364
  %1366 = fmul double %1360, %1365
  %1367 = bitcast i8* %1353 to double*
  store double %1366, double* %1367, align 1
  %1368 = getelementptr inbounds i8, i8* %1353, i64 8
  %1369 = bitcast i8* %1368 to i64*
  store i64 %1363, i64* %1369, align 1
  store %struct.Memory* %loadMem_400843, %struct.Memory** %MEMORY
  %loadMem_40084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 33
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1372 to i64*
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 15
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1377 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1376, i64 0, i64 0
  %XMM0.i330 = bitcast %union.VectorReg* %1377 to %union.vec128_t*
  %1378 = load i64, i64* %RBP.i329
  %1379 = sub i64 %1378, 256
  %1380 = bitcast %union.vec128_t* %XMM0.i330 to i8*
  %1381 = load i64, i64* %PC.i328
  %1382 = add i64 %1381, 8
  store i64 %1382, i64* %PC.i328
  %1383 = bitcast i8* %1380 to double*
  %1384 = load double, double* %1383, align 1
  %1385 = inttoptr i64 %1379 to double*
  store double %1384, double* %1385
  store %struct.Memory* %loadMem_40084b, %struct.Memory** %MEMORY
  %loadMem_400853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 15
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1392, i64 0, i64 0
  %YMM0.i327 = bitcast %union.VectorReg* %1393 to %"class.std::bitset"*
  %1394 = bitcast %"class.std::bitset"* %YMM0.i327 to i8*
  %1395 = load i64, i64* %RBP.i326
  %1396 = sub i64 %1395, 248
  %1397 = load i64, i64* %PC.i325
  %1398 = add i64 %1397, 8
  store i64 %1398, i64* %PC.i325
  %1399 = inttoptr i64 %1396 to double*
  %1400 = load double, double* %1399
  %1401 = bitcast i8* %1394 to double*
  store double %1400, double* %1401, align 1
  %1402 = getelementptr inbounds i8, i8* %1394, i64 8
  %1403 = bitcast i8* %1402 to double*
  store double 0.000000e+00, double* %1403, align 1
  store %struct.Memory* %loadMem_400853, %struct.Memory** %MEMORY
  %loadMem1_40085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 33
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %PC.i324
  %1408 = add i64 %1407, -827
  %1409 = load i64, i64* %PC.i324
  %1410 = add i64 %1409, 5
  %1411 = load i64, i64* %PC.i324
  %1412 = add i64 %1411, 5
  store i64 %1412, i64* %PC.i324
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1414 = load i64, i64* %1413, align 8
  %1415 = add i64 %1414, -8
  %1416 = inttoptr i64 %1415 to i64*
  store i64 %1410, i64* %1416
  store i64 %1415, i64* %1413, align 8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1408, i64* %1417, align 8
  store %struct.Memory* %loadMem1_40085b, %struct.Memory** %MEMORY
  %loadMem2_40085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40085b = load i64, i64* %3
  %call2_40085b = call %struct.Memory* @ext_sin(%struct.State* %0, i64 %loadPC_40085b, %struct.Memory* %loadMem2_40085b)
  store %struct.Memory* %call2_40085b, %struct.Memory** %MEMORY
  %loadMem_400860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 33
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 15
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1424, i64 0, i64 0
  %XMM0.i323 = bitcast %union.VectorReg* %1425 to %union.vec128_t*
  %1426 = load i64, i64* %RBP.i322
  %1427 = sub i64 %1426, 264
  %1428 = bitcast %union.vec128_t* %XMM0.i323 to i8*
  %1429 = load i64, i64* %PC.i321
  %1430 = add i64 %1429, 8
  store i64 %1430, i64* %PC.i321
  %1431 = bitcast i8* %1428 to double*
  %1432 = load double, double* %1431, align 1
  %1433 = inttoptr i64 %1427 to double*
  store double %1432, double* %1433
  store %struct.Memory* %loadMem_400860, %struct.Memory** %MEMORY
  %loadMem_400868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 33
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 15
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1440, i64 0, i64 0
  %YMM0.i320 = bitcast %union.VectorReg* %1441 to %"class.std::bitset"*
  %1442 = bitcast %"class.std::bitset"* %YMM0.i320 to i8*
  %1443 = load i64, i64* %RBP.i319
  %1444 = sub i64 %1443, 248
  %1445 = load i64, i64* %PC.i318
  %1446 = add i64 %1445, 8
  store i64 %1446, i64* %PC.i318
  %1447 = inttoptr i64 %1444 to double*
  %1448 = load double, double* %1447
  %1449 = bitcast i8* %1442 to double*
  store double %1448, double* %1449, align 1
  %1450 = getelementptr inbounds i8, i8* %1442, i64 8
  %1451 = bitcast i8* %1450 to double*
  store double 0.000000e+00, double* %1451, align 1
  store %struct.Memory* %loadMem_400868, %struct.Memory** %MEMORY
  %loadMem1_400870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %PC.i317
  %1456 = add i64 %1455, -864
  %1457 = load i64, i64* %PC.i317
  %1458 = add i64 %1457, 5
  %1459 = load i64, i64* %PC.i317
  %1460 = add i64 %1459, 5
  store i64 %1460, i64* %PC.i317
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1462 = load i64, i64* %1461, align 8
  %1463 = add i64 %1462, -8
  %1464 = inttoptr i64 %1463 to i64*
  store i64 %1458, i64* %1464
  store i64 %1463, i64* %1461, align 8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1456, i64* %1465, align 8
  store %struct.Memory* %loadMem1_400870, %struct.Memory** %MEMORY
  %loadMem2_400870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400870 = load i64, i64* %3
  %call2_400870 = call %struct.Memory* @ext_cos(%struct.State* %0, i64 %loadPC_400870, %struct.Memory* %loadMem2_400870)
  store %struct.Memory* %call2_400870, %struct.Memory** %MEMORY
  %loadMem_400875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 15
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %1471 to i64*
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1472, i64 0, i64 0
  %XMM0.i316 = bitcast %union.VectorReg* %1473 to %union.vec128_t*
  %1474 = load i64, i64* %RBP.i315
  %1475 = sub i64 %1474, 272
  %1476 = bitcast %union.vec128_t* %XMM0.i316 to i8*
  %1477 = load i64, i64* %PC.i314
  %1478 = add i64 %1477, 8
  store i64 %1478, i64* %PC.i314
  %1479 = bitcast i8* %1476 to double*
  %1480 = load double, double* %1479, align 1
  %1481 = inttoptr i64 %1475 to double*
  store double %1480, double* %1481
  store %struct.Memory* %loadMem_400875, %struct.Memory** %MEMORY
  %loadMem_40087d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 15
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1488, i64 0, i64 0
  %YMM0.i313 = bitcast %union.VectorReg* %1489 to %"class.std::bitset"*
  %1490 = bitcast %"class.std::bitset"* %YMM0.i313 to i8*
  %1491 = load i64, i64* %RBP.i312
  %1492 = sub i64 %1491, 256
  %1493 = load i64, i64* %PC.i311
  %1494 = add i64 %1493, 8
  store i64 %1494, i64* %PC.i311
  %1495 = inttoptr i64 %1492 to double*
  %1496 = load double, double* %1495
  %1497 = bitcast i8* %1490 to double*
  store double %1496, double* %1497, align 1
  %1498 = getelementptr inbounds i8, i8* %1490, i64 8
  %1499 = bitcast i8* %1498 to double*
  store double 0.000000e+00, double* %1499, align 1
  store %struct.Memory* %loadMem_40087d, %struct.Memory** %MEMORY
  %loadMem_400885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 15
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1507 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1506, i64 0, i64 0
  %YMM0.i310 = bitcast %union.VectorReg* %1507 to %"class.std::bitset"*
  %1508 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %1509 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %1510 = load i64, i64* %RBP.i309
  %1511 = sub i64 %1510, 264
  %1512 = load i64, i64* %PC.i308
  %1513 = add i64 %1512, 8
  store i64 %1513, i64* %PC.i308
  %1514 = bitcast i8* %1509 to double*
  %1515 = load double, double* %1514, align 1
  %1516 = getelementptr inbounds i8, i8* %1509, i64 8
  %1517 = bitcast i8* %1516 to i64*
  %1518 = load i64, i64* %1517, align 1
  %1519 = inttoptr i64 %1511 to double*
  %1520 = load double, double* %1519
  %1521 = fmul double %1515, %1520
  %1522 = bitcast i8* %1508 to double*
  store double %1521, double* %1522, align 1
  %1523 = getelementptr inbounds i8, i8* %1508, i64 8
  %1524 = bitcast i8* %1523 to i64*
  store i64 %1518, i64* %1524, align 1
  store %struct.Memory* %loadMem_400885, %struct.Memory** %MEMORY
  %loadMem_40088d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 33
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 15
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1531, i64 0, i64 0
  %YMM0.i307 = bitcast %union.VectorReg* %1532 to %"class.std::bitset"*
  %1533 = bitcast %"class.std::bitset"* %YMM0.i307 to i8*
  %1534 = bitcast %"class.std::bitset"* %YMM0.i307 to i8*
  %1535 = load i64, i64* %RBP.i306
  %1536 = sub i64 %1535, 264
  %1537 = load i64, i64* %PC.i305
  %1538 = add i64 %1537, 8
  store i64 %1538, i64* %PC.i305
  %1539 = bitcast i8* %1534 to double*
  %1540 = load double, double* %1539, align 1
  %1541 = getelementptr inbounds i8, i8* %1534, i64 8
  %1542 = bitcast i8* %1541 to i64*
  %1543 = load i64, i64* %1542, align 1
  %1544 = inttoptr i64 %1536 to double*
  %1545 = load double, double* %1544
  %1546 = fmul double %1540, %1545
  %1547 = bitcast i8* %1533 to double*
  store double %1546, double* %1547, align 1
  %1548 = getelementptr inbounds i8, i8* %1533, i64 8
  %1549 = bitcast i8* %1548 to i64*
  store i64 %1543, i64* %1549, align 1
  store %struct.Memory* %loadMem_40088d, %struct.Memory** %MEMORY
  %loadMem_400895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 15
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1557 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1556, i64 0, i64 1
  %YMM1.i304 = bitcast %union.VectorReg* %1557 to %"class.std::bitset"*
  %1558 = bitcast %"class.std::bitset"* %YMM1.i304 to i8*
  %1559 = load i64, i64* %RBP.i303
  %1560 = sub i64 %1559, 296
  %1561 = load i64, i64* %PC.i302
  %1562 = add i64 %1561, 8
  store i64 %1562, i64* %PC.i302
  %1563 = inttoptr i64 %1560 to double*
  %1564 = load double, double* %1563
  %1565 = bitcast i8* %1558 to double*
  store double %1564, double* %1565, align 1
  %1566 = getelementptr inbounds i8, i8* %1558, i64 8
  %1567 = bitcast i8* %1566 to double*
  store double 0.000000e+00, double* %1567, align 1
  store %struct.Memory* %loadMem_400895, %struct.Memory** %MEMORY
  %loadMem_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1570 to i64*
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1571, i64 0, i64 1
  %YMM1.i300 = bitcast %union.VectorReg* %1572 to %"class.std::bitset"*
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1574 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1573, i64 0, i64 0
  %XMM0.i301 = bitcast %union.VectorReg* %1574 to %union.vec128_t*
  %1575 = bitcast %"class.std::bitset"* %YMM1.i300 to i8*
  %1576 = bitcast %"class.std::bitset"* %YMM1.i300 to i8*
  %1577 = bitcast %union.vec128_t* %XMM0.i301 to i8*
  %1578 = load i64, i64* %PC.i299
  %1579 = add i64 %1578, 4
  store i64 %1579, i64* %PC.i299
  %1580 = bitcast i8* %1576 to double*
  %1581 = load double, double* %1580, align 1
  %1582 = getelementptr inbounds i8, i8* %1576, i64 8
  %1583 = bitcast i8* %1582 to i64*
  %1584 = load i64, i64* %1583, align 1
  %1585 = bitcast i8* %1577 to double*
  %1586 = load double, double* %1585, align 1
  %1587 = fdiv double %1581, %1586
  %1588 = bitcast i8* %1575 to double*
  store double %1587, double* %1588, align 1
  %1589 = getelementptr inbounds i8, i8* %1575, i64 8
  %1590 = bitcast i8* %1589 to i64*
  store i64 %1584, i64* %1590, align 1
  store %struct.Memory* %loadMem_40089d, %struct.Memory** %MEMORY
  %loadMem_4008a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1598 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1597, i64 0, i64 1
  %YMM1.i298 = bitcast %union.VectorReg* %1598 to %"class.std::bitset"*
  %1599 = bitcast %"class.std::bitset"* %YMM1.i298 to i8*
  %1600 = bitcast %"class.std::bitset"* %YMM1.i298 to i8*
  %1601 = load i64, i64* %RBP.i297
  %1602 = sub i64 %1601, 40
  %1603 = load i64, i64* %PC.i296
  %1604 = add i64 %1603, 5
  store i64 %1604, i64* %PC.i296
  %1605 = bitcast i8* %1600 to double*
  %1606 = load double, double* %1605, align 1
  %1607 = getelementptr inbounds i8, i8* %1600, i64 8
  %1608 = bitcast i8* %1607 to i64*
  %1609 = load i64, i64* %1608, align 1
  %1610 = inttoptr i64 %1602 to double*
  %1611 = load double, double* %1610
  %1612 = fadd double %1606, %1611
  %1613 = bitcast i8* %1599 to double*
  store double %1612, double* %1613, align 1
  %1614 = getelementptr inbounds i8, i8* %1599, i64 8
  %1615 = bitcast i8* %1614 to i64*
  store i64 %1609, i64* %1615, align 1
  store %struct.Memory* %loadMem_4008a1, %struct.Memory** %MEMORY
  %loadMem_4008a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 33
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1618 to i64*
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1620 = getelementptr inbounds %struct.GPR, %struct.GPR* %1619, i32 0, i32 15
  %1621 = getelementptr inbounds %struct.Reg, %struct.Reg* %1620, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1621 to i64*
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1623 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1622, i64 0, i64 1
  %XMM1.i295 = bitcast %union.VectorReg* %1623 to %union.vec128_t*
  %1624 = load i64, i64* %RBP.i294
  %1625 = sub i64 %1624, 40
  %1626 = bitcast %union.vec128_t* %XMM1.i295 to i8*
  %1627 = load i64, i64* %PC.i293
  %1628 = add i64 %1627, 5
  store i64 %1628, i64* %PC.i293
  %1629 = bitcast i8* %1626 to double*
  %1630 = load double, double* %1629, align 1
  %1631 = inttoptr i64 %1625 to double*
  store double %1630, double* %1631
  store %struct.Memory* %loadMem_4008a6, %struct.Memory** %MEMORY
  %loadMem_4008ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 15
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1639 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1638, i64 0, i64 0
  %YMM0.i292 = bitcast %union.VectorReg* %1639 to %"class.std::bitset"*
  %1640 = bitcast %"class.std::bitset"* %YMM0.i292 to i8*
  %1641 = load i64, i64* %RBP.i291
  %1642 = sub i64 %1641, 256
  %1643 = load i64, i64* %PC.i290
  %1644 = add i64 %1643, 8
  store i64 %1644, i64* %PC.i290
  %1645 = inttoptr i64 %1642 to double*
  %1646 = load double, double* %1645
  %1647 = bitcast i8* %1640 to double*
  store double %1646, double* %1647, align 1
  %1648 = getelementptr inbounds i8, i8* %1640, i64 8
  %1649 = bitcast i8* %1648 to double*
  store double 0.000000e+00, double* %1649, align 1
  store %struct.Memory* %loadMem_4008ab, %struct.Memory** %MEMORY
  %loadMem_4008b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 15
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1657 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1656, i64 0, i64 0
  %YMM0.i289 = bitcast %union.VectorReg* %1657 to %"class.std::bitset"*
  %1658 = bitcast %"class.std::bitset"* %YMM0.i289 to i8*
  %1659 = bitcast %"class.std::bitset"* %YMM0.i289 to i8*
  %1660 = load i64, i64* %RBP.i288
  %1661 = sub i64 %1660, 272
  %1662 = load i64, i64* %PC.i287
  %1663 = add i64 %1662, 8
  store i64 %1663, i64* %PC.i287
  %1664 = bitcast i8* %1659 to double*
  %1665 = load double, double* %1664, align 1
  %1666 = getelementptr inbounds i8, i8* %1659, i64 8
  %1667 = bitcast i8* %1666 to i64*
  %1668 = load i64, i64* %1667, align 1
  %1669 = inttoptr i64 %1661 to double*
  %1670 = load double, double* %1669
  %1671 = fmul double %1665, %1670
  %1672 = bitcast i8* %1658 to double*
  store double %1671, double* %1672, align 1
  %1673 = getelementptr inbounds i8, i8* %1658, i64 8
  %1674 = bitcast i8* %1673 to i64*
  store i64 %1668, i64* %1674, align 1
  store %struct.Memory* %loadMem_4008b3, %struct.Memory** %MEMORY
  %loadMem_4008bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 15
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1682 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1681, i64 0, i64 0
  %YMM0.i286 = bitcast %union.VectorReg* %1682 to %"class.std::bitset"*
  %1683 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %1684 = bitcast %"class.std::bitset"* %YMM0.i286 to i8*
  %1685 = load i64, i64* %RBP.i285
  %1686 = sub i64 %1685, 272
  %1687 = load i64, i64* %PC.i284
  %1688 = add i64 %1687, 8
  store i64 %1688, i64* %PC.i284
  %1689 = bitcast i8* %1684 to double*
  %1690 = load double, double* %1689, align 1
  %1691 = getelementptr inbounds i8, i8* %1684, i64 8
  %1692 = bitcast i8* %1691 to i64*
  %1693 = load i64, i64* %1692, align 1
  %1694 = inttoptr i64 %1686 to double*
  %1695 = load double, double* %1694
  %1696 = fmul double %1690, %1695
  %1697 = bitcast i8* %1683 to double*
  store double %1696, double* %1697, align 1
  %1698 = getelementptr inbounds i8, i8* %1683, i64 8
  %1699 = bitcast i8* %1698 to i64*
  store i64 %1693, i64* %1699, align 1
  store %struct.Memory* %loadMem_4008bb, %struct.Memory** %MEMORY
  %loadMem_4008c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 33
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 15
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1705 to i64*
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1707 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1706, i64 0, i64 1
  %YMM1.i283 = bitcast %union.VectorReg* %1707 to %"class.std::bitset"*
  %1708 = bitcast %"class.std::bitset"* %YMM1.i283 to i8*
  %1709 = load i64, i64* %RBP.i282
  %1710 = sub i64 %1709, 296
  %1711 = load i64, i64* %PC.i281
  %1712 = add i64 %1711, 8
  store i64 %1712, i64* %PC.i281
  %1713 = inttoptr i64 %1710 to double*
  %1714 = load double, double* %1713
  %1715 = bitcast i8* %1708 to double*
  store double %1714, double* %1715, align 1
  %1716 = getelementptr inbounds i8, i8* %1708, i64 8
  %1717 = bitcast i8* %1716 to double*
  store double 0.000000e+00, double* %1717, align 1
  store %struct.Memory* %loadMem_4008c3, %struct.Memory** %MEMORY
  %loadMem_4008cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 33
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1721, i64 0, i64 1
  %YMM1.i279 = bitcast %union.VectorReg* %1722 to %"class.std::bitset"*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1723, i64 0, i64 0
  %XMM0.i280 = bitcast %union.VectorReg* %1724 to %union.vec128_t*
  %1725 = bitcast %"class.std::bitset"* %YMM1.i279 to i8*
  %1726 = bitcast %"class.std::bitset"* %YMM1.i279 to i8*
  %1727 = bitcast %union.vec128_t* %XMM0.i280 to i8*
  %1728 = load i64, i64* %PC.i278
  %1729 = add i64 %1728, 4
  store i64 %1729, i64* %PC.i278
  %1730 = bitcast i8* %1726 to double*
  %1731 = load double, double* %1730, align 1
  %1732 = getelementptr inbounds i8, i8* %1726, i64 8
  %1733 = bitcast i8* %1732 to i64*
  %1734 = load i64, i64* %1733, align 1
  %1735 = bitcast i8* %1727 to double*
  %1736 = load double, double* %1735, align 1
  %1737 = fdiv double %1731, %1736
  %1738 = bitcast i8* %1725 to double*
  store double %1737, double* %1738, align 1
  %1739 = getelementptr inbounds i8, i8* %1725, i64 8
  %1740 = bitcast i8* %1739 to i64*
  store i64 %1734, i64* %1740, align 1
  store %struct.Memory* %loadMem_4008cb, %struct.Memory** %MEMORY
  %loadMem_4008cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 15
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1748 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1747, i64 0, i64 1
  %YMM1.i277 = bitcast %union.VectorReg* %1748 to %"class.std::bitset"*
  %1749 = bitcast %"class.std::bitset"* %YMM1.i277 to i8*
  %1750 = bitcast %"class.std::bitset"* %YMM1.i277 to i8*
  %1751 = load i64, i64* %RBP.i276
  %1752 = sub i64 %1751, 48
  %1753 = load i64, i64* %PC.i275
  %1754 = add i64 %1753, 5
  store i64 %1754, i64* %PC.i275
  %1755 = bitcast i8* %1750 to double*
  %1756 = load double, double* %1755, align 1
  %1757 = getelementptr inbounds i8, i8* %1750, i64 8
  %1758 = bitcast i8* %1757 to i64*
  %1759 = load i64, i64* %1758, align 1
  %1760 = inttoptr i64 %1752 to double*
  %1761 = load double, double* %1760
  %1762 = fadd double %1756, %1761
  %1763 = bitcast i8* %1749 to double*
  store double %1762, double* %1763, align 1
  %1764 = getelementptr inbounds i8, i8* %1749, i64 8
  %1765 = bitcast i8* %1764 to i64*
  store i64 %1759, i64* %1765, align 1
  store %struct.Memory* %loadMem_4008cf, %struct.Memory** %MEMORY
  %loadMem_4008d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 15
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1773 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1772, i64 0, i64 1
  %XMM1.i274 = bitcast %union.VectorReg* %1773 to %union.vec128_t*
  %1774 = load i64, i64* %RBP.i273
  %1775 = sub i64 %1774, 48
  %1776 = bitcast %union.vec128_t* %XMM1.i274 to i8*
  %1777 = load i64, i64* %PC.i272
  %1778 = add i64 %1777, 5
  store i64 %1778, i64* %PC.i272
  %1779 = bitcast i8* %1776 to double*
  %1780 = load double, double* %1779, align 1
  %1781 = inttoptr i64 %1775 to double*
  store double %1780, double* %1781
  store %struct.Memory* %loadMem_4008d4, %struct.Memory** %MEMORY
  %loadMem_4008d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1785, i64 0, i64 0
  %YMM0.i271 = bitcast %union.VectorReg* %1786 to %"class.std::bitset"*
  %1787 = bitcast %"class.std::bitset"* %YMM0.i271 to i8*
  %1788 = load i64, i64* %PC.i270
  %1789 = load i64, i64* %PC.i270
  %1790 = add i64 %1789, 8
  store i64 %1790, i64* %PC.i270
  %1791 = load double, double* bitcast (%G_0x327__rip__type* @G_0x327__rip_ to double*)
  %1792 = bitcast i8* %1787 to double*
  store double %1791, double* %1792, align 1
  %1793 = getelementptr inbounds i8, i8* %1787, i64 8
  %1794 = bitcast i8* %1793 to double*
  store double 0.000000e+00, double* %1794, align 1
  store %struct.Memory* %loadMem_4008d9, %struct.Memory** %MEMORY
  %loadMem_4008e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1797 to i64*
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 15
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1802 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1801, i64 0, i64 0
  %YMM0.i269 = bitcast %union.VectorReg* %1802 to %"class.std::bitset"*
  %1803 = bitcast %"class.std::bitset"* %YMM0.i269 to i8*
  %1804 = bitcast %"class.std::bitset"* %YMM0.i269 to i8*
  %1805 = load i64, i64* %RBP.i268
  %1806 = sub i64 %1805, 248
  %1807 = load i64, i64* %PC.i267
  %1808 = add i64 %1807, 8
  store i64 %1808, i64* %PC.i267
  %1809 = bitcast i8* %1804 to double*
  %1810 = load double, double* %1809, align 1
  %1811 = getelementptr inbounds i8, i8* %1804, i64 8
  %1812 = bitcast i8* %1811 to i64*
  %1813 = load i64, i64* %1812, align 1
  %1814 = inttoptr i64 %1806 to double*
  %1815 = load double, double* %1814
  %1816 = fadd double %1810, %1815
  %1817 = bitcast i8* %1803 to double*
  store double %1816, double* %1817, align 1
  %1818 = getelementptr inbounds i8, i8* %1803, i64 8
  %1819 = bitcast i8* %1818 to i64*
  store i64 %1813, i64* %1819, align 1
  store %struct.Memory* %loadMem_4008e1, %struct.Memory** %MEMORY
  %loadMem_4008e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 33
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 15
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1827 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1826, i64 0, i64 0
  %XMM0.i266 = bitcast %union.VectorReg* %1827 to %union.vec128_t*
  %1828 = load i64, i64* %RBP.i265
  %1829 = sub i64 %1828, 248
  %1830 = bitcast %union.vec128_t* %XMM0.i266 to i8*
  %1831 = load i64, i64* %PC.i264
  %1832 = add i64 %1831, 8
  store i64 %1832, i64* %PC.i264
  %1833 = bitcast i8* %1830 to double*
  %1834 = load double, double* %1833, align 1
  %1835 = inttoptr i64 %1829 to double*
  store double %1834, double* %1835
  store %struct.Memory* %loadMem_4008e9, %struct.Memory** %MEMORY
  %loadMem_4008f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1838 to i64*
  %1839 = load i64, i64* %PC.i263
  %1840 = add i64 %1839, -315
  %1841 = load i64, i64* %PC.i263
  %1842 = add i64 %1841, 5
  store i64 %1842, i64* %PC.i263
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1840, i64* %1843, align 8
  store %struct.Memory* %loadMem_4008f1, %struct.Memory** %MEMORY
  br label %block_.L_4007b6

block_.L_4008f6:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit387
  %loadMem_4008f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 15
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1850, i64 0, i64 0
  %YMM0.i262 = bitcast %union.VectorReg* %1851 to %"class.std::bitset"*
  %1852 = bitcast %"class.std::bitset"* %YMM0.i262 to i8*
  %1853 = load i64, i64* %RBP.i261
  %1854 = sub i64 %1853, 192
  %1855 = load i64, i64* %PC.i260
  %1856 = add i64 %1855, 8
  store i64 %1856, i64* %PC.i260
  %1857 = inttoptr i64 %1854 to double*
  %1858 = load double, double* %1857
  %1859 = add i64 %1854, 8
  %1860 = inttoptr i64 %1859 to double*
  %1861 = load double, double* %1860
  %1862 = bitcast i8* %1852 to double*
  store double %1858, double* %1862, align 1
  %1863 = getelementptr inbounds i8, i8* %1852, i64 8
  %1864 = bitcast i8* %1863 to double*
  store double %1861, double* %1864, align 1
  store %struct.Memory* %loadMem_4008f6, %struct.Memory** %MEMORY
  %loadMem_4008fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 15
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1872 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1871, i64 0, i64 0
  %XMM0.i259 = bitcast %union.VectorReg* %1872 to %union.vec128_t*
  %1873 = load i64, i64* %RBP.i258
  %1874 = sub i64 %1873, 224
  %1875 = bitcast %union.vec128_t* %XMM0.i259 to i8*
  %1876 = load i64, i64* %PC.i257
  %1877 = add i64 %1876, 8
  store i64 %1877, i64* %PC.i257
  %1878 = bitcast i8* %1875 to double*
  %1879 = load double, double* %1878, align 1
  %1880 = getelementptr inbounds i8, i8* %1875, i64 8
  %1881 = bitcast i8* %1880 to double*
  %1882 = load double, double* %1881, align 1
  %1883 = inttoptr i64 %1874 to double*
  store double %1879, double* %1883
  %1884 = add i64 %1874, 8
  %1885 = inttoptr i64 %1884 to double*
  store double %1882, double* %1885
  store %struct.Memory* %loadMem_4008fe, %struct.Memory** %MEMORY
  br label %block_.L_400906

block_.L_400906:                                  ; preds = %block_400922, %block_.L_4008f6
  %loadMem_400906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 15
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1892, i64 0, i64 0
  %YMM0.i256 = bitcast %union.VectorReg* %1893 to %"class.std::bitset"*
  %1894 = bitcast %"class.std::bitset"* %YMM0.i256 to i8*
  %1895 = load i64, i64* %RBP.i255
  %1896 = sub i64 %1895, 224
  %1897 = load i64, i64* %PC.i254
  %1898 = add i64 %1897, 8
  store i64 %1898, i64* %PC.i254
  %1899 = inttoptr i64 %1896 to double*
  %1900 = load double, double* %1899
  %1901 = bitcast i8* %1894 to double*
  store double %1900, double* %1901, align 1
  %1902 = getelementptr inbounds i8, i8* %1894, i64 8
  %1903 = bitcast i8* %1902 to double*
  store double 0.000000e+00, double* %1903, align 1
  store %struct.Memory* %loadMem_400906, %struct.Memory** %MEMORY
  %loadMem_40090e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 33
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1906 to i64*
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 1
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 15
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %RBP.i253
  %1914 = sub i64 %1913, 276
  %1915 = load i64, i64* %PC.i251
  %1916 = add i64 %1915, 6
  store i64 %1916, i64* %PC.i251
  %1917 = inttoptr i64 %1914 to i32*
  %1918 = load i32, i32* %1917
  %1919 = zext i32 %1918 to i64
  store i64 %1919, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_40090e, %struct.Memory** %MEMORY
  %loadMem_400914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 33
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 1
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %EAX.i249 = bitcast %union.anon* %1925 to i32*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1927 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1926, i64 0, i64 1
  %YMM1.i250 = bitcast %union.VectorReg* %1927 to %"class.std::bitset"*
  %1928 = bitcast %"class.std::bitset"* %YMM1.i250 to i8*
  %1929 = load i32, i32* %EAX.i249
  %1930 = zext i32 %1929 to i64
  %1931 = load i64, i64* %PC.i248
  %1932 = add i64 %1931, 4
  store i64 %1932, i64* %PC.i248
  %1933 = sitofp i32 %1929 to double
  %1934 = bitcast i8* %1928 to double*
  store double %1933, double* %1934, align 1
  store %struct.Memory* %loadMem_400914, %struct.Memory** %MEMORY
  %loadMem_400918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1939 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1938, i64 0, i64 0
  %XMM0.i243 = bitcast %union.VectorReg* %1939 to %union.vec128_t*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1940, i64 0, i64 1
  %XMM1.i244 = bitcast %union.VectorReg* %1941 to %union.vec128_t*
  %1942 = bitcast %union.vec128_t* %XMM1.i244 to i8*
  %1943 = bitcast %union.vec128_t* %XMM0.i243 to i8*
  %1944 = load i64, i64* %PC.i242
  %1945 = add i64 %1944, 4
  store i64 %1945, i64* %PC.i242
  %1946 = bitcast i8* %1942 to double*
  %1947 = load double, double* %1946, align 1
  %1948 = bitcast i8* %1943 to double*
  %1949 = load double, double* %1948, align 1
  %1950 = fcmp uno double %1947, %1949
  br i1 %1950, label %1951, label %1963

; <label>:1951:                                   ; preds = %block_.L_400906
  %1952 = fadd double %1947, %1949
  %1953 = bitcast double %1952 to i64
  %1954 = and i64 %1953, 9221120237041090560
  %1955 = icmp eq i64 %1954, 9218868437227405312
  %1956 = and i64 %1953, 2251799813685247
  %1957 = icmp ne i64 %1956, 0
  %1958 = and i1 %1955, %1957
  br i1 %1958, label %1959, label %1969

; <label>:1959:                                   ; preds = %1951
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1961 = load i64, i64* %1960, align 8
  %1962 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1961, %struct.Memory* %loadMem_400918)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1963:                                   ; preds = %block_.L_400906
  %1964 = fcmp ogt double %1947, %1949
  br i1 %1964, label %1969, label %1965

; <label>:1965:                                   ; preds = %1963
  %1966 = fcmp olt double %1947, %1949
  br i1 %1966, label %1969, label %1967

; <label>:1967:                                   ; preds = %1965
  %1968 = fcmp oeq double %1947, %1949
  br i1 %1968, label %1969, label %1976

; <label>:1969:                                   ; preds = %1967, %1965, %1963, %1951
  %1970 = phi i8 [ 0, %1963 ], [ 0, %1965 ], [ 1, %1967 ], [ 1, %1951 ]
  %1971 = phi i8 [ 0, %1963 ], [ 0, %1965 ], [ 0, %1967 ], [ 1, %1951 ]
  %1972 = phi i8 [ 0, %1963 ], [ 1, %1965 ], [ 0, %1967 ], [ 1, %1951 ]
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1970, i8* %1973, align 1
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1971, i8* %1974, align 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1972, i8* %1975, align 1
  br label %1976

; <label>:1976:                                   ; preds = %1969, %1967
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1977, align 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1978, align 1
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1979, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1959, %1976
  %1980 = phi %struct.Memory* [ %1962, %1959 ], [ %loadMem_400918, %1976 ]
  store %struct.Memory* %1980, %struct.Memory** %MEMORY
  %loadMem_40091c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %PC.i241
  %1985 = add i64 %1984, 221
  %1986 = load i64, i64* %PC.i241
  %1987 = add i64 %1986, 6
  %1988 = load i64, i64* %PC.i241
  %1989 = add i64 %1988, 6
  store i64 %1989, i64* %PC.i241
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1991 = load i8, i8* %1990, align 1
  store i8 %1991, i8* %BRANCH_TAKEN, align 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1993 = icmp ne i8 %1991, 0
  %1994 = select i1 %1993, i64 %1985, i64 %1987
  store i64 %1994, i64* %1992, align 8
  store %struct.Memory* %loadMem_40091c, %struct.Memory** %MEMORY
  %loadBr_40091c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40091c = icmp eq i8 %loadBr_40091c, 1
  br i1 %cmpBr_40091c, label %block_.L_4009f9, label %block_400922

block_400922:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_400922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 15
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2002 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2001, i64 0, i64 0
  %YMM0.i240 = bitcast %union.VectorReg* %2002 to %"class.std::bitset"*
  %2003 = bitcast %"class.std::bitset"* %YMM0.i240 to i8*
  %2004 = load i64, i64* %RBP.i239
  %2005 = sub i64 %2004, 160
  %2006 = load i64, i64* %PC.i238
  %2007 = add i64 %2006, 8
  store i64 %2007, i64* %PC.i238
  %2008 = inttoptr i64 %2005 to double*
  %2009 = load double, double* %2008
  %2010 = add i64 %2005, 8
  %2011 = inttoptr i64 %2010 to double*
  %2012 = load double, double* %2011
  %2013 = bitcast i8* %2003 to double*
  store double %2009, double* %2013, align 1
  %2014 = getelementptr inbounds i8, i8* %2003, i64 8
  %2015 = bitcast i8* %2014 to double*
  store double %2012, double* %2015, align 1
  store %struct.Memory* %loadMem_400922, %struct.Memory** %MEMORY
  %loadMem_40092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 15
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2022, i64 0, i64 1
  %YMM1.i237 = bitcast %union.VectorReg* %2023 to %"class.std::bitset"*
  %2024 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %2025 = load i64, i64* %RBP.i236
  %2026 = sub i64 %2025, 224
  %2027 = load i64, i64* %PC.i235
  %2028 = add i64 %2027, 8
  store i64 %2028, i64* %PC.i235
  %2029 = inttoptr i64 %2026 to double*
  %2030 = load double, double* %2029
  %2031 = add i64 %2026, 8
  %2032 = inttoptr i64 %2031 to double*
  %2033 = load double, double* %2032
  %2034 = bitcast i8* %2024 to double*
  store double %2030, double* %2034, align 1
  %2035 = getelementptr inbounds i8, i8* %2024, i64 8
  %2036 = bitcast i8* %2035 to double*
  store double %2033, double* %2036, align 1
  store %struct.Memory* %loadMem_40092a, %struct.Memory** %MEMORY
  %loadMem_400932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 33
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2039 to i64*
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 15
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2043, i64 0, i64 2
  %YMM2.i234 = bitcast %union.VectorReg* %2044 to %"class.std::bitset"*
  %2045 = bitcast %"class.std::bitset"* %YMM2.i234 to i8*
  %2046 = load i64, i64* %RBP.i233
  %2047 = sub i64 %2046, 224
  %2048 = load i64, i64* %PC.i232
  %2049 = add i64 %2048, 8
  store i64 %2049, i64* %PC.i232
  %2050 = inttoptr i64 %2047 to double*
  %2051 = load double, double* %2050
  %2052 = add i64 %2047, 8
  %2053 = inttoptr i64 %2052 to double*
  %2054 = load double, double* %2053
  %2055 = bitcast i8* %2045 to double*
  store double %2051, double* %2055, align 1
  %2056 = getelementptr inbounds i8, i8* %2045, i64 8
  %2057 = bitcast i8* %2056 to double*
  store double %2054, double* %2057, align 1
  store %struct.Memory* %loadMem_400932, %struct.Memory** %MEMORY
  %loadMem_40093a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 15
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2064, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2065 to %"class.std::bitset"*
  %2066 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2067 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2068 = load i64, i64* %RBP.i231
  %2069 = sub i64 %2068, 160
  %2070 = load i64, i64* %PC.i230
  %2071 = add i64 %2070, 8
  store i64 %2071, i64* %PC.i230
  %2072 = bitcast i8* %2067 to <2 x double>*
  %2073 = load <2 x double>, <2 x double>* %2072, align 1
  %2074 = inttoptr i64 %2069 to double*
  %2075 = load double, double* %2074
  %2076 = add i64 %2069, 8
  %2077 = inttoptr i64 %2076 to double*
  %2078 = load double, double* %2077
  %2079 = insertelement <2 x double> undef, double %2075, i32 0
  %2080 = insertelement <2 x double> %2079, double %2078, i32 1
  %2081 = fadd <2 x double> %2073, %2080
  %2082 = bitcast i8* %2066 to <2 x double>*
  store <2 x double> %2081, <2 x double>* %2082, align 1
  store %struct.Memory* %loadMem_40093a, %struct.Memory** %MEMORY
  %loadMem_400942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2086, i64 0, i64 1
  %YMM1.i229 = bitcast %union.VectorReg* %2087 to %"class.std::bitset"*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2088, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2089 to %union.vec128_t*
  %2090 = bitcast %"class.std::bitset"* %YMM1.i229 to i8*
  %2091 = bitcast %"class.std::bitset"* %YMM1.i229 to i8*
  %2092 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2093 = load i64, i64* %PC.i228
  %2094 = add i64 %2093, 4
  store i64 %2094, i64* %PC.i228
  %2095 = bitcast i8* %2091 to <2 x double>*
  %2096 = load <2 x double>, <2 x double>* %2095, align 1
  %2097 = bitcast i8* %2092 to <2 x double>*
  %2098 = load <2 x double>, <2 x double>* %2097, align 1
  %2099 = fmul <2 x double> %2096, %2098
  %2100 = bitcast i8* %2090 to <2 x double>*
  store <2 x double> %2099, <2 x double>* %2100, align 1
  store %struct.Memory* %loadMem_400942, %struct.Memory** %MEMORY
  %loadMem_400946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 33
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2104, i64 0, i64 0
  %YMM0.i226 = bitcast %union.VectorReg* %2105 to %"class.std::bitset"*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2107 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2106, i64 0, i64 1
  %XMM1.i227 = bitcast %union.VectorReg* %2107 to %union.vec128_t*
  %2108 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %2109 = bitcast %"class.std::bitset"* %YMM0.i226 to i8*
  %2110 = bitcast %union.vec128_t* %XMM1.i227 to i8*
  %2111 = load i64, i64* %PC.i225
  %2112 = add i64 %2111, 4
  store i64 %2112, i64* %PC.i225
  %2113 = bitcast i8* %2109 to <2 x double>*
  %2114 = load <2 x double>, <2 x double>* %2113, align 1
  %2115 = bitcast i8* %2110 to <2 x double>*
  %2116 = load <2 x double>, <2 x double>* %2115, align 1
  %2117 = fdiv <2 x double> %2114, %2116
  %2118 = bitcast i8* %2108 to <2 x double>*
  store <2 x double> %2117, <2 x double>* %2118, align 1
  store %struct.Memory* %loadMem_400946, %struct.Memory** %MEMORY
  %loadMem_40094a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 15
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2126 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2125, i64 0, i64 0
  %YMM0.i224 = bitcast %union.VectorReg* %2126 to %"class.std::bitset"*
  %2127 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %2128 = bitcast %"class.std::bitset"* %YMM0.i224 to i8*
  %2129 = load i64, i64* %RBP.i223
  %2130 = sub i64 %2129, 96
  %2131 = load i64, i64* %PC.i222
  %2132 = add i64 %2131, 5
  store i64 %2132, i64* %PC.i222
  %2133 = bitcast i8* %2128 to <2 x double>*
  %2134 = load <2 x double>, <2 x double>* %2133, align 1
  %2135 = inttoptr i64 %2130 to double*
  %2136 = load double, double* %2135
  %2137 = add i64 %2130, 8
  %2138 = inttoptr i64 %2137 to double*
  %2139 = load double, double* %2138
  %2140 = insertelement <2 x double> undef, double %2136, i32 0
  %2141 = insertelement <2 x double> %2140, double %2139, i32 1
  %2142 = fadd <2 x double> %2134, %2141
  %2143 = bitcast i8* %2127 to <2 x double>*
  store <2 x double> %2142, <2 x double>* %2143, align 1
  store %struct.Memory* %loadMem_40094a, %struct.Memory** %MEMORY
  %loadMem_40094f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 15
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2151 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2150, i64 0, i64 0
  %XMM0.i221 = bitcast %union.VectorReg* %2151 to %union.vec128_t*
  %2152 = load i64, i64* %RBP.i220
  %2153 = sub i64 %2152, 96
  %2154 = bitcast %union.vec128_t* %XMM0.i221 to i8*
  %2155 = load i64, i64* %PC.i219
  %2156 = add i64 %2155, 5
  store i64 %2156, i64* %PC.i219
  %2157 = bitcast i8* %2154 to double*
  %2158 = load double, double* %2157, align 1
  %2159 = getelementptr inbounds i8, i8* %2154, i64 8
  %2160 = bitcast i8* %2159 to double*
  %2161 = load double, double* %2160, align 1
  %2162 = inttoptr i64 %2153 to double*
  store double %2158, double* %2162
  %2163 = add i64 %2153, 8
  %2164 = inttoptr i64 %2163 to double*
  store double %2161, double* %2164
  store %struct.Memory* %loadMem_40094f, %struct.Memory** %MEMORY
  %loadMem_400954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2171, i64 0, i64 0
  %YMM0.i218 = bitcast %union.VectorReg* %2172 to %"class.std::bitset"*
  %2173 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %2174 = load i64, i64* %RBP.i217
  %2175 = sub i64 %2174, 160
  %2176 = load i64, i64* %PC.i216
  %2177 = add i64 %2176, 8
  store i64 %2177, i64* %PC.i216
  %2178 = inttoptr i64 %2175 to double*
  %2179 = load double, double* %2178
  %2180 = add i64 %2175, 8
  %2181 = inttoptr i64 %2180 to double*
  %2182 = load double, double* %2181
  %2183 = bitcast i8* %2173 to double*
  store double %2179, double* %2183, align 1
  %2184 = getelementptr inbounds i8, i8* %2173, i64 8
  %2185 = bitcast i8* %2184 to double*
  store double %2182, double* %2185, align 1
  store %struct.Memory* %loadMem_400954, %struct.Memory** %MEMORY
  %loadMem_40095c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 15
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2193 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2192, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %2193 to %"class.std::bitset"*
  %2194 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %2195 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %2196 = load i64, i64* %RBP.i214
  %2197 = sub i64 %2196, 224
  %2198 = load i64, i64* %PC.i213
  %2199 = add i64 %2198, 8
  store i64 %2199, i64* %PC.i213
  %2200 = bitcast i8* %2195 to <2 x double>*
  %2201 = load <2 x double>, <2 x double>* %2200, align 1
  %2202 = inttoptr i64 %2197 to double*
  %2203 = load double, double* %2202
  %2204 = add i64 %2197, 8
  %2205 = inttoptr i64 %2204 to double*
  %2206 = load double, double* %2205
  %2207 = insertelement <2 x double> undef, double %2203, i32 0
  %2208 = insertelement <2 x double> %2207, double %2206, i32 1
  %2209 = fdiv <2 x double> %2201, %2208
  %2210 = bitcast i8* %2194 to <2 x double>*
  store <2 x double> %2209, <2 x double>* %2210, align 1
  store %struct.Memory* %loadMem_40095c, %struct.Memory** %MEMORY
  %loadMem_400964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 15
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2218 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2217, i64 0, i64 0
  %YMM0.i212 = bitcast %union.VectorReg* %2218 to %"class.std::bitset"*
  %2219 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %2220 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %2221 = load i64, i64* %RBP.i211
  %2222 = sub i64 %2221, 64
  %2223 = load i64, i64* %PC.i210
  %2224 = add i64 %2223, 5
  store i64 %2224, i64* %PC.i210
  %2225 = bitcast i8* %2220 to <2 x double>*
  %2226 = load <2 x double>, <2 x double>* %2225, align 1
  %2227 = inttoptr i64 %2222 to double*
  %2228 = load double, double* %2227
  %2229 = add i64 %2222, 8
  %2230 = inttoptr i64 %2229 to double*
  %2231 = load double, double* %2230
  %2232 = insertelement <2 x double> undef, double %2228, i32 0
  %2233 = insertelement <2 x double> %2232, double %2231, i32 1
  %2234 = fadd <2 x double> %2226, %2233
  %2235 = bitcast i8* %2219 to <2 x double>*
  store <2 x double> %2234, <2 x double>* %2235, align 1
  store %struct.Memory* %loadMem_400964, %struct.Memory** %MEMORY
  %loadMem_400969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 15
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2242, i64 0, i64 0
  %XMM0.i209 = bitcast %union.VectorReg* %2243 to %union.vec128_t*
  %2244 = load i64, i64* %RBP.i208
  %2245 = sub i64 %2244, 64
  %2246 = bitcast %union.vec128_t* %XMM0.i209 to i8*
  %2247 = load i64, i64* %PC.i207
  %2248 = add i64 %2247, 5
  store i64 %2248, i64* %PC.i207
  %2249 = bitcast i8* %2246 to double*
  %2250 = load double, double* %2249, align 1
  %2251 = getelementptr inbounds i8, i8* %2246, i64 8
  %2252 = bitcast i8* %2251 to double*
  %2253 = load double, double* %2252, align 1
  %2254 = inttoptr i64 %2245 to double*
  store double %2250, double* %2254
  %2255 = add i64 %2245, 8
  %2256 = inttoptr i64 %2255 to double*
  store double %2253, double* %2256
  store %struct.Memory* %loadMem_400969, %struct.Memory** %MEMORY
  %loadMem_40096e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 15
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2264 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2263, i64 0, i64 0
  %YMM0.i206 = bitcast %union.VectorReg* %2264 to %"class.std::bitset"*
  %2265 = bitcast %"class.std::bitset"* %YMM0.i206 to i8*
  %2266 = load i64, i64* %RBP.i205
  %2267 = sub i64 %2266, 160
  %2268 = load i64, i64* %PC.i204
  %2269 = add i64 %2268, 8
  store i64 %2269, i64* %PC.i204
  %2270 = inttoptr i64 %2267 to double*
  %2271 = load double, double* %2270
  %2272 = add i64 %2267, 8
  %2273 = inttoptr i64 %2272 to double*
  %2274 = load double, double* %2273
  %2275 = bitcast i8* %2265 to double*
  store double %2271, double* %2275, align 1
  %2276 = getelementptr inbounds i8, i8* %2265, i64 8
  %2277 = bitcast i8* %2276 to double*
  store double %2274, double* %2277, align 1
  store %struct.Memory* %loadMem_40096e, %struct.Memory** %MEMORY
  %loadMem_400976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 33
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %2280 to i64*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 15
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2284, i64 0, i64 1
  %YMM1.i203 = bitcast %union.VectorReg* %2285 to %"class.std::bitset"*
  %2286 = bitcast %"class.std::bitset"* %YMM1.i203 to i8*
  %2287 = load i64, i64* %RBP.i202
  %2288 = sub i64 %2287, 224
  %2289 = load i64, i64* %PC.i201
  %2290 = add i64 %2289, 8
  store i64 %2290, i64* %PC.i201
  %2291 = inttoptr i64 %2288 to double*
  %2292 = load double, double* %2291
  %2293 = add i64 %2288, 8
  %2294 = inttoptr i64 %2293 to double*
  %2295 = load double, double* %2294
  %2296 = bitcast i8* %2286 to double*
  store double %2292, double* %2296, align 1
  %2297 = getelementptr inbounds i8, i8* %2286, i64 8
  %2298 = bitcast i8* %2297 to double*
  store double %2295, double* %2298, align 1
  store %struct.Memory* %loadMem_400976, %struct.Memory** %MEMORY
  %loadMem_40097e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 15
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2306 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2305, i64 0, i64 1
  %YMM1.i200 = bitcast %union.VectorReg* %2306 to %"class.std::bitset"*
  %2307 = bitcast %"class.std::bitset"* %YMM1.i200 to i8*
  %2308 = bitcast %"class.std::bitset"* %YMM1.i200 to i8*
  %2309 = load i64, i64* %RBP.i199
  %2310 = sub i64 %2309, 224
  %2311 = load i64, i64* %PC.i198
  %2312 = add i64 %2311, 8
  store i64 %2312, i64* %PC.i198
  %2313 = bitcast i8* %2308 to <2 x double>*
  %2314 = load <2 x double>, <2 x double>* %2313, align 1
  %2315 = inttoptr i64 %2310 to double*
  %2316 = load double, double* %2315
  %2317 = add i64 %2310, 8
  %2318 = inttoptr i64 %2317 to double*
  %2319 = load double, double* %2318
  %2320 = insertelement <2 x double> undef, double %2316, i32 0
  %2321 = insertelement <2 x double> %2320, double %2319, i32 1
  %2322 = fmul <2 x double> %2314, %2321
  %2323 = bitcast i8* %2307 to <2 x double>*
  store <2 x double> %2322, <2 x double>* %2323, align 1
  store %struct.Memory* %loadMem_40097e, %struct.Memory** %MEMORY
  %loadMem_400986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2328 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2327, i64 0, i64 0
  %YMM0.i196 = bitcast %union.VectorReg* %2328 to %"class.std::bitset"*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2329, i64 0, i64 1
  %XMM1.i197 = bitcast %union.VectorReg* %2330 to %union.vec128_t*
  %2331 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %2332 = bitcast %"class.std::bitset"* %YMM0.i196 to i8*
  %2333 = bitcast %union.vec128_t* %XMM1.i197 to i8*
  %2334 = load i64, i64* %PC.i195
  %2335 = add i64 %2334, 4
  store i64 %2335, i64* %PC.i195
  %2336 = bitcast i8* %2332 to <2 x double>*
  %2337 = load <2 x double>, <2 x double>* %2336, align 1
  %2338 = bitcast i8* %2333 to <2 x double>*
  %2339 = load <2 x double>, <2 x double>* %2338, align 1
  %2340 = fdiv <2 x double> %2337, %2339
  %2341 = bitcast i8* %2331 to <2 x double>*
  store <2 x double> %2340, <2 x double>* %2341, align 1
  store %struct.Memory* %loadMem_400986, %struct.Memory** %MEMORY
  %loadMem_40098a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 15
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2348, i64 0, i64 0
  %YMM0.i194 = bitcast %union.VectorReg* %2349 to %"class.std::bitset"*
  %2350 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %2351 = bitcast %"class.std::bitset"* %YMM0.i194 to i8*
  %2352 = load i64, i64* %RBP.i193
  %2353 = sub i64 %2352, 80
  %2354 = load i64, i64* %PC.i192
  %2355 = add i64 %2354, 5
  store i64 %2355, i64* %PC.i192
  %2356 = bitcast i8* %2351 to <2 x double>*
  %2357 = load <2 x double>, <2 x double>* %2356, align 1
  %2358 = inttoptr i64 %2353 to double*
  %2359 = load double, double* %2358
  %2360 = add i64 %2353, 8
  %2361 = inttoptr i64 %2360 to double*
  %2362 = load double, double* %2361
  %2363 = insertelement <2 x double> undef, double %2359, i32 0
  %2364 = insertelement <2 x double> %2363, double %2362, i32 1
  %2365 = fadd <2 x double> %2357, %2364
  %2366 = bitcast i8* %2350 to <2 x double>*
  store <2 x double> %2365, <2 x double>* %2366, align 1
  store %struct.Memory* %loadMem_40098a, %struct.Memory** %MEMORY
  %loadMem_40098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 15
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2374 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2373, i64 0, i64 0
  %XMM0.i191 = bitcast %union.VectorReg* %2374 to %union.vec128_t*
  %2375 = load i64, i64* %RBP.i190
  %2376 = sub i64 %2375, 80
  %2377 = bitcast %union.vec128_t* %XMM0.i191 to i8*
  %2378 = load i64, i64* %PC.i189
  %2379 = add i64 %2378, 5
  store i64 %2379, i64* %PC.i189
  %2380 = bitcast i8* %2377 to double*
  %2381 = load double, double* %2380, align 1
  %2382 = getelementptr inbounds i8, i8* %2377, i64 8
  %2383 = bitcast i8* %2382 to double*
  %2384 = load double, double* %2383, align 1
  %2385 = inttoptr i64 %2376 to double*
  store double %2381, double* %2385
  %2386 = add i64 %2376, 8
  %2387 = inttoptr i64 %2386 to double*
  store double %2384, double* %2387
  store %struct.Memory* %loadMem_40098f, %struct.Memory** %MEMORY
  %loadMem_400994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 15
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2395 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2394, i64 0, i64 0
  %YMM0.i188 = bitcast %union.VectorReg* %2395 to %"class.std::bitset"*
  %2396 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %2397 = load i64, i64* %RBP.i187
  %2398 = sub i64 %2397, 240
  %2399 = load i64, i64* %PC.i186
  %2400 = add i64 %2399, 8
  store i64 %2400, i64* %PC.i186
  %2401 = inttoptr i64 %2398 to double*
  %2402 = load double, double* %2401
  %2403 = add i64 %2398, 8
  %2404 = inttoptr i64 %2403 to double*
  %2405 = load double, double* %2404
  %2406 = bitcast i8* %2396 to double*
  store double %2402, double* %2406, align 1
  %2407 = getelementptr inbounds i8, i8* %2396, i64 8
  %2408 = bitcast i8* %2407 to double*
  store double %2405, double* %2408, align 1
  store %struct.Memory* %loadMem_400994, %struct.Memory** %MEMORY
  %loadMem_40099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 15
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2416 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2415, i64 0, i64 0
  %YMM0.i185 = bitcast %union.VectorReg* %2416 to %"class.std::bitset"*
  %2417 = bitcast %"class.std::bitset"* %YMM0.i185 to i8*
  %2418 = bitcast %"class.std::bitset"* %YMM0.i185 to i8*
  %2419 = load i64, i64* %RBP.i184
  %2420 = sub i64 %2419, 224
  %2421 = load i64, i64* %PC.i183
  %2422 = add i64 %2421, 8
  store i64 %2422, i64* %PC.i183
  %2423 = bitcast i8* %2418 to <2 x double>*
  %2424 = load <2 x double>, <2 x double>* %2423, align 1
  %2425 = inttoptr i64 %2420 to double*
  %2426 = load double, double* %2425
  %2427 = add i64 %2420, 8
  %2428 = inttoptr i64 %2427 to double*
  %2429 = load double, double* %2428
  %2430 = insertelement <2 x double> undef, double %2426, i32 0
  %2431 = insertelement <2 x double> %2430, double %2429, i32 1
  %2432 = fdiv <2 x double> %2424, %2431
  %2433 = bitcast i8* %2417 to <2 x double>*
  store <2 x double> %2432, <2 x double>* %2433, align 1
  store %struct.Memory* %loadMem_40099c, %struct.Memory** %MEMORY
  %loadMem_4009a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2436 to i64*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 15
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2439 to i64*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2440, i64 0, i64 0
  %YMM0.i182 = bitcast %union.VectorReg* %2441 to %"class.std::bitset"*
  %2442 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %2443 = bitcast %"class.std::bitset"* %YMM0.i182 to i8*
  %2444 = load i64, i64* %RBP.i181
  %2445 = sub i64 %2444, 112
  %2446 = load i64, i64* %PC.i180
  %2447 = add i64 %2446, 5
  store i64 %2447, i64* %PC.i180
  %2448 = bitcast i8* %2443 to <2 x double>*
  %2449 = load <2 x double>, <2 x double>* %2448, align 1
  %2450 = inttoptr i64 %2445 to double*
  %2451 = load double, double* %2450
  %2452 = add i64 %2445, 8
  %2453 = inttoptr i64 %2452 to double*
  %2454 = load double, double* %2453
  %2455 = insertelement <2 x double> undef, double %2451, i32 0
  %2456 = insertelement <2 x double> %2455, double %2454, i32 1
  %2457 = fadd <2 x double> %2449, %2456
  %2458 = bitcast i8* %2442 to <2 x double>*
  store <2 x double> %2457, <2 x double>* %2458, align 1
  store %struct.Memory* %loadMem_4009a4, %struct.Memory** %MEMORY
  %loadMem_4009a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 33
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 15
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2466 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2465, i64 0, i64 0
  %XMM0.i179 = bitcast %union.VectorReg* %2466 to %union.vec128_t*
  %2467 = load i64, i64* %RBP.i178
  %2468 = sub i64 %2467, 112
  %2469 = bitcast %union.vec128_t* %XMM0.i179 to i8*
  %2470 = load i64, i64* %PC.i177
  %2471 = add i64 %2470, 5
  store i64 %2471, i64* %PC.i177
  %2472 = bitcast i8* %2469 to double*
  %2473 = load double, double* %2472, align 1
  %2474 = getelementptr inbounds i8, i8* %2469, i64 8
  %2475 = bitcast i8* %2474 to double*
  %2476 = load double, double* %2475, align 1
  %2477 = inttoptr i64 %2468 to double*
  store double %2473, double* %2477
  %2478 = add i64 %2468, 8
  %2479 = inttoptr i64 %2478 to double*
  store double %2476, double* %2479
  store %struct.Memory* %loadMem_4009a9, %struct.Memory** %MEMORY
  %loadMem_4009ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 33
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2482 to i64*
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 15
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2486, i64 0, i64 0
  %YMM0.i176 = bitcast %union.VectorReg* %2487 to %"class.std::bitset"*
  %2488 = bitcast %"class.std::bitset"* %YMM0.i176 to i8*
  %2489 = load i64, i64* %RBP.i175
  %2490 = sub i64 %2489, 240
  %2491 = load i64, i64* %PC.i174
  %2492 = add i64 %2491, 8
  store i64 %2492, i64* %PC.i174
  %2493 = inttoptr i64 %2490 to double*
  %2494 = load double, double* %2493
  %2495 = add i64 %2490, 8
  %2496 = inttoptr i64 %2495 to double*
  %2497 = load double, double* %2496
  %2498 = bitcast i8* %2488 to double*
  store double %2494, double* %2498, align 1
  %2499 = getelementptr inbounds i8, i8* %2488, i64 8
  %2500 = bitcast i8* %2499 to double*
  store double %2497, double* %2500, align 1
  store %struct.Memory* %loadMem_4009ae, %struct.Memory** %MEMORY
  %loadMem_4009b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 15
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2507, i64 0, i64 1
  %YMM1.i173 = bitcast %union.VectorReg* %2508 to %"class.std::bitset"*
  %2509 = bitcast %"class.std::bitset"* %YMM1.i173 to i8*
  %2510 = load i64, i64* %RBP.i172
  %2511 = sub i64 %2510, 176
  %2512 = load i64, i64* %PC.i171
  %2513 = add i64 %2512, 8
  store i64 %2513, i64* %PC.i171
  %2514 = inttoptr i64 %2511 to double*
  %2515 = load double, double* %2514
  %2516 = add i64 %2511, 8
  %2517 = inttoptr i64 %2516 to double*
  %2518 = load double, double* %2517
  %2519 = bitcast i8* %2509 to double*
  store double %2515, double* %2519, align 1
  %2520 = getelementptr inbounds i8, i8* %2509, i64 8
  %2521 = bitcast i8* %2520 to double*
  store double %2518, double* %2521, align 1
  store %struct.Memory* %loadMem_4009b6, %struct.Memory** %MEMORY
  %loadMem_4009be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2524 to i64*
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 15
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2529 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2528, i64 0, i64 1
  %YMM1.i170 = bitcast %union.VectorReg* %2529 to %"class.std::bitset"*
  %2530 = bitcast %"class.std::bitset"* %YMM1.i170 to i8*
  %2531 = bitcast %"class.std::bitset"* %YMM1.i170 to i8*
  %2532 = load i64, i64* %RBP.i169
  %2533 = sub i64 %2532, 224
  %2534 = load i64, i64* %PC.i168
  %2535 = add i64 %2534, 8
  store i64 %2535, i64* %PC.i168
  %2536 = bitcast i8* %2531 to <2 x double>*
  %2537 = load <2 x double>, <2 x double>* %2536, align 1
  %2538 = inttoptr i64 %2533 to double*
  %2539 = load double, double* %2538
  %2540 = add i64 %2533, 8
  %2541 = inttoptr i64 %2540 to double*
  %2542 = load double, double* %2541
  %2543 = insertelement <2 x double> undef, double %2539, i32 0
  %2544 = insertelement <2 x double> %2543, double %2542, i32 1
  %2545 = fmul <2 x double> %2537, %2544
  %2546 = bitcast i8* %2530 to <2 x double>*
  store <2 x double> %2545, <2 x double>* %2546, align 1
  store %struct.Memory* %loadMem_4009be, %struct.Memory** %MEMORY
  %loadMem_4009c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 33
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 15
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2554 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2553, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2554 to %"class.std::bitset"*
  %2555 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2556 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2557 = load i64, i64* %RBP.i167
  %2558 = sub i64 %2557, 160
  %2559 = load i64, i64* %PC.i166
  %2560 = add i64 %2559, 8
  store i64 %2560, i64* %PC.i166
  %2561 = bitcast i8* %2556 to <2 x double>*
  %2562 = load <2 x double>, <2 x double>* %2561, align 1
  %2563 = inttoptr i64 %2558 to double*
  %2564 = load double, double* %2563
  %2565 = add i64 %2558, 8
  %2566 = inttoptr i64 %2565 to double*
  %2567 = load double, double* %2566
  %2568 = insertelement <2 x double> undef, double %2564, i32 0
  %2569 = insertelement <2 x double> %2568, double %2567, i32 1
  %2570 = fsub <2 x double> %2562, %2569
  %2571 = bitcast i8* %2555 to <2 x double>*
  store <2 x double> %2570, <2 x double>* %2571, align 1
  store %struct.Memory* %loadMem_4009c6, %struct.Memory** %MEMORY
  %loadMem_4009ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2576 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2575, i64 0, i64 0
  %YMM0.i165 = bitcast %union.VectorReg* %2576 to %"class.std::bitset"*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2577, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2578 to %union.vec128_t*
  %2579 = bitcast %"class.std::bitset"* %YMM0.i165 to i8*
  %2580 = bitcast %"class.std::bitset"* %YMM0.i165 to i8*
  %2581 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2582 = load i64, i64* %PC.i164
  %2583 = add i64 %2582, 4
  store i64 %2583, i64* %PC.i164
  %2584 = bitcast i8* %2580 to <2 x double>*
  %2585 = load <2 x double>, <2 x double>* %2584, align 1
  %2586 = bitcast i8* %2581 to <2 x double>*
  %2587 = load <2 x double>, <2 x double>* %2586, align 1
  %2588 = fdiv <2 x double> %2585, %2587
  %2589 = bitcast i8* %2579 to <2 x double>*
  store <2 x double> %2588, <2 x double>* %2589, align 1
  store %struct.Memory* %loadMem_4009ce, %struct.Memory** %MEMORY
  %loadMem_4009d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %2592 to i64*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 15
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2596, i64 0, i64 0
  %YMM0.i163 = bitcast %union.VectorReg* %2597 to %"class.std::bitset"*
  %2598 = bitcast %"class.std::bitset"* %YMM0.i163 to i8*
  %2599 = bitcast %"class.std::bitset"* %YMM0.i163 to i8*
  %2600 = load i64, i64* %RBP.i162
  %2601 = sub i64 %2600, 128
  %2602 = load i64, i64* %PC.i161
  %2603 = add i64 %2602, 5
  store i64 %2603, i64* %PC.i161
  %2604 = bitcast i8* %2599 to <2 x double>*
  %2605 = load <2 x double>, <2 x double>* %2604, align 1
  %2606 = inttoptr i64 %2601 to double*
  %2607 = load double, double* %2606
  %2608 = add i64 %2601, 8
  %2609 = inttoptr i64 %2608 to double*
  %2610 = load double, double* %2609
  %2611 = insertelement <2 x double> undef, double %2607, i32 0
  %2612 = insertelement <2 x double> %2611, double %2610, i32 1
  %2613 = fadd <2 x double> %2605, %2612
  %2614 = bitcast i8* %2598 to <2 x double>*
  store <2 x double> %2613, <2 x double>* %2614, align 1
  store %struct.Memory* %loadMem_4009d2, %struct.Memory** %MEMORY
  %loadMem_4009d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 15
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2621, i64 0, i64 0
  %XMM0.i160 = bitcast %union.VectorReg* %2622 to %union.vec128_t*
  %2623 = load i64, i64* %RBP.i159
  %2624 = sub i64 %2623, 128
  %2625 = bitcast %union.vec128_t* %XMM0.i160 to i8*
  %2626 = load i64, i64* %PC.i158
  %2627 = add i64 %2626, 5
  store i64 %2627, i64* %PC.i158
  %2628 = bitcast i8* %2625 to double*
  %2629 = load double, double* %2628, align 1
  %2630 = getelementptr inbounds i8, i8* %2625, i64 8
  %2631 = bitcast i8* %2630 to double*
  %2632 = load double, double* %2631, align 1
  %2633 = inttoptr i64 %2624 to double*
  store double %2629, double* %2633
  %2634 = add i64 %2624, 8
  %2635 = inttoptr i64 %2634 to double*
  store double %2632, double* %2635
  store %struct.Memory* %loadMem_4009d7, %struct.Memory** %MEMORY
  %loadMem_4009dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 33
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2641 to i64*
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2643 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2642, i64 0, i64 0
  %YMM0.i157 = bitcast %union.VectorReg* %2643 to %"class.std::bitset"*
  %2644 = bitcast %"class.std::bitset"* %YMM0.i157 to i8*
  %2645 = load i64, i64* %RBP.i156
  %2646 = sub i64 %2645, 176
  %2647 = load i64, i64* %PC.i155
  %2648 = add i64 %2647, 8
  store i64 %2648, i64* %PC.i155
  %2649 = inttoptr i64 %2646 to double*
  %2650 = load double, double* %2649
  %2651 = add i64 %2646, 8
  %2652 = inttoptr i64 %2651 to double*
  %2653 = load double, double* %2652
  %2654 = bitcast i8* %2644 to double*
  store double %2650, double* %2654, align 1
  %2655 = getelementptr inbounds i8, i8* %2644, i64 8
  %2656 = bitcast i8* %2655 to double*
  store double %2653, double* %2656, align 1
  store %struct.Memory* %loadMem_4009dc, %struct.Memory** %MEMORY
  %loadMem_4009e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 33
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 15
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2664 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2663, i64 0, i64 0
  %YMM0.i154 = bitcast %union.VectorReg* %2664 to %"class.std::bitset"*
  %2665 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %2666 = bitcast %"class.std::bitset"* %YMM0.i154 to i8*
  %2667 = load i64, i64* %RBP.i153
  %2668 = sub i64 %2667, 224
  %2669 = load i64, i64* %PC.i152
  %2670 = add i64 %2669, 8
  store i64 %2670, i64* %PC.i152
  %2671 = bitcast i8* %2666 to <2 x double>*
  %2672 = load <2 x double>, <2 x double>* %2671, align 1
  %2673 = inttoptr i64 %2668 to double*
  %2674 = load double, double* %2673
  %2675 = add i64 %2668, 8
  %2676 = inttoptr i64 %2675 to double*
  %2677 = load double, double* %2676
  %2678 = insertelement <2 x double> undef, double %2674, i32 0
  %2679 = insertelement <2 x double> %2678, double %2677, i32 1
  %2680 = fadd <2 x double> %2672, %2679
  %2681 = bitcast i8* %2665 to <2 x double>*
  store <2 x double> %2680, <2 x double>* %2681, align 1
  store %struct.Memory* %loadMem_4009e4, %struct.Memory** %MEMORY
  %loadMem_4009ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 15
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2688, i64 0, i64 0
  %XMM0.i151 = bitcast %union.VectorReg* %2689 to %union.vec128_t*
  %2690 = load i64, i64* %RBP.i150
  %2691 = sub i64 %2690, 224
  %2692 = bitcast %union.vec128_t* %XMM0.i151 to i8*
  %2693 = load i64, i64* %PC.i149
  %2694 = add i64 %2693, 8
  store i64 %2694, i64* %PC.i149
  %2695 = bitcast i8* %2692 to double*
  %2696 = load double, double* %2695, align 1
  %2697 = getelementptr inbounds i8, i8* %2692, i64 8
  %2698 = bitcast i8* %2697 to double*
  %2699 = load double, double* %2698, align 1
  %2700 = inttoptr i64 %2691 to double*
  store double %2696, double* %2700
  %2701 = add i64 %2691, 8
  %2702 = inttoptr i64 %2701 to double*
  store double %2699, double* %2702
  store %struct.Memory* %loadMem_4009ec, %struct.Memory** %MEMORY
  %loadMem_4009f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %2705 to i64*
  %2706 = load i64, i64* %PC.i148
  %2707 = add i64 %2706, -238
  %2708 = load i64, i64* %PC.i148
  %2709 = add i64 %2708, 5
  store i64 %2709, i64* %PC.i148
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2707, i64* %2710, align 8
  store %struct.Memory* %loadMem_4009f4, %struct.Memory** %MEMORY
  br label %block_.L_400906

block_.L_4009f9:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4009f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 33
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 11
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RDI.i147 = bitcast %union.anon* %2716 to i64*
  %2717 = load i64, i64* %PC.i146
  %2718 = add i64 %2717, 10
  store i64 %2718, i64* %PC.i146
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store %struct.Memory* %loadMem_4009f9, %struct.Memory** %MEMORY
  %loadMem_400a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 33
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 9
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %PC.i144
  %2726 = add i64 %2725, 10
  store i64 %2726, i64* %PC.i144
  store i64 ptrtoint (%G__0x400c31_type* @G__0x400c31 to i64), i64* %RSI.i145, align 8
  store %struct.Memory* %loadMem_400a03, %struct.Memory** %MEMORY
  %loadMem_400a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 15
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2734 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2733, i64 0, i64 0
  %YMM0.i143 = bitcast %union.VectorReg* %2734 to %"class.std::bitset"*
  %2735 = bitcast %"class.std::bitset"* %YMM0.i143 to i8*
  %2736 = load i64, i64* %RBP.i142
  %2737 = sub i64 %2736, 24
  %2738 = load i64, i64* %PC.i141
  %2739 = add i64 %2738, 5
  store i64 %2739, i64* %PC.i141
  %2740 = inttoptr i64 %2737 to double*
  %2741 = load double, double* %2740
  %2742 = bitcast i8* %2735 to double*
  store double %2741, double* %2742, align 1
  %2743 = getelementptr inbounds i8, i8* %2735, i64 8
  %2744 = bitcast i8* %2743 to double*
  store double 0.000000e+00, double* %2744, align 1
  store %struct.Memory* %loadMem_400a0d, %struct.Memory** %MEMORY
  %loadMem_400a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 1
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %2751 = bitcast %union.anon* %2750 to %struct.anon.2*
  %AL.i140 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2751, i32 0, i32 0
  %2752 = load i64, i64* %PC.i139
  %2753 = add i64 %2752, 2
  store i64 %2753, i64* %PC.i139
  store i8 1, i8* %AL.i140, align 1
  store %struct.Memory* %loadMem_400a12, %struct.Memory** %MEMORY
  %loadMem1_400a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %PC.i138
  %2758 = add i64 %2757, -1316
  %2759 = load i64, i64* %PC.i138
  %2760 = add i64 %2759, 5
  %2761 = load i64, i64* %PC.i138
  %2762 = add i64 %2761, 5
  store i64 %2762, i64* %PC.i138
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2764 = load i64, i64* %2763, align 8
  %2765 = add i64 %2764, -8
  %2766 = inttoptr i64 %2765 to i64*
  store i64 %2760, i64* %2766
  store i64 %2765, i64* %2763, align 8
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2758, i64* %2767, align 8
  store %struct.Memory* %loadMem1_400a14, %struct.Memory** %MEMORY
  %loadMem2_400a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a14 = load i64, i64* %3
  %2768 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400a14)
  store %struct.Memory* %2768, %struct.Memory** %MEMORY
  %loadMem_400a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 11
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RDI.i134 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %PC.i133
  %2776 = add i64 %2775, 10
  store i64 %2776, i64* %PC.i133
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i134, align 8
  store %struct.Memory* %loadMem_400a19, %struct.Memory** %MEMORY
  %loadMem_400a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 9
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RSI.i132 = bitcast %union.anon* %2782 to i64*
  %2783 = load i64, i64* %PC.i131
  %2784 = add i64 %2783, 10
  store i64 %2784, i64* %PC.i131
  store i64 ptrtoint (%G__0x400c39_type* @G__0x400c39 to i64), i64* %RSI.i132, align 8
  store %struct.Memory* %loadMem_400a23, %struct.Memory** %MEMORY
  %loadMem_400a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 33
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 15
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2792 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2791, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %2792 to %"class.std::bitset"*
  %2793 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2794 = load i64, i64* %RBP.i129
  %2795 = sub i64 %2794, 32
  %2796 = load i64, i64* %PC.i128
  %2797 = add i64 %2796, 5
  store i64 %2797, i64* %PC.i128
  %2798 = inttoptr i64 %2795 to double*
  %2799 = load double, double* %2798
  %2800 = bitcast i8* %2793 to double*
  store double %2799, double* %2800, align 1
  %2801 = getelementptr inbounds i8, i8* %2793, i64 8
  %2802 = bitcast i8* %2801 to double*
  store double 0.000000e+00, double* %2802, align 1
  store %struct.Memory* %loadMem_400a2d, %struct.Memory** %MEMORY
  %loadMem_400a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 1
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %2808 to i32*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 15
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %RBP.i127
  %2813 = sub i64 %2812, 300
  %2814 = load i32, i32* %EAX.i126
  %2815 = zext i32 %2814 to i64
  %2816 = load i64, i64* %PC.i125
  %2817 = add i64 %2816, 6
  store i64 %2817, i64* %PC.i125
  %2818 = inttoptr i64 %2813 to i32*
  store i32 %2814, i32* %2818
  store %struct.Memory* %loadMem_400a32, %struct.Memory** %MEMORY
  %loadMem_400a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 33
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 1
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %2825 = bitcast %union.anon* %2824 to %struct.anon.2*
  %AL.i124 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2825, i32 0, i32 0
  %2826 = load i64, i64* %PC.i123
  %2827 = add i64 %2826, 2
  store i64 %2827, i64* %PC.i123
  store i8 1, i8* %AL.i124, align 1
  store %struct.Memory* %loadMem_400a38, %struct.Memory** %MEMORY
  %loadMem1_400a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %PC.i122
  %2832 = add i64 %2831, -1354
  %2833 = load i64, i64* %PC.i122
  %2834 = add i64 %2833, 5
  %2835 = load i64, i64* %PC.i122
  %2836 = add i64 %2835, 5
  store i64 %2836, i64* %PC.i122
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2838 = load i64, i64* %2837, align 8
  %2839 = add i64 %2838, -8
  %2840 = inttoptr i64 %2839 to i64*
  store i64 %2834, i64* %2840
  store i64 %2839, i64* %2837, align 8
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2832, i64* %2841, align 8
  store %struct.Memory* %loadMem1_400a3a, %struct.Memory** %MEMORY
  %loadMem2_400a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a3a = load i64, i64* %3
  %2842 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400a3a)
  store %struct.Memory* %2842, %struct.Memory** %MEMORY
  %loadMem_400a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 15
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2850 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2849, i64 0, i64 0
  %YMM0.i118 = bitcast %union.VectorReg* %2850 to %"class.std::bitset"*
  %2851 = bitcast %"class.std::bitset"* %YMM0.i118 to i8*
  %2852 = load i64, i64* %RBP.i117
  %2853 = sub i64 %2852, 96
  %2854 = load i64, i64* %PC.i116
  %2855 = add i64 %2854, 5
  store i64 %2855, i64* %PC.i116
  %2856 = inttoptr i64 %2853 to double*
  %2857 = load double, double* %2856
  %2858 = add i64 %2853, 8
  %2859 = inttoptr i64 %2858 to double*
  %2860 = load double, double* %2859
  %2861 = bitcast i8* %2851 to double*
  store double %2857, double* %2861, align 1
  %2862 = getelementptr inbounds i8, i8* %2851, i64 8
  %2863 = bitcast i8* %2862 to double*
  store double %2860, double* %2863, align 1
  store %struct.Memory* %loadMem_400a3f, %struct.Memory** %MEMORY
  %loadMem_400a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 1
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %EAX.i114 = bitcast %union.anon* %2869 to i32*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 15
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RBP.i115
  %2874 = sub i64 %2873, 304
  %2875 = load i32, i32* %EAX.i114
  %2876 = zext i32 %2875 to i64
  %2877 = load i64, i64* %PC.i113
  %2878 = add i64 %2877, 6
  store i64 %2878, i64* %PC.i113
  %2879 = inttoptr i64 %2874 to i32*
  store i32 %2875, i32* %2879
  store %struct.Memory* %loadMem_400a44, %struct.Memory** %MEMORY
  %loadMem1_400a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 33
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2882 to i64*
  %2883 = load i64, i64* %PC.i112
  %2884 = add i64 %2883, -986
  %2885 = load i64, i64* %PC.i112
  %2886 = add i64 %2885, 5
  %2887 = load i64, i64* %PC.i112
  %2888 = add i64 %2887, 5
  store i64 %2888, i64* %PC.i112
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2890 = load i64, i64* %2889, align 8
  %2891 = add i64 %2890, -8
  %2892 = inttoptr i64 %2891 to i64*
  store i64 %2886, i64* %2892
  store i64 %2891, i64* %2889, align 8
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2884, i64* %2893, align 8
  store %struct.Memory* %loadMem1_400a4a, %struct.Memory** %MEMORY
  %loadMem2_400a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a4a = load i64, i64* %3
  %call2_400a4a = call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %loadPC_400a4a, %struct.Memory* %loadMem2_400a4a)
  store %struct.Memory* %call2_400a4a, %struct.Memory** %MEMORY
  %loadMem_400a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 33
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2896 to i64*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 11
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RDI.i111 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %PC.i110
  %2901 = add i64 %2900, 10
  store i64 %2901, i64* %PC.i110
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i111, align 8
  store %struct.Memory* %loadMem_400a4f, %struct.Memory** %MEMORY
  %loadMem_400a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 33
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2904 to i64*
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 9
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %RSI.i109 = bitcast %union.anon* %2907 to i64*
  %2908 = load i64, i64* %PC.i108
  %2909 = add i64 %2908, 10
  store i64 %2909, i64* %PC.i108
  store i64 ptrtoint (%G__0x400c40_type* @G__0x400c40 to i64), i64* %RSI.i109, align 8
  store %struct.Memory* %loadMem_400a59, %struct.Memory** %MEMORY
  %loadMem_400a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 1
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %2916 = bitcast %union.anon* %2915 to %struct.anon.2*
  %AL.i107 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2916, i32 0, i32 0
  %2917 = load i64, i64* %PC.i106
  %2918 = add i64 %2917, 2
  store i64 %2918, i64* %PC.i106
  store i8 1, i8* %AL.i107, align 1
  store %struct.Memory* %loadMem_400a63, %struct.Memory** %MEMORY
  %loadMem1_400a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 33
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2921 to i64*
  %2922 = load i64, i64* %PC.i105
  %2923 = add i64 %2922, -1397
  %2924 = load i64, i64* %PC.i105
  %2925 = add i64 %2924, 5
  %2926 = load i64, i64* %PC.i105
  %2927 = add i64 %2926, 5
  store i64 %2927, i64* %PC.i105
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2929 = load i64, i64* %2928, align 8
  %2930 = add i64 %2929, -8
  %2931 = inttoptr i64 %2930 to i64*
  store i64 %2925, i64* %2931
  store i64 %2930, i64* %2928, align 8
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2923, i64* %2932, align 8
  store %struct.Memory* %loadMem1_400a65, %struct.Memory** %MEMORY
  %loadMem2_400a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a65 = load i64, i64* %3
  %2933 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400a65)
  store %struct.Memory* %2933, %struct.Memory** %MEMORY
  %loadMem_400a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2935 = getelementptr inbounds %struct.GPR, %struct.GPR* %2934, i32 0, i32 33
  %2936 = getelementptr inbounds %struct.Reg, %struct.Reg* %2935, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2936 to i64*
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2938 = getelementptr inbounds %struct.GPR, %struct.GPR* %2937, i32 0, i32 11
  %2939 = getelementptr inbounds %struct.Reg, %struct.Reg* %2938, i32 0, i32 0
  %RDI.i101 = bitcast %union.anon* %2939 to i64*
  %2940 = load i64, i64* %PC.i100
  %2941 = add i64 %2940, 10
  store i64 %2941, i64* %PC.i100
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i101, align 8
  store %struct.Memory* %loadMem_400a6a, %struct.Memory** %MEMORY
  %loadMem_400a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 33
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 9
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RSI.i99 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %PC.i98
  %2949 = add i64 %2948, 10
  store i64 %2949, i64* %PC.i98
  store i64 ptrtoint (%G__0x400c49_type* @G__0x400c49 to i64), i64* %RSI.i99, align 8
  store %struct.Memory* %loadMem_400a74, %struct.Memory** %MEMORY
  %loadMem_400a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 15
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2956, i64 0, i64 0
  %YMM0.i97 = bitcast %union.VectorReg* %2957 to %"class.std::bitset"*
  %2958 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %2959 = load i64, i64* %RBP.i96
  %2960 = sub i64 %2959, 40
  %2961 = load i64, i64* %PC.i95
  %2962 = add i64 %2961, 5
  store i64 %2962, i64* %PC.i95
  %2963 = inttoptr i64 %2960 to double*
  %2964 = load double, double* %2963
  %2965 = bitcast i8* %2958 to double*
  store double %2964, double* %2965, align 1
  %2966 = getelementptr inbounds i8, i8* %2958, i64 8
  %2967 = bitcast i8* %2966 to double*
  store double 0.000000e+00, double* %2967, align 1
  store %struct.Memory* %loadMem_400a7e, %struct.Memory** %MEMORY
  %loadMem_400a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2969 = getelementptr inbounds %struct.GPR, %struct.GPR* %2968, i32 0, i32 33
  %2970 = getelementptr inbounds %struct.Reg, %struct.Reg* %2969, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2970 to i64*
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 1
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %EAX.i93 = bitcast %union.anon* %2973 to i32*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 15
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %RBP.i94
  %2978 = sub i64 %2977, 308
  %2979 = load i32, i32* %EAX.i93
  %2980 = zext i32 %2979 to i64
  %2981 = load i64, i64* %PC.i92
  %2982 = add i64 %2981, 6
  store i64 %2982, i64* %PC.i92
  %2983 = inttoptr i64 %2978 to i32*
  store i32 %2979, i32* %2983
  store %struct.Memory* %loadMem_400a83, %struct.Memory** %MEMORY
  %loadMem_400a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 33
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2986 to i64*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 1
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %2990 = bitcast %union.anon* %2989 to %struct.anon.2*
  %AL.i91 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2990, i32 0, i32 0
  %2991 = load i64, i64* %PC.i90
  %2992 = add i64 %2991, 2
  store i64 %2992, i64* %PC.i90
  store i8 1, i8* %AL.i91, align 1
  store %struct.Memory* %loadMem_400a89, %struct.Memory** %MEMORY
  %loadMem1_400a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %PC.i89
  %2997 = add i64 %2996, -1435
  %2998 = load i64, i64* %PC.i89
  %2999 = add i64 %2998, 5
  %3000 = load i64, i64* %PC.i89
  %3001 = add i64 %3000, 5
  store i64 %3001, i64* %PC.i89
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3003 = load i64, i64* %3002, align 8
  %3004 = add i64 %3003, -8
  %3005 = inttoptr i64 %3004 to i64*
  store i64 %2999, i64* %3005
  store i64 %3004, i64* %3002, align 8
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2997, i64* %3006, align 8
  store %struct.Memory* %loadMem1_400a8b, %struct.Memory** %MEMORY
  %loadMem2_400a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400a8b = load i64, i64* %3
  %3007 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400a8b)
  store %struct.Memory* %3007, %struct.Memory** %MEMORY
  %loadMem_400a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %3010 to i64*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 11
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %PC.i84
  %3015 = add i64 %3014, 10
  store i64 %3015, i64* %PC.i84
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i85, align 8
  store %struct.Memory* %loadMem_400a90, %struct.Memory** %MEMORY
  %loadMem_400a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 9
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %PC.i82
  %3023 = add i64 %3022, 10
  store i64 %3023, i64* %PC.i82
  store i64 ptrtoint (%G__0x400c55_type* @G__0x400c55 to i64), i64* %RSI.i83, align 8
  store %struct.Memory* %loadMem_400a9a, %struct.Memory** %MEMORY
  %loadMem_400aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 33
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 15
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %3029 to i64*
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3031 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3030, i64 0, i64 0
  %YMM0.i81 = bitcast %union.VectorReg* %3031 to %"class.std::bitset"*
  %3032 = bitcast %"class.std::bitset"* %YMM0.i81 to i8*
  %3033 = load i64, i64* %RBP.i80
  %3034 = sub i64 %3033, 48
  %3035 = load i64, i64* %PC.i79
  %3036 = add i64 %3035, 5
  store i64 %3036, i64* %PC.i79
  %3037 = inttoptr i64 %3034 to double*
  %3038 = load double, double* %3037
  %3039 = bitcast i8* %3032 to double*
  store double %3038, double* %3039, align 1
  %3040 = getelementptr inbounds i8, i8* %3032, i64 8
  %3041 = bitcast i8* %3040 to double*
  store double 0.000000e+00, double* %3041, align 1
  store %struct.Memory* %loadMem_400aa4, %struct.Memory** %MEMORY
  %loadMem_400aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %3047 to i32*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RBP.i78
  %3052 = sub i64 %3051, 312
  %3053 = load i32, i32* %EAX.i77
  %3054 = zext i32 %3053 to i64
  %3055 = load i64, i64* %PC.i76
  %3056 = add i64 %3055, 6
  store i64 %3056, i64* %PC.i76
  %3057 = inttoptr i64 %3052 to i32*
  store i32 %3053, i32* %3057
  store %struct.Memory* %loadMem_400aa9, %struct.Memory** %MEMORY
  %loadMem_400aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 1
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %3064 = bitcast %union.anon* %3063 to %struct.anon.2*
  %AL.i75 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3064, i32 0, i32 0
  %3065 = load i64, i64* %PC.i74
  %3066 = add i64 %3065, 2
  store i64 %3066, i64* %PC.i74
  store i8 1, i8* %AL.i75, align 1
  store %struct.Memory* %loadMem_400aaf, %struct.Memory** %MEMORY
  %loadMem1_400ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %PC.i73
  %3071 = add i64 %3070, -1473
  %3072 = load i64, i64* %PC.i73
  %3073 = add i64 %3072, 5
  %3074 = load i64, i64* %PC.i73
  %3075 = add i64 %3074, 5
  store i64 %3075, i64* %PC.i73
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3077 = load i64, i64* %3076, align 8
  %3078 = add i64 %3077, -8
  %3079 = inttoptr i64 %3078 to i64*
  store i64 %3073, i64* %3079
  store i64 %3078, i64* %3076, align 8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3071, i64* %3080, align 8
  store %struct.Memory* %loadMem1_400ab1, %struct.Memory** %MEMORY
  %loadMem2_400ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ab1 = load i64, i64* %3
  %3081 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400ab1)
  store %struct.Memory* %3081, %struct.Memory** %MEMORY
  %loadMem_400ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 15
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3087 to i64*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3088, i64 0, i64 0
  %YMM0.i70 = bitcast %union.VectorReg* %3089 to %"class.std::bitset"*
  %3090 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %3091 = load i64, i64* %RBP.i69
  %3092 = sub i64 %3091, 64
  %3093 = load i64, i64* %PC.i68
  %3094 = add i64 %3093, 5
  store i64 %3094, i64* %PC.i68
  %3095 = inttoptr i64 %3092 to double*
  %3096 = load double, double* %3095
  %3097 = add i64 %3092, 8
  %3098 = inttoptr i64 %3097 to double*
  %3099 = load double, double* %3098
  %3100 = bitcast i8* %3090 to double*
  store double %3096, double* %3100, align 1
  %3101 = getelementptr inbounds i8, i8* %3090, i64 8
  %3102 = bitcast i8* %3101 to double*
  store double %3099, double* %3102, align 1
  store %struct.Memory* %loadMem_400ab6, %struct.Memory** %MEMORY
  %loadMem_400abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 1
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %3108 to i32*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 15
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %RBP.i67
  %3113 = sub i64 %3112, 316
  %3114 = load i32, i32* %EAX.i66
  %3115 = zext i32 %3114 to i64
  %3116 = load i64, i64* %PC.i65
  %3117 = add i64 %3116, 6
  store i64 %3117, i64* %PC.i65
  %3118 = inttoptr i64 %3113 to i32*
  store i32 %3114, i32* %3118
  store %struct.Memory* %loadMem_400abb, %struct.Memory** %MEMORY
  %loadMem1_400ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %3121 to i64*
  %3122 = load i64, i64* %PC.i64
  %3123 = add i64 %3122, -1105
  %3124 = load i64, i64* %PC.i64
  %3125 = add i64 %3124, 5
  %3126 = load i64, i64* %PC.i64
  %3127 = add i64 %3126, 5
  store i64 %3127, i64* %PC.i64
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3129 = load i64, i64* %3128, align 8
  %3130 = add i64 %3129, -8
  %3131 = inttoptr i64 %3130 to i64*
  store i64 %3125, i64* %3131
  store i64 %3130, i64* %3128, align 8
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3123, i64* %3132, align 8
  store %struct.Memory* %loadMem1_400ac1, %struct.Memory** %MEMORY
  %loadMem2_400ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400ac1 = load i64, i64* %3
  %call2_400ac1 = call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %loadPC_400ac1, %struct.Memory* %loadMem2_400ac1)
  store %struct.Memory* %call2_400ac1, %struct.Memory** %MEMORY
  %loadMem_400ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3134 = getelementptr inbounds %struct.GPR, %struct.GPR* %3133, i32 0, i32 33
  %3135 = getelementptr inbounds %struct.Reg, %struct.Reg* %3134, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3135 to i64*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 11
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %RDI.i63 = bitcast %union.anon* %3138 to i64*
  %3139 = load i64, i64* %PC.i62
  %3140 = add i64 %3139, 10
  store i64 %3140, i64* %PC.i62
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i63, align 8
  store %struct.Memory* %loadMem_400ac6, %struct.Memory** %MEMORY
  %loadMem_400ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 9
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RSI.i61 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %PC.i60
  %3148 = add i64 %3147, 10
  store i64 %3148, i64* %PC.i60
  store i64 ptrtoint (%G__0x400c7c_type* @G__0x400c7c to i64), i64* %RSI.i61, align 8
  store %struct.Memory* %loadMem_400ad0, %struct.Memory** %MEMORY
  %loadMem_400ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 33
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3151 to i64*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 1
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %3155 = bitcast %union.anon* %3154 to %struct.anon.2*
  %AL.i59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3155, i32 0, i32 0
  %3156 = load i64, i64* %PC.i58
  %3157 = add i64 %3156, 2
  store i64 %3157, i64* %PC.i58
  store i8 1, i8* %AL.i59, align 1
  store %struct.Memory* %loadMem_400ada, %struct.Memory** %MEMORY
  %loadMem1_400adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 33
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %PC.i57
  %3162 = add i64 %3161, -1516
  %3163 = load i64, i64* %PC.i57
  %3164 = add i64 %3163, 5
  %3165 = load i64, i64* %PC.i57
  %3166 = add i64 %3165, 5
  store i64 %3166, i64* %PC.i57
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3168 = load i64, i64* %3167, align 8
  %3169 = add i64 %3168, -8
  %3170 = inttoptr i64 %3169 to i64*
  store i64 %3164, i64* %3170
  store i64 %3169, i64* %3167, align 8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3162, i64* %3171, align 8
  store %struct.Memory* %loadMem1_400adc, %struct.Memory** %MEMORY
  %loadMem2_400adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400adc = load i64, i64* %3
  %3172 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400adc)
  store %struct.Memory* %3172, %struct.Memory** %MEMORY
  %loadMem_400ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 33
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 15
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3178 to i64*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3180 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3179, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %3180 to %"class.std::bitset"*
  %3181 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %3182 = load i64, i64* %RBP.i53
  %3183 = sub i64 %3182, 80
  %3184 = load i64, i64* %PC.i52
  %3185 = add i64 %3184, 5
  store i64 %3185, i64* %PC.i52
  %3186 = inttoptr i64 %3183 to double*
  %3187 = load double, double* %3186
  %3188 = add i64 %3183, 8
  %3189 = inttoptr i64 %3188 to double*
  %3190 = load double, double* %3189
  %3191 = bitcast i8* %3181 to double*
  store double %3187, double* %3191, align 1
  %3192 = getelementptr inbounds i8, i8* %3181, i64 8
  %3193 = bitcast i8* %3192 to double*
  store double %3190, double* %3193, align 1
  store %struct.Memory* %loadMem_400ae1, %struct.Memory** %MEMORY
  %loadMem_400ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 1
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %EAX.i50 = bitcast %union.anon* %3199 to i32*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 15
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RBP.i51
  %3204 = sub i64 %3203, 320
  %3205 = load i32, i32* %EAX.i50
  %3206 = zext i32 %3205 to i64
  %3207 = load i64, i64* %PC.i49
  %3208 = add i64 %3207, 6
  store i64 %3208, i64* %PC.i49
  %3209 = inttoptr i64 %3204 to i32*
  store i32 %3205, i32* %3209
  store %struct.Memory* %loadMem_400ae6, %struct.Memory** %MEMORY
  %loadMem1_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %PC.i48
  %3214 = add i64 %3213, -1148
  %3215 = load i64, i64* %PC.i48
  %3216 = add i64 %3215, 5
  %3217 = load i64, i64* %PC.i48
  %3218 = add i64 %3217, 5
  store i64 %3218, i64* %PC.i48
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3220 = load i64, i64* %3219, align 8
  %3221 = add i64 %3220, -8
  %3222 = inttoptr i64 %3221 to i64*
  store i64 %3216, i64* %3222
  store i64 %3221, i64* %3219, align 8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3214, i64* %3223, align 8
  store %struct.Memory* %loadMem1_400aec, %struct.Memory** %MEMORY
  %loadMem2_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400aec = load i64, i64* %3
  %call2_400aec = call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %loadPC_400aec, %struct.Memory* %loadMem2_400aec)
  store %struct.Memory* %call2_400aec, %struct.Memory** %MEMORY
  %loadMem_400af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 11
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RDI.i47 = bitcast %union.anon* %3229 to i64*
  %3230 = load i64, i64* %PC.i46
  %3231 = add i64 %3230, 10
  store i64 %3231, i64* %PC.i46
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i47, align 8
  store %struct.Memory* %loadMem_400af1, %struct.Memory** %MEMORY
  %loadMem_400afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3234 to i64*
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 9
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %3237 to i64*
  %3238 = load i64, i64* %PC.i44
  %3239 = add i64 %3238, 10
  store i64 %3239, i64* %PC.i44
  store i64 ptrtoint (%G__0x400c63_type* @G__0x400c63 to i64), i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_400afb, %struct.Memory** %MEMORY
  %loadMem_400b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %3246 = bitcast %union.anon* %3245 to %struct.anon.2*
  %AL.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3246, i32 0, i32 0
  %3247 = load i64, i64* %PC.i42
  %3248 = add i64 %3247, 2
  store i64 %3248, i64* %PC.i42
  store i8 1, i8* %AL.i43, align 1
  store %struct.Memory* %loadMem_400b05, %struct.Memory** %MEMORY
  %loadMem1_400b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 33
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %PC.i41
  %3253 = add i64 %3252, -1559
  %3254 = load i64, i64* %PC.i41
  %3255 = add i64 %3254, 5
  %3256 = load i64, i64* %PC.i41
  %3257 = add i64 %3256, 5
  store i64 %3257, i64* %PC.i41
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3259 = load i64, i64* %3258, align 8
  %3260 = add i64 %3259, -8
  %3261 = inttoptr i64 %3260 to i64*
  store i64 %3255, i64* %3261
  store i64 %3260, i64* %3258, align 8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3253, i64* %3262, align 8
  store %struct.Memory* %loadMem1_400b07, %struct.Memory** %MEMORY
  %loadMem2_400b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b07 = load i64, i64* %3
  %3263 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400b07)
  store %struct.Memory* %3263, %struct.Memory** %MEMORY
  %loadMem_400b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 33
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 15
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3270, i64 0, i64 0
  %YMM0.i38 = bitcast %union.VectorReg* %3271 to %"class.std::bitset"*
  %3272 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %3273 = load i64, i64* %RBP.i37
  %3274 = sub i64 %3273, 112
  %3275 = load i64, i64* %PC.i36
  %3276 = add i64 %3275, 5
  store i64 %3276, i64* %PC.i36
  %3277 = inttoptr i64 %3274 to double*
  %3278 = load double, double* %3277
  %3279 = add i64 %3274, 8
  %3280 = inttoptr i64 %3279 to double*
  %3281 = load double, double* %3280
  %3282 = bitcast i8* %3272 to double*
  store double %3278, double* %3282, align 1
  %3283 = getelementptr inbounds i8, i8* %3272, i64 8
  %3284 = bitcast i8* %3283 to double*
  store double %3281, double* %3284, align 1
  store %struct.Memory* %loadMem_400b0c, %struct.Memory** %MEMORY
  %loadMem_400b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 1
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %3290 to i32*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 15
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %3293 to i64*
  %3294 = load i64, i64* %RBP.i35
  %3295 = sub i64 %3294, 324
  %3296 = load i32, i32* %EAX.i34
  %3297 = zext i32 %3296 to i64
  %3298 = load i64, i64* %PC.i33
  %3299 = add i64 %3298, 6
  store i64 %3299, i64* %PC.i33
  %3300 = inttoptr i64 %3295 to i32*
  store i32 %3296, i32* %3300
  store %struct.Memory* %loadMem_400b11, %struct.Memory** %MEMORY
  %loadMem1_400b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 33
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3303 to i64*
  %3304 = load i64, i64* %PC.i32
  %3305 = add i64 %3304, -1191
  %3306 = load i64, i64* %PC.i32
  %3307 = add i64 %3306, 5
  %3308 = load i64, i64* %PC.i32
  %3309 = add i64 %3308, 5
  store i64 %3309, i64* %PC.i32
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3311 = load i64, i64* %3310, align 8
  %3312 = add i64 %3311, -8
  %3313 = inttoptr i64 %3312 to i64*
  store i64 %3307, i64* %3313
  store i64 %3312, i64* %3310, align 8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3305, i64* %3314, align 8
  store %struct.Memory* %loadMem1_400b17, %struct.Memory** %MEMORY
  %loadMem2_400b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b17 = load i64, i64* %3
  %call2_400b17 = call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %loadPC_400b17, %struct.Memory* %loadMem2_400b17)
  store %struct.Memory* %call2_400b17, %struct.Memory** %MEMORY
  %loadMem_400b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 33
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %3317 to i64*
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3319 = getelementptr inbounds %struct.GPR, %struct.GPR* %3318, i32 0, i32 11
  %3320 = getelementptr inbounds %struct.Reg, %struct.Reg* %3319, i32 0, i32 0
  %RDI.i31 = bitcast %union.anon* %3320 to i64*
  %3321 = load i64, i64* %PC.i30
  %3322 = add i64 %3321, 10
  store i64 %3322, i64* %PC.i30
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i31, align 8
  store %struct.Memory* %loadMem_400b1c, %struct.Memory** %MEMORY
  %loadMem_400b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 9
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RSI.i29 = bitcast %union.anon* %3328 to i64*
  %3329 = load i64, i64* %PC.i28
  %3330 = add i64 %3329, 10
  store i64 %3330, i64* %PC.i28
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI.i29, align 8
  store %struct.Memory* %loadMem_400b26, %struct.Memory** %MEMORY
  %loadMem_400b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 1
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %3337 = bitcast %union.anon* %3336 to %struct.anon.2*
  %AL.i27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3337, i32 0, i32 0
  %3338 = load i64, i64* %PC.i26
  %3339 = add i64 %3338, 2
  store i64 %3339, i64* %PC.i26
  store i8 1, i8* %AL.i27, align 1
  store %struct.Memory* %loadMem_400b30, %struct.Memory** %MEMORY
  %loadMem1_400b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3342 to i64*
  %3343 = load i64, i64* %PC.i25
  %3344 = add i64 %3343, -1602
  %3345 = load i64, i64* %PC.i25
  %3346 = add i64 %3345, 5
  %3347 = load i64, i64* %PC.i25
  %3348 = add i64 %3347, 5
  store i64 %3348, i64* %PC.i25
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3350 = load i64, i64* %3349, align 8
  %3351 = add i64 %3350, -8
  %3352 = inttoptr i64 %3351 to i64*
  store i64 %3346, i64* %3352
  store i64 %3351, i64* %3349, align 8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3344, i64* %3353, align 8
  store %struct.Memory* %loadMem1_400b32, %struct.Memory** %MEMORY
  %loadMem2_400b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b32 = load i64, i64* %3
  %3354 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400b32)
  store %struct.Memory* %3354, %struct.Memory** %MEMORY
  %loadMem_400b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 15
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3360 to i64*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3362 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3361, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3362 to %"class.std::bitset"*
  %3363 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3364 = load i64, i64* %RBP.i22
  %3365 = sub i64 %3364, 128
  %3366 = load i64, i64* %PC.i21
  %3367 = add i64 %3366, 5
  store i64 %3367, i64* %PC.i21
  %3368 = inttoptr i64 %3365 to double*
  %3369 = load double, double* %3368
  %3370 = add i64 %3365, 8
  %3371 = inttoptr i64 %3370 to double*
  %3372 = load double, double* %3371
  %3373 = bitcast i8* %3363 to double*
  store double %3369, double* %3373, align 1
  %3374 = getelementptr inbounds i8, i8* %3363, i64 8
  %3375 = bitcast i8* %3374 to double*
  store double %3372, double* %3375, align 1
  store %struct.Memory* %loadMem_400b37, %struct.Memory** %MEMORY
  %loadMem_400b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 33
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 1
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %3381 to i32*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 15
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3384 to i64*
  %3385 = load i64, i64* %RBP.i20
  %3386 = sub i64 %3385, 328
  %3387 = load i32, i32* %EAX.i19
  %3388 = zext i32 %3387 to i64
  %3389 = load i64, i64* %PC.i18
  %3390 = add i64 %3389, 6
  store i64 %3390, i64* %PC.i18
  %3391 = inttoptr i64 %3386 to i32*
  store i32 %3387, i32* %3391
  store %struct.Memory* %loadMem_400b3c, %struct.Memory** %MEMORY
  %loadMem1_400b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %PC.i17
  %3396 = add i64 %3395, -1234
  %3397 = load i64, i64* %PC.i17
  %3398 = add i64 %3397, 5
  %3399 = load i64, i64* %PC.i17
  %3400 = add i64 %3399, 5
  store i64 %3400, i64* %PC.i17
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3402 = load i64, i64* %3401, align 8
  %3403 = add i64 %3402, -8
  %3404 = inttoptr i64 %3403 to i64*
  store i64 %3398, i64* %3404
  store i64 %3403, i64* %3401, align 8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3396, i64* %3405, align 8
  store %struct.Memory* %loadMem1_400b42, %struct.Memory** %MEMORY
  %loadMem2_400b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b42 = load i64, i64* %3
  %call2_400b42 = call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %loadPC_400b42, %struct.Memory* %loadMem2_400b42)
  store %struct.Memory* %call2_400b42, %struct.Memory** %MEMORY
  %loadMem_400b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 11
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3411 to i64*
  %3412 = load i64, i64* %PC.i16
  %3413 = add i64 %3412, 10
  store i64 %3413, i64* %PC.i16
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_400b47, %struct.Memory** %MEMORY
  %loadMem_400b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 33
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 9
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %PC.i15
  %3421 = add i64 %3420, 10
  store i64 %3421, i64* %PC.i15
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_400b51, %struct.Memory** %MEMORY
  %loadMem_400b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 1
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %3428 = bitcast %union.anon* %3427 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3428, i32 0, i32 0
  %3429 = load i64, i64* %PC.i14
  %3430 = add i64 %3429, 2
  store i64 %3430, i64* %PC.i14
  store i8 1, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_400b5b, %struct.Memory** %MEMORY
  %loadMem1_400b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 33
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %PC.i13
  %3435 = add i64 %3434, -1645
  %3436 = load i64, i64* %PC.i13
  %3437 = add i64 %3436, 5
  %3438 = load i64, i64* %PC.i13
  %3439 = add i64 %3438, 5
  store i64 %3439, i64* %PC.i13
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3441 = load i64, i64* %3440, align 8
  %3442 = add i64 %3441, -8
  %3443 = inttoptr i64 %3442 to i64*
  store i64 %3437, i64* %3443
  store i64 %3442, i64* %3440, align 8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3435, i64* %3444, align 8
  store %struct.Memory* %loadMem1_400b5d, %struct.Memory** %MEMORY
  %loadMem2_400b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_400b5d = load i64, i64* %3
  %3445 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_400b5d)
  store %struct.Memory* %3445, %struct.Memory** %MEMORY
  %loadMem_400b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 33
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3448 to i64*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 5
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %ECX.i9 = bitcast %union.anon* %3451 to i32*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 5
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RCX.i
  %3456 = load i32, i32* %ECX.i9
  %3457 = zext i32 %3456 to i64
  %3458 = load i64, i64* %PC.i8
  %3459 = add i64 %3458, 2
  store i64 %3459, i64* %PC.i8
  %3460 = xor i64 %3457, %3455
  %3461 = trunc i64 %3460 to i32
  %3462 = and i64 %3460, 4294967295
  store i64 %3462, i64* %RCX.i, align 8
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3463, align 1
  %3464 = and i32 %3461, 255
  %3465 = call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3468, i8* %3469, align 1
  %3470 = icmp eq i32 %3461, 0
  %3471 = zext i1 %3470 to i8
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3471, i8* %3472, align 1
  %3473 = lshr i32 %3461, 31
  %3474 = trunc i32 %3473 to i8
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3474, i8* %3475, align 1
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3476, align 1
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3477, align 1
  store %struct.Memory* %loadMem_400b62, %struct.Memory** %MEMORY
  %loadMem_400b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3483 to i32*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 15
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3486 to i64*
  %3487 = load i64, i64* %RBP.i7
  %3488 = sub i64 %3487, 332
  %3489 = load i32, i32* %EAX.i
  %3490 = zext i32 %3489 to i64
  %3491 = load i64, i64* %PC.i6
  %3492 = add i64 %3491, 6
  store i64 %3492, i64* %PC.i6
  %3493 = inttoptr i64 %3488 to i32*
  store i32 %3489, i32* %3493
  store %struct.Memory* %loadMem_400b64, %struct.Memory** %MEMORY
  %loadMem_400b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 33
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3496 to i64*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 5
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3499 to i32*
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3501 = getelementptr inbounds %struct.GPR, %struct.GPR* %3500, i32 0, i32 1
  %3502 = getelementptr inbounds %struct.Reg, %struct.Reg* %3501, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3502 to i64*
  %3503 = load i32, i32* %ECX.i
  %3504 = zext i32 %3503 to i64
  %3505 = load i64, i64* %PC.i5
  %3506 = add i64 %3505, 2
  store i64 %3506, i64* %PC.i5
  %3507 = and i64 %3504, 4294967295
  store i64 %3507, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_400b6a, %struct.Memory** %MEMORY
  %loadMem_400b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 33
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3510 to i64*
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 13
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3513 to i64*
  %3514 = load i64, i64* %RSP.i
  %3515 = load i64, i64* %PC.i4
  %3516 = add i64 %3515, 7
  store i64 %3516, i64* %PC.i4
  %3517 = add i64 336, %3514
  store i64 %3517, i64* %RSP.i, align 8
  %3518 = icmp ult i64 %3517, %3514
  %3519 = icmp ult i64 %3517, 336
  %3520 = or i1 %3518, %3519
  %3521 = zext i1 %3520 to i8
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3521, i8* %3522, align 1
  %3523 = trunc i64 %3517 to i32
  %3524 = and i32 %3523, 255
  %3525 = call i32 @llvm.ctpop.i32(i32 %3524)
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  %3528 = xor i8 %3527, 1
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3528, i8* %3529, align 1
  %3530 = xor i64 336, %3514
  %3531 = xor i64 %3530, %3517
  %3532 = lshr i64 %3531, 4
  %3533 = trunc i64 %3532 to i8
  %3534 = and i8 %3533, 1
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3534, i8* %3535, align 1
  %3536 = icmp eq i64 %3517, 0
  %3537 = zext i1 %3536 to i8
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3537, i8* %3538, align 1
  %3539 = lshr i64 %3517, 63
  %3540 = trunc i64 %3539 to i8
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3540, i8* %3541, align 1
  %3542 = lshr i64 %3514, 63
  %3543 = xor i64 %3539, %3542
  %3544 = add i64 %3543, %3539
  %3545 = icmp eq i64 %3544, 2
  %3546 = zext i1 %3545 to i8
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3546, i8* %3547, align 1
  store %struct.Memory* %loadMem_400b6c, %struct.Memory** %MEMORY
  %loadMem_400b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 33
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 15
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3553 to i64*
  %3554 = load i64, i64* %PC.i2
  %3555 = add i64 %3554, 1
  store i64 %3555, i64* %PC.i2
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3557 = load i64, i64* %3556, align 8
  %3558 = add i64 %3557, 8
  %3559 = inttoptr i64 %3557 to i64*
  %3560 = load i64, i64* %3559
  store i64 %3560, i64* %RBP.i3, align 8
  store i64 %3558, i64* %3556, align 8
  store %struct.Memory* %loadMem_400b73, %struct.Memory** %MEMORY
  %loadMem_400b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3562 = getelementptr inbounds %struct.GPR, %struct.GPR* %3561, i32 0, i32 33
  %3563 = getelementptr inbounds %struct.Reg, %struct.Reg* %3562, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3563 to i64*
  %3564 = load i64, i64* %PC.i1
  %3565 = add i64 %3564, 1
  store i64 %3565, i64* %PC.i1
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3568 = load i64, i64* %3567, align 8
  %3569 = inttoptr i64 %3568 to i64*
  %3570 = load i64, i64* %3569
  store i64 %3570, i64* %3566, align 8
  %3571 = add i64 %3568, 8
  store i64 %3571, i64* %3567, align 8
  store %struct.Memory* %loadMem_400b74, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400b74
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

define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 336
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 336
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
  %23 = xor i64 336, %9
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

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
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

define %struct.Memory* @routine_movl__0x2625a0__MINUS0x114__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 276
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2500000, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 288
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

define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 288
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

define %struct.Memory* @routine_callq_.make_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x511__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x511__rip__type* @G_0x511__rip_ to i64
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
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

define %struct.Memory* @routine_movsd_0x509__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x509__rip__type* @G_0x509__rip_ to i64
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4e9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x4e9__rip__type* @G_0x4e9__rip_ to i64
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4c9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x4c9__rip__type* @G_0x4c9__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x4d1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x4d1__rip__type* @G_0x4d1__rip_ to i64
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 208
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x4a6__rip__type* @G_0x4a6__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x4a6__rip__type* @G_0x4a6__rip_ to i64
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 192
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x483__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x483__rip__type* @G_0x483__rip_ to i64
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

define %struct.Memory* @routine_movapd__xmm0__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 240
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
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

define %struct.Memory* @routine_movl_MINUS0x114__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = sitofp i32 %12 to double
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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

; <label>:19:                                     ; preds = %block_400478
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

; <label>:31:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jb_.L_4008f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x446__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x446__rip__type* @G_0x446__rip_ to i64
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

define %struct.Memory* @routine_movsd_0x426__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x426__rip__type* @G_0x426__rip_ to i64
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

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 248
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

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x40a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x40a__rip__type* @G_0x40a__rip_ to i64
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

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 296
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 296
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

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_mulsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 256
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

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 264
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

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 272
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

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 256
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

define %struct.Memory* @routine_mulsd_MINUS0x108__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 264
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
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

define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
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
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_mulsd_MINUS0x110__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 272
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
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

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
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
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
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

define %struct.Memory* @routine_movsd_0x327__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = ptrtoint %G_0x327__rip__type* @G_0x327__rip_ to i64
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

define %struct.Memory* @routine_addsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 248
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

define %struct.Memory* @routine_jmpq_.L_4007b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movapd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 224
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %13, i64 8
  %19 = bitcast i8* %18 to double*
  %20 = load double, double* %19, align 1
  %21 = inttoptr i64 %12 to double*
  store double %17, double* %21
  %22 = add i64 %12, 8
  %23 = inttoptr i64 %22 to double*
  store double %20, double* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
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

define %struct.Memory* @routine_jb_.L_4009f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xa0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x double>*
  %16 = load <2 x double>, <2 x double>* %15, align 1
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = fmul <2 x double> %16, %18
  %20 = bitcast i8* %10 to <2 x double>*
  store <2 x double> %19, <2 x double>* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x double>*
  %16 = load <2 x double>, <2 x double>* %15, align 1
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = fdiv <2 x double> %16, %18
  %20 = bitcast i8* %10 to <2 x double>*
  store <2 x double> %19, <2 x double>* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fdiv <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fmul <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xf0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subpd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 160
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fsub <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x double>*
  %18 = load <2 x double>, <2 x double>* %17, align 1
  %19 = inttoptr i64 %14 to double*
  %20 = load double, double* %19
  %21 = add i64 %14, 8
  %22 = inttoptr i64 %21 to double*
  %23 = load double, double* %22
  %24 = insertelement <2 x double> undef, double %20, i32 0
  %25 = insertelement <2 x double> %24, double %23, i32 1
  %26 = fadd <2 x double> %18, %25
  %27 = bitcast i8* %11 to <2 x double>*
  store <2 x double> %26, <2 x double>* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400906(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x400c28___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c31___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c31_type* @G__0x400c31 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 1, i8* %AL, align 1
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

define %struct.Memory* @routine_movq__0x400c39___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c39_type* @G__0x400c39 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 304
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sum_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x400c40___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c40_type* @G__0x400c40 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c49___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c49_type* @G__0x400c49 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c55___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c55_type* @G__0x400c55 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 312
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 316
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c7c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c7c_type* @G__0x400c7c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 320
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c63___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c63_type* @G__0x400c63 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c70___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = add i64 %13, 8
  %19 = inttoptr i64 %18 to double*
  %20 = load double, double* %19
  %21 = bitcast i8* %11 to double*
  store double %17, double* %21, align 1
  %22 = getelementptr inbounds i8, i8* %11, i64 8
  %23 = bitcast i8* %22 to double*
  store double %20, double* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 328
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c85___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400478:
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
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 332
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 336, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 336
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
  %25 = xor i64 336, %9
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
